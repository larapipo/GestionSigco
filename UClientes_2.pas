

//uses
//  variants,
//  SysUtils,
//  uLkJSON in 'uLkJSON.pas';

//var
//  js,xs:TlkJSONobject;
//  ws: TlkJSONstring;
//  s,s2: String;
//begin
//  s := '{"string1":"123","\"string2\"":"two",'+
//    '"childobject":{"objstr1":"Oone","objstr2":"Otwo"}}';
//  js := TlkJSON.ParseText(s) as TlkJSONobject;
//
//  s2 := vartostr(js.Field['"string2"'].Value);
//  writeln(s2);
//
//  readln;
//  js.Free;
//end.


unit UClientes_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  UABMBase, frxClass,  frxDBSet, ComCtrls, ExtCtrls,
  StdCtrls, DBCtrls, Grids, DBGrids, Mask, Db, Variants,
  ActnList, Buttons, ToolWin, Graphics, ImgList,
  JvComponentBase, JvExControls, JvGradient, JvExDBGrids, JvDBGrid,
  JvDBLookup, Menus, JvArrowButton, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit, JvExStdCtrls, JvDBCombobox,DBClient, frxExportCSV,
  frxExportXML, frxExportHTML, frxExportPDF, DataExport, DataToXLS,StrUtils,
  JvDBLookupComboEdit, JvCombobox, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, DBXCommon, Spin, JvBaseEdits, UCtaContables, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, cxTextEdit, cxDBEdit,IniFiles, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador,DateUtils,VirtualUI_sdk,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog, IPPeerClient,
  Data.DBXJson, REST.Response.Adapter, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,uLkJSON, AdvPageControl,
  dxSkinBlueprint, REST.Types, System.ImageList, dxSkinBasic, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.WinXCtrls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar,
  cxCurrencyEdit, AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, AdvUtil,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, tmsAdvGridExcel, frCoreClasses,
  AdvSmoothButton;

type
  TFormClientes_2 = class(TFormABMBase)
    frDBDSClientes: TfrxDBDataset;
    PageControl1: TPageControl;
    Pag1: TTabSheet;
    PageControl2: TPageControl;
    SubPag1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel5: TBevel;
    Bevel2: TBevel;
    dbtLocalidad: TDBText;
    dbtCPostal: TDBText;
    dbeCodigo: TDBEdit;
    dbeNombre: TDBEdit;
    dbeRazonSocial: TDBEdit;
    dbeDomicilio: TDBEdit;
    GroupBox3: TGroupBox;
    Bevel1: TBevel;
    Label22: TLabel;
    dbtTelediscado: TDBText;
    dbeTel1: TDBEdit;
    dbeTel2: TDBEdit;
    DbeTel3: TDBEdit;
    SubPag2: TTabSheet;
    Label15: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    dbmNotas: TDBMemo;
    dblZona: TDBLookupComboBox;
    dblSucursal: TDBLookupComboBox;
    dbeCuit: TDBEdit;
    GroupBox4: TGroupBox;
    chbEmiteFactura: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    dblInscripcion: TDBLookupComboBox;
    SubPag4: TTabSheet;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbeCodigoLdr: TDBEdit;
    dbeNombreLdr: TDBEdit;
    dbeDireccionLdr: TDBEdit;
    dbgLdr: TDBGrid;
    Pag2: TTabSheet;
    btListar: TBitBtn;
    rgEstados: TRadioGroup;
    frClientes: TfrxReport;
    BuscarCondVenta: TAction;
    Imprimir: TAction;
    Listar: TAction;
    BuscaLocalidad: TAction;
    Label10: TLabel;
    Agendar: TAction;
    btAgendar: TBitBtn;
    ToolButton1: TToolButton;
    Label20: TLabel;
    dbeMuestraVendedor: TDBEdit;
    Label16: TLabel;
    BuscaVendedor: TAction;
    Label19: TLabel;
    dbcListaPrecios: TDBLookupComboBox;
    Label23: TLabel;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    dbeNumeroDocumento: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    dbeCorreo: TDBEdit;
    gbPercepIB: TGroupBox;
    pnInsMuticonvenio: TPanel;
    Label29: TLabel;
    chbPercibeIB: TDBCheckBox;
    chbInscrMulticonvenio: TDBCheckBox;
    Label30: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    dbcVendedor: TJvDBLookupCombo;
    dbcZona: TJvDBLookupCombo;
    Label31: TLabel;
    dbeMuestraCobrador: TDBEdit;
    BuscaCobradores: TAction;
    JvArrowButton1: TJvArrowButton;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    ImprimirFicha: TAction;
    ImprimirFicha1: TMenuItem;
    dbeContacto: TDBEdit;
    dbeTelefonoContacto: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    frDBConVentas: TfrxDBDataset;
    DBText1: TDBText;
    DBText2: TDBText;
    Label34: TLabel;
    Label35: TLabel;
    BuscaGrupos: TAction;
    SubPag3: TTabSheet;
    Label13: TLabel;
    Label28: TLabel;
    Label37: TLabel;
    cbEstado: TJvDBComboBox;
    Label38: TLabel;
    Label39: TLabel;
    dblCategoria: TDBLookupComboBox;
    frxPDFExport1: TfrxPDFExport;
    btExcel: TBitBtn;
    dlgSave1: TSaveDialog;
    DataToXLS1: TDataToXLS;
    CambiarCodigo: TAction;
    btn1: TSpeedButton;
    GeoPosicionar: TAction;
    dbtLocalidad1: TDBText;
    dbtLocalidad2: TDBText;
    lb1: TLabel;
    RxDBIdPostal: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    rxcCobrador: TJvDBComboEdit;
    dbeFechaNacimiento: TJvDBDateEdit;
    DBDateEdit3: TJvDBDateEdit;
    DBDateEdit4: TJvDBDateEdit;
    DBDateEdit1: TJvDBDateEdit;
    dbeFechaVencimiento: TJvDBDateEdit;
    dbnLdr: TDBNavigator;
    gbAbonos: TGroupBox;
    dbcTipoAbono: TJvDBComboBox;
    JvDBDateEdit1: TJvDBDateEdit;
    Label40: TLabel;
    bdcMesIncio: TJvDBComboBox;
    Label41: TLabel;
    Label42: TLabel;
    dbcFc: TJvDBLookupCombo;
    dbcFO: TJvDBLookupCombo;
    dbcND: TJvDBLookupCombo;
    dbcNC: TJvDBLookupCombo;
    dbcTk: TJvDBLookupCombo;
    dbTipoDoc: TJvDBComboBox;
    DBStatusLabel2: TJvDBStatusLabel;
    BuscarCtaContable: TAction;
    FrameCtaContable1: TFrameCtaContable;
    pnCredito: TPanel;
    dbeLimiteCredito: TDBEdit;
    Label18: TLabel;
    dbchDeuda30: TDBCheckBox;
    dbeDias: TJvDBCalcEdit;
    Label45: TLabel;
    dbcTransporte: TJvDBLookupCombo;
    spIncidencia: TSpeedButton;
    VerIncidencias: TAction;
    dbcCategorias: TJvDBLookupCombo;
    JvDBStatusLabel1: TJvDBStatusLabel;
    SubPage5: TTabSheet;
    DBEdit1: TDBEdit;
    Label47: TLabel;
    DBEdit2: TDBEdit;
    Label48: TLabel;
    DBEdit3: TDBEdit;
    Label49: TLabel;
    Label50: TLabel;
    SubPagContrato: TTabSheet;
    DSContrato: TDataSource;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    edFSolicitud: TJvDBDateEdit;
    edFechaInstalacion: TJvDBDateEdit;
    edFechaInicio: TJvDBDateEdit;
    edLugar: TDBEdit;
    Label60: TLabel;
    cxDBTextEdit1: TDBText;
    DBText4: TDBText;
    edCosto: TDBEdit;
    MNotas: TDBMemo;
    edNumero: TDBEdit;
    BitBtn1: TBitBtn;
    ImprimirContrato: TAction;
    frDbContrato: TfrxDBDataset;
    dbgAnexos: TJvDBGrid;
    Label51: TLabel;
    dbnContratos: TDBNavigator;
    frDBClienteFicha: TfrxDBDataset;
    dbcTipoServicio: TDBLookupComboBox;
    dbgPlantilla: TJvDBGrid;
    chbVtaCtdo: TDBCheckBox;
    dbcServicio: TJvDBLookupCombo;
    SubPagCupones: TTabSheet;
    GroupBox2: TGroupBox;
    chEceptuadoCorte: TDBCheckBox;
    chPlanPago: TDBCheckBox;
    Label36: TLabel;
    ceCodigoAbono: TJvDBComboEdit;
    DBText3: TDBText;
    dbnAcuerdos: TDBNavigator;
    dbgCondicionesAbono: TJvDBGrid;
    Label61: TLabel;
    dbeCorreo_2: TDBEdit;
    Label62: TLabel;
    dbcTCredito: TDBLookupComboBox;
    dbcBanco: TDBLookupComboBox;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label66: TLabel;
    Label67: TLabel;
    DBEdit6: TDBEdit;
    Label68: TLabel;
    dbgCoeficientes: TJvDBGrid;
    Label69: TLabel;
    ceCliente: TJvDBComboEdit;
    edNombreCliente: TDBEdit;
    dbcCobrador: TJvDBLookupCombo;
    JvDBDateEdit4: TJvDBDateEdit;
    Label71: TLabel;
    Label72: TLabel;
    dbeCodOperativo: TDBEdit;
    Label70: TLabel;
    dbeTarjetaCliente: TDBEdit;
    OpenDialog1: TOpenDialog;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    Label73: TLabel;
    dbgRipsa: TJvDBGrid;
    dbcPrestador: TJvDBLookupCombo;
    Label74: TLabel;
    dbcLstPrestadores: TJvDBLookupCombo;
    DBNavigator1: TDBNavigator;
    Label75: TLabel;
    dbcRecibos: TJvDBLookupCombo;
    Label76: TLabel;
    dbeNombreCompleto: TDBEdit;
    Label46: TLabel;
    cbDeposito: TJvDBLookupCombo;
    dbchFranquicia: TDBCheckBox;
    Label77: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    dbcMesSemestral: TJvDBComboBox;
    pag3: TTabSheet;
    DSGarantes: TDataSource;
    dbgGarantes: TDBGrid;
    dbnGarantes: TDBNavigator;
    DBEdit8: TDBEdit;
    Label78: TLabel;
    DBCheckBox8: TDBCheckBox;
    pag4: TTabSheet;
    dbgMoroso: TJvDBGrid;
    edFecha: TJvDateEdit;
    Consultar: TBitBtn;
    spSelect: TSpeedButton;
    spunselect: TSpeedButton;
    Label88: TLabel;
    DataToXLS2: TDataToXLS;
    btExcelMorosos: TBitBtn;
    DBCheckBox9: TDBCheckBox;
    FormatearCuit: TAction;
    N1: TMenuItem;
    FormatearCuit1: TMenuItem;
    Label89: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    rgRes3668: TGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    dbPresentoF8001: TDBCheckBox;
    JvDBDateEdit2: TJvDBDateEdit;
    JvDBDateEdit3: TJvDBDateEdit;
    DBCheckBox1: TDBCheckBox;
    DBText5: TDBText;
    lbPrecioEspecial: TLabel;
    DBEdit10: TDBEdit;
    Label91: TLabel;
    lbMasIVA: TLabel;
    Label90: TLabel;
    dbcRubros: TDBLookupComboBox;
    Label92: TLabel;
    DBEdit11: TDBEdit;
    ComBuscadorVendedor: TComBuscador;
    ComBuscadorCobradores: TComBuscador;
    ComBuscadorLocalidades: TComBuscador;
    ComBuscadorConVenta: TComBuscador;
    ComBuscadorGrupos: TComBuscador;
    dbgCondVenta: TJvDBGrid;
    dbcPlantilla: TJvDBLookupCombo;
    Label93: TLabel;
    Label94: TLabel;
    DBCheckBox10: TDBCheckBox;
    btOTrabajo: TButton;
    DBEdit12: TDBEdit;
    Label95: TLabel;
    spCC: TSpeedButton;
    VerCC: TAction;
    pag5: TTabSheet;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DBCheckBox11: TDBCheckBox;
    pagFacModelo: TTabSheet;
    DBGrid2: TDBGrid;
    pnGarante: TPanel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    edCod: TDBEdit;
    edNombre: TDBEdit;
    edDire: TDBEdit;
    edLocalidad: TDBEdit;
    edPostal: TDBEdit;
    edTel1: TDBEdit;
    edTel2: TDBEdit;
    edMovil: TDBEdit;
    edCorreo: TDBEdit;
    DBCheckBox7: TDBCheckBox;
    dbcGrupoAbonos: TJvDBLookupCombo;
    EnviarCorreo: TAction;
    spCorreo: TSpeedButton;
    NuevaOSocial: TAction;
    DSObraSocial: TDataSource;
    ModificaOSocial: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    edNick: TDBEdit;
    Label96: TLabel;
    btRipsa: TBitBtn;
    BuscadorRipsa: TAction;
    pagWspro: TTabSheet;
    FDMTCliente: TFDMemTable;
    DSClienteRest: TDataSource;
    ConsultaWPro: TAction;
    pcWispro: TAdvPageControl;
    tsDatos: TAdvTabSheet;
    tsListado: TAdvTabSheet;
    DBGrid3: TDBGrid;
    Button1: TButton;
    edTotalPages: TEdit;
    RESTCliente: TRESTClient;
    RESTRequestCliente: TRESTRequest;
    RESTResponseCliente: TRESTResponse;
    RESTResponseDSACliente: TRESTResponseDataSetAdapter;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Button2: TButton;
    ListarWPro: TAction;
    SpinButton1: TSpinButton;
    edPagina: TEdit;
    RESTClientContrato: TRESTClient;
    RESTRequestContrato: TRESTRequest;
    RESTResponseContrato: TRESTResponse;
    TRESTResponseDSAContrato: TRESTResponseDataSetAdapter;
    FDMTContrato: TFDMemTable;
    DSContratoRest: TDataSource;
    Label103: TLabel;
    Label104: TLabel;
    edCustom_ID: TDBEdit;
    edName: TDBEdit;
    edMail: TDBEdit;
    edAdress: TDBEdit;
    edPassword: TDBEdit;
    edDetails: TDBEdit;
    edState: TDBEdit;
    FDMTClienteid: TStringField;
    FDMTClientepublic_id: TStringField;
    FDMTClientecustom_id: TStringField;
    FDMTClientename: TStringField;
    FDMTClienteemail: TStringField;
    FDMTClientepassword: TStringField;
    FDMTClienteaddress: TStringField;
    FDMTClientephone: TStringField;
    FDMTClientephone_mobile: TStringField;
    FDMTClientephone_mobile_verified: TStringField;
    FDMTClientenational_identification_number: TStringField;
    FDMTClientecity: TStringField;
    FDMTClientestate: TStringField;
    FDMTClientedetails: TStringField;
    FDMTClientecollector_id: TStringField;
    FDMTClienteseller_id: TStringField;
    FDMTClienteneighborhood_id: TStringField;
    FDMTClientecreated_at: TStringField;
    FDMTClienteupdated_at: TStringField;
    FDMTContratoid: TStringField;
    FDMTContratopublic_id: TStringField;
    FDMTContratoplan_id: TStringField;
    FDMTContratoclient_id: TStringField;
    FDMTContratoserver_configuration_id: TStringField;
    FDMTContratostate: TStringField;
    FDMTContratostart_date: TStringField;
    FDMTContratoip: TStringField;
    FDMTContratonetmask: TStringField;
    FDMTContratomac_address: TStringField;
    FDMTContratocoverage_id: TStringField;
    FDMTContratonode_id: TStringField;
    FDMTContratonode_name: TStringField;
    FDMTContratocpe_port: TStringField;
    FDMTContratocpe_protocol: TStringField;
    FDMTContratoceil_dfl_percent: TStringField;
    FDMTContratopppoe_enabled: TStringField;
    FDMTContratopppoe_username: TStringField;
    FDMTContratopppoe_password: TStringField;
    FDMTContratoppp_profile: TStringField;
    FDMTContratodhcp_enabled: TStringField;
    FDMTContratodhcp_server: TStringField;
    FDMTContratodhcp_mac_defined_by_service: TStringField;
    FDMTContratodhcp_mac_address: TStringField;
    FDMTContratocable_modem_enabled: TStringField;
    FDMTContratocable_modem_ip: TStringField;
    FDMTContratocable_modem_mac_address: TStringField;
    FDMTContratocable_modem_gateway: TStringField;
    FDMTContratolatitude: TStringField;
    FDMTContratolongitude: TStringField;
    FDMTContratoaddress_street: TStringField;
    FDMTContratoaddress_number: TStringField;
    FDMTContratoaddress_city: TStringField;
    FDMTContratoaddress_state: TStringField;
    FDMTContratoaddress_country: TStringField;
    FDMTContratoaddress_additional_data: TStringField;
    FDMTContratodetails: TStringField;
    FDMTContratocreated_at: TStringField;
    FDMTContratoupdated_at: TStringField;
    RESTClientPlan: TRESTClient;
    RESTRequestPlan: TRESTRequest;
    RESTResponsePlan: TRESTResponse;
    RESTResponseDSAPlan: TRESTResponseDataSetAdapter;
    FDMTPlan: TFDMemTable;
    FDMTPlanid: TWideStringField;
    FDMTPlanname: TWideStringField;
    FDMTPlanpublic_id: TWideStringField;
    FDMTPlancir: TWideStringField;
    FDMTPlanceil_down_kbps: TWideStringField;
    FDMTPlanceil_up_kbps: TWideStringField;
    FDMTPlanprice: TWideStringField;
    FDMTPlanfrequency_in_months: TWideStringField;
    FDMTPlancontracts_count: TWideStringField;
    FDMTPlancreated_at: TWideStringField;
    FDMTPlanupdated_at: TWideStringField;
    DSPlan: TDataSource;
    Label107: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    MainMenu1: TMainMenu;
    Opciones1: TMenuItem;
    BuscarCodigoFreeAlta1: TMenuItem;
    tbMenu: TToolBar;
    edId: TDBEdit;
    tsFacturas: TAdvTabSheet;
    Panel2: TPanel;
    RESTClientFacturas: TRESTClient;
    RESTRequestFacturas: TRESTRequest;
    RESTResponseFacturas: TRESTResponse;
    RESTResponseDSAFacturas: TRESTResponseDataSetAdapter;
    mtFacturas: TFDMemTable;
    mtFacturasid: TWideStringField;
    mtFacturascontract_id: TWideStringField;
    mtFacturasinvoicing_firm_id: TWideStringField;
    mtFacturaskind_invoice: TWideStringField;
    mtFacturasinvoice_number: TWideStringField;
    mtFacturasfrom: TWideStringField;
    mtFacturasto: TWideStringField;
    mtFacturasissued_at: TWideStringField;
    mtFacturascreated_at: TWideStringField;
    mtFacturasupdated_at: TWideStringField;
    mtFacturasfirst_due_date: TWideStringField;
    mtFacturassecond_due_date: TWideStringField;
    mtFacturasstate: TWideStringField;
    mtFacturasamount: TWideStringField;
    mtFacturasgross_amount: TWideStringField;
    mtFacturastax_amount: TWideStringField;
    mtFacturasdiscount_amount: TWideStringField;
    mtFacturasnet_amount: TWideStringField;
    mtFacturasbalance: TWideStringField;
    mtFacturasconcept: TWideStringField;
    mtFacturaselectronic_enabled: TWideStringField;
    mtFacturasinvoicing_firm_start_activities_date: TWideStringField;
    mtFacturasinvoicing_firm_email: TWideStringField;
    mtFacturasinvoicing_firm_phone: TWideStringField;
    mtFacturasinvoicing_firm_address: TWideStringField;
    mtFacturasinvoicing_firm_zip_code: TWideStringField;
    mtFacturasinvoicing_firm_sale_point: TWideStringField;
    mtFacturasinvoicing_firm_gross_income: TWideStringField;
    mtFacturasinvoicing_firm_company_name: TWideStringField;
    mtFacturasinvoicing_firm_vat_condition: TWideStringField;
    mtFacturasinvoicing_firm_principal_activity: TWideStringField;
    mtFacturasinvoicing_firm_taxpayer_identification_number: TWideStringField;
    mtFacturasclient_name: TWideStringField;
    mtFacturasclient_phone: TWideStringField;
    mtFacturasclient_address: TWideStringField;
    mtFacturasclient_vat_condition: TWideStringField;
    mtFacturasclient_taxpayer_identification_number: TWideStringField;
    mtFacturasclient_national_identification_number: TWideStringField;
    mtFacturasitems: TWideStringField;
    mtFacturaspayment_links: TWideStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DSFacturas: TDataSource;
    cxGrid1DBTableView1kind_invoice: TcxGridDBColumn;
    cxGrid1DBTableView1invoice_number: TcxGridDBColumn;
    cxGrid1DBTableView1from: TcxGridDBColumn;
    cxGrid1DBTableView1to: TcxGridDBColumn;
    cxGrid1DBTableView1created_at: TcxGridDBColumn;
    cxGrid1DBTableView1first_due_date: TcxGridDBColumn;
    cxGrid1DBTableView1second_due_date: TcxGridDBColumn;
    cxGrid1DBTableView1state: TcxGridDBColumn;
    cxGrid1DBTableView1amount: TcxGridDBColumn;
    cxGrid1DBTableView1tax_amount: TcxGridDBColumn;
    cxGrid1DBTableView1discount_amount: TcxGridDBColumn;
    cxGrid1DBTableView1net_amount: TcxGridDBColumn;
    cxGrid1DBTableView1balance: TcxGridDBColumn;
    cxGrid1DBTableView1concept: TcxGridDBColumn;
    cxGrid1DBTableView1invoicing_firm_zip_code: TcxGridDBColumn;
    cxGrid1DBTableView1invoicing_firm_sale_point: TcxGridDBColumn;
    cxGrid1DBTableView1client_name: TcxGridDBColumn;
    cxGrid1DBTableView1client_address: TcxGridDBColumn;
    cxGrid1DBTableView1client_vat_condition: TcxGridDBColumn;
    cxGrid1DBTableView1client_taxpayer_identification_number: TcxGridDBColumn;
    cxGrid1DBTableView1client_national_identification_number: TcxGridDBColumn;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBAdvSearchEdit1: TDBAdvSearchEdit;
    Label105: TLabel;
    edFechaBaja: TJvDBDateEdit;
    DBAdvGrid1: TDBAdvGrid;
    pnListado: TPanel;
    dbgClientes: TDBGrid;
    AdvGridExcelIO1: TAdvGridExcelIO;
    GroupBox5: TGroupBox;
    Label106: TLabel;
    DBEdit13: TDBEdit;
    Label115: TLabel;
    DBEdit21: TDBEdit;
    Label114: TLabel;
    DBEdit19: TDBEdit;
    Label113: TLabel;
    DBEdit20: TDBEdit;
    DBCheckBox12: TDBCheckBox;
    Label112: TLabel;
    JvDBGrid1: TJvDBGrid;
    DBNavigator2: TDBNavigator;
    Label116: TLabel;
    dbcEsquemaLista: TDBLookupComboBox;
    DBEdit18: TDBEdit;
    Label117: TLabel;
    procedure ConfirmaExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarCondVentaExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure ListarExecute(Sender: TObject);
    procedure BuscaLocalidadExecute(Sender: TObject);
    procedure dbgCondVentaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgCondVentaColEnter(Sender: TObject);
    procedure dbgCondVentaEditButtonClick(Sender: TObject);
    procedure dbgCondVentaKeyPress(Sender: TObject; var Key: Char);
    procedure CancelarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AgendarExecute(Sender: TObject);
    procedure BuscaVendedorExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbcListaPreciosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcListaPreciosExit(Sender: TObject);
    procedure chbPercibeIBClick(Sender: TObject);
    procedure chbInscrMulticonvenioClick(Sender: TObject);
    procedure dbeCuitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblZonaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxcVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbcVendedorChange(Sender: TObject);
    procedure dbcZonaChange(Sender: TObject);
    procedure BuscaCobradoresExecute(Sender: TObject);
    procedure rxcCobradorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImprimirFichaExecute(Sender: TObject);
    procedure BuscaGruposExecute(Sender: TObject);
    procedure ceCodigoAbonoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeNombreEnter(Sender: TObject);
    procedure dbeCodigoEnter(Sender: TObject);
    procedure dbeNombreExit(Sender: TObject);
    procedure dbeCodigoExit(Sender: TObject);
    procedure dblCategoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  
    procedure dbgClientesDblClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure CambiarCodigoExecute(Sender: TObject);
    procedure GeoPosicionarExecute(Sender: TObject);
    procedure dbcFcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcNDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcNCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcTkKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcFcEnter(Sender: TObject);
    procedure dbcNCEnter(Sender: TObject);
    procedure dbcNDEnter(Sender: TObject);
    procedure dbcFOEnter(Sender: TObject);
    procedure dbcTkEnter(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure dbchDeuda30Click(Sender: TObject);
    procedure dbchFranquiciaClick(Sender: TObject);
    procedure VerIncidenciasExecute(Sender: TObject);
    procedure chEceptuadoCorteClick(Sender: TObject);
    procedure ceCodigoAbonoKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirContratoExecute(Sender: TObject);
    procedure dbgAnexosEditButtonClick(Sender: TObject);
    procedure dbgAnexosDblClick(Sender: TObject);
    procedure dbcTipoServicioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPlantillaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPlantillaColEnter(Sender: TObject);
    procedure dbgPlantillaEnter(Sender: TObject);
    procedure chbEmiteFacturaClick(Sender: TObject);
    function dbgCondicionesAbonoCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure dbgCondicionesAbonoKeyPress(Sender: TObject; var Key: Char);
    function dbgCoeficientesCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure dbcBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcTCreditoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcRecibosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcRecibosEnter(Sender: TObject);
    procedure dbgGarantesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure spSelectClick(Sender: TObject);
    procedure spunselectClick(Sender: TObject);
    procedure ConsultarClick(Sender: TObject);
    procedure dbgMorosoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    function dbgMorosoCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure dbgMorosoColEnter(Sender: TObject);
    procedure btExcelMorososClick(Sender: TObject);
    procedure FormatearCuitExecute(Sender: TObject);
    procedure Label72Click(Sender: TObject);
    procedure Label72MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    function dbgCondVentaCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure dbcPlantillaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcTipoAbonoChange(Sender: TObject);
    procedure btOTrabajoClick(Sender: TObject);
    procedure VerCCExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure BuscadorRipsaExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ConsultaWProExecute(Sender: TObject);
    procedure edPaginaChange(Sender: TObject);
    procedure ListarWProExecute(Sender: TObject);
    procedure BuscarCodigoFreeAlta1Click(Sender: TObject);
    procedure mtFacturaskind_invoiceGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mtFacturasstateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure mtFacturasinvoice_numberGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure mtFacturasinvoicing_firm_sale_pointGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FDMTContratostateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBAdvSearchEdit1Select(Sender: TObject);
    procedure cbEstadoChange(Sender: TObject);
    procedure DBAdvGrid1GetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure AdvGridExcelIO1ExportColumnFormat(Sender: TObject; GridCol,
      GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
      var ExportCellAsString: Boolean);
    procedure dbgClientesTitleClick(Column: TColumn);
    procedure dbeNumeroDocumentoKeyPress(Sender: TObject; var Key: Char);
    procedure dbcEsquemaListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
   // procedure Recuperar(dato:string);
    { Public declarations }
  end;

var
  FormClientes_2: TFormClientes_2;
  ListaNoEnviados,ListaEnviados:TStringList;
implementation

uses DMClientes, UBuscadorClientes, UCambioCodigoCliente,UDMain_FD,
     UGoogleMap, DMStoreProcedureForm, DMContableForm{, UBrowser},
     UClientesIncidencias, UAgenda, UOrdenDeTrabajo, DMOrdenTrabajo, UCtaCteVta,
     UBuscadorTipoCpbte, UBuscadorDepositos, UCorreo, UAltaObraSocial, UBuscadorCodRipsa;

{$R *.DFM}



procedure TFormClientes_2.ConfirmaExecute(Sender: TObject);
var TipoMov:char;
DetalleLog:String;

begin
  if DSBase.State in [dsInsert] then
    TipoMov:='I'
  else
    if DSBase.State in [dsEdit] then
      TipoMov:='E';

  if chbVtaCtdo.Checked=False then
    DatosClientes.CDSClientesVENDER_DE_CTDO.Value:='N';


  if (datosClientes.CDSClientesTIPOABONO.Value='X') and (DatosClientes.CDSClientesID_PLANTILLA.value>0) then
    Raise Exception.Create('Se selecciono sin Abono y hay plantillas corrija la seleccion ...');

  if (datosClientes.CDSClientesTIPOABONO.Value<>'X') and (VarIsNull(DatosClientes.CDSClientesID_PLANTILLA.value) or (DatosClientes.CDSClientesID_PLANTILLA.value<0))  then
    Raise Exception.Create('Se selecciono Con Abono y no hay plantillas corrija la seleccion ...');

  if ((DatosClientes.CDSClientesNro_de_CUIT.AsString='') or (DatosClientes.CDSClientesNro_de_CUIT.AsString='00-00000000-0'))
      and (DatosClientes.CDSClientesCONDICION_IVA.Value<>3) Then
    Raise Exception.Create('Para La condicion de IVA Dada El Nro de CUIT esta vacio ...');

  if ((DatosClientes.CDSClientesNOMBRE.AsString='') or (DatosClientes.CDSClientesRAZON_SOCIAL.AsString='')) Then
    Raise Exception.Create('No tiene Nombre/Razon Social....');

  if (datosClientes.CDSClientesTIPOABONO.Value<>'X') and (VarIsNull(DatosClientes.CDSClientesID_PLANTILLA.value) or (DatosClientes.CDSClientesID_PLANTILLA.value<0))  then
    DatosClientes.CDSClientesID_PLANTILLA.value:=-1;

  if (DatosClientes.CDSClientesTIPODOCUMENTO.Value>0) and (DatosClientes.CDSClientesNRODOCUMENTO.AsString='')  Then
    Raise Exception.Create('No Hay Nro de Documento....');

  if ((DatosClientes.CDSClientesDIRECCION_COMERCIAL.AsString='')) Then
    Raise Exception.Create('Falta la Direccion....');

  if ((DatosClientes.CDSClientesID_COD_POSTAL.AsString='')) Then
    Raise Exception.Create('Falta Localidad....');

  DatosClientes.QBuscaCodigo.Close;
  DatosClientes.QBuscaCodigo.ParamByName('codigo').Value:=DatosClientes.CDSClientesCodigo.Value;
  DatosClientes.QBuscaCodigo.Open;
  if (Not(DatosClientes.QBuscaCodigo.IsEmpty)) and (DSBase.State=dsInsert) Then
    Raise Exception.Create('Codigo ya ingresado... VERIFICAR');
  DatosClientes.QBuscaCodigo.Close;


  IF DatosClientes.CDSCondVenta.state <> dsBrowse THEN
    DatosClientes.CDSCondVenta.Post;


  IF DatosClientes.CDSCondAbono.state <> dsBrowse THEN
    DatosClientes.CDSCondAbono.Post;

  IF DatosClientes.CDSLdr.State <> dsBrowse THEN
    DatosClientes.CDSLdr.Post;

  IF DatosClientes.CDSLdr.IsEmpty THEN
    BEGIN
      DatosClientes.CDSLdr.Insert;
      DatosClientes.CDSLdrCodigo_Ldr.Value     := 0;
      DatosClientes.CDSLdrCodigo_Cliente.Value := DatosClientes.CDSClientesCodigo.Value;
      DatosClientes.CDSLdrNombre.Value         := DatosClientes.CDSClientesNOMBRE.Value;
      DatosClientes.CDSLdrDireccion.Value      := DatosClientes.CDSClientesDireccion_Comercial.Value;
      DatosClientes.CDSLdrCPostal.Value        := DatosClientes.CDSClientesCPostal.Value;
      DatosClientes.CDSLdr.Post;
    END;

  //Reasigno el codigo de cliente por si se cambio el que dio el sistema
  if (DatosClientes.CDSCondVenta.RecordCount>0) and (DatosClientes.CDSClientesCODIGO.OldValue<>DatosClientes.CDSClientesCODIGO.NewValue) Then
    begin
      DatosClientes.CDSCondVenta.First;
      while Not(DatosClientes.CDSCondVenta.Eof) DO
        begin
          DatosClientes.CDSCondVenta.Edit;
          DatosClientes.CDSCondVentaCodigoCliente.Value:=DatosClientes.CDSClientesCodigo.Value;
          DatosClientes.CDSCondVenta.Post;
          DatosClientes.CDSCondVenta.Next;
        end;
    end;

  IF DatosClientes.CDSCondVenta.state <> dsBrowse THEN
    DatosClientes.CDSCondVenta.Post;

  if DatosClientes.CDSClientesNombre.AsString<>'' Then
    if DatosClientes.CDSClientesCondicion_Iva.AsString<>'' Then
      begin
        if DatosClientes.CDSClientesNro_de_CUIT.AsString='' Then
          DatosClientes.CDSClientesNro_de_CUIT.AsString:='00-00000000-0';

        if DatosClientes.CDSClientes.State<>dsBrowse Then
          DatosClientes.CDSClientes.Post;
        DatoNew:=DatosClientes.CDSClientesCodigo.AsString;

        DetalleLog:= 'Modificación Cliente: '+DatosClientes.CDSClientesCODIGO.Value+': '+Trim(DatosClientes.CDSClientesNOMBRE.Value);

        if (DatosClientes.CDSClientesCODIGO.OldValue<>DatosClientes.CDSClientesCODIGO.NewValue) Then
          DetalleLog:= DetalleLog+' Cambio de Codigo:'+DatosClientes.CDSClientesCODIGO.OldValue+'>>'+DatosClientes.CDSClientesCODIGO.NewValue;

        if  (Not(VarIsNull(DatosClientes.CDSClientesNRO_DE_CUIT.OldValue))) and (DatosClientes.CDSClientesNRO_DE_CUIT.OldValue<>DatosClientes.CDSClientesNRO_DE_CUIT.NewValue) Then
          if (VarIsNull(DatosClientes.CDSClientesNRO_DE_CUIT.OldValue)) Then
            DetalleLog:=DetalleLog+' Cambio Cuit: >>'+DatosClientes.CDSClientesNRO_DE_CUIT.NewValue
          else
            DetalleLog:=DetalleLog+' Cambio Cuit:'+DatosClientes.CDSClientesNRO_DE_CUIT.OldValue +'>>'+DatosClientes.CDSClientesNRO_DE_CUIT.NewValue;


        if (DatosClientes.CDSClientesTELEFONO_COMERCIAL_1.OldValue<>DatosClientes.CDSClientesTELEFONO_COMERCIAL_1.NewValue) Then
          if (Not(VarIsNull(DatosClientes.CDSClientesTELEFONO_COMERCIAL_1.OldValue))) and (DatosClientes.CDSClientesTELEFONO_COMERCIAL_1.OldValue<>DatosClientes.CDSClientesTELEFONO_COMERCIAL_1.NewValue) Then
            DetalleLog:=DetalleLog+' Cambio de Telefono 1:'+ DatosClientes.CDSClientesTELEFONO_COMERCIAL_1.OldValue+'>>'+DatosClientes.CDSClientesTELEFONO_COMERCIAL_1.NewValue
          else
            DetalleLog:= DetalleLog+' Cambio de Telefono 1: >>'+DatosClientes.CDSClientesTELEFONO_COMERCIAL_1.NewValue;

        if (DatosClientes.CDSClientesTELEFONO_COMERCIAL_2.OldValue<>DatosClientes.CDSClientesTELEFONO_COMERCIAL_2.NewValue) Then
          if  (Not(VarIsNull(DatosClientes.CDSClientesTELEFONO_COMERCIAL_2.OldValue))) and (DatosClientes.CDSClientesTELEFONO_COMERCIAL_2.OldValue<>DatosClientes.CDSClientesTELEFONO_COMERCIAL_1.NewValue) Then
            DetalleLog:= DetalleLog+' Cambio de Telefono 2:'+DatosClientes.CDSClientesTELEFONO_COMERCIAL_2.OldValue+'>>'+DatosClientes.CDSClientesTELEFONO_COMERCIAL_2.NewValue
          else
            DetalleLog:=DetalleLog+' Cambio de Telefono 2: >>'+DatosClientes.CDSClientesTELEFONO_COMERCIAL_2.NewValue;

        if (DatosClientes.CDSClientesTELEFONO_CELULAR.OldValue<>DatosClientes.CDSClientesTELEFONO_CELULAR.NewValue) Then
          if  (Not(VarIsNull(DatosClientes.CDSClientesTELEFONO_CELULAR.OldValue))) and (DatosClientes.CDSClientesTELEFONO_CELULAR.OldValue<>DatosClientes.CDSClientesTELEFONO_CELULAR.NewValue) Then
            DetalleLog:= DetalleLog+' Cambio de Telefono Movil:'+DatosClientes.CDSClientesTELEFONO_CELULAR.OldValue+'>>'+DatosClientes.CDSClientesTELEFONO_CELULAR.NewValue
          else
            DetalleLog:=DetalleLog+' Cambio de Telefono Movil: >>'+DatosClientes.CDSClientesTELEFONO_CELULAR.NewValue;

        if (DatosClientes.CDSClientesDIRECCION_COMERCIAL.OldValue<>DatosClientes.CDSClientesDIRECCION_COMERCIAL.NewValue) Then
          if VarIsNull(DatosClientes.CDSClientesDIRECCION_COMERCIAL.OldValue)  then
            DetalleLog:=DetalleLog+' Cambio Direccion:'+'..'+'>>'+DatosClientes.CDSClientesDIRECCION_COMERCIAL.NewValue
          else
            DetalleLog:=DetalleLog+' Cambio Direcciòn:'+ DatosClientes.CDSClientesDIRECCION_COMERCIAL.OldValue+'>>'+DatosClientes.CDSClientesDIRECCION_COMERCIAL.NewValue;

        if (DatosClientes.CDSClientesRAZON_SOCIAL.OldValue<>DatosClientes.CDSClientesRAZON_SOCIAL.NewValue) Then
          DetalleLog:=DetalleLog+  ' Cambio R.Social:'+ DatosClientes.CDSClientesRAZON_SOCIAL.OldValue+'>>'+DatosClientes.CDSClientesRAZON_SOCIAL.NewValue;

        if (DatosClientes.CDSClientesTIPOABONO.OldValue<>DatosClientes.CDSClientesTIPOABONO.NewValue) Then
          if VarIsNull(DatosClientes.CDSClientesTIPOABONO.OldValue) then
            DetalleLog:=DetalleLog+ ' Cambio Tipo de Abono:'+' .. '+'>>'+DatosClientes.CDSClientesTIPOABONO.NewValue
          else
            DetalleLog:=DetalleLog+ ' Cambio Tipo de Abono:'+DatosClientes.CDSClientesTIPOABONO.OldValue+'>>'+DatosClientes.CDSClientesTIPOABONO.NewValue;

        if (DatosClientes.CDSClientesMES_ABONOANUAL.OldValue<>DatosClientes.CDSClientesMES_ABONOANUAL.NewValue) Then
          if VarIsNull(DatosClientes.CDSClientesMES_ABONOANUAL.OldValue) then
            DetalleLog:=DetalleLog+ ' Cambio Mes de Abono:'+' .. '+'>>'+IntToStr(DatosClientes.CDSClientesMES_ABONOANUAL.NewValue)
          else
            DetalleLog:=DetalleLog+ ' Cambio Mes de Abono:'+ IntToStr(DatosClientes.CDSClientesMES_ABONOANUAL.OldValue)+'>>'+IntToStr(DatosClientes.CDSClientesMES_ABONOANUAL.NewValue);

        if (DatosClientes.CDSClientesACTIVO.OldValue<>DatosClientes.CDSClientesACTIVO.NewValue) Then
          DetalleLog:=DetalleLog+' Cambio de Estado Cliente:'+ DatosClientes.CDSClientesACTIVO.OldValue+' >> pasa a '+cbEstado.Text+'('+DatosClientes.CDSClientesACTIVO.NewValue+')';

        if (DatosClientes.CDSClientesFECHA_INCIO_FC_ABONO.OldValue<>DatosClientes.CDSClientesFECHA_INCIO_FC_ABONO.NewValue) Then
          begin
            if Not(VarisNull(DatosClientes.CDSClientesFECHA_INCIO_FC_ABONO.OldValue)) then
              DetalleLog:=DetalleLog+ ' Cambio Fecha Inicio Abono:'+ DateToStr(DatosClientes.CDSClientesFECHA_INCIO_FC_ABONO.OldValue)+'>>'+DateToStr(DatosClientes.CDSClientesFECHA_INCIO_FC_ABONO.NewValue)
            else
               DetalleLog:=DetalleLog+ ' Cambio Fecha Inicio Abono:'+ 'Sin Fecha'+'>>'+DateToStr(DatosClientes.CDSClientesFECHA_INCIO_FC_ABONO.NewValue)
          end;


        if (DatosClientes.CDSClientesID_FACTURAPORDEFECTO.OldValue<>DatosClientes.CDSClientesID_FACTURAPORDEFECTO.NewValue) Then
          begin
           if Not(VarisNull(DatosClientes.CDSClientesID_FACTURAPORDEFECTO.OldValue)) and Not(VarisNull(DatosClientes.CDSClientesID_FACTURAPORDEFECTO.NewValue)) then
              DetalleLog:=DetalleLog+ '** Cambio Fc.Por Defecto:'+ intToStr(DatosClientes.CDSClientesID_FACTURAPORDEFECTO.OldValue)+'>>'+IntToStr(DatosClientes.CDSClientesID_FACTURAPORDEFECTO.NewValue)
            else
              if Not(VarisNull(DatosClientes.CDSClientesID_FACTURAPORDEFECTO.OldValue)) and (VarisNull(DatosClientes.CDSClientesID_FACTURAPORDEFECTO.NewValue)) then
                DetalleLog:=DetalleLog+ '** Cambio Fc.por Defecto:'+IntToStr(DatosClientes.CDSClientesID_FACTURAPORDEFECTO.OldValue) + '>> Vacio'
            else
              if Not(VarisNull(DatosClientes.CDSClientesID_FACTURAPORDEFECTO.NewValue)) and (VarisNull(DatosClientes.CDSClientesID_FACTURAPORDEFECTO.OldValue)) then
                DetalleLog:=DetalleLog+ '** Cambio Fc.por Defecto:'+' de Vacio >>'+IntToStr(DatosClientes.CDSClientesID_FACTURAPORDEFECTO.NewValue);
          end;


        if (DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.OldValue<>DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.NewValue) Then
          begin
           if Not(VarisNull(DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.OldValue)) and Not(VarisNull(DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.NewValue)) then
              DetalleLog:=DetalleLog+ '** Cambio Fc.Por Defecto:'+ intToStr(DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.OldValue)+'>>'+IntToStr(DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.NewValue)
            else
              if Not(VarisNull(DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.OldValue)) and (VarisNull(DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.NewValue)) then
                DetalleLog:=DetalleLog+ '** Cambio Fc.por Defecto:'+IntToStr(DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.OldValue) + '>> Vacio'
            else
              if Not(VarisNull(DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.NewValue)) and (VarisNull(DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.OldValue)) then
                DetalleLog:=DetalleLog+ '** Cambio Fc.por Defecto:'+' de Vacio >>'+IntToStr(DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.NewValue);
          end;

        if (DatosClientes.CDSClientesID_COD_POSTAL.OldValue<>DatosClientes.CDSClientesID_COD_POSTAL.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesID_COD_POSTAL.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Localidad: >> '+IntToStr(DatosClientes.CDSClientesID_COD_POSTAL.NewValue)
            else
              DetalleLog:=DetalleLog+' Cambio de Localidad:'+ IntToStr(DatosClientes.CDSClientesID_COD_POSTAL.OldValue) +'>>'+IntToStr(DatosClientes.CDSClientesID_COD_POSTAL.NewValue);

        if (DatosClientes.CDSClientesPLANTILLA_CIVA.OldValue<>DatosClientes.CDSClientesPLANTILLA_CIVA.NewValue) Then
          if VarIsNull(DatosClientes.CDSClientesPLANTILLA_CIVA.OldValue) then
            DetalleLog:=DetalleLog+' Cambio de IVA Plantilla: >>'+DatosClientes.CDSClientesPLANTILLA_CIVA.NewValue
          else
            DetalleLog:=DetalleLog+' Cambio de IVA Plantilla:'+ DatosClientes.CDSClientesPLANTILLA_CIVA.OldValue+'>>'+DatosClientes.CDSClientesPLANTILLA_CIVA.NewValue;

        if (DatosClientes.CDSClientesCOBRADOR.OldValue<>DatosClientes.CDSClientesCOBRADOR.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesCOBRADOR.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Cobrador: >> '+DatosClientes.CDSClientesCOBRADOR.NewValue
            else
              DetalleLog:=DetalleLog+' Cambio de Conbrador:'+ DatosClientes.CDSClientesCOBRADOR.OldValue +'>>'+DatosClientes.CDSClientesCOBRADOR.NewValue;

        if (DatosClientes.CDSClientesVENDEDOR.OldValue<>DatosClientes.CDSClientesVENDEDOR.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesVENDEDOR.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Vendedor: >> '+DatosClientes.CDSClientesVENDEDOR.NewValue
            else
              DetalleLog:=DetalleLog+' Cambio de Vendedor:'+ DatosClientes.CDSClientesVENDEDOR.OldValue +'>>'+DatosClientes.CDSClientesVENDEDOR.NewValue;

        if (DatosClientes.CDSClientesCORREOELECTRONICO.OldValue<>DatosClientes.CDSClientesCORREOELECTRONICO.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesCORREOELECTRONICO.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Correo 1: >> '+DatosClientes.CDSClientesCORREOELECTRONICO.NewValue
            else
              DetalleLog:=DetalleLog+' Cambio de Correo 1:'+ DatosClientes.CDSClientesCORREOELECTRONICO.OldValue +'>>'+DatosClientes.CDSClientesCORREOELECTRONICO.NewValue;

        if (DatosClientes.CDSClientesCORREOELECTRONICO_2.OldValue<>DatosClientes.CDSClientesCORREOELECTRONICO_2.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesCORREOELECTRONICO_2.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Correo 2: >> '+DatosClientes.CDSClientesCORREOELECTRONICO_2.NewValue
            else
              DetalleLog:=DetalleLog+' Cambio de Correo 2:'+ DatosClientes.CDSClientesCORREOELECTRONICO_2.OldValue +'>>'+DatosClientes.CDSClientesCORREOELECTRONICO_2.NewValue;

        if (DatosClientes.CDSClientesSUCURSAL.OldValue<>DatosClientes.CDSClientesSUCURSAL.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesSUCURSAL.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Sucursal: >> '+IntToStr(DatosClientes.CDSClientesSUCURSAL.NewValue)
            else
              DetalleLog:=DetalleLog+' Cambio de Sucursal:'+ IntToStr(DatosClientes.CDSClientesSUCURSAL.OldValue) +'>>'+IntToStr(DatosClientes.CDSClientesSUCURSAL.NewValue);

        if (DatosClientes.CDSClientesZONA.OldValue<>DatosClientes.CDSClientesZONA.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesZONA.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Zona: >> '+IntToStr(DatosClientes.CDSClientesZONA.NewValue)
            else
              DetalleLog:=DetalleLog+' Cambio de Zona:'+ IntToStr(DatosClientes.CDSClientesZONA.OldValue) +'>>'+IntToStr(DatosClientes.CDSClientesZONA.NewValue);

        if (DatosClientes.CDSClientesCONDICION_IVA.OldValue<>DatosClientes.CDSClientesCONDICION_IVA.NewValue) Then

          if  VarIsNull(DatosClientes.CDSClientesCONDICION_IVA.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Con.IVA: >> '+IntToStr(DatosClientes.CDSClientesCONDICION_IVA.NewValue)
            else
              DetalleLog:=DetalleLog+' Cambio de Cond.IVA:'+ IntToStr(DatosClientes.CDSClientesCONDICION_IVA.OldValue) +'>>'+ IntToStr(DatosClientes.CDSClientesCONDICION_IVA.NewValue);

        if (DatosClientes.CDSClientesMES_ADICIONAL.OldValue<>DatosClientes.CDSClientesMES_ADICIONAL.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesMES_ADICIONAL.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Mes Hosting: >> '+IntToStr(DatosClientes.CDSClientesMES_ADICIONAL.NewValue)
            else
              DetalleLog:=DetalleLog+' Cambio de Mes Hosting:'+ IntToStr(DatosClientes.CDSClientesMES_ADICIONAL.OldValue) +'>>'+ IntToStr(DatosClientes.CDSClientesMES_ADICIONAL.NewValue);

        if (DatosClientes.CDSClientesCON_MONITOREO.OldValue<>DatosClientes.CDSClientesCON_MONITOREO.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesCON_MONITOREO.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Monitoreo: >> '+(DatosClientes.CDSClientesCON_MONITOREO.NewValue)
            else
              DetalleLog:=DetalleLog+' Cambio de Monitoreo:'+ (DatosClientes.CDSClientesCON_MONITOREO.OldValue) +'>>'+ (DatosClientes.CDSClientesCON_MONITOREO.NewValue);

        if (DatosClientes.CDSClientesCON_GPRS.OldValue<>DatosClientes.CDSClientesCON_GPRS.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesCON_GPRS.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de GPRS: >> '+(DatosClientes.CDSClientesCON_GPRS.NewValue)
            else
              DetalleLog:=DetalleLog+' Cambio de GPRS:'+ (DatosClientes.CDSClientesCON_GPRS.OldValue) +'>>'+ (DatosClientes.CDSClientesCON_GPRS.NewValue);

        if (DatosClientes.CDSClientesCON_HOSTING.OldValue<>DatosClientes.CDSClientesCON_HOSTING.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesCON_HOSTING.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Hosting: >> '+(DatosClientes.CDSClientesCON_HOSTING.NewValue)
            else
              DetalleLog:=DetalleLog+' Cambio de Hosting:'+ (DatosClientes.CDSClientesCON_HOSTING.OldValue) +'>>'+ (DatosClientes.CDSClientesCON_HOSTING.NewValue);

        if (DatosClientes.CDSClientesID_PRESTADOR.OldValue<>DatosClientes.CDSClientesID_PRESTADOR.NewValue) Then
          if  VarIsNull(DatosClientes.CDSClientesID_PRESTADOR.OldValue) Then
              DetalleLog:= DetalleLog+' Cambio de Prestador: >> '+INtToStr(DatosClientes.CDSClientesID_PRESTADOR.NewValue)
            else
              DetalleLog:=DetalleLog+' Cambio de Prestador:'+ IntToStr(DatosClientes.CDSClientesID_PRESTADOR.OldValue) +'>>'+ IntToStr(DatosClientes.CDSClientesID_PRESTADOR.NewValue);

        if VarIsNull( DatosClientes.CDSClientesID_PLANTILLA.OldValue) then
          DetalleLog:=DetalleLog+ '** Cambio de Plantilla:'+' >>'+IntToStr(DatosClientes.CDSClientesID_PLANTILLA.NewValue)
        else
          if DatosClientes.CDSClientesID_PLANTILLA.OldValue<>DatosClientes.CDSClientesID_PLANTILLA.NewValue then
            DetalleLog:=DetalleLog+ '** Cambio de Plantilla:'+IntToStr(DatosClientes.CDSClientesID_PLANTILLA.OldValue)+' >> '+INtToStr(DatosClientes.CDSClientesID_PLANTILLA.NewValue);

        if VarIsNull(DatosClientes.CDSClientesESQUEMALISTA.value) then
          DatosClientes.CDSClientesESQUEMALISTA.Value:=-1;

        inherited;
     // **** Ingreso en el Log File  **************
        if TipoMov='E' then// por que viene de una modificacion
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DMMain_FD.LogFileFD(0,2,DetalleLog,'CLIENTES');
           // ******************************************
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('NO se ingreso registro en el LogFile....!');
          end;
        end;
       // ******************************************
        Recuperar.Execute;
        if (Visible) and (Enabled) then btNuevo.SetFocus;
        DatosClientes.CDSLstClientes.IndexDefs.Clear;
      end
    else
      ShowMessage('Falta Condicion de Iva')
  else
    ShowMessage('Falta Nombre');
//  PageControl1.ActivePageIndex:=0;
//  PageControl2.ActivePageIndex:=0;
end;

procedure TFormClientes_2.ConsultarClick(Sender: TObject);
begin
  inherited;
  DatosClientes.CDSCtrMorosos.Close;
  DatosClientes.CDSCtrMorosos.IndexDefs.Clear;
  DatosClientes.CDSCtrMorosos.IndexFieldNames:='';
  DatosClientes.CDSCtrMorosos.Params.ParamByName('fecha').AsDate:=edFecha.Date;
  DatosClientes.CDSCtrMorosos.Open;
  DatosClientes.CDSCtrMorosos.IndexFieldNames:='sum';
end;


procedure TFormClientes_2.ListarWProExecute(Sender: TObject);
var
  TotalPaginas,PaginaNro:string;
  js:TlkJSONobject;
begin
  inherited;
  RESTRequestCliente.Params.ParameterByName('page').Value          := edPagina.Text;
  RESTRequestCliente.Params.ParameterByName('Authorization').Value := TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
  RESTRequestCliente.Params.ParameterByName('custom_id_eq').Value  := '';

  RESTRequestCliente.Execute;

  js:= TlkJSON.ParseText(RESTResponseCliente.Content) as TlkJSONobject;
  TotalPaginas := VarToStr(js.Field['meta'].Field['pagination'].Field['total_pages'].Value);
  PaginaNro    := VarToStr(js.Field['meta'].Field['pagination'].Field['current_page'].Value);

  edTotalPages.Text := TotalPaginas;
  edPagina.Text     := PaginaNro;
 // edPagina.MaxValue := StrToInt(TotalPaginas);
  js.Free;
end;


procedure TFormClientes_2.mtFacturasinvoice_numberGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  text:= AnsiRightStr('00000000'+mtFacturasinvoice_number.VAlue,8);
end;

procedure TFormClientes_2.mtFacturasinvoicing_firm_sale_pointGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
text:= AnsiRightStr('00000000'+mtFacturasinvoicing_firm_sale_point.VAlue,4);
end;

procedure TFormClientes_2.mtFacturaskind_invoiceGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='argentina_b' Then Text:='FAC B' else
  if Sender.AsString='argentina_a' Then Text:='FAC A' else
  Text:=Sender.AsString;
end;

procedure TFormClientes_2.mtFacturasstateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='draft' then Text:='BORRADOR';
  if Sender.AsString='authorizing' then Text:='AUTORIZADA';
  if Sender.AsString='authorizing_error' then Text:='ERROR AUTOR.';
  if Sender.AsString='pending' then Text:='PEND.PAGO';
  if Sender.AsString='paid' then Text:='PAGADA';
  if Sender.AsString='void' then Text:='ANULADA';
  if Sender.AsString='issuing' tHEN Text:='EN COLA';


end;

procedure TFormClientes_2.ConsultaWProExecute(Sender: TObject);
var
  TotalPaginas,PaginaNro,Id_Str:string;
  js:TlkJSONobject;
begin
  inherited;
  RESTCliente.BaseURL      :='https://www.cloud.wispro.co/api/v1/clients';
  RESTRequestCliente.Params.ParameterByName('Authorization').Value := TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
  RESTRequestCliente.Params.ParameterByName('page').Value          := '1';
  if DSBase.DataSet.FieldByName('CODIGO').AsString<>'' then
    RESTRequestCliente.Params.ParameterByName('custom_id_eq').Value  := DSBase.DataSet.FieldByName('CODIGO').Value
  else
    RESTRequestCliente.Params.ParameterByName('custom_id_eq').Value  := '';
  RESTRequestCliente.Execute;


  Id_Str:= edId.Text;// FDMTClienteid.AsString;

  js:= TlkJSON.ParseText(RESTResponseCliente.Content) as TlkJSONobject;

  TotalPaginas := VarToStr(js.Field['meta'].Field['pagination'].Field['total_pages'].Value);
  PaginaNro    := VarToStr(js.Field['meta'].Field['pagination'].Field['current_page'].Value);

  RESTRequestContrato.Params.ParameterByName('Authorization').Value := TokenWispro;   //  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
  RESTRequestContrato.Params.ParameterByName('client_id_eq').Value  := Id_Str;        //FDMTClienteid.AsString;// TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
  RESTRequestContrato.Execute;

  RESTClientPlan.BaseURL:= 'https://www.cloud.wispro.co/api/v1/plans/'+FDMTContratoplan_id.Value;   //5b1d27a6-9f6b-40a7-b9f4-58580346b39f
  RESTRequestPlan.Params.ParameterByName('Authorization').Value := TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
  RESTRequestPlan.Execute;

  RESTClientFacturas.BaseURL:= 'https://www.cloud.wispro.co/api/v1/invoicing/invoices/';   //5b1d27a6-9f6b-40a7-b9f4-58580346b39f
  RESTRequestFacturas.Params.ParameterByName('Authorization').Value := TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
  RESTRequestFacturas.Params.ParameterByName('client_custom_id_eq').Value  := DSBase.DataSet.FieldByName('CODIGO').Value;
  RESTRequestFacturas.Execute;


 //  s := '{"string1":"123","\"string2\"":"two",'+
//    '"childobject":{"objstr1":"Oone","objstr2":"Otwo"}}';
//  js := TlkJSON.ParseText(s) as TlkJSONobject;
//
//  s2 := vartostr(js.Field['"string2"'].Value);
//  writeln(s2);
//
//  readln;
//  js.Free;
//  pag := Copy(TRESTResponse1.Content,1,100);
  //edTotalPages.Text := TotalPaginas;
//  edPagina.Text     := PaginaNro;
 // edPagina.MaxValue:=StrToInt(TotalPaginas);
  js.Free;
end;

procedure TFormClientes_2.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  colIndex: integer;
  enCero :boolean;
begin
    colIndex  := cxGrid1DBTableView1state.Index;

{
if Sender.AsString='draft' then Text:='BORRADOR';
  if Sender.AsString='authorizing' then Text:='AUTORIZADA';
  if Sender.AsString='authorizing_error' then Text:='ERROR AUTOR.';
  if Sender.AsString='pending' then Text:='PEND.PAGO';
  if Sender.AsString='paid' then Text:='PAGADA';
  if Sender.AsString='void' then Text:='ANULADA';
  if Sender.AsString='issuing' tHEN Text:='EN COLA';
}
    if AViewInfo.Selected then
//  if AViewInfo.Item.Focused then
      begin
        ACanvas.Font.Color  := clWhite;
        ACanvas.Brush.Color := clBlue;
      end
    else
      begin
        if AviewInfo.GridRecord.Values[colIndex]='paid' then
          ACanvas.Font.Color := clGreen else
        if AviewInfo.GridRecord.Values[colIndex]='authorizing_error' then
          ACanvas.Font.Color := clRed else
        if AviewInfo.GridRecord.Values[colIndex]='void' then
          ACanvas.Font.Color := clRed else
        if AviewInfo.GridRecord.Values[colIndex]='issuing' then
          ACanvas.Font.Color := clRed else
        if AviewInfo.GridRecord.Values[colIndex]='draft' then
          ACanvas.Font.Color := clBlue else
       if AviewInfo.GridRecord.Values[colIndex]='issuing' then
          ACanvas.Font.Color := clMaroon else


          begin
            ACanvas.Font.Color := clBlack;

          end;
      end;
end;

procedure TFormClientes_2.DBAdvGrid1GetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  inherited;
//  if ACol=0 then
    AStyle := ssAlphabetic;
//  case ACol of
//    10..15: AStyle := ssAlphabetic;
//  end;
end;

procedure TFormClientes_2.DBAdvSearchEdit1Select(Sender: TObject);
begin
  inherited;
  if FDMTCliente.Locate('CODIGO',DBAdvSearchEdit1.SearchList.SelectedItem.Captions[0],[]) then
    dbgClientes.SetFocus;
end;

procedure TFormClientes_2.btExcelMorososClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT ( DatosClientes.CDSCtrMorosos.IsEmpty) THEN
    BEGIN
      DatosClientes.CDSCtrMorosos.Filtered:=False;
      DatosClientes.CDSCtrMorosos.Filter  := 'MOROSO = ''S'' ';
      DatosClientes.CDSCtrMorosos.Filtered:=True;


      if Not(DatosClientes.CDSCtrMorosos.IsEmpty) then
        begin
          dlgSave1.FileName:='Morosos';
          dlgSave1.DefaultExt:='XLS';

      if VirtualUI.Active then
        dlgSave1.FileName:=DlgSave1.FileName+'.'+DlgSave1.DefaultExt;

          if dlgSave1.Execute Then
            if dlgSave1.FileName<>'' Then
              begin
                if VirtualUI.Active then
                  DataToXLS2.SaveToFile(dlgSave1.FileName)
                else
                  DataToXLS2.SaveToFile(dlgSave1.FileName);

                if VirtualUI.Active then
                    VirtualUI.DownloadFile(dlgSave1.FileName);
             end;
        END;


      DatosClientes.CDSCtrMorosos.Filtered:= False;
      DatosClientes.CDSCtrMorosos.Filter  := '';
      dbgMoroso.DataSource.DataSet.FindFirst;
      dbgMoroso.DataSource.DataSet.DisableControls;
      while not(dbgMoroso.DataSource.DataSet.eof) do
        begin
          DatosClientes.QActualizaMorosoFD.Close;
          DatosClientes.QActualizaMorosoFD.ParamByName('Codigo').Value:=dbgMoroso.DataSource.DataSet.FieldByName('CLIENTE').Value;
          DatosClientes.QActualizaMorosoFD.ParamByName('Estado').Value:=dbgMoroso.DataSource.DataSet.FieldByName('MOROSO').Value;
          DatosClientes.QActualizaMorosoFD.ExecSQL;
          dbgMoroso.DataSource.DataSet.Next;
        end;
      dbgMoroso.DataSource.DataSet.FindFirst;
      dbgMoroso.DataSource.DataSet.EnableControls;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormClientes_2.btOTrabajoClick(Sender: TObject);
var
  SucursalComprobante:Integer;
  IDComprobante:Integer;

begin
  inherited;
  if (DSBase.DataSet.FIeldByName('CODIGO').Value<>'') Then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
      FormBuscadorTipoCpbte.TipoCpbte1:='OT';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal      := SucursalPorDefecto;
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
      IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Self);
          FormBuscadorDepositos.Deposito:=  DepositoPorDefecto;
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              if Not(Assigned(FormOrdenDeTrabajo)) then
                FormOrdenDeTrabajo:=TFormOrdenDeTrabajo.Create(self);
              FormOrdenDeTrabajo.Agregar.Execute;
              DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGO.Text   :=  DSBase.DataSet.FIeldByName('CODIGO').Value;
            end;
        end;
    end;
end;

procedure TFormClientes_2.BitBtn2Click(Sender: TObject);
begin
  inherited;
  DatosClientes.CDSOt.Close;
  DatosClientes.CDSOt.Params.ParamByName('Codigo').Value:=DatosClientes.CDSClientesCodigo.Value;
  DatosClientes.CDSOt.Open;
end;

procedure TFormClientes_2.BorrarExecute(Sender: TObject);
var Con_Movimiento:Boolean;
begin
//  inherited;
  if (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      Con_Movimiento:=False;
      DatosClientes.QFacClientes.Close;
      DatosClientes.QFacClientes.ParamByName('Codigo').Value := DatosClientes.CDSClientesCodigo.Value;
      DatosClientes.QFacClientes.open;

      DatosClientes.QPreClientes.Close;
      DatosClientes.QPreClientes.ParamByName('Codigo').Value := DatosClientes.CDSClientesCodigo.Value;
      DatosClientes.QPreClientes.open;

      DatosClientes.QRecibos.Close;
      DatosClientes.QRecibos.ParamByName('Codigo').Value := DatosClientes.CDSClientesCodigo.Value;
      DatosClientes.QRecibos.open;

      DatosClientes.QMovCC.Close;
      DatosClientes.QMovCC.ParamByName('Codigo').Value := DatosClientes.CDSClientesCodigo.Value;
      DatosClientes.QMovCC.open;


      if (DatosClientes.QFacClientes.Fields[0].AsString<>'') Then Con_Movimiento:=True;
      if (DatosClientes.QPreClientes.Fields[0].AsString<>'') Then Con_Movimiento:=True;
      if (DatosClientes.QRecibos.Fields[0].AsString<>'') Then Con_Movimiento:=True;
      if (DatosClientes.QMovCC.Fields[0].AsString<>'') Then Con_Movimiento:=True;

      DatosClientes.QFacClientes.Close;
      DatosClientes.QPreClientes.Close;
      DatosClientes.QRecibos.Close;
      DatosClientes.QMovCC.Close;

      IF (Con_Movimiento=True) THEN
        BEGIN
          IF
            MessageDlg('Está por hacer una opreación de borrado, pero el regsitro'
            + #13 +
            'sera pasado al modo INACTIVO, dado que el mismo tinene registro de '+#13+
            'operaciones ralizadas, sin que se borre de la base de datos.' + #13
              +
            'Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes
              THEN
            BEGIN
              DatosClientes.CDSClientes.Edit;
              DatosClientes.CDSClientesACTIVO.Value := 'N';
              //DatosClientes.wwCDSClientes.Post;
              //ConfirmaExecute;
              Confirma.Execute;
            END;
        END
      ELSE
        BEGIN
          if MessageDlg('Está por hacer una operación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
            begin
              DMMain_FD.fdcGestion.StartTransaction;
              try
                // **** Ingreso en el Log File  **************
                DMMain_FD.LogFileFD(0,4,'Borrado de Cliente:'+DatosClientes.CDSClientesCodigo.Value+'-'+DatosClientes.CDSClientesNombre.Value,'CLIENTES');

               // DMStoreProcedure.spGravarLogDBX.ExecProc;
               // DMStoreProcedure.spGravarLogDBX.Close;
                // ******************************************
                DatosClientes.CDSClientes.Delete;
                DatosClientes.CDSClientes.ApplyUpdates(0);

                DMMain_FD.fdcGestion.Commit;
              except
                ShowMessage('no se pudo borrar el registro');
                DMMain_FD.fdcGestion.Rollback;
              end;
           end;
        END;
    end;
  PageControl1.ActivePageIndex:=0;
  PageControl2.ActivePageIndex:=0;
end;

procedure TFormClientes_2.btExcelClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT ( DatosClientes.CDSLstClientes.IsEmpty) THEN
    BEGIN
      dlgSave1.FileName:='Clientes';
      dlgSave1.DefaultExt:='XLS';
     // DBAdvGrid1.DataSource.DataSet.First;
     if VirtualUI.Active then
       dlgSave1.FileName:=dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

      if dlgSave1.Execute Then
        if dlgSave1.FileName<>'' Then
          begin
            if ExtractFileExt(dlgSave1.FileName)='' then
              dlgSave1.FileName:=dlgSave1.FileName+'.'+dlgSave1.DefaultExt;
            if VirtualUI.Active then
                AdvGridExcelIO1.XLSExport(dlgSave1.FileName)
            else
              AdvGridExcelIO1.XLSExport(dlgSave1.FileName);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(dlgSave1.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');

  Screen.Cursor:=crDefault;

end;

procedure TFormClientes_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo      := '''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
   FormBuscadorClientes.PopupMode := pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     begin
       DatoNew  := FormBuscadorClientes.Codigo;
       if FormBuscadorClientes.CampoUsado = 'CUENTA_OPERATIVA' then
         Campo    := FormBuscadorClientes.CampoUsado else
           campo:='Codigo';
       Recuperar.Execute;
     end;

end;

procedure TFormClientes_2.BuscarCodigoFreeAlta1Click(Sender: TObject);
begin
  inherited;
  BuscarCodigoFreeAlta1.Checked := Not(BuscarCodigoFreeAlta1.Checked);
  DMMain_FD.BuscaCodigoFree     := BuscarCodigoFreeAlta1.Checked;
end;

procedure TFormClientes_2.BuscarCondVentaExecute(Sender: TObject);
begin
  inherited;
  DatosClientes.CDSBuscaFPago.Close;
  DatosClientes.CDSBuscaFPago.Open;
  ComBuscadorConVenta.Execute;
  if ComBuscadorConVenta.rOk then
    DatosClientes.CDSCondVentaCodigoPagoSetText(DatosClientes.CDSCondVentaCodigoPago, IntToStr(ComBuscadorConVenta.Id));
  DatosClientes.CDSBuscaFPago.Close;
end;

procedure TFormClientes_2.ImprimirContratoExecute(Sender: TObject);
begin
  inherited;
  if DatosClientes.CDSContratoTIPO_SERVICIO.Value>=0 then
    BEGIN
       IF NOT (DatosClientes.CDSClientes.IsEmpty) THEN
        BEGIN
          frClientes.PrintOptions.Printer:=PrNomListados;
          frClientes.SelectPrinter;
          frClientes.LoadFromFile(DMMain_FD.PathReportesLst+'\Contrato.fr3');
          frClientes.ShowReport;
        END
      ELSE
        ShowMessage('No hay datos para listar...');
     DMMain_FD.QOpciones.Close;
    END;
end;

procedure TFormClientes_2.ImprimirExecute(Sender: TObject);
BEGIN
 
   IF NOT (DatosClientes.CDSLstClientes.IsEmpty) THEN
    BEGIN
      frClientes.PrintOptions.Printer:=PrNomListados;
      frClientes.SelectPrinter;
      frClientes.LoadFromFile(DMMain_FD.PathReportesLst+'\Clientes.fr3');
      frClientes.Variables['Vendedor']  := ''''+dbcVendedor.Text+'''';
      frClientes.Variables['Zona']      := ''''+dbcZona.Text+'''';
      frClientes.Variables['Sucursal']  := ''''+dbcSucursal.Text+'''';
      frClientes.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para listar...');
 DMMain_FD.QOpciones.Close;
end;

procedure TFormClientes_2.ImprimirFichaExecute(Sender: TObject);
begin
  inherited;
  
   IF NOT (DatosClientes.CDSLstClientes.IsEmpty) THEN
    BEGIN
      frClientes.PrintOptions.Printer:=PrNomListados;
      frClientes.SelectPrinter;
      frClientes.LoadFromFile(DMMain_FD.PathReportesLst+'\ClientesFicha.fr3');
      frClientes.Variables['Vendedor']  := ''''+dbcVendedor.Text+'''';
      frClientes.Variables['Zona']      := ''''+dbcZona.Text+'''';
      frClientes.Variables['Sucursal']  := ''''+dbcSucursal.Text+'''';
      frClientes.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para listar...');
 DMMain_FD.QOpciones.Close;
end;

procedure TFormClientes_2.dbgPlantillaColEnter(Sender: TObject);
begin
  inherited;
  if dbcTipoAbono.ItemIndex<=0 then
    begin
      dbgPlantilla.DataSource.DataSet.Cancel;
    end;
  if dbgPlantilla.SelectedIndex>0 then
    dbgPlantilla.SelectedIndex:=0;
end;

procedure TFormClientes_2.dbgPlantillaEnter(Sender: TObject);
begin
  inherited;
  if dbcTipoAbono.ItemIndex<=0 then
    begin
      dbgPlantilla.DataSource.DataSet.Cancel;
      dbcTipoAbono.SetFocus;
    end;
end;

procedure TFormClientes_2.dbgPlantillaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DELETE) or (Key=VK_BACK) then
    dbgPlantilla.DataSource.DataSet.Delete;
end;

procedure TFormClientes_2.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   if Not(Assigned(FormOrdenDeTrabajo)) Then
    FormOrdenDeTrabajo:=TFormOrdenDeTrabajo.Create(Application);
   FormOrdenDeTrabajo.DatoNew  := DatosClientes.CDSOtID_OT.AsString;
   FormOrdenDeTrabajo.TipoCpbte:='OT';//CDSOtTIPOCPBTE.AsString;
   FormOrdenDeTrabajo.Recuperar.Execute;
   FormOrdenDeTrabajo.Show;

end;

procedure TFormClientes_2.DBGrid3DblClick(Sender: TObject);
begin
  inherited;
  if FDMTClientecustom_id.AsString<>'' then
    begin
      DatoNew:= FDMTClientecustom_id.AsString;
      Recuperar.Execute;
      ConsultaWPro.Execute;
      pcWispro.ActivePageIndex:=0;
    end;

end;

function TFormClientes_2.dbgCoeficientesCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field = DatosClientes.CDSCoeficientesPOR_DEFECTO;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

function TFormClientes_2.dbgCondicionesAbonoCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field = DatosClientes.CDSCondAbonoESTADO;
  StringForTrue  := 'S';
  StringForFalse := 'N';

end;

procedure TFormClientes_2.dbgCondicionesAbonoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgCondicionesAbono.SelectedIndex < 4) THEN
        dbgCondicionesAbono.SelectedIndex := dbgCondicionesAbono.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgCondicionesAbono.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgCondicionesAbono.DataSource.DataSet.Append;
          dbgCondicionesAbono.SelectedIndex := 0;
        END;
    END
end;

procedure TFormClientes_2.dbcBancoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesID_BANCO.Value:=-1;
end;

procedure TFormClientes_2.dbcEsquemaListaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesESQUEMALISTA.Value:=-1;
end;

procedure TFormClientes_2.dbcFcEnter(Sender: TObject);
begin
  inherited;
  if (DatosClientes.CDSClientesSucursal.Value=0) or (VarIsNull(DatosClientes.CDSClientesSucursal.Value)) then
    ShowMessage('Debe asignar una sucursal para el cliente')
  else
    begin
      DatosClientes.CDSBuscaFC.Close;
      DatosClientes.CDSBuscaFC.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
      DatosClientes.CDSBuscaFC.Open;
    end;

end;

procedure TFormClientes_2.dbcFcKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesID_FACTURAPORDEFECTO.Clear;
end;

procedure TFormClientes_2.dbcFOEnter(Sender: TObject);
begin
  inherited;
  if (DatosClientes.CDSClientesSucursal.Value=0) or (VarIsNull(DatosClientes.CDSClientesSucursal.Value)) then
    ShowMessage('Debe asignar una sucursal para el cliente')
  else
    begin
      DatosClientes.CDSBuscaFO.Close;
      DatosClientes.CDSBuscaFO.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
      DatosClientes.CDSBuscaFO.Open;
    end;
end;

procedure TFormClientes_2.dbcFOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.Clear;
end;

procedure TFormClientes_2.dbchDeuda30Click(Sender: TObject);
begin
  inherited;
  dbeDias.Enabled:=dbchDeuda30.Checked=True;
  if dbeDias.Enabled=True then
    begin
      if (DSBase.DataSet.State in [dsInsert,dsEdit]) then
        if (DatosClientes.CDSClientesDIAS_MAYOR_30.AsString='') or (DatosClientes.CDSClientesDIAS_MAYOR_30.Value=0) then
          DatosClientes.CDSClientesDIAS_MAYOR_30.Value:=30;
    end;
end;

procedure TFormClientes_2.chbEmiteFacturaClick(Sender: TObject);
begin
  inherited;
  chbVtaCtdo.Enabled:=chbEmiteFactura.Checked;
//  chbVtaCtdo.Checked:=chbEmiteFactura.Checked;
//
  if DatosClientes.CDSClientes.State in [dsInsert,dsEdit] then
    begin
      if chbVtaCtdo.Enabled then
        DatosClientes.CDSClientesVENDER_DE_CTDO.Value:='S'
     end;
//
//  if DatosClientes.CDSClientes.State in [dsInsert,dsEdit] then
//    begin
//      if Not(chbVtaCtdo.Checked) then
//        DatosClientes.CDSClientesVENDER_DE_CTDO.Value:='N';
//     end;
end;

procedure TFormClientes_2.dbchFranquiciaClick(Sender: TObject);
begin
  inherited;
  cbDeposito.Enabled:=dbchFranquicia.Checked;
end;

procedure TFormClientes_2.dbcNDEnter(Sender: TObject);
begin
  inherited;
  if (DatosClientes.CDSClientesSucursal.Value=0) or (VarIsNull(DatosClientes.CDSClientesSucursal.Value)) then
    ShowMessage('Debe asignar una sucursal para el cliente')
  else
    begin
      DatosClientes.CDSBuscaND.Close;
      DatosClientes.CDSBuscaND.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
      DatosClientes.CDSBuscaND.Open;
    end;
end;

procedure TFormClientes_2.dbcNDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesID_NOTADEBITOPORDEFECTO.Clear;
end;

procedure TFormClientes_2.dbcPlantillaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesID_PLANTILLA.Value:= -1;
end;

procedure TFormClientes_2.dbcRecibosEnter(Sender: TObject);
begin
  inherited;
  if (DatosClientes.CDSClientesSucursal.Value=0) or (VarIsNull(DatosClientes.CDSClientesSucursal.Value)) then
    ShowMessage('Debe asignar una sucursal para el cliente')
  else
    begin
      DatosClientes.CDSBuscaRC.Close;
      DatosClientes.CDSBuscaRC.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
      DatosClientes.CDSBuscaRC.Open;
    end;
end;

procedure TFormClientes_2.dbcRecibosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesID_RECIBOPORDEFECTO.Clear;
end;

procedure TFormClientes_2.dbcNCEnter(Sender: TObject);
begin
  inherited;
  if (DatosClientes.CDSClientesSucursal.Value=0) or (VarIsNull(DatosClientes.CDSClientesSucursal.Value)) then
    ShowMessage('Debe asignar una sucursal para el cliente')
  else
    begin
      DatosClientes.CDSBuscaNC.Close;
      DatosClientes.CDSBuscaNC.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
      DatosClientes.CDSBuscaNC.Open;
    end;
end;

procedure TFormClientes_2.dbcNCKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesID_NOTACREDITOPORDEFECTO.Clear;
end;

procedure TFormClientes_2.Label72Click(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then
    begin
      dbeCodOperativo.Enabled:=Not(dbeCodOperativo.Enabled);
      if dbeCodOperativo.Enabled then
        dbeCodOperativo.Color:=clWhite
      else
        dbeCodOperativo.Color:=clMoneyGreen;
    end;


end;

procedure TFormClientes_2.Label72MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  Label72.Cursor:=crDefault;

  if DSBase.State<>dsBrowse then
    begin
      Label72.Cursor:=crHand;
    end;
end;

procedure TFormClientes_2.ListarExecute(Sender: TObject);
begin
  DatosClientes.CDSLstClientes.IndexDefs.Clear;
  DatosClientes.CDSLstClientes.IndexName:='';
  DatosClientes.CDSLstClientes.Close;
  DatosClientes.CDSLstClientes.Params.ParamByName('sucursal').Value     := dbcSucursal.KeyValue;
  DatosClientes.CDSLstClientes.Params.ParamByName('vendedor').Value     := dbcVendedor.KeyValue;
  DatosClientes.CDSLstClientes.Params.ParamByName('zona').Value         := dbcZona.KeyValue;
  DatosClientes.CDSLstClientes.Params.ParamByName('categoria').Value    := dbcCategorias.KeyValue;
  DatosClientes.CDSLstClientes.Params.ParamByName('tiposervicio').Value := dbcServicio.KeyValue;
  DatosClientes.CDSLstClientes.Params.ParamByName('cobrador').Value     := dbcCobrador.KeyValue;
  DatosClientes.CDSLstClientes.Params.ParamByName('idprestador').Value  := dbcLstPrestadores.KeyValue;
  DatosClientes.CDSLstClientes.Params.ParamByName('idGrupoCupon').Value := dbcGrupoAbonos.KeyValue;

  case rgEstados.ItemIndex of
    0:DatosClientes.CDSLstClientes.Params.ParamByName('activo').Value :='*';
    1:DatosClientes.CDSLstClientes.Params.ParamByName('activo').Value :='S';
    2:DatosClientes.CDSLstClientes.Params.ParamByName('activo').Value :='N';
    3:DatosClientes.CDSLstClientes.Params.ParamByName('activo').Value :='G';
  end;

  DatosClientes.CDSLstClientes.Open;
  DatosClientes.CDSLstCondVenta.Close;
  DatosClientes.CDSLstCondVenta.Params.ParamByName('codigo').Value:=DatosClientes.CDSLstClientesCODIGO.Value;
  DatosClientes.CDSLstCondVenta.Open;
  dbgClientes.Width:=dbgClientes.Width+1;
  dbgClientes.Width:=dbgClientes.Width-1;

end;



procedure TFormClientes_2.BuscaCobradoresExecute(Sender: TObject);
begin
  inherited;
  DatosClientes.CDSBuscaCobrador.Close;
  DatosClientes.CDSBuscaCobrador.Open;
  comBuscadorCobradores.Execute;
  if comBuscadorCobradores.rOk Then
    DatosClientes.CDSClientesCOBRADORSetText(DatosClientes.CDSClientesCOBRADOR, comBuscadorCobradores.Id);
  DatosClientes.CDSBuscaCobrador.Close;
end;

procedure TFormClientes_2.BuscadorRipsaExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormBuscadorCodRipsa)) then
    FormBuscadorCodRipsa:=TFormBuscadorCodRipsa.Create(self);
  FormBuscadorCodRipsa.ShowModal;
  if FormBuscadorCodRipsa.ModalResult=mrOk then
    begin
      if FormBuscadorCodRipsa.Codigo<>'' Then
        begin
          DatoNew:=FormBuscadorCodRipsa.Codigo;
          Recuperar.Execute;
        end;
    end;
end;

procedure TFormClientes_2.BuscaGruposExecute(Sender: TObject);
begin
  inherited;
  DatosClientes.CDSBuscaGrupoAbonos.Close;
  DatosClientes.CDSBuscaGrupoAbonos.Open;
  comBuscadorgrupos.Execute;
  if comBuscadorgrupos.rOk Then
    DatosClientes.CDSGruposAbonosID_CUPON_GRUPOSetText(DatosClientes.CDSGruposAbonosID_CUPON_GRUPO, intToStr(comBuscadorgrupos.id));
  DatosClientes.CDSBuscaGrupoAbonos.Close;
end;

procedure TFormClientes_2.BuscaLocalidadExecute(Sender: TObject);
begin
  DatosClientes.CDSBuscaCPostal.Close;
  DatosClientes.CDSBuscaCPostal.Open;
  comBuscadorLocalidades.Execute;
  if comBuscadorLocalidades.rOk Then
    DatosClientes.CDSClientesid_cod_postalSetText(DatosClientes.CDSClientesid_cod_postal, IntToStr(comBuscadorLocalidades.id));
  DatosClientes.CDSBuscaCPostal.Close;
end;

procedure TFormClientes_2.dbgCondVentaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) AND (dbgCondVenta.SelectedIndex = 2) THEN
    dbgCondVenta.SelectedIndex := 0;
end;

procedure TFormClientes_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  IF NOT (Assigned(DatosClientes)) THEN
     Application.CreateForm(TDatosClientes, DatosClientes);
   DSBase.DataSet:=DatosClientes.CDSClientes;
   WITH DatosClientes,DMContable DO
     BEGIN              
       AddClientDataSet(CDSClientes, DSPClientes);
       AddClientDataSet(CDSCondVenta, DSPCondVenta);
       AddClientdataset(CDSLdr, DSPLdr);
       AddClientdataset(CDSClientesGarantes, DSPClientesGarantes);
       AddClientDataSet(CDSCoeficientes,DSPCoeficientes);
       AddClientDataSet(CDSGruposAbonos,DSPGruposAbonos);
       AddClientDataSet(CDSContrato,DSPContrato);
       AddClientDataSet(CDSClientesAnexos,DSPClientesAnexos);
       AddClientDataSet(CDSPlantillas,DSPPlantillas);
       AddClientDataSet(CDSCondAbono,DSPCondAbono);
       AddClientDataSet(CDSCodRipsa,DSPCodRipsa);
       AddClientDataSet(CDSNubCeo,DSPNubCeo);

       CDSBuscaDeposito.Open;
       CDSGrupoPlantillas.Close;
       CDSGrupoPlantillas.Open;

       CDSClientes.Open;
       CDSCondVenta.Open;
       CDSRubrosCli.Open;
       CDSLdr.Open;
       CDSClientesGarantes.Open;
       CDSCoeficientes.Open;
       CDSGruposAbonos.Open;
       CDSContrato.Open;
       CDSClientesAnexos.Open;
       CDSPlantillas.Open;
       CDSCondAbono.Open;
       CDSTCredito.Open;
       CDSBancos.Open;
       CDSCodRipsa.Open;
       CDSNubCeo.Open;

       CDSCoeficientes.EmptyDataSet;
       CDSClientes.EmptyDataSet;
       CDSCondVenta.EmptyDataSet;
       CDSLdr.EmptyDataSet;
       CDSContrato.EmptyDataSet;
       CDSClientesAnexos.EmptyDataSet;
       CDSPlantillas.EmptyDataSet;

       QTasaIIBB.Close;
       QEsquemas.Open;
       QCtaBanco.open;
       CDSBuscaSucursal.Open;
       CDSBuscaInscripcion.Open;
       CDSBuscaSucursales.Open;
       CDSBuscaZona.Open;
       CDSBuscaZonas.Open;
       CDSBuscaVendedores.Open;
       CDSBuscaCategorias.Open;
       CDSBuscaCobrador.Open;
       CDSTipoServicio.Open;
       CDSPrestadores.Close;
       CDSLstPrestadores.Close;
       CDSLstGrupoAbonados.Close;
       CDSRubrosCLi.Close;
       CDSRubrosCLi.Open;
       CDSPrestadores.Open;
       CDSLstPrestadores.Open;
       CDSBuscaFC.Open;
       CDSBuscaFO.Open;
       CDSBuscaND.Open;
       CDSBuscaNC.Open;
       CDSBuscaTK.Open;
       CDSBuscaRC.Open;
       CDSTransporte.Open;
       CDSCategorias.Open;
       CDSLstGrupoAbonados.Open;
       CDSListaPrecios.Close;

       if DMMain_FD.UsuarioAdministrador Then
         CDSListaPrecios.Params.ParamByName('uso').Value:='*'
       else
         CDSListaPrecios.Params.ParamByName('uso').Value:='S';
       CDSListaPrecios.OPen;
     END;
   PageControl1.ActivePageIndex   := 0;
   PageControl2.ActivePageIndex   := 0;
   comBuscadorLocalidades.Data    := DatosClientes.CDSBuscaCPostal;
   dbgCondVenta.Enabled           := False;
   pcWispro.ActivePageIndex       := 0;

  //*************************************************************
   ArchivoIni                     := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'consignacion.ini');
   dbeCodOperativo.Enabled        := ArchivoIni.ReadBool('codigoop', 'codigoop', False);
   BuscarCodigoFreeAlta1.Checked  := ArchivoIni.ReadBool('codigoFree', 'codigoFree', False);
   ArchivoIni.Free;
   //*************************************************************
  if dbeCodOperativo.Enabled then
    dbeCodOperativo.Color:=clWhite
  else
    dbeCodOperativo.Color:=clMoneyGreen;
  Campo    := 'Codigo';
  Tabla    := 'clientes';
  Condicion:= '';
  DatoNew  := '';
end;

procedure TFormClientes_2.FDMTContratostateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if FDMTContratostate.Value='enabled' Then Text:='Habilitado' else
  if FDMTContratostate.Value='alerted' Then Text:='Avisado' else
  if FDMTContratostate.Value='disabled' Then Text:='Inhabilitado';

end;

procedure TFormClientes_2.FormatearCuitExecute(Sender: TObject);
var Cuit:String;
begin
  inherited;
  DatosClientes.CDSLstClientes.First;
  while Not(DatosClientes.CDSLstClientes.Eof) do
    begin
      Cuit:=  DatosClientes.CDSLstClientesNRO_DE_CUIT.Value;
      DatosClientes.CDSLstClientes.Edit;
      while (Pos('-',Cuit)>0) do
        System.Delete(Cuit, Pos('-',Cuit),1);
      if cuit='' then Cuit:='00000000000';
      if cuit[1]='0' then Cuit:='00000000000';

      Insert('-',Cuit,3);
      Insert('-',Cuit,12);

      DatosClientes.CDSLstClientes.Post;
      DatosClientes.QActualizaCuitFD.Close;
      DatosClientes.QActualizaCuitFD.ParamByName('cuit').Value  := Cuit;
      DatosClientes.QActualizaCuitFD.ParamByName('codigo').Value:= DatosClientes.CDSLstClientesCODIGO.AsString;
      DatosClientes.QActualizaCuitFD.ExecSQL;;
      DatosClientes.QActualizaCuitFD.Close;
      DatosClientes.CDSLstClientes.Next;
    end;

end;

procedure TFormClientes_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  //*************************************************************
   ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'consignacion.ini');
   ArchivoIni.WriteBool('codigoop', 'codigoop', dbeCodOperativo.Enabled);
   ArchivoIni.WriteBool('codigoFree', 'codigoFree', BuscarCodigoFreeAlta1.Checked);

   ArchivoIni.Free;
   //*************************************************************

  inherited;

  WITH DatosClientes DO
    BEGIN
      CDSLstClientes.IndexDefs.Clear;
      CDSCondVenta.Close;
      CDSLdr.Close;
      CDSClientes.Close;
      CDSBuscaSucursal.Close;
      CDSBuscaInscripcion.Close;
      CDSBuscaZona.Close;
      CDSBuscaSucursales.Close;
      CDSLstClientes.Close;
      QFacClientes.Close;
      QEsquemas.Close;
      CDSFPago.Close;
      QCtaBanco.Close;
      QUltimoLdr.Close;
      CDSListaPrecios.Close;
      CDSBuscaFC.Close;
      CDSBuscaFO.Close;
      CDSBuscaND.Close;
      CDSBuscaNC.Close;
      CDSBuscaTK.Close;
      CDSBuscaRC.Close;     
      CDSTransporte.Close;
      CDSBuscaCobrador.Close;
      CDSGruposAbonos.Close;
      CDSCategorias.Close;
      CDSContrato.Close;
      CDSTipoServicio.Close;
      CDSTCredito.Close;
      CDSBancos.Close;
      CDSCodRipsa.Close;
      CDSNubCeo.Close;
      CDSPrestadores.Close;
      CDSLstPrestadores.Close;
    END;
  //FreeAndNil(DatosClientes);
  Action := caFree;
end;


procedure TFormClientes_2.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled        := True;
  dbeCodigo.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeNombre.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeRazonSocial.Enabled     := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDomicilio.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeTel1.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeTel2.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];
  DbeTel3.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeCodigoLdr.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeCuit.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeNombreLdr.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDireccionLdr.Enabled    := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeNumeroDocumento.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeFechaNacimiento.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeCorreo.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeCorreo_2.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  ceCodigoAbono.Enabled      := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbnAcuerdos.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbnContratos.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbnLdr.Enabled             := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbnGarantes.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  NuevaOSocial.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  ModificaOSocial.Enabled    := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbcTCredito.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcBanco.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeTarjetaCliente.Enabled  := DSBase.DataSet.State IN [dsInsert, dsEdit];
  RxDBIdPostal.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbgRipsa.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];


  //dbcSucursal.Enabled      := Not(DSBase.DataSet.State IN [dsInsert, dsEdit]);
  rxcVendedor.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  rxcCobrador.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcListaPrecios.Enabled    := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcEsquemaLista.Enabled    := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbgCondVenta.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbgCondicionesAbono.Enabled:= DSBase.DataSet.State IN [dsInsert, dsEdit];
  dblZona.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];

  gbPercepIB.Enabled         := DSBase.DataSet.State IN [dsInsert, dsEdit];
  gbAbonos.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcFc.Enabled              := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcFO.Enabled              := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcNC.Enabled              := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcND.Enabled              := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcTk.Enabled              := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcRecibos.Enabled         := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbcTransporte.Enabled      := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcTipoServicio.Enabled    := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbTipoDoc.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeLimiteCredito.Enabled   := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbgCoeficientes.ReadOnly   := DSBase.DataSet.State in [dsBrowse];
  dbgCondVenta.ReadOnly      := DSBase.DataSet.State in [dsBrowse];
  dbgAnexos.ReadOnly         := DSBase.DataSet.State in [dsBrowse];

  dbnLdr.Enabled             := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbnContratos.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dblZona.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dblCategoria.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dblSucursal.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dblInscripcion.Enabled     := DSBase.DataSet.State IN [dsInsert, dsEdit];
  cbEstado.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];
  DBDateEdit4.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeContacto.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeTelefonoContacto.Enabled:= DSBase.DataSet.State IN [dsInsert, dsEdit];

  pnGarante.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];


  FrameCtaContable1.Enabled  := DSBase.DataSet.State IN [dsInsert, dsEdit];
  //SubPag1.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];
  //SubPag2.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];
  //SubPag3.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];

//  PageControl2.Enabled := Not(DSBase.DataSet.IsEmpty);
 // dbgCondVenta.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  RxDBIdPostal.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeCodigo.Enabled    := DSBase.DataSet.State IN [dsInsert];

  if (DSBase.DataSet.State IN [dsEdit]) then
    begin
      if (DMMain_FD.ModificaAbono) then
        ceCodigoAbono.Enabled:=True
      else
        ceCodigoAbono.Enabled:=False;
    end;

  if DSBase.State=dsEdit Then
    begin
      dblSucursal.Enabled:= DMMain_FD.ModificaSucursal;
      rxcVendedor.Enabled:= DMMain_FD.ModificaVendedor;
    end
  else
    if DSBase.State=dsInsert Then
      begin
        dblSucursal.Enabled:= True;
        rxcVendedor.Enabled:= True;
      end;
  Agendar.Enabled      := DSBase.DataSet.State in [dsInsert,dsEdit];
  Agendar.Enabled      := Not(DatosClientes.CDSClientes.IsEmpty);
  if (DSBase.DataSet.State in [dsInsert,dsEdit]) and (DMMain_FD.ModificaCreditoClientes) Then
    pnCredito.Enabled:=True
  else
    pnCredito.Enabled:=False;
 // si el user esta o no autorizado a A-B-M
  Agregar.Enabled       := (DMMain_FD.ABMClientes) and (DSBase.DataSet.State IN [dsBrowse]);
  Modificar.Enabled     := (DMMain_FD.ABMClientes) and (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  Borrar.Enabled        := (DMMain_FD.ABMClientes) and (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  btOTrabajo.Enabled    := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  BuscadorRipsa.Enabled := (DSBase.DataSet.State IN [dsBrowse]);


  if (DSBase.DataSet.IsEmpty) or (DSBase.DataSet.State in [dsInsert,dsEdit]) then
    sbEstado.Panels[1].Text:='';
  VerIncidencias.Enabled:=(Not(DSBase.DataSet.IsEmpty)) and (DSBase.DataSet.State in [dsBrowse,dsEdit]);
  if (DSBase.State=dsInsert) then
    begin
      PageControl1.ActivePageIndex := 0;
      PageControl2.ActivePageIndex := 0;
    end;
 end;

procedure TFormClientes_2.edPaginaChange(Sender: TObject);
begin
  inherited;
  ConsultaWPro.Execute;
end;

procedure TFormClientes_2.EnviarCorreoExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.CDSMailing.Close;
  DMMain_FD.CDSMailing.Open;

  if DMMain_FD.CDSMailingTEXTO.AsString<>'' then
    begin
      ListaEnviados   :=TStringList.Create;
      ListaNoEnviados :=TStringList.Create;
 //     if Not(Assigned(FormCorreo)) Then
//        FormCorreo:=TFormCorreo.Create(Self);
//      DatosClientes.CDSLstClientes.First;
      while Not(DatosClientes.CDSLstClientes.Eof) do
        begin
          if (LowerCase(Trim(DatosClientes.CDSLstClientesCORREOELECTRONICO.AsString))<>'') and (Trim(DMMain_FD.CDSMailingTEXTO.Text)<>'') then
            begin
              if Not(Assigned(FormCorreo)) Then
                FormCorreo:=TFormCorreo.Create(Self);

              FormCorreo.CorreoDestino        := LowerCase(DatosClientes.CDSLstClientesCORREOELECTRONICO.Value);
              FormCorreo.CorreoOrigen         := DirCorreo;
              FormCorreo.edDireccion.Text     := LowerCase(DatosClientes.CDSLstClientesCORREOELECTRONICO.Value);
              FormCorreo.Remitente            := Remitente;
              FormCorreo.Destinatario         := DatosClientes.CDSLstClientesNOMBRE.Value;
              FormCorreo.Puerto               := Puerto;
              FormCorreo.NombreServidorCorreo := NombreServidor;
              FormCorreo.NombreCuentaCorreo   := NombreCuenta;
              FormCorreo.Clave                := Clave;
              FormCorreo.Autenticacion        := Autotenticacion;
              FormCorreo.Asunto               := 'Promociones '+ FormatDateTime('dd-mm-yy',Date);
              FormCorreo.edCuerpoMensaje.Text := DMMain_FD.CDSMailingTEXTO.AsString;
            //  FormCorreo.Show;
              FormCorreo.Enviar.Execute;
              Sleep(1000);
              FormCorreo.Close;
              ListaEnviados.Add('Enviado:'+DatosClientes.CDSLstClientesNOMBRE.AsString);
            end
          else
            ListaNoEnviados.Add('Fallo Enviado:'+DatosClientes.CDSLstClientesNOMBRE.AsString);
          DatosClientes.CDSLstClientes.Next;
        end;
      FreeAndNil(ListaNoEnviados);
      FreeAndNil(ListaEnviados);
    end
  else
    ShowMessage('No Hay datos para enviar Mailing...');
  FormCorreo.Close;

end;

procedure TFormClientes_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormClientes_2:=nil;
 // FreeAndNil(DatosClientes);
end;

procedure TFormClientes_2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (not (ActiveControl is TJvDBGrid)) Then
  inherited;

end;

procedure TFormClientes_2.dbgAnexosDblClick(Sender: TObject);
begin
  inherited;
  if DatosClientes.CDSClientesAnexosARCHIVO.AsString<>'' then
    begin
      DMMain_fd.EjecutaFic(DatosClientes.CDSClientesAnexosARCHIVO.AsString);
    end;
  
end;

procedure TFormClientes_2.dbgAnexosEditButtonClick(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] then
    begin
      if DatosClientes.CDSClientesAnexos.State=dsBrowse then
        DatosClientes.CDSClientesAnexos.Edit;
      if OpenDialog1.Execute then
        if OpenDialog1.FileName<>'' then
          begin
            DatosClientes.CDSClientesAnexosARCHIVO.Value:=OpenDialog1.FileName;
            DatosClientes.CDSClientesAnexos.Post;
          end
        else
          DatosClientes.CDSClientesAnexos.Cancel;
    end;

end;

procedure TFormClientes_2.dbgClientesDblClick(Sender: TObject);
begin
  inherited;
  if Not(DatosClientes.CDSLstClientes.IsEmpty) Then
    begin
      DatoNew:= dbgClientes.Fields[0].AsString;
         Recuperar.Execute;
    //  DatosClientes.CDSClientes.Close;
//      DatosClientes.CDSClientes.Params.ParamByName('codigo').Value:= dbgClientes.Fields[0].AsString;
//      DatosClientes.CDSClientes.Open;
//
//      DatosClientes.CDSCondVenta.Close;
//      DatosClientes.CDSCondVenta.Params.ParamByName('Codigo').Value := dbgClientes.Fields[0].AsString;
//      DatosClientes.CDSCondVenta.Open;
//
//      DatosClientes.CDSLdr.Close;
//      DatosClientes.CDSLdr.Params.ParamByName('Codigo').Value     := dbgClientes.Fields[0].AsString;
//      DatosClientes.CDSLdr.Open;

      PageControl1.ActivePageIndex:=0;
      PageControl2.ActivePageIndex:=0;
    end;
end;


procedure TFormClientes_2.dbgClientesTitleClick(Column: TColumn);
var campo:string;
begin
  try
    Campo := Column.FieldName;
    with dbgClientes.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
        begin
          AddIndex(Campo, Campo, [], Campo); // Descendente
          IndexName := Campo;
        end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

function TFormClientes_2.dbgCondVentaCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field = DatosClientes.CDSCondVentaPOR_DEFECTO;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormClientes_2.dbgCondVentaColEnter(Sender: TObject);
begin
  inherited;
  IF dbgCondVenta.SelectedIndex = 1 THEN
    dbgCondVenta.SelectedIndex := 2;
end;

procedure TFormClientes_2.dbgCondVentaEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarCondVenta.Execute;
end;

procedure TFormClientes_2.dbgCondVentaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF key = #10 THEN
    BEGIN
      Key := #0;
      BuscarCondVenta.Execute;
    END
  ELSE IF key = #13 THEN
    BEGIN
      key := #0;
      IF dbgCondVenta.SelectedIndex < 2 THEN
        dbgCondVenta.SelectedIndex := dbgCondVenta.SelectedIndex + 1
      ELSE
        BEGIN
          dbgCondVenta.DataSource.DataSet.Append;
          dbgCondVenta.SelectedIndex := 0;
        END;
    END;

end;

procedure TFormClientes_2.dbgGarantesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (DatosClientes.CDSClientesGarantesPOR_DEFECTO.Value='S') Then
    dbgGarantes.Canvas.Font.Style:=[fsBold]
  else
    dbgGarantes.Canvas.Font.Style:=[];
  dbgGarantes.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

function TFormClientes_2.dbgMorosoCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field = DatosClientes.CDSCtrMorososMOROSO;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormClientes_2.dbgMorosoColEnter(Sender: TObject);
begin
  inherited;
  if dbgMoroso.SelectedIndex<4 then dbgMoroso.SelectedIndex:=4;

  
end;

procedure TFormClientes_2.dbgMorosoTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
var campo:String;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgMoroso.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
    except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormClientes_2.dblCategoriaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesCATEGORIA.Clear;
end;

procedure TFormClientes_2.dbcTCreditoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesID_TARJETACREDITO.Value:=-1;
end;

procedure TFormClientes_2.dbcTipoAbonoChange(Sender: TObject);
begin
  inherited;
  dbcPlantilla.Enabled:=dbcTipoAbono.ItemIndex>0;
  if dbcTipoAbono.ItemIndex<=0 then
    DatosClientes.CDSClientesID_PLANTILLA.Value:=-1;


end;

procedure TFormClientes_2.dbcTipoServicioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSContratoTIPO_SERVICIO.Clear
end;

procedure TFormClientes_2.CambiarCodigoExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State in [dsBrowse]) and
      (not(DSBase.DataSet.IsEmpty)) and (DMMain_FD.UsuarioAdministrador) then
    begin
      if not(Assigned(FormCambioCodigoCliente)) then
        FormCambioCodigoCliente:=TFormCambioCodigoCliente.Create(self);
      FormCambioCodigoCliente.codigo:=DatosClientes.CDSClientesCodigo.Value;
      FormCambioCodigoCliente.ShowModal;
      DatoNew:=FormCambioCodigoCliente.Codigo;
      Recuperar.Execute;
    end
  else
    ShowMessage('No se puede hacer la operación... puede ser que no tenga permiso..');  

end;

procedure TFormClientes_2.CancelarExecute(Sender: TObject);
begin
  DatosClientes.CDSLstClientes.IndexDefs.Clear;

//  DatosClientes.CDSBuscaFC.Close;
//  DatosClientes.CDSBuscaFO.Close;
//  DatosClientes.CDSBuscaNC.Close;
//  DatosClientes.CDSBuscaND.Close;
//  DatosClientes.CDSBuscaTk.Close;

  DatosClientes.CDSCondVenta.Cancel;
  DatosClientes.CDSLdr.Cancel;
  DatosClientes.CDSClientes.Cancel;
  DatosClientes.CDSGruposAbonos.Cancel;
  DatosClientes.CDSContrato.Cancel;
  DatosClientes.CDSCondAbono.Cancel;

  DatosClientes.CDSCondVenta.EmptyDataSet;
  DatosClientes.CDSLdr.EmptyDataSet;
  DatosClientes.CDSClientes.EmptyDataSet;
  DatosClientes.CDSGruposAbonos.EmptydataSet;
  DatosClientes.CDSContrato.EmptyDataSet;
  DatosClientes.CDSCondAbono.EmptyDataSet;

  DatosClientes.CDSCondVenta.Close;
  DatosClientes.CDSLdr.Close;
  DatosClientes.CDSClientes.Close;
  DatosClientes.CDSGruposAbonos.Close;
  DatosClientes.CDSCondAbono.Close;

  DatosClientes.CDSCondVenta.Open;
  DatosClientes.CDSLdr.Open;
  DatosClientes.CDSClientes.Open;
  DatosClientes.CDSGruposAbonos.Open;
  DatosClientes.CDSCondAbono.Open;

  inherited;
 { DatosClientes.CDSBuscaFC.Open;
  DatosClientes.CDSBuscaFO.Open;
  DatosClientes.CDSBuscaND.Open;
  DatosClientes.CDSBuscaNC.Open;
  DatosClientes.CDSBuscaTK.Open;
  }
  PageControl1.ActivePageIndex:=0;
  PageControl2.ActivePageIndex:=0;
  btNuevo.SetFocus;
end;

procedure TFormClientes_2.AgregarExecute(Sender: TObject);
begin
//  DatosClientes.CDSCondVenta.EmptyDataSet;
//  DatosClientes.wwCDSLdr.EmptyDataSet;
//  DatosClientes.wwCDSClientes.EmptyDataSet;


  DatosClientes.CDSCondVenta.Close;
  DatosClientes.CDSLdr.Close;
  DatosClientes.CDSClientes.Close;
  DatosClientes.CDSGruposAbonos.Close;
  DatosClientes.CDSContrato.Close;
  DatosClientes.CDSCondAbono.Close;

  DatosClientes.CDSCondVenta.Params.ParamByName('codigo').Clear;
  DatosClientes.CDSLdr.Params.ParamByName('codigo').Clear;
  DatosClientes.CDSClientes.Params.ParamByName('codigo').Clear;
  DatosClientes.CDSGruposAbonos.Params.ParamByName('codigo').Clear;
  DatosClientes.CDSContrato.Params.ParamByName('codigo').Clear;
  DatosClientes.CDSCondAbono.Params.ParamByName('codigo').Clear;

  DatosClientes.CDSClientes.Open;
  DatosClientes.CDSCondVenta.Open;
  DatosClientes.CDSLdr.Open;
  DatosClientes.CDSGruposAbonos.Open;
  DatosClientes.CDSContrato.Open;
  DatosClientes.CDSCondAbono.Open;

  inherited;

  if (Visible) and (Enabled) then
    begin
      PageControl1.ActivePageIndex:=0;
      PageControl2.ActivePageIndex:=0;
      dbeNombre.SetFocus;
    end;
end;

procedure TFormClientes_2.FormShow(Sender: TObject);
begin
  inherited;
  btAgendar.Visible               := Agenda='S';
  // Contable **********
  FrameCtaContable1.Visible       := DMMain_FD.GetUsaContabilidad;
  FrameCtaContable1.NombreTabla   := 'Clientes';
  // ********************
  if Agregar.Enabled then
    if btNuevo<>nil then
      begin
        btNuevo.Enabled:=True;
        btNuevo.SetFocus;
      end;
end;

procedure TFormClientes_2.GeoPosicionarExecute(Sender: TObject);
begin
  inherited;
  if ((DSBase.State<>dsBrowse) and (Not(DSBase.DataSet.IsEmpty))) then
    begin
      if not(Assigned(FormGoogleMap)) then
        FormGoogleMap:=TFormGoogleMap.Create(Self);
      FormGoogleMap.edLugar.Text:=AnsiReplaceText(dbtLocalidad.Caption, ' ', '+')+'+'+AnsiReplaceText(dbeDomicilio.Text, ' ','+');
      FormGoogleMap.Show;
      DatosClientes.CDSClientesLONGITUD.Value:=FloatToStr(FormGoogleMap.Longitu);
      DatosClientes.CDSClientesLATITUD.Value :=FloatToStr(FormGoogleMap.Latitud);
    end;
end;

procedure TFormClientes_2.AdvGridExcelIO1ExportColumnFormat(Sender: TObject;
  GridCol, GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
  var ExportCellAsString: Boolean);
begin
  inherited;
  if GridCol<=1 then
    ExportCellAsString:=True;
end;

procedure TFormClientes_2.AgendarExecute(Sender: TObject);
var a,m,d:Word;
begin
  inherited;
  with DatosClientes do
  begin
    if Not(CDSClientes.IsEmpty) Then
      begin
        if Not(Assigned(FormAgenda)) then
          FormAgenda:=TFormAgenda.Create(Self);
        FormAgenda.Show;
        FormAgenda.Agregar.Execute;
        FormAgenda.CDSAgendaCODIGO.Value    :=CDSClientesCodigo.Value;
        FormAgenda.CDSAgendaNOMBRE.Value    :=CDSClientesNombre.Value;
        FormAgenda.CDSAgendaDIRECCION.Value :=CDSClientesDireccion_Comercial.Value;
        FormAgenda.CDSAgendaLOCALIDAD.Value :=CDSClientesid_cod_postal.Value;
        FormAgenda.CDSAgendaTELEFONO_1.Value:=CDSClientesTelefono_Comercial_1.Value;
        FormAgenda.CDSAgendaTELEFONO_2.Value:=CDSClientesTelefono_Comercial_2.Value;
        FormAgenda.Confirma.Execute;
        FormAgenda.Close;
      end;

  end;

end;

procedure TFormClientes_2.BuscaVendedorExecute(Sender: TObject);
begin
  inherited;
  DatosClientes.CDSBuscaVendedor.Close;
  DatosClientes.CDSBuscaVendedor.Open;
  comBuscadorVendedor.Execute;
  if comBuscadorVendedor.rOk Then
    DatosClientes.CDSClientesVENDEDORSetText(DatosClientes.CDSClientesVENDEDOR, comBuscadorVendedor.id);
  DatosClientes.CDSBuscaVendedor.Close;
end;

procedure TFormClientes_2.Button1Click(Sender: TObject);
begin
  inherited;
   ConsultaWPro.Execute;
end;

procedure TFormClientes_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  FrameCtaContable1.CodigoElemento:= DatoNew;
  DatosClientes.CDSClientes.Close;
  DatosClientes.CDSClientes.Params.ParamByName('codigo').Value  := DatoNew;
  DatosClientes.CDSClientes.Open;

  if DMMain_FD.GetUsaContabilidad then
    begin
      FrameCtaContable1.CDSCtaContable.Close;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('Tabla').AsString    := FrameCtaContable1.NombreTabla;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('Codigo').AsString   := DatoNew;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('SubIndice').AsString:= '';
      FrameCtaContable1.CDSCtaContable.Open;
    end;

  DatosClientes.CDSCondVenta.Close;
  DatosClientes.CDSCondVenta.Params.ParamByName('Codigo').Value := DatoNew;
  DatosClientes.CDSCondVenta.Open;

  DatosClientes.QFacModeloDetalle.Close;
  DatosClientes.QFacModeloDetalle.ParamByName('Codigo').Value := DatoNew;
  DatosClientes.QFacModeloDetalle.Open;


  DatosClientes.CDSContrato.Close;
  DatosClientes.CDSContrato.Params.ParamByName('Codigo').Value := DatoNew;
  DatosClientes.CDSContrato.Open;

  DatosClientes.CDSLdr.Close;
  DatosClientes.CDSLdr.Params.ParamByName('Codigo').Value       := DatoNew;
  DatosClientes.CDSLdr.Open;

  DatosClientes.CDSClientesGarantes.Close;
  DatosClientes.CDSClientesGarantes.Params.ParamByName('Codigo').Value  := DatoNew;
  DatosClientes.CDSClientesGarantes.Open;

  DatosClientes.CDSCodRipsa.Close;
  DatosClientes.CDSCodRipsa.Params.ParamByName('Codigo').Value       := DatoNew;
  DatosClientes.CDSCodRipsa.Open;

  DatosClientes.CDSNubCeo.Close;
  DatosClientes.CDSNubCeo.Params.ParamByName('Codigo').Value       := DatoNew;
  DatosClientes.CDSNubCeo.Open;


  DatosClientes.CDSCoeficientes.Close;
  DatosClientes.CDSCoeficientes.Params.ParamByName('Codigo').Value  := DatoNew;
  DatosClientes.CDSCoeficientes.Open;

  DatosClientes.CDSGruposAbonos.Close;
  DatosClientes.CDSGruposAbonos.Params.ParamByName('Codigo').Value  := DatoNew;
  DatosClientes.CDSGruposAbonos.Open;

  DatosClientes.CDSClientesAnexos.Close;
  DatosClientes.CDSClientesAnexos.Params.ParamByName('Codigo').Value  := DatoNew;
  DatosClientes.CDSClientesAnexos.Open;

  DatosClientes.CDSPlantillas.Close;
  DatosClientes.CDSPlantillas.Params.ParamByName('Codigo').Value  := DatoNew;
  DatosClientes.CDSPlantillas.Open;

  DatosClientes.CDSCondAbono.Close;
  DatosClientes.CDSCondAbono.Params.ParamByName('Codigo').Value  := DatoNew;
  DatosClientes.CDSCondAbono.Open;

  DatosClientes.QTasaIIBB.Close;
  DatosClientes.QTasaIIBB.ParamByName('cuit').Value:=DatosClientes.CDSClientesNro_de_CUIT.Value;
  DatosClientes.QTasaIIBB.Open;

  DatosClientes.CDSBuscaFC.Close;
  DatosClientes.CDSBuscaFC.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
  DatosClientes.CDSBuscaFC.Open;

  DatosClientes.CDSBuscaFO.Close;
  DatosClientes.CDSBuscaFO.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
  DatosClientes.CDSBuscaFO.Open;

  DatosClientes.CDSBuscaND.Close;
  DatosClientes.CDSBuscaND.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
  DatosClientes.CDSBuscaND.Open;

  DatosClientes.CDSBuscaNC.Close;
  DatosClientes.CDSBuscaNC.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
  DatosClientes.CDSBuscaNC.Open;

  DatosClientes.CDSBuscaTK.Close;
  DatosClientes.CDSBuscaTK.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
  DatosClientes.CDSBuscaTK.Open;

  DatosClientes.CDSPrecioDet.Close;
  DatosClientes.CDSPrecioDet.Params.ParamByName('codigo').AsString:=DatosClientes.CDSClientesCODIGO.AsString;
  DatosClientes.CDSPrecioDet.Open;

  FormClientes_2.lbPrecioEspecial.Visible := DatosClientes.CDSPrecioDetTOTAL.AsFloat>0;
  FormClientes_2.DBText5.Visible          := DatosClientes.CDSPrecioDetTOTAL.AsFloat>0;
  lbMasIVA.Visible:=  DatosClientes.CDSPrecioDetMASIVA.Value='S';
  

  DatoNew:=''+DatoNew+'';
  sbEstado.Panels[1].Text:='';
  sbEstado.Panels[0].Text:='';

  if DMMain_FD.UsuarioAdministrador then
    sbEstado.Panels[1].Text:='Ctrl+N: Cambiar Codigo';

  if DatosClientes.CDSClientesRAZON_SOCIAL.AsString<>'' then
    FormClientes_2.Caption:='Datos de Clientes.: '+DatosClientes.CDSClientesCODIGO.AsString+'-'+DatosClientes.CDSClientesRAZON_SOCIAL.AsString
  else
    FormClientes_2.Caption:='Datos de Clientes';

  cbDeposito.Enabled   := dbchFranquicia.Checked;
  chbVtaCtdo.Enabled   := chbEmiteFactura.Checked;
  dbcPlantilla.Enabled := datosClientes.CDSClientesTIPOABONO.Value<>'X';

end;

procedure TFormClientes_2.dbcListaPreciosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesLISTAPRECIOS.Clear;
end;

procedure TFormClientes_2.dbcTkEnter(Sender: TObject);
begin
  inherited;
  if (DatosClientes.CDSClientesSucursal.Value=0) or (VarIsNull(DatosClientes.CDSClientesSucursal.Value)) then
    ShowMessage('Debe asignar una sucursal para el cliente')
  else
    begin
      DatosClientes.CDSBuscaTK.Close;
      DatosClientes.CDSBuscaTK.Params.ParamByName('sucursal').AsInteger:=DatosClientes.CDSClientesSucursal.AsInteger;
      DatosClientes.CDSBuscaTK.Open;
    end;

end;

procedure TFormClientes_2.dbcTkKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesID_TIKETPORDEFECTO.Clear;
end;

procedure TFormClientes_2.dbcVendedorChange(Sender: TObject);
begin
  inherited;
  Listar.Execute;
end;

procedure TFormClientes_2.dbcZonaChange(Sender: TObject);
begin
  inherited;
  Listar.Execute;
end;

procedure TFormClientes_2.dbcListaPreciosExit(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex:=1;
  if (dblInscripcion.Visible) and (dblInscripcion.Enabled) Then
    dblInscripcion.SetFocus;

end;

procedure TFormClientes_2.chbPercibeIBClick(Sender: TObject);
begin
  inherited;
  pnInsMuticonvenio.Enabled:=Not(chbPercibeIB.Checked);
  if pnInsMuticonvenio.Enabled=True Then
    begin
      chbInscrMulticonvenio.Enabled:=True;
      chbInscrMulticonvenio.Checked:=False;
      dbeFechaVencimiento.Color    :=clBtnFace;
    end
  else
    begin
      chbInscrMulticonvenio.Enabled:=False;
      chbInscrMulticonvenio.Checked:=False;
      dbeFechaVencimiento.Color    :=clBtnFace;
    end;

end;

procedure TFormClientes_2.chEceptuadoCorteClick(Sender: TObject);
begin
  inherited;
 // chPlanPago.Enabled:=chEceptuadoCorte.Checked;
end;

procedure TFormClientes_2.chbInscrMulticonvenioClick(Sender: TObject);
begin
  inherited;
  dbeFechaVencimiento.Enabled:=chbInscrMulticonvenio.Enabled;
  if chbInscrMulticonvenio.Checked=True Then
    begin
      dbeFechaVencimiento.Color:=clWindow;
      dbeFechaVencimiento.Enabled:=True;
    end
  else
    begin
      dbeFechaVencimiento.Color:=clBtnFace;
      dbeFechaVencimiento.Enabled:=False;
    end;

end;

procedure TFormClientes_2.dbeCodigoEnter(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text :='Ctrl+F12 - Trae 1º codigo libre de cliente//Shift+F12 Por Sucursal ';
end;

procedure TFormClientes_2.dbeCodigoExit(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:='';
  FrameCtaContable1.CodigoElemento:= dbeCodigo.Text;
end;

procedure TFormClientes_2.dbeCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var IntAux:Integer;
begin
  inherited;
  IF (Key = VK_F12) and (Shift =[ssCtrl]) THEN
    DatosClientes.CDSClientesCodigo.Text    :=  DatosClientes.CodigoFree
  else
    IF (Key = VK_F12) and (Shift =[ssShift]) THEN
      DatosClientes.CDSClientesCodigo.Text    := DMMain_FD.UltimoCodigoCli;

end;

procedure TFormClientes_2.dbeCuitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesNro_de_CUIT.Clear;
end;

procedure TFormClientes_2.dbeNombreEnter(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:='Ctrl+F12 - Trae 1º codigo libre de cliente//Shift+F12 Por Sucursal ';
end;

procedure TFormClientes_2.dbeNombreExit(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:='';
end;

procedure TFormClientes_2.dbeNombreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var IntAux:Integer;
begin
  inherited;
 IF (Key = VK_F12) and (Shift =[ssCtrl]) THEN
  DatosClientes.CDSClientesCodigo.Text    :=  DatosClientes.CodigoFree
 else
    IF (Key = VK_F12) and (Shift =[ssShift]) THEN
      DatosClientes.CDSClientesCodigo.Text  :=  DMMain_FD.UltimoCodigoCli;

end;

procedure TFormClientes_2.dbeNumeroDocumentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Not(Key in ['0'..'9','-',#13,#27,#08,#127]) then
    Key:=#0;
end;

procedure TFormClientes_2.dblSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    begin
      DatosClientes.CDSClientesSucursal.Clear;
      DatosClientes.CDSClientesID_FACTURAPORDEFECTO.Clear;
      DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.Clear;
      DatosClientes.CDSClientesID_NOTADEBITOPORDEFECTO.Clear;
      DatosClientes.CDSClientesID_NOTACREDITOPORDEFECTO.Clear;
      DatosClientes.CDSClientesID_TIKETPORDEFECTO.Clear;
      DatosClientes.CDSClientesID_RECIBOPORDEFECTO.Clear;   
    end;
end;

procedure TFormClientes_2.dblZonaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    DatosClientes.CDSClientesZona.Clear;
end;

procedure TFormClientes_2.rxcCobradorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    begin
      DatosClientes.CDSClientesCOBRADOR.Clear;
      DatosClientes.CDSClientesMUESTRACOBRADOR.Clear;
    end;
end;

procedure TFormClientes_2.rxcVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=VK_DELETE) or (key=VK_BACK) Then
    begin
      DatosClientes.CDSClientesVENDEDOR.Clear;
      DatosClientes.CDSClientesMUESTRAVENDEDOR.Clear;
    end;
end;

procedure TFormClientes_2.cbEstadoChange(Sender: TObject);
begin
  inherited;
  edFechaBaja.Enabled:=cbEstado.ItemIndex=2;
  if edFechaBaja.Enabled then
    DSBase.DataSet.FieldByName('FECHA_INACTIVO').AsDateTime:=Date
  else
    DSBase.DataSet.FieldByName('FECHA_INACTIVO').Clear;

end;

procedure TFormClientes_2.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      DatosClientes.CDSClientesCODIGO_COORPORATIVO.Value   :=FormBuscadorClientes.Codigo;
      DatosClientes.CDSClientesMUESTRACTACOORPORATIVA.Value:=FormBuscadorClientes.Nombre;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;


end;

procedure TFormClientes_2.ceClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    begin
      DatosClientes.CDSClientesCODIGO_COORPORATIVO.Clear;
      DatosClientes.CDSClientesMUESTRACTACOORPORATIVA.Clear;
    end;
end;

procedure TFormClientes_2.ceCodigoAbonoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if (key=VK_DELETE) or (key=VK_BACK) Then
    begin
      DatosClientes.CDSGruposAbonos.Delete;
    end;
end;

procedure TFormClientes_2.ceCodigoAbonoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key=#13 then
    begin
      if (Trim(ceCodigoAbono.Text)<>'') then
        DatosClientes.CDSGruposAbonosID_CUPON_GRUPOSetText(DatosClientes.CDSGruposAbonosID_CUPON_GRUPO, IntToStr(comBuscadorgrupos.id));
      key:=#0;
    end;
end;

procedure TFormClientes_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frClientes.DesignReport;
end;



procedure TFormClientes_2.SpinButton1DownClick(Sender: TObject);
begin
  inherited;
  if DatosClientes.CDSClientesMES_ABONOANUAL.Value<0 then
    DatosClientes.CDSClientesMES_ABONOANUAL.Value:=12;
end;

procedure TFormClientes_2.SpinButton1UpClick(Sender: TObject);
begin
  inherited;
  if DatosClientes.CDSClientesMES_ABONOANUAL.Value>12 then
    DatosClientes.CDSClientesMES_ABONOANUAL.Value:=1;

end;

procedure TFormClientes_2.spSelectClick(Sender: TObject);
begin
  inherited;
  dbgMoroso.DataSource.DataSet.FindFirst;
  dbgMoroso.DataSource.DataSet.DisableControls;
  while not(dbgMoroso.DataSource.DataSet.eof) do
    begin
      dbgMoroso.DataSource.DataSet.Edit;
      if dbgMoroso.DataSource.DataSet.FieldByName('MOROSO').Value= 'N' then
        dbgMoroso.DataSource.DataSet.FieldByName('MOROSO').Value:= 'S'
      else
        dbgMoroso.DataSource.DataSet.FieldByName('MOROSO').Value:= 'N';
      dbgMoroso.DataSource.DataSet.Next;
    end;
  dbgMoroso.DataSource.DataSet.FindFirst;
  dbgMoroso.DataSource.DataSet.EnableControls;

//  dbgMoroso.SelectAll;
end;

procedure TFormClientes_2.spunselectClick(Sender: TObject);
begin
  inherited;
  dbgMoroso.DataSource.DataSet.FindFirst;
  dbgMoroso.DataSource.DataSet.DisableControls;
  while not(dbgMoroso.DataSource.DataSet.eof) do
    begin
      dbgMoroso.DataSource.DataSet.Edit;
      dbgMoroso.DataSource.DataSet.FieldByName('MOROSO').Value:= 'N';
      dbgMoroso.DataSource.DataSet.Next;
    end;
  dbgMoroso.DataSource.DataSet.FindFirst;
  dbgMoroso.DataSource.DataSet.EnableControls;
end;

procedure TFormClientes_2.VerCCExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCtaCteVta)) then
    FormCtaCteVta:=TFormCtaCteVta.Create(self);
  FormCtaCteVta.ceCliente.Text      :=DSBase.DataSet.FieldByName('codigo').AsString;
  FormCtaCteVta.edNombreCliente.Text:=DSBase.DataSet.FieldByName('nombre').AsString;
  FormCtaCteVta.TraerCtaCte.Execute;
  FormCtaCteVta.Show;
end;

procedure TFormClientes_2.VerIncidenciasExecute(Sender: TObject);
begin
  inherited;
  if DatosClientes.CDSClientesCODIGO.AsString<>'' then
    begin
      if Not(Assigned(formClientesIncidencias)) then
        FormClientesIncidencias:=TFormClientesIncidencias.Create(Self);
      FormClientesIncidencias.Codigo:=DatosClientes.CDSClientesCODIGO.AsString;
      FormClientesIncidencias.Show;
    end;

end;

end.
