unit FEAFIPLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 23/7/2019 09:45:00 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\xampp\bitingenieria.com.ar\feafip\feafip.dll (1)
// LIBID: {DAE2CF79-E2C1-40C0-90CD-43C9688F108E}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  FEAFIPLibMajorVersion = 1;
  FEAFIPLibMinorVersion = 1;

  LIBID_FEAFIPLib: TGUID = '{DAE2CF79-E2C1-40C0-90CD-43C9688F108E}';

  IID_Iwsaa: TGUID = '{47BE3547-1C9B-4BCA-9F4E-A65234F2C129}';
  CLASS_wsaa: TGUID = '{33B45EE7-0219-4BE1-A9CA-2B57CA4FD209}';
  IID_Iwsfexv1: TGUID = '{10891378-BAE5-4F40-AF39-70C54F4E8175}';
  CLASS_wsfexv1: TGUID = '{CBC36AD9-1D16-4590-A82C-2ED017AAAB4C}';
  IID_Iwsfev1: TGUID = '{E0A95BBC-E328-4AA6-84E2-405C10AD41A2}';
  CLASS_wsfev1: TGUID = '{6804CFD5-32DD-43AE-A463-CB64FCBE32D2}';
  IID_Iwsbfev1: TGUID = '{A5C9683D-3D72-4392-AD49-A4DFB83D8C63}';
  CLASS_wsbfev1: TGUID = '{2E472E22-AD8A-4071-8C62-D2D9B8CE47D3}';
  IID_Iwsmtxca: TGUID = '{C297BD2B-A528-446B-BF55-FAF195383E0E}';
  CLASS_wsmtxca: TGUID = '{C3DD12A3-EAA2-4F45-8F5D-4A25CBD19838}';
  IID_Iwsseg: TGUID = '{B1E85685-67E8-4B99-B8B6-85A6138E4DD0}';
  CLASS_wsseg: TGUID = '{5B4092EF-B311-4CDD-A9F8-61A0AEC7E54C}';
  IID_IwsPadron: TGUID = '{0CEB0878-6393-4701-8C86-2CA793CDCB0D}';
  CLASS_wsPadron: TGUID = '{F57D2D12-E231-4AF7-BB54-3CDDFB52713B}';
  IID_IComprobante: TGUID = '{DC4152DF-68E8-4C5C-804F-22B28CF4C726}';
  CLASS_Comprobante: TGUID = '{A9B8A44F-99B4-4D18-8A54-A66CC5C39BEB}';
  IID_ICbteAsoc: TGUID = '{43E44C59-376E-4A27-93D2-ADC712D2BA2E}';
  IID_ITributo: TGUID = '{8C1BE2D0-B8B0-442E-A8D6-8BBBE941DB0C}';
  IID_IAlicIva: TGUID = '{ADE1B3EE-2618-461B-B8D3-F048B400330A}';
  IID_IOpcional: TGUID = '{7689C644-3F89-44FE-97CF-EAF233A262C8}';
  CLASS_CbteAsoc: TGUID = '{259527D7-6AE5-411F-89EC-9C9A480A41F9}';
  CLASS_Tributo: TGUID = '{FD8F306C-CE28-460C-810C-57CE15C35A37}';
  CLASS_AlicIva: TGUID = '{DA06EFB8-3B19-4061-A544-157036E2CB57}';
  CLASS_Opcional: TGUID = '{74473C21-FABC-49EB-B268-7D6B33D8C728}';
  IID_IObs: TGUID = '{3417F5A9-B0F6-4CF9-B30B-055E17860895}';
  CLASS_Obs: TGUID = '{C778E764-6411-4086-A488-14FC22B1BA4A}';
  IID_IContribuyente: TGUID = '{19A25CC6-4F15-4C2E-AF88-7AD7901B23A9}';
  CLASS_Contribuyente: TGUID = '{0214EC04-2B59-4CDA-BE4F-6212C9B65F02}';
  IID_IDomicilio: TGUID = '{EC378410-896F-4CF2-84A8-53E61AE3D6CF}';
  CLASS_Domicilio: TGUID = '{0370A743-18E0-424E-8124-9CA27A80EB16}';
  IID_IwsPadronARBA: TGUID = '{924DCE98-B918-42E4-A00A-76FD1D8D483A}';
  CLASS_wsPadronARBA: TGUID = '{6F042FCF-8D78-498B-8630-61346537279F}';
  IID_IConsultaAlicuotaRespuesta: TGUID = '{2589E4FF-0788-4FEF-9565-0F05095F1356}';
  CLASS_ConsultaAlicuotaRespuesta: TGUID = '{E17927E3-019B-4B2E-BB5B-CD6DA8A61F59}';
  IID_ICertificado: TGUID = '{CAD1F637-CD57-45DF-8A39-EB2227E34D93}';
  CLASS_Certificado: TGUID = '{189DA0FB-8B57-4C51-834E-666BE83E5878}';
  IID_Iwscdc: TGUID = '{201C6546-D660-4171-A3D3-839583F7969E}';
  CLASS_wscdc: TGUID = '{FDFE6850-8AE7-4B58-8D03-7655A9F28402}';
  IID_IBarcode: TGUID = '{01F6CFB9-A47D-401E-8A89-1C3962BB9364}';
  CLASS_Barcode: TGUID = '{C53215BA-E553-4742-8D17-193B041996F9}';
  IID_Iwsct: TGUID = '{161A74B4-F8B8-408F-934B-2D2D32E492E2}';
  CLASS_wsct: TGUID = '{0C0A8678-5679-4F36-A995-85DA19D90CF5}';
  IID_Iwsfecred: TGUID = '{32EF8E70-4CB3-40FD-A66C-BBB03E147C37}';
  CLASS_wsfecred: TGUID = '{A9EFDBFE-92AC-4D25-B52E-053810AAEB03}';
  IID_IIdCtaCteTy: TGUID = '{C9194512-99E1-4404-85AB-6218E498CEED}';
  CLASS_IdCtaCteTy: TGUID = '{B27AFDD3-1232-49BB-B143-8D6B9CDD2AC5}';
  IID_IIdComprobanteTy: TGUID = '{3ABD3582-6764-4A05-BFDE-CFED3D4A1143}';
  CLASS_IdComprobanteTy: TGUID = '{02CD78F9-A667-49EA-8508-CFC2F476AB45}';
  IID_IAceptarFECredRequestTy: TGUID = '{F0324362-5DE0-4A53-B253-D18C37D5FD5C}';
  CLASS_AceptarFECredRequestTy: TGUID = '{4516C1D1-6EC6-4017-BCB7-75E2C45C45D3}';
  IID_IConsultarCmpReturnTy: TGUID = '{BB315EBC-4D6F-4542-BC1D-B4878E91A9EF}';
  CLASS_ConsultarCmpReturnTy: TGUID = '{C2B0F281-F728-47D0-ACD5-30F614857DD6}';
  IID_IComprobanteTy: TGUID = '{E4EF8C5E-D0D5-4C0A-A1AA-AFDC93A8D4E7}';
  CLASS_ComprobanteTy: TGUID = '{5088161C-D4C5-4804-B3D2-ADBB7105F6CD}';
  IID_ISubtotalIVATy: TGUID = '{873012B5-0A40-440E-9F18-ED81C3C7AD4F}';
  CLASS_SubtotalIVATy: TGUID = '{6AB7D1ED-1C7B-498D-B0CB-639178F5E98F}';
  IID_IOtroTributoTy: TGUID = '{96443A17-3274-4493-A940-92F4FE8F4D98}';
  CLASS_OtroTributoTy: TGUID = '{DAA88209-E23C-4E71-922B-1F4A2789119A}';
  IID_IItemTy: TGUID = '{572B401B-91D9-46CA-85A7-ED286B14693B}';
  CLASS_ItemTy: TGUID = '{2FA6E1A5-A1F8-4A90-9B4F-2C8A722AD481}';
  IID_IMotivoRechazoTy: TGUID = '{21AC85E6-B7A9-487F-BCBC-19E18AE05D42}';
  CLASS_MotivoRechazoType: TGUID = '{519CBF25-50EE-42E6-A732-A7CC2AC99A1C}';
  IID_IInformarFacturaAgtDptoCltvRequestTy: TGUID = '{3DEF5AFE-1202-4B92-BEBB-4B006E29C02F}';
  CLASS_InformarFacturaAgtDptoCltvRequestTy: TGUID = '{CD68CB93-ECDF-42BE-9854-02FA02E8B30C}';
  IID_IRechazarFECredRequestTy: TGUID = '{30EBD9FB-D607-484D-A5E8-8AD7522DA407}';
  CLASS_RechazarFECredRequestTy: TGUID = '{28C2A13F-C5BE-49BE-8DA4-635CF9529B93}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum TipoComprobante
type
  TipoComprobante = TOleEnum;
const
  tcFacturaA = $00000001;
  tcNotaDebitoA = $00000002;
  tcNotaCreditoA = $00000003;
  tcFacturaB = $00000006;
  tcNotaDebitoB = $00000007;
  tcNotaCreditoB = $00000008;
  tcFacturaC = $0000000B;
  tcNotaDebitoC = $0000000C;
  tcNotaCreditoC = $0000000D;

// Constants for enum UnidadesDeMedida
type
  UnidadesDeMedida = TOleEnum;
const
  const0 = $00000000;
  Const1 = $00000001;

// Constants for enum TipoResponsable
type
  TipoResponsable = TOleEnum;
const
  trInscripto = $00000001;
  trNoInscripto = $00000002;
  trNoResponsable = $00000003;
  trExento = $00000004;
  trConsumidorFinal = $00000005;
  trMonotributo = $00000006;
  trNoCategorizado = $00000007;
  trProveedorExterior = $00000008;
  trClienteExterior = $00000009;
  trIVALiberado = $0000000A;
  trInscriptoAgentePerc = $0000000B;
  trPequenioEventual = $0000000C;
  trMonotribSocial = $0000000D;
  trPequenioContribSocial = $0000000E;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  Iwsaa = interface;
  IwsaaDisp = dispinterface;
  Iwsfexv1 = interface;
  Iwsfexv1Disp = dispinterface;
  Iwsfev1 = interface;
  Iwsfev1Disp = dispinterface;
  Iwsbfev1 = interface;
  Iwsbfev1Disp = dispinterface;
  Iwsmtxca = interface;
  IwsmtxcaDisp = dispinterface;
  Iwsseg = interface;
  IwssegDisp = dispinterface;
  IwsPadron = interface;
  IwsPadronDisp = dispinterface;
  IComprobante = interface;
  IComprobanteDisp = dispinterface;
  ICbteAsoc = interface;
  ICbteAsocDisp = dispinterface;
  ITributo = interface;
  ITributoDisp = dispinterface;
  IAlicIva = interface;
  IAlicIvaDisp = dispinterface;
  IOpcional = interface;
  IOpcionalDisp = dispinterface;
  IObs = interface;
  IObsDisp = dispinterface;
  IContribuyente = interface;
  IContribuyenteDisp = dispinterface;
  IDomicilio = interface;
  IDomicilioDisp = dispinterface;
  IwsPadronARBA = interface;
  IwsPadronARBADisp = dispinterface;
  IConsultaAlicuotaRespuesta = interface;
  IConsultaAlicuotaRespuestaDisp = dispinterface;
  ICertificado = interface;
  ICertificadoDisp = dispinterface;
  Iwscdc = interface;
  IwscdcDisp = dispinterface;
  IBarcode = interface;
  IBarcodeDisp = dispinterface;
  Iwsct = interface;
  IwsctDisp = dispinterface;
  Iwsfecred = interface;
  IwsfecredDisp = dispinterface;
  IIdCtaCteTy = interface;
  IIdCtaCteTyDisp = dispinterface;
  IIdComprobanteTy = interface;
  IIdComprobanteTyDisp = dispinterface;
  IAceptarFECredRequestTy = interface;
  IAceptarFECredRequestTyDisp = dispinterface;
  IConsultarCmpReturnTy = interface;
  IConsultarCmpReturnTyDisp = dispinterface;
  IComprobanteTy = interface;
  IComprobanteTyDisp = dispinterface;
  ISubtotalIVATy = interface;
  ISubtotalIVATyDisp = dispinterface;
  IOtroTributoTy = interface;
  IOtroTributoTyDisp = dispinterface;
  IItemTy = interface;
  IItemTyDisp = dispinterface;
  IMotivoRechazoTy = interface;
  IMotivoRechazoTyDisp = dispinterface;
  IInformarFacturaAgtDptoCltvRequestTy = interface;
  IInformarFacturaAgtDptoCltvRequestTyDisp = dispinterface;
  IRechazarFECredRequestTy = interface;
  IRechazarFECredRequestTyDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  wsaa = Iwsaa;
  wsfexv1 = Iwsfexv1;
  wsfev1 = Iwsfev1;
  wsbfev1 = Iwsbfev1;
  wsmtxca = Iwsmtxca;
  wsseg = Iwsseg;
  wsPadron = IwsPadron;
  Comprobante = IComprobante;
  CbteAsoc = ICbteAsoc;
  Tributo = ITributo;
  AlicIva = IAlicIva;
  Opcional = IOpcional;
  Obs = IObs;
  Contribuyente = IContribuyente;
  Domicilio = IDomicilio;
  wsPadronARBA = IwsPadronARBA;
  ConsultaAlicuotaRespuesta = IConsultaAlicuotaRespuesta;
  Certificado = ICertificado;
  wscdc = Iwscdc;
  Barcode = IBarcode;
  wsct = Iwsct;
  wsfecred = Iwsfecred;
  IdCtaCteTy = IIdCtaCteTy;
  IdComprobanteTy = IIdComprobanteTy;
  AceptarFECredRequestTy = IAceptarFECredRequestTy;
  ConsultarCmpReturnTy = IConsultarCmpReturnTy;
  ComprobanteTy = IComprobanteTy;
  SubtotalIVATy = ISubtotalIVATy;
  ItemTy = IItemTy;
  MotivoRechazoType = IMotivoRechazoTy;
  InformarFacturaAgtDptoCltvRequestTy = IInformarFacturaAgtDptoCltvRequestTy;
  RechazarFECredRequestTy = IRechazarFECredRequestTy;


// *********************************************************************//
// Interface: Iwsaa
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {47BE3547-1C9B-4BCA-9F4E-A65234F2C129}
// *********************************************************************//
  Iwsaa = interface(IDispatch)
    ['{47BE3547-1C9B-4BCA-9F4E-A65234F2C129}']
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString; const Servicio: WideString): OLE_CANCELBOOL; safecall;
    function Get_Token: WideString; safecall;
    function Get_Sign: WideString; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function Get_CUIT: WideString; safecall;
    procedure Set_CUIT(const Value: WideString); safecall;
    function Get_XMLRequest: WideString; safecall;
    function Get_XMLResponse: WideString; safecall;
    function Get_Proxy: WideString; safecall;
    procedure Set_Proxy(const Value: WideString); safecall;
    function Get_ProxyUserName: WideString; safecall;
    procedure Set_ProxyUserName(const Value: WideString); safecall;
    function Get_ProxyPassword: WideString; safecall;
    procedure Set_ProxyPassword(const Value: WideString); safecall;
    function Get_ProxyEnabled: OLE_CANCELBOOL; safecall;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL); safecall;
    procedure CargarLicencia(const Licencia: WideString); safecall;
    property Token: WideString read Get_Token;
    property Sign: WideString read Get_Sign;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property CUIT: WideString read Get_CUIT write Set_CUIT;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
  end;

// *********************************************************************//
// DispIntf:  IwsaaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {47BE3547-1C9B-4BCA-9F4E-A65234F2C129}
// *********************************************************************//
  IwsaaDisp = dispinterface
    ['{47BE3547-1C9B-4BCA-9F4E-A65234F2C129}']
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString; const Servicio: WideString): OLE_CANCELBOOL; dispid 101;
    property Token: WideString readonly dispid 104;
    property Sign: WideString readonly dispid 105;
    property ErrorCode: Integer readonly dispid 102;
    property ErrorDesc: WideString readonly dispid 103;
    property CUIT: WideString dispid 206;
    property XMLRequest: WideString readonly dispid 201;
    property XMLResponse: WideString readonly dispid 202;
    property Proxy: WideString dispid 203;
    property ProxyUserName: WideString dispid 204;
    property ProxyPassword: WideString dispid 205;
    property ProxyEnabled: OLE_CANCELBOOL dispid 207;
    procedure CargarLicencia(const Licencia: WideString); dispid 208;
  end;

// *********************************************************************//
// Interface: Iwsfexv1
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {10891378-BAE5-4F40-AF39-70C54F4E8175}
// *********************************************************************//
  Iwsfexv1 = interface(IDispatch)
    ['{10891378-BAE5-4F40-AF39-70C54F4E8175}']
    procedure AgregaFactura(Id: Double; const Fecha_cbte: WideString; Tipo_cbte: Integer; 
                            Punto_vta: Integer; Cbte_nro: Double; Tipo_expo: Integer; 
                            const Permiso_existente: WideString; Dst_cmp: Integer; 
                            const Cliente: WideString; Cuit_pais_cliente: Double; 
                            const Domicilio_cliente: WideString; const Id_impositivo: WideString; 
                            const Moneda_Id: WideString; Moneda_ctz: Double; 
                            const Obs_comerciales: WideString; Imp_total: Double; 
                            const Obs: WideString; const Forma_pago: WideString; 
                            const Incoterms: WideString; const Incoterms_ds: WideString; 
                            Idioma_cbte: Integer); safecall;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; safecall;
    function Autorizar: OLE_CANCELBOOL; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function AutorizarRespuesta(out Cae: WideString; out Fch_venc_Cae: WideString; 
                                out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL; safecall;
    function RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out Cbte_nro: Double; 
                             out Cbte_fecha: WideString): OLE_CANCELBOOL; safecall;
    procedure AgregaPermiso(const Id_permiso: WideString; Dst_merc: Integer); safecall;
    procedure AgregaCompAsoc(Cbte_tipo: Integer; Cbte_punto_vta: Integer; Cbte_nro: Double; 
                             Cbte_cuit: Double); safecall;
    procedure AgregaItem(const Pro_codigo: WideString; const Pro_ds: WideString; Pro_qty: Double; 
                         Pro_umed: Integer; Pro_precio_uni: Double; Pro_total_item: Double; 
                         Pro_bonificacion: Double); safecall;
    function Get_Token: WideString; safecall;
    procedure Set_Token(const Value: WideString); safecall;
    function Get_Sign: WideString; safecall;
    procedure Set_Sign(const Value: WideString); safecall;
    function Get_XMLRequest: WideString; safecall;
    function Get_XMLResponse: WideString; safecall;
    function SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL; safecall;
    function Get_SFLastCMP: Double; safecall;
    function Get_SFCAE: WideString; safecall;
    function Get_SFVencimiento: WideString; safecall;
    function Get_SFResultado: WideString; safecall;
    function Get_SFReproceso: WideString; safecall;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL; safecall;
    function Get_SFCmpConsultarCAE: WideString; safecall;
    function Get_SFCmpConsultarVencimiento: WideString; safecall;
    function UltimoIdTrans(out Resultado: Double): OLE_CANCELBOOL; safecall;
    function AutorizarRespuestaObs: WideString; safecall;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL; safecall;
    function SFUltimoIdTrans: OLE_CANCELBOOL; safecall;
    function Get_SFLastId: Double; safecall;
    function ParamGetCotizacion(const MonId: WideString; var MonCtz: Double; 
                                var MonFecha: WideString): OLE_CANCELBOOL; safecall;
    function Get_Proxy: WideString; safecall;
    procedure Set_Proxy(const Value: WideString); safecall;
    function Get_ProxyUserName: WideString; safecall;
    procedure Set_ProxyUserName(const Value: WideString); safecall;
    function Get_ProxyPassword: WideString; safecall;
    procedure Set_ProxyPassword(const Value: WideString); safecall;
    function Get_ProxyEnabled: OLE_CANCELBOOL; safecall;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL); safecall;
    procedure CargarLicencia(const Licencia: WideString); safecall;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property SFLastCMP: Double read Get_SFLastCMP;
    property SFCAE: WideString read Get_SFCAE;
    property SFVencimiento: WideString read Get_SFVencimiento;
    property SFResultado: WideString read Get_SFResultado;
    property SFReproceso: WideString read Get_SFReproceso;
    property SFCmpConsultarCAE: WideString read Get_SFCmpConsultarCAE;
    property SFCmpConsultarVencimiento: WideString read Get_SFCmpConsultarVencimiento;
    property SFLastId: Double read Get_SFLastId;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
  end;

// *********************************************************************//
// DispIntf:  Iwsfexv1Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {10891378-BAE5-4F40-AF39-70C54F4E8175}
// *********************************************************************//
  Iwsfexv1Disp = dispinterface
    ['{10891378-BAE5-4F40-AF39-70C54F4E8175}']
    procedure AgregaFactura(Id: Double; const Fecha_cbte: WideString; Tipo_cbte: Integer; 
                            Punto_vta: Integer; Cbte_nro: Double; Tipo_expo: Integer; 
                            const Permiso_existente: WideString; Dst_cmp: Integer; 
                            const Cliente: WideString; Cuit_pais_cliente: Double; 
                            const Domicilio_cliente: WideString; const Id_impositivo: WideString; 
                            const Moneda_Id: WideString; Moneda_ctz: Double; 
                            const Obs_comerciales: WideString; Imp_total: Double; 
                            const Obs: WideString; const Forma_pago: WideString; 
                            const Incoterms: WideString; const Incoterms_ds: WideString; 
                            Idioma_cbte: Integer); dispid 101;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; dispid 102;
    function Autorizar: OLE_CANCELBOOL; dispid 103;
    property ErrorCode: Integer readonly dispid 104;
    property ErrorDesc: WideString readonly dispid 105;
    property URL: WideString dispid 107;
    property CUIT: Double dispid 108;
    function AutorizarRespuesta(out Cae: WideString; out Fch_venc_Cae: WideString; 
                                out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL; dispid 110;
    function RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out Cbte_nro: Double; 
                             out Cbte_fecha: WideString): OLE_CANCELBOOL; dispid 111;
    procedure AgregaPermiso(const Id_permiso: WideString; Dst_merc: Integer); dispid 112;
    procedure AgregaCompAsoc(Cbte_tipo: Integer; Cbte_punto_vta: Integer; Cbte_nro: Double; 
                             Cbte_cuit: Double); dispid 113;
    procedure AgregaItem(const Pro_codigo: WideString; const Pro_ds: WideString; Pro_qty: Double; 
                         Pro_umed: Integer; Pro_precio_uni: Double; Pro_total_item: Double; 
                         Pro_bonificacion: Double); dispid 114;
    property Token: WideString dispid 201;
    property Sign: WideString dispid 202;
    property XMLRequest: WideString readonly dispid 203;
    property XMLResponse: WideString readonly dispid 204;
    function SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL; dispid 219;
    property SFLastCMP: Double readonly dispid 220;
    property SFCAE: WideString readonly dispid 216;
    property SFVencimiento: WideString readonly dispid 217;
    property SFResultado: WideString readonly dispid 218;
    property SFReproceso: WideString readonly dispid 224;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL; dispid 221;
    property SFCmpConsultarCAE: WideString readonly dispid 222;
    property SFCmpConsultarVencimiento: WideString readonly dispid 225;
    function UltimoIdTrans(out Resultado: Double): OLE_CANCELBOOL; dispid 115;
    function AutorizarRespuestaObs: WideString; dispid 205;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL; dispid 228;
    function SFUltimoIdTrans: OLE_CANCELBOOL; dispid 230;
    property SFLastId: Double readonly dispid 229;
    function ParamGetCotizacion(const MonId: WideString; var MonCtz: Double; 
                                var MonFecha: WideString): OLE_CANCELBOOL; dispid 206;
    property Proxy: WideString dispid 207;
    property ProxyUserName: WideString dispid 208;
    property ProxyPassword: WideString dispid 209;
    property ProxyEnabled: OLE_CANCELBOOL dispid 210;
    procedure CargarLicencia(const Licencia: WideString); dispid 211;
  end;

// *********************************************************************//
// Interface: Iwsfev1
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E0A95BBC-E328-4AA6-84E2-405C10AD41A2}
// *********************************************************************//
  Iwsfev1 = interface(IDispatch)
    ['{E0A95BBC-E328-4AA6-84E2-405C10AD41A2}']
    procedure AgregaFactura(Concepto: Integer; DocTipo: Integer; DocNro: Double; Cbtedesde: Double; 
                            Cbtehasta: Double; const CbteFch: WideString; Imptotal: Double; 
                            ImpTotalConc: Double; ImpNeto: Double; ImpOpEx: Double; 
                            const FechaServDesde: WideString; const FechaServHasta: WideString; 
                            const FechaVencPago: WideString; const MonId: WideString; 
                            MonCotiz: Double); safecall;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; safecall;
    function Autorizar(ptoVenta: Integer; CbteTipo: Integer): OLE_CANCELBOOL; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    procedure Reset; safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_AutorizarRespCount: Integer; safecall;
    function AutorizarRespuesta(Indice: Integer; out Cae: WideString; out Vencimiento: WideString; 
                                out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL; safecall;
    function RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out cmp: Double): OLE_CANCELBOOL; safecall;
    function RecuperaQTYRequest(qty: Integer): OLE_CANCELBOOL; safecall;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL; safecall;
    function Dummy(out appserver: WideString; out authserver: WideString; out dbserver: WideString): OLE_CANCELBOOL; safecall;
    function CAEASolicitar(Periodo: Integer; Orden: Integer; out Cae: WideString; 
                           out FchVigDesde: WideString; out FchVigHasta: WideString; 
                           out FchTopeInf: WideString; out FchProceso: WideString): OLE_CANCELBOOL; safecall;
    function AutorizarRespuestaObs(Indice: Integer): WideString; safecall;
    function CAEAConsultar(Periodo: Integer; Orden: Integer; out Cae: WideString; 
                           out FchVigDesde: WideString; out FchVigHasta: WideString; 
                           out FchTopeInf: WideString; out FchProceso: WideString): OLE_CANCELBOOL; safecall;
    function CAEASinMovimientoInformar(PtoVta: Integer; const CAEA: WideString; 
                                       out Resultado: WideString): OLE_CANCELBOOL; safecall;
    function CAEASinMovimientoConsultar(PtoVta: Integer; const CAEA: WideString; 
                                        out Resultado: WideString): OLE_CANCELBOOL; safecall;
    function ParamGetCotizacion(const MonId: WideString; out MonCotiz: Double; 
                                out FchCotiz: WideString): OLE_CANCELBOOL; safecall;
    function ParamGetTiposConcepto(out Resultado: WideString): OLE_CANCELBOOL; safecall;
    procedure AgregaTributo(Id: Integer; const Desc: WideString; BaseImp: Double; Alic: Double; 
                            Importe: Double); safecall;
    procedure AgregaIVA(Id: Integer; BaseImp: Double; Importe: Double); safecall;
    procedure AgregaCompAsoc(Tipo: Integer; PtoVta: Integer; Nro: Double; CUIT: Double; 
                             const CbteFch: WideString); safecall;
    procedure AgregaOpcional(const Id: WideString; const Valor: WideString); safecall;
    function ParamGetTiposMonedas(out Resultado: WideString): OLE_CANCELBOOL; safecall;
    function Get_XMLRequest: WideString; safecall;
    function Get_XMLResponse: WideString; safecall;
    function Get_Token: WideString; safecall;
    procedure Set_Token(const Value: WideString); safecall;
    function Get_Sign: WideString; safecall;
    procedure Set_Sign(const Value: WideString); safecall;
    function SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL; safecall;
    function Get_SFLastCMP: Double; safecall;
    function Get_SFCAE(Indice: Integer): WideString; safecall;
    function Get_SFVencimiento(Indice: Integer): WideString; safecall;
    function Get_SFResultado(Indice: Integer): WideString; safecall;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL; safecall;
    function Get_SFCmpConsultarCAE: WideString; safecall;
    function Get_SFCmpConsultarVencimiento: WideString; safecall;
    function CAEAInformar(ptoVenta: Integer; CbteTipo: Integer; const Cae: WideString): OLE_CANCELBOOL; safecall;
    function AutorizarRespuestaObsCode(Indice: Integer): WideString; safecall;
    function Get_Proxy: WideString; safecall;
    procedure Set_Proxy(const Value: WideString); safecall;
    function Get_ProxyUserName: WideString; safecall;
    procedure Set_ProxyUserName(const Value: WideString); safecall;
    function Get_ProxyPassword: WideString; safecall;
    procedure Set_ProxyPassword(const Value: WideString); safecall;
    function Get_ProxyEnabled: OLE_CANCELBOOL; safecall;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL); safecall;
    function ParamGetTiposDoc(out Resultado: WideString): OLE_CANCELBOOL; safecall;
    function ParamGetTiposCbte(out Resultado: WideString): OLE_CANCELBOOL; safecall;
    procedure LogTransaction(const RequestFilename: WideString; const ResponseFilename: WideString); safecall;
    function CmpConsultarEx(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                            const cbte_info_result: IComprobante): OLE_CANCELBOOL; safecall;
    function Get_CmpConsultarCbte: IComprobante; safecall;
    procedure AgregaComprador(DocTipo: Integer; DocNro: Double; Porcentaje: Double); safecall;
    function Get_Depurar: OLE_CANCELBOOL; safecall;
    procedure Set_Depurar(Value: OLE_CANCELBOOL); safecall;
    procedure CargarLicencia(const Licencia: WideString); safecall;
    function Get_Path: WideString; safecall;
    function ParamGetPtosVenta(out Resultado: WideString): OLE_CANCELBOOL; safecall;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property AutorizarRespCount: Integer read Get_AutorizarRespCount;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
    property SFLastCMP: Double read Get_SFLastCMP;
    property SFCAE[Indice: Integer]: WideString read Get_SFCAE;
    property SFVencimiento[Indice: Integer]: WideString read Get_SFVencimiento;
    property SFResultado[Indice: Integer]: WideString read Get_SFResultado;
    property SFCmpConsultarCAE: WideString read Get_SFCmpConsultarCAE;
    property SFCmpConsultarVencimiento: WideString read Get_SFCmpConsultarVencimiento;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
    property CmpConsultarCbte: IComprobante read Get_CmpConsultarCbte;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
    property Path: WideString read Get_Path;
  end;

// *********************************************************************//
// DispIntf:  Iwsfev1Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E0A95BBC-E328-4AA6-84E2-405C10AD41A2}
// *********************************************************************//
  Iwsfev1Disp = dispinterface
    ['{E0A95BBC-E328-4AA6-84E2-405C10AD41A2}']
    procedure AgregaFactura(Concepto: Integer; DocTipo: Integer; DocNro: Double; Cbtedesde: Double; 
                            Cbtehasta: Double; const CbteFch: WideString; Imptotal: Double; 
                            ImpTotalConc: Double; ImpNeto: Double; ImpOpEx: Double; 
                            const FechaServDesde: WideString; const FechaServHasta: WideString; 
                            const FechaVencPago: WideString; const MonId: WideString; 
                            MonCotiz: Double); dispid 201;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; dispid 202;
    function Autorizar(ptoVenta: Integer; CbteTipo: Integer): OLE_CANCELBOOL; dispid 203;
    property ErrorCode: Integer readonly dispid 204;
    property ErrorDesc: WideString readonly dispid 205;
    procedure Reset; dispid 206;
    property URL: WideString dispid 207;
    property CUIT: Double dispid 208;
    property AutorizarRespCount: Integer readonly dispid 209;
    function AutorizarRespuesta(Indice: Integer; out Cae: WideString; out Vencimiento: WideString; 
                                out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL; dispid 210;
    function RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out cmp: Double): OLE_CANCELBOOL; dispid 211;
    function RecuperaQTYRequest(qty: Integer): OLE_CANCELBOOL; dispid 212;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL; dispid 213;
    function Dummy(out appserver: WideString; out authserver: WideString; out dbserver: WideString): OLE_CANCELBOOL; dispid 214;
    function CAEASolicitar(Periodo: Integer; Orden: Integer; out Cae: WideString; 
                           out FchVigDesde: WideString; out FchVigHasta: WideString; 
                           out FchTopeInf: WideString; out FchProceso: WideString): OLE_CANCELBOOL; dispid 215;
    function AutorizarRespuestaObs(Indice: Integer): WideString; dispid 216;
    function CAEAConsultar(Periodo: Integer; Orden: Integer; out Cae: WideString; 
                           out FchVigDesde: WideString; out FchVigHasta: WideString; 
                           out FchTopeInf: WideString; out FchProceso: WideString): OLE_CANCELBOOL; dispid 217;
    function CAEASinMovimientoInformar(PtoVta: Integer; const CAEA: WideString; 
                                       out Resultado: WideString): OLE_CANCELBOOL; dispid 218;
    function CAEASinMovimientoConsultar(PtoVta: Integer; const CAEA: WideString; 
                                        out Resultado: WideString): OLE_CANCELBOOL; dispid 219;
    function ParamGetCotizacion(const MonId: WideString; out MonCotiz: Double; 
                                out FchCotiz: WideString): OLE_CANCELBOOL; dispid 220;
    function ParamGetTiposConcepto(out Resultado: WideString): OLE_CANCELBOOL; dispid 221;
    procedure AgregaTributo(Id: Integer; const Desc: WideString; BaseImp: Double; Alic: Double; 
                            Importe: Double); dispid 222;
    procedure AgregaIVA(Id: Integer; BaseImp: Double; Importe: Double); dispid 223;
    procedure AgregaCompAsoc(Tipo: Integer; PtoVta: Integer; Nro: Double; CUIT: Double; 
                             const CbteFch: WideString); dispid 224;
    procedure AgregaOpcional(const Id: WideString; const Valor: WideString); dispid 225;
    function ParamGetTiposMonedas(out Resultado: WideString): OLE_CANCELBOOL; dispid 226;
    property XMLRequest: WideString readonly dispid 227;
    property XMLResponse: WideString readonly dispid 228;
    property Token: WideString dispid 229;
    property Sign: WideString dispid 230;
    function SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL; dispid 231;
    property SFLastCMP: Double readonly dispid 232;
    property SFCAE[Indice: Integer]: WideString readonly dispid 233;
    property SFVencimiento[Indice: Integer]: WideString readonly dispid 234;
    property SFResultado[Indice: Integer]: WideString readonly dispid 235;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL; dispid 236;
    property SFCmpConsultarCAE: WideString readonly dispid 237;
    property SFCmpConsultarVencimiento: WideString readonly dispid 238;
    function CAEAInformar(ptoVenta: Integer; CbteTipo: Integer; const Cae: WideString): OLE_CANCELBOOL; dispid 239;
    function AutorizarRespuestaObsCode(Indice: Integer): WideString; dispid 240;
    property Proxy: WideString dispid 241;
    property ProxyUserName: WideString dispid 242;
    property ProxyPassword: WideString dispid 243;
    property ProxyEnabled: OLE_CANCELBOOL dispid 244;
    function ParamGetTiposDoc(out Resultado: WideString): OLE_CANCELBOOL; dispid 245;
    function ParamGetTiposCbte(out Resultado: WideString): OLE_CANCELBOOL; dispid 246;
    procedure LogTransaction(const RequestFilename: WideString; const ResponseFilename: WideString); dispid 247;
    function CmpConsultarEx(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                            const cbte_info_result: IComprobante): OLE_CANCELBOOL; dispid 249;
    property CmpConsultarCbte: IComprobante readonly dispid 248;
    procedure AgregaComprador(DocTipo: Integer; DocNro: Double; Porcentaje: Double); dispid 250;
    property Depurar: OLE_CANCELBOOL dispid 251;
    procedure CargarLicencia(const Licencia: WideString); dispid 252;
    property Path: WideString readonly dispid 253;
    function ParamGetPtosVenta(out Resultado: WideString): OLE_CANCELBOOL; dispid 254;
  end;

// *********************************************************************//
// Interface: Iwsbfev1
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A5C9683D-3D72-4392-AD49-A4DFB83D8C63}
// *********************************************************************//
  Iwsbfev1 = interface(IDispatch)
    ['{A5C9683D-3D72-4392-AD49-A4DFB83D8C63}']
    procedure AgregaFactura(Id: Double; tipo_doc: Integer; nro_doc: Double; Zona: Integer; 
                            Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                            Imp_total: Double; imp_tot_conc: Double; imp_neto: Double; 
                            impto_liq: Double; impto_liq_rni: Double; imp_op_ex: Double; 
                            Imp_perc: Double; Imp_iibb: Double; Imp_perc_mun: Double; 
                            Imp_internos: Double; const Imp_moneda_Id: WideString; 
                            Imp_moneda_ctz: Double; const Fecha_cbte: WideString); safecall;
    procedure AgregaOpcional(const Id: WideString; const Valor: WideString); safecall;
    procedure AgregaItem(const Pro_codigo_ncm: WideString; const Pro_codigo_sec: WideString; 
                         const Pro_ds: WideString; Pro_qty: Double; Pro_umed: Integer; 
                         Pro_precio_uni: Double; Imp_bonif: Double; Imp_total: Double; 
                         Iva_id: Integer); safecall;
    function Autorizar: OLE_CANCELBOOL; safecall;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_Token: WideString; safecall;
    procedure Set_Token(const Value: WideString); safecall;
    function Get_Sign: WideString; safecall;
    procedure Set_Sign(const Value: WideString); safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    procedure Reset; safecall;
    function RecuperaLastCMP(Pto_venta: Integer; Tipo_cbte: Integer; out Cbte_nro: Double; 
                             out Cbte_fecha: WideString): OLE_CANCELBOOL; safecall;
    function SFRecuperaLastCMP(Pto_venta: Integer; Tipo_cbte: Integer): OLE_CANCELBOOL; safecall;
    function Get_SFLastCMP: Double; safecall;
    function Get_SFLastFecha: WideString; safecall;
    function RecuperaLastID(out Id: Double): OLE_CANCELBOOL; safecall;
    function SFRecuperaLastID: OLE_CANCELBOOL; safecall;
    function Get_SFLastId: Double; safecall;
    function AutorizarRespuesta(out Cae: WideString; out Vencimiento: WideString; 
                                out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL; safecall;
    function Get_SFCAE: WideString; safecall;
    function Get_SFVencimiento: WideString; safecall;
    function Get_SFResultado: WideString; safecall;
    function Get_SFReproceso: WideString; safecall;
    function AutorizarRespuestaObs: WideString; safecall;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL; safecall;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; Cbte_nro: Double): OLE_CANCELBOOL; safecall;
    function Get_SFCmpConsultarCAE: WideString; safecall;
    function Get_SFCmpConsultarVencimiento: WideString; safecall;
    function Get_XMLRequest: WideString; safecall;
    function Get_XMLResponse: WideString; safecall;
    function Get_Proxy: WideString; safecall;
    procedure Set_Proxy(const Value: WideString); safecall;
    function Get_ProxyUserName: WideString; safecall;
    procedure Set_ProxyUserName(const Value: WideString); safecall;
    function Get_ProxyPassword: WideString; safecall;
    procedure Set_ProxyPassword(const Value: WideString); safecall;
    function Get_ProxyEnabled: OLE_CANCELBOOL; safecall;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL); safecall;
    function ParamGetZonas(out Zonas: WideString): OLE_CANCELBOOL; safecall;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property URL: WideString read Get_URL write Set_URL;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property SFLastCMP: Double read Get_SFLastCMP;
    property SFLastFecha: WideString read Get_SFLastFecha;
    property SFLastId: Double read Get_SFLastId;
    property SFCAE: WideString read Get_SFCAE;
    property SFVencimiento: WideString read Get_SFVencimiento;
    property SFResultado: WideString read Get_SFResultado;
    property SFReproceso: WideString read Get_SFReproceso;
    property SFCmpConsultarCAE: WideString read Get_SFCmpConsultarCAE;
    property SFCmpConsultarVencimiento: WideString read Get_SFCmpConsultarVencimiento;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
  end;

// *********************************************************************//
// DispIntf:  Iwsbfev1Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A5C9683D-3D72-4392-AD49-A4DFB83D8C63}
// *********************************************************************//
  Iwsbfev1Disp = dispinterface
    ['{A5C9683D-3D72-4392-AD49-A4DFB83D8C63}']
    procedure AgregaFactura(Id: Double; tipo_doc: Integer; nro_doc: Double; Zona: Integer; 
                            Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                            Imp_total: Double; imp_tot_conc: Double; imp_neto: Double; 
                            impto_liq: Double; impto_liq_rni: Double; imp_op_ex: Double; 
                            Imp_perc: Double; Imp_iibb: Double; Imp_perc_mun: Double; 
                            Imp_internos: Double; const Imp_moneda_Id: WideString; 
                            Imp_moneda_ctz: Double; const Fecha_cbte: WideString); dispid 201;
    procedure AgregaOpcional(const Id: WideString; const Valor: WideString); dispid 202;
    procedure AgregaItem(const Pro_codigo_ncm: WideString; const Pro_codigo_sec: WideString; 
                         const Pro_ds: WideString; Pro_qty: Double; Pro_umed: Integer; 
                         Pro_precio_uni: Double; Imp_bonif: Double; Imp_total: Double; 
                         Iva_id: Integer); dispid 203;
    function Autorizar: OLE_CANCELBOOL; dispid 204;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; dispid 205;
    property CUIT: Double dispid 206;
    property URL: WideString dispid 207;
    property Token: WideString dispid 208;
    property Sign: WideString dispid 209;
    property ErrorCode: Integer readonly dispid 210;
    property ErrorDesc: WideString readonly dispid 211;
    procedure Reset; dispid 212;
    function RecuperaLastCMP(Pto_venta: Integer; Tipo_cbte: Integer; out Cbte_nro: Double; 
                             out Cbte_fecha: WideString): OLE_CANCELBOOL; dispid 213;
    function SFRecuperaLastCMP(Pto_venta: Integer; Tipo_cbte: Integer): OLE_CANCELBOOL; dispid 214;
    property SFLastCMP: Double readonly dispid 215;
    property SFLastFecha: WideString readonly dispid 216;
    function RecuperaLastID(out Id: Double): OLE_CANCELBOOL; dispid 217;
    function SFRecuperaLastID: OLE_CANCELBOOL; dispid 219;
    property SFLastId: Double readonly dispid 218;
    function AutorizarRespuesta(out Cae: WideString; out Vencimiento: WideString; 
                                out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL; dispid 220;
    property SFCAE: WideString readonly dispid 222;
    property SFVencimiento: WideString readonly dispid 223;
    property SFResultado: WideString readonly dispid 224;
    property SFReproceso: WideString readonly dispid 225;
    function AutorizarRespuestaObs: WideString; dispid 226;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL; dispid 227;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; Cbte_nro: Double): OLE_CANCELBOOL; dispid 228;
    property SFCmpConsultarCAE: WideString readonly dispid 229;
    property SFCmpConsultarVencimiento: WideString readonly dispid 230;
    property XMLRequest: WideString readonly dispid 231;
    property XMLResponse: WideString readonly dispid 232;
    property Proxy: WideString dispid 221;
    property ProxyUserName: WideString dispid 233;
    property ProxyPassword: WideString dispid 234;
    property ProxyEnabled: OLE_CANCELBOOL dispid 235;
    function ParamGetZonas(out Zonas: WideString): OLE_CANCELBOOL; dispid 236;
  end;

// *********************************************************************//
// Interface: Iwsmtxca
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C297BD2B-A528-446B-BF55-FAF195383E0E}
// *********************************************************************//
  Iwsmtxca = interface(IDispatch)
    ['{C297BD2B-A528-446B-BF55-FAF195383E0E}']
    procedure AgregaFactura(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                            numeroComprobante: Double; const fechaEmision: WideString; 
                            codigoTipoDocumento: Integer; numeroDocumento: Double; 
                            importeGravado: Double; importeNoGravado: Double; 
                            importeExento: Double; importeSubtotal: Double; 
                            importeOtrosTributos: Double; importeTotal: Double; 
                            const codigoMoneda: WideString; cotizacionMoneda: Double; 
                            const observaciones: WideString; codigoConcepto: Integer; 
                            const fechaServicioDesde: WideString; 
                            const fechaServicioHasta: WideString; 
                            const fechaVencimientoPago: WideString); safecall;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; safecall;
    procedure AgregaTributo(Id: Integer; const Desc: WideString; BaseImp: Double; Importe: Double); safecall;
    procedure AgregaIVA(codigo: Integer; Importe: Double); safecall;
    procedure AgregaCompAsoc(Tipo: Integer; PtoVta: Integer; Nro: Double); safecall;
    procedure AgregaItem(unidadesMtx: Integer; const codigoMtx: WideString; 
                         const codigo: WideString; const descripcion: WideString; cantidad: Double; 
                         codigoUnidadMedida: Integer; precioUnitario: Double; 
                         importeBonificacion: Double; codigoCondicionIVA: Integer; 
                         importeIVA: Double; importeItem: Double); safecall;
    function Autorizar: OLE_CANCELBOOL; safecall;
    function AutorizarRespuesta(out Cae: WideString; out Vencimiento: WideString; 
                                out Resultado: WideString): OLE_CANCELBOOL; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out cmp: Double): OLE_CANCELBOOL; safecall;
    function AutorizarRespuestaObs: WideString; safecall;
    function Get_Token: WideString; safecall;
    procedure Set_Token(const Value: WideString); safecall;
    function Get_Sign: WideString; safecall;
    procedure Set_Sign(const Value: WideString); safecall;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL; safecall;
    function Get_SFCmpConsultarCAE: WideString; safecall;
    function Get_SFCmpConsultarVencimiento: WideString; safecall;
    function SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL; safecall;
    function Get_SFLastCMP: Double; safecall;
    function Get_SFCAE: WideString; safecall;
    function Get_SFVencimiento: WideString; safecall;
    function Get_SFResultado: WideString; safecall;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL; safecall;
    function Get_XMLRequest: WideString; safecall;
    function Get_XMLResponse: WideString; safecall;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
    property SFCmpConsultarCAE: WideString read Get_SFCmpConsultarCAE;
    property SFCmpConsultarVencimiento: WideString read Get_SFCmpConsultarVencimiento;
    property SFLastCMP: Double read Get_SFLastCMP;
    property SFCAE: WideString read Get_SFCAE;
    property SFVencimiento: WideString read Get_SFVencimiento;
    property SFResultado: WideString read Get_SFResultado;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
  end;

// *********************************************************************//
// DispIntf:  IwsmtxcaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C297BD2B-A528-446B-BF55-FAF195383E0E}
// *********************************************************************//
  IwsmtxcaDisp = dispinterface
    ['{C297BD2B-A528-446B-BF55-FAF195383E0E}']
    procedure AgregaFactura(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                            numeroComprobante: Double; const fechaEmision: WideString; 
                            codigoTipoDocumento: Integer; numeroDocumento: Double; 
                            importeGravado: Double; importeNoGravado: Double; 
                            importeExento: Double; importeSubtotal: Double; 
                            importeOtrosTributos: Double; importeTotal: Double; 
                            const codigoMoneda: WideString; cotizacionMoneda: Double; 
                            const observaciones: WideString; codigoConcepto: Integer; 
                            const fechaServicioDesde: WideString; 
                            const fechaServicioHasta: WideString; 
                            const fechaVencimientoPago: WideString); dispid 101;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; dispid 102;
    procedure AgregaTributo(Id: Integer; const Desc: WideString; BaseImp: Double; Importe: Double); dispid 208;
    procedure AgregaIVA(codigo: Integer; Importe: Double); dispid 209;
    procedure AgregaCompAsoc(Tipo: Integer; PtoVta: Integer; Nro: Double); dispid 210;
    procedure AgregaItem(unidadesMtx: Integer; const codigoMtx: WideString; 
                         const codigo: WideString; const descripcion: WideString; cantidad: Double; 
                         codigoUnidadMedida: Integer; precioUnitario: Double; 
                         importeBonificacion: Double; codigoCondicionIVA: Integer; 
                         importeIVA: Double; importeItem: Double); dispid 201;
    function Autorizar: OLE_CANCELBOOL; dispid 103;
    function AutorizarRespuesta(out Cae: WideString; out Vencimiento: WideString; 
                                out Resultado: WideString): OLE_CANCELBOOL; dispid 110;
    property ErrorCode: Integer readonly dispid 104;
    property ErrorDesc: WideString readonly dispid 105;
    property URL: WideString dispid 107;
    property CUIT: Double dispid 108;
    function RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out cmp: Double): OLE_CANCELBOOL; dispid 112;
    function AutorizarRespuestaObs: WideString; dispid 202;
    property Token: WideString dispid 203;
    property Sign: WideString dispid 204;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL; dispid 218;
    property SFCmpConsultarCAE: WideString readonly dispid 219;
    property SFCmpConsultarVencimiento: WideString readonly dispid 220;
    function SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL; dispid 221;
    property SFLastCMP: Double readonly dispid 222;
    property SFCAE: WideString readonly dispid 223;
    property SFVencimiento: WideString readonly dispid 224;
    property SFResultado: WideString readonly dispid 225;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL; dispid 228;
    property XMLRequest: WideString readonly dispid 229;
    property XMLResponse: WideString readonly dispid 230;
  end;

// *********************************************************************//
// Interface: Iwsseg
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1E85685-67E8-4B99-B8B6-85A6138E4DD0}
// *********************************************************************//
  Iwsseg = interface(IDispatch)
    ['{B1E85685-67E8-4B99-B8B6-85A6138E4DD0}']
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_XMLRequest: WideString; safecall;
    function Get_XMLResponse: WideString; safecall;
    procedure AgregaFactura(Id: Integer; tipo_doc: Integer; nro_doc: Double; Tipo_cbte: Integer; 
                            Punto_vta: Integer; Cbte_nro: Integer; Imp_total: Double; 
                            imp_tot_conc: Double; imp_neto: Double; impto_liq: Double; 
                            impto_liq_rni: Double; imp_op_ex: Double; Imp_perc: Double; 
                            Imp_iibb: Double; Imp_perc_mun: Double; Imp_internos: Double; 
                            const Imp_moneda_Id: WideString; Imp_moneda_ctz: Double; 
                            Imp_otrib_prov: Double; const Fecha_cbte: WideString); safecall;
    procedure AgregaItem(const Poliza: WideString; const Endoso: WideString; const Ds: WideString; 
                         qty: Double; Precio_uni: Double; Imp_bonif: Double; Imp_total: Double; 
                         Imp_valor_aseg: Double; const Imp_moneda_vaseg: WideString; Iva_id: Integer); safecall;
    function Autorizar: OLE_CANCELBOOL; safecall;
    function Get_RespuestaAutorizarCAE: WideString; safecall;
    function Get_RespuestaAutorizarVencimiento: WideString; safecall;
    function Get_RespuestaAutorizarResultado: WideString; safecall;
    function Get_RespuestaAutorizarReproceso: WideString; safecall;
    function GetLast_CMP(Pto_venta: Integer; Tipo_cbte: Integer): OLE_CANCELBOOL; safecall;
    function Get_RespuestaGetLast_CMPNro: Integer; safecall;
    function Get_RespuestaGetLast_CMPFecha: WideString; safecall;
    function GetLast_ID: OLE_CANCELBOOL; safecall;
    function Get_RespuestaGetLast_IDId: Integer; safecall;
    function GetCMP(Tipo_cbte: Integer; Punto_vta: Integer; Cbte_nro: Integer): OLE_CANCELBOOL; safecall;
    function Get_RespuestaAutorizarObs: WideString; safecall;
    procedure LogTransaction(const RequestFilename: WideString; const ResponseFilename: WideString); safecall;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property RespuestaAutorizarCAE: WideString read Get_RespuestaAutorizarCAE;
    property RespuestaAutorizarVencimiento: WideString read Get_RespuestaAutorizarVencimiento;
    property RespuestaAutorizarResultado: WideString read Get_RespuestaAutorizarResultado;
    property RespuestaAutorizarReproceso: WideString read Get_RespuestaAutorizarReproceso;
    property RespuestaGetLast_CMPNro: Integer read Get_RespuestaGetLast_CMPNro;
    property RespuestaGetLast_CMPFecha: WideString read Get_RespuestaGetLast_CMPFecha;
    property RespuestaGetLast_IDId: Integer read Get_RespuestaGetLast_IDId;
    property RespuestaAutorizarObs: WideString read Get_RespuestaAutorizarObs;
  end;

// *********************************************************************//
// DispIntf:  IwssegDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1E85685-67E8-4B99-B8B6-85A6138E4DD0}
// *********************************************************************//
  IwssegDisp = dispinterface
    ['{B1E85685-67E8-4B99-B8B6-85A6138E4DD0}']
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; dispid 201;
    property ErrorCode: Integer readonly dispid 202;
    property ErrorDesc: WideString readonly dispid 203;
    property URL: WideString dispid 205;
    property CUIT: Double dispid 204;
    property XMLRequest: WideString readonly dispid 206;
    property XMLResponse: WideString readonly dispid 207;
    procedure AgregaFactura(Id: Integer; tipo_doc: Integer; nro_doc: Double; Tipo_cbte: Integer; 
                            Punto_vta: Integer; Cbte_nro: Integer; Imp_total: Double; 
                            imp_tot_conc: Double; imp_neto: Double; impto_liq: Double; 
                            impto_liq_rni: Double; imp_op_ex: Double; Imp_perc: Double; 
                            Imp_iibb: Double; Imp_perc_mun: Double; Imp_internos: Double; 
                            const Imp_moneda_Id: WideString; Imp_moneda_ctz: Double; 
                            Imp_otrib_prov: Double; const Fecha_cbte: WideString); dispid 208;
    procedure AgregaItem(const Poliza: WideString; const Endoso: WideString; const Ds: WideString; 
                         qty: Double; Precio_uni: Double; Imp_bonif: Double; Imp_total: Double; 
                         Imp_valor_aseg: Double; const Imp_moneda_vaseg: WideString; Iva_id: Integer); dispid 209;
    function Autorizar: OLE_CANCELBOOL; dispid 210;
    property RespuestaAutorizarCAE: WideString readonly dispid 211;
    property RespuestaAutorizarVencimiento: WideString readonly dispid 212;
    property RespuestaAutorizarResultado: WideString readonly dispid 213;
    property RespuestaAutorizarReproceso: WideString readonly dispid 214;
    function GetLast_CMP(Pto_venta: Integer; Tipo_cbte: Integer): OLE_CANCELBOOL; dispid 215;
    property RespuestaGetLast_CMPNro: Integer readonly dispid 216;
    property RespuestaGetLast_CMPFecha: WideString readonly dispid 217;
    function GetLast_ID: OLE_CANCELBOOL; dispid 218;
    property RespuestaGetLast_IDId: Integer readonly dispid 219;
    function GetCMP(Tipo_cbte: Integer; Punto_vta: Integer; Cbte_nro: Integer): OLE_CANCELBOOL; dispid 220;
    property RespuestaAutorizarObs: WideString readonly dispid 221;
    procedure LogTransaction(const RequestFilename: WideString; const ResponseFilename: WideString); dispid 222;
  end;

// *********************************************************************//
// Interface: IwsPadron
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0CEB0878-6393-4701-8C86-2CA793CDCB0D}
// *********************************************************************//
  IwsPadron = interface(IDispatch)
    ['{0CEB0878-6393-4701-8C86-2CA793CDCB0D}']
    function consultar(CUIT: Double; const contribuyenteResult: IContribuyente): OLE_CANCELBOOL; safecall;
    function descargarConstancia(CUIT: Double; const ArchivoDestino: WideString): OLE_CANCELBOOL; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL; safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_ModoProduccion: OLE_CANCELBOOL; safecall;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL); safecall;
    procedure CargarLicencia(const Licencia: WideString); safecall;
    function sfConsultar(CUIT: Double): OLE_CANCELBOOL; safecall;
    function Get_Contribuyente: IContribuyente; safecall;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
    property Contribuyente: IContribuyente read Get_Contribuyente;
  end;

// *********************************************************************//
// DispIntf:  IwsPadronDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0CEB0878-6393-4701-8C86-2CA793CDCB0D}
// *********************************************************************//
  IwsPadronDisp = dispinterface
    ['{0CEB0878-6393-4701-8C86-2CA793CDCB0D}']
    function consultar(CUIT: Double; const contribuyenteResult: IContribuyente): OLE_CANCELBOOL; dispid 201;
    function descargarConstancia(CUIT: Double; const ArchivoDestino: WideString): OLE_CANCELBOOL; dispid 202;
    property ErrorDesc: WideString readonly dispid 206;
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL; dispid 203;
    property CUIT: Double dispid 204;
    property ModoProduccion: OLE_CANCELBOOL dispid 205;
    procedure CargarLicencia(const Licencia: WideString); dispid 207;
    function sfConsultar(CUIT: Double): OLE_CANCELBOOL; dispid 208;
    property Contribuyente: IContribuyente readonly dispid 209;
  end;

// *********************************************************************//
// Interface: IComprobante
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DC4152DF-68E8-4C5C-804F-22B28CF4C726}
// *********************************************************************//
  IComprobante = interface(IDispatch)
    ['{DC4152DF-68E8-4C5C-804F-22B28CF4C726}']
    function Get_Concepto: Integer; safecall;
    function Get_DocTipo: Integer; safecall;
    function Get_DocNro: Double; safecall;
    function Get_Cbtedesde: Double; safecall;
    function Get_Cbtehasta: Double; safecall;
    function Get_CbteFch: WideString; safecall;
    function Get_Imptotal: Double; safecall;
    function Get_ImpTotConc: Double; safecall;
    function Get_ImpNeto: Double; safecall;
    function Get_ImpOpEx: Double; safecall;
    function Get_ImpTrib: Double; safecall;
    function Get_ImpIVA: Double; safecall;
    function Get_FchServDesde: WideString; safecall;
    function Get_FchServHasta: WideString; safecall;
    function Get_FchVtoPago: WideString; safecall;
    function Get_MonId: WideString; safecall;
    function Get_MonCotiz: Double; safecall;
    function Get_CbtesAsocCount: Integer; safecall;
    function CbtesAsoc(Indice: Integer): ICbteAsoc; safecall;
    function Get_TributosCount: Integer; safecall;
    function Tributos(Indice: Integer): ITributo; safecall;
    function Get_IvaCount: Integer; safecall;
    function Iva(Indice: Integer): IAlicIva; safecall;
    function Get_OpcionalesCount: Integer; safecall;
    function Opcionales(Indice: Integer): IOpcional; safecall;
    function Get_Resultado: WideString; safecall;
    function Get_CodAutorizacion: WideString; safecall;
    function Get_EmisionTipo: WideString; safecall;
    function Get_FchVto: WideString; safecall;
    function Get_FchProceso: WideString; safecall;
    function Get_ObservacionesCount: Integer; safecall;
    function observaciones(Indice: Integer): IObs; safecall;
    function Get_PtoVta: Integer; safecall;
    function Get_CbteTipo: Integer; safecall;
    property Concepto: Integer read Get_Concepto;
    property DocTipo: Integer read Get_DocTipo;
    property DocNro: Double read Get_DocNro;
    property Cbtedesde: Double read Get_Cbtedesde;
    property Cbtehasta: Double read Get_Cbtehasta;
    property CbteFch: WideString read Get_CbteFch;
    property Imptotal: Double read Get_Imptotal;
    property ImpTotConc: Double read Get_ImpTotConc;
    property ImpNeto: Double read Get_ImpNeto;
    property ImpOpEx: Double read Get_ImpOpEx;
    property ImpTrib: Double read Get_ImpTrib;
    property ImpIVA: Double read Get_ImpIVA;
    property FchServDesde: WideString read Get_FchServDesde;
    property FchServHasta: WideString read Get_FchServHasta;
    property FchVtoPago: WideString read Get_FchVtoPago;
    property MonId: WideString read Get_MonId;
    property MonCotiz: Double read Get_MonCotiz;
    property CbtesAsocCount: Integer read Get_CbtesAsocCount;
    property TributosCount: Integer read Get_TributosCount;
    property IvaCount: Integer read Get_IvaCount;
    property OpcionalesCount: Integer read Get_OpcionalesCount;
    property Resultado: WideString read Get_Resultado;
    property CodAutorizacion: WideString read Get_CodAutorizacion;
    property EmisionTipo: WideString read Get_EmisionTipo;
    property FchVto: WideString read Get_FchVto;
    property FchProceso: WideString read Get_FchProceso;
    property ObservacionesCount: Integer read Get_ObservacionesCount;
    property PtoVta: Integer read Get_PtoVta;
    property CbteTipo: Integer read Get_CbteTipo;
  end;

// *********************************************************************//
// DispIntf:  IComprobanteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DC4152DF-68E8-4C5C-804F-22B28CF4C726}
// *********************************************************************//
  IComprobanteDisp = dispinterface
    ['{DC4152DF-68E8-4C5C-804F-22B28CF4C726}']
    property Concepto: Integer readonly dispid 201;
    property DocTipo: Integer readonly dispid 202;
    property DocNro: Double readonly dispid 203;
    property Cbtedesde: Double readonly dispid 204;
    property Cbtehasta: Double readonly dispid 205;
    property CbteFch: WideString readonly dispid 206;
    property Imptotal: Double readonly dispid 207;
    property ImpTotConc: Double readonly dispid 208;
    property ImpNeto: Double readonly dispid 209;
    property ImpOpEx: Double readonly dispid 210;
    property ImpTrib: Double readonly dispid 211;
    property ImpIVA: Double readonly dispid 212;
    property FchServDesde: WideString readonly dispid 213;
    property FchServHasta: WideString readonly dispid 214;
    property FchVtoPago: WideString readonly dispid 215;
    property MonId: WideString readonly dispid 216;
    property MonCotiz: Double readonly dispid 217;
    property CbtesAsocCount: Integer readonly dispid 218;
    function CbtesAsoc(Indice: Integer): ICbteAsoc; dispid 219;
    property TributosCount: Integer readonly dispid 220;
    function Tributos(Indice: Integer): ITributo; dispid 221;
    property IvaCount: Integer readonly dispid 222;
    function Iva(Indice: Integer): IAlicIva; dispid 223;
    property OpcionalesCount: Integer readonly dispid 224;
    function Opcionales(Indice: Integer): IOpcional; dispid 225;
    property Resultado: WideString readonly dispid 226;
    property CodAutorizacion: WideString readonly dispid 227;
    property EmisionTipo: WideString readonly dispid 228;
    property FchVto: WideString readonly dispid 229;
    property FchProceso: WideString readonly dispid 230;
    property ObservacionesCount: Integer readonly dispid 231;
    function observaciones(Indice: Integer): IObs; dispid 232;
    property PtoVta: Integer readonly dispid 233;
    property CbteTipo: Integer readonly dispid 234;
  end;

// *********************************************************************//
// Interface: ICbteAsoc
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43E44C59-376E-4A27-93D2-ADC712D2BA2E}
// *********************************************************************//
  ICbteAsoc = interface(IDispatch)
    ['{43E44C59-376E-4A27-93D2-ADC712D2BA2E}']
    function Get_Tipo: Integer; safecall;
    function Get_PtoVta: Integer; safecall;
    function Get_Nro: Double; safecall;
    property Tipo: Integer read Get_Tipo;
    property PtoVta: Integer read Get_PtoVta;
    property Nro: Double read Get_Nro;
  end;

// *********************************************************************//
// DispIntf:  ICbteAsocDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43E44C59-376E-4A27-93D2-ADC712D2BA2E}
// *********************************************************************//
  ICbteAsocDisp = dispinterface
    ['{43E44C59-376E-4A27-93D2-ADC712D2BA2E}']
    property Tipo: Integer readonly dispid 201;
    property PtoVta: Integer readonly dispid 202;
    property Nro: Double readonly dispid 203;
  end;

// *********************************************************************//
// Interface: ITributo
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8C1BE2D0-B8B0-442E-A8D6-8BBBE941DB0C}
// *********************************************************************//
  ITributo = interface(IDispatch)
    ['{8C1BE2D0-B8B0-442E-A8D6-8BBBE941DB0C}']
    function Get_Id: Integer; safecall;
    function Get_Desc: WideString; safecall;
    function Get_BaseImp: Double; safecall;
    function Get_Alic: Double; safecall;
    function Get_Importe: Double; safecall;
    property Id: Integer read Get_Id;
    property Desc: WideString read Get_Desc;
    property BaseImp: Double read Get_BaseImp;
    property Alic: Double read Get_Alic;
    property Importe: Double read Get_Importe;
  end;

// *********************************************************************//
// DispIntf:  ITributoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8C1BE2D0-B8B0-442E-A8D6-8BBBE941DB0C}
// *********************************************************************//
  ITributoDisp = dispinterface
    ['{8C1BE2D0-B8B0-442E-A8D6-8BBBE941DB0C}']
    property Id: Integer readonly dispid 201;
    property Desc: WideString readonly dispid 202;
    property BaseImp: Double readonly dispid 203;
    property Alic: Double readonly dispid 204;
    property Importe: Double readonly dispid 205;
  end;

// *********************************************************************//
// Interface: IAlicIva
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ADE1B3EE-2618-461B-B8D3-F048B400330A}
// *********************************************************************//
  IAlicIva = interface(IDispatch)
    ['{ADE1B3EE-2618-461B-B8D3-F048B400330A}']
    function Get_Id: Integer; safecall;
    function Get_BaseImp: Double; safecall;
    function Get_Importe: Double; safecall;
    property Id: Integer read Get_Id;
    property BaseImp: Double read Get_BaseImp;
    property Importe: Double read Get_Importe;
  end;

// *********************************************************************//
// DispIntf:  IAlicIvaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ADE1B3EE-2618-461B-B8D3-F048B400330A}
// *********************************************************************//
  IAlicIvaDisp = dispinterface
    ['{ADE1B3EE-2618-461B-B8D3-F048B400330A}']
    property Id: Integer readonly dispid 201;
    property BaseImp: Double readonly dispid 202;
    property Importe: Double readonly dispid 203;
  end;

// *********************************************************************//
// Interface: IOpcional
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7689C644-3F89-44FE-97CF-EAF233A262C8}
// *********************************************************************//
  IOpcional = interface(IDispatch)
    ['{7689C644-3F89-44FE-97CF-EAF233A262C8}']
    function Get_Id: WideString; safecall;
    function Get_Valor: WideString; safecall;
    property Id: WideString read Get_Id;
    property Valor: WideString read Get_Valor;
  end;

// *********************************************************************//
// DispIntf:  IOpcionalDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7689C644-3F89-44FE-97CF-EAF233A262C8}
// *********************************************************************//
  IOpcionalDisp = dispinterface
    ['{7689C644-3F89-44FE-97CF-EAF233A262C8}']
    property Id: WideString readonly dispid 201;
    property Valor: WideString readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IObs
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3417F5A9-B0F6-4CF9-B30B-055E17860895}
// *********************************************************************//
  IObs = interface(IDispatch)
    ['{3417F5A9-B0F6-4CF9-B30B-055E17860895}']
    function Get_Code: Integer; safecall;
    function Get_Msg: WideString; safecall;
    property Code: Integer read Get_Code;
    property Msg: WideString read Get_Msg;
  end;

// *********************************************************************//
// DispIntf:  IObsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3417F5A9-B0F6-4CF9-B30B-055E17860895}
// *********************************************************************//
  IObsDisp = dispinterface
    ['{3417F5A9-B0F6-4CF9-B30B-055E17860895}']
    property Code: Integer readonly dispid 201;
    property Msg: WideString readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IContribuyente
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {19A25CC6-4F15-4C2E-AF88-7AD7901B23A9}
// *********************************************************************//
  IContribuyente = interface(IDispatch)
    ['{19A25CC6-4F15-4C2E-AF88-7AD7901B23A9}']
    function Get_idPersona: WideString; safecall;
    function Get_tipoPersona: WideString; safecall;
    function Get_tipoClave: WideString; safecall;
    function Get_estadoClave: WideString; safecall;
    function Get_nombre: WideString; safecall;
    function Get_tipoDocumento: WideString; safecall;
    function Get_numeroDocumento: WideString; safecall;
    function Get_domicilioFiscal: IDomicilio; safecall;
    function Get_idDependencia: Integer; safecall;
    function Get_mesCierre: Integer; safecall;
    function Get_fechaInscripcion: WideString; safecall;
    function Get_idCatAutonomo: Integer; safecall;
    function Get_impuestosCount: Integer; safecall;
    function impuestos(Indice: Integer): Integer; safecall;
    function categoriasMonotributoCount: Integer; safecall;
    function categoriasMonotributo(Indice: Integer): Integer; safecall;
    function Get_actividadesCount: Integer; safecall;
    function actividades(Indice: Integer): Integer; safecall;
    function Get_condicionIVA: TipoResponsable; safecall;
    function Get_condicionIVADesc: WideString; safecall;
    function Get_SolicitarConstanciaInscripcion: OLE_CANCELBOOL; safecall;
    function actividadesDesc(Inidice: Integer): WideString; safecall;
    function Get_observaciones: WideString; safecall;
    function Get_nombreSimple: WideString; safecall;
    function Get_apellido: WideString; safecall;
    property idPersona: WideString read Get_idPersona;
    property tipoPersona: WideString read Get_tipoPersona;
    property tipoClave: WideString read Get_tipoClave;
    property estadoClave: WideString read Get_estadoClave;
    property nombre: WideString read Get_nombre;
    property tipoDocumento: WideString read Get_tipoDocumento;
    property numeroDocumento: WideString read Get_numeroDocumento;
    property domicilioFiscal: IDomicilio read Get_domicilioFiscal;
    property idDependencia: Integer read Get_idDependencia;
    property mesCierre: Integer read Get_mesCierre;
    property fechaInscripcion: WideString read Get_fechaInscripcion;
    property idCatAutonomo: Integer read Get_idCatAutonomo;
    property impuestosCount: Integer read Get_impuestosCount;
    property actividadesCount: Integer read Get_actividadesCount;
    property condicionIVA: TipoResponsable read Get_condicionIVA;
    property condicionIVADesc: WideString read Get_condicionIVADesc;
    property SolicitarConstanciaInscripcion: OLE_CANCELBOOL read Get_SolicitarConstanciaInscripcion;
    property observaciones: WideString read Get_observaciones;
    property nombreSimple: WideString read Get_nombreSimple;
    property apellido: WideString read Get_apellido;
  end;

// *********************************************************************//
// DispIntf:  IContribuyenteDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {19A25CC6-4F15-4C2E-AF88-7AD7901B23A9}
// *********************************************************************//
  IContribuyenteDisp = dispinterface
    ['{19A25CC6-4F15-4C2E-AF88-7AD7901B23A9}']
    property idPersona: WideString readonly dispid 201;
    property tipoPersona: WideString readonly dispid 202;
    property tipoClave: WideString readonly dispid 203;
    property estadoClave: WideString readonly dispid 204;
    property nombre: WideString readonly dispid 205;
    property tipoDocumento: WideString readonly dispid 206;
    property numeroDocumento: WideString readonly dispid 207;
    property domicilioFiscal: IDomicilio readonly dispid 208;
    property idDependencia: Integer readonly dispid 209;
    property mesCierre: Integer readonly dispid 210;
    property fechaInscripcion: WideString readonly dispid 211;
    property idCatAutonomo: Integer readonly dispid 212;
    property impuestosCount: Integer readonly dispid 213;
    function impuestos(Indice: Integer): Integer; dispid 214;
    function categoriasMonotributoCount: Integer; dispid 215;
    function categoriasMonotributo(Indice: Integer): Integer; dispid 216;
    property actividadesCount: Integer readonly dispid 217;
    function actividades(Indice: Integer): Integer; dispid 218;
    property condicionIVA: TipoResponsable readonly dispid 219;
    property condicionIVADesc: WideString readonly dispid 220;
    property SolicitarConstanciaInscripcion: OLE_CANCELBOOL readonly dispid 221;
    function actividadesDesc(Inidice: Integer): WideString; dispid 222;
    property observaciones: WideString readonly dispid 224;
    property nombreSimple: WideString readonly dispid 223;
    property apellido: WideString readonly dispid 225;
  end;

// *********************************************************************//
// Interface: IDomicilio
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EC378410-896F-4CF2-84A8-53E61AE3D6CF}
// *********************************************************************//
  IDomicilio = interface(IDispatch)
    ['{EC378410-896F-4CF2-84A8-53E61AE3D6CF}']
    function Get_direccion: WideString; safecall;
    function Get_localidad: WideString; safecall;
    function Get_codPostal: WideString; safecall;
    function Get_idProvincia: Integer; safecall;
    function Get_provincia: WideString; safecall;
    property direccion: WideString read Get_direccion;
    property localidad: WideString read Get_localidad;
    property codPostal: WideString read Get_codPostal;
    property idProvincia: Integer read Get_idProvincia;
    property provincia: WideString read Get_provincia;
  end;

// *********************************************************************//
// DispIntf:  IDomicilioDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EC378410-896F-4CF2-84A8-53E61AE3D6CF}
// *********************************************************************//
  IDomicilioDisp = dispinterface
    ['{EC378410-896F-4CF2-84A8-53E61AE3D6CF}']
    property direccion: WideString readonly dispid 201;
    property localidad: WideString readonly dispid 202;
    property codPostal: WideString readonly dispid 203;
    property idProvincia: Integer readonly dispid 204;
    property provincia: WideString readonly dispid 205;
  end;

// *********************************************************************//
// Interface: IwsPadronARBA
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {924DCE98-B918-42E4-A00A-76FD1D8D483A}
// *********************************************************************//
  IwsPadronARBA = interface(IDispatch)
    ['{924DCE98-B918-42E4-A00A-76FD1D8D483A}']
    function ConsultaAlicuota(const FechaDesde: WideString; const FechaHasta: WideString; 
                              CUIT: Double): OLE_CANCELBOOL; safecall;
    function Get_User: WideString; safecall;
    procedure Set_User(const Value: WideString); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const Value: WideString); safecall;
    function Get_ConsultaAlicuotaRespuesta: IConsultaAlicuotaRespuesta; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function Get_ModoProduccion: OLE_CANCELBOOL; safecall;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL); safecall;
    property User: WideString read Get_User write Set_User;
    property Password: WideString read Get_Password write Set_Password;
    property ConsultaAlicuotaRespuesta: IConsultaAlicuotaRespuesta read Get_ConsultaAlicuotaRespuesta;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  end;

// *********************************************************************//
// DispIntf:  IwsPadronARBADisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {924DCE98-B918-42E4-A00A-76FD1D8D483A}
// *********************************************************************//
  IwsPadronARBADisp = dispinterface
    ['{924DCE98-B918-42E4-A00A-76FD1D8D483A}']
    function ConsultaAlicuota(const FechaDesde: WideString; const FechaHasta: WideString; 
                              CUIT: Double): OLE_CANCELBOOL; dispid 201;
    property User: WideString dispid 202;
    property Password: WideString dispid 203;
    property ConsultaAlicuotaRespuesta: IConsultaAlicuotaRespuesta readonly dispid 204;
    property ErrorCode: Integer readonly dispid 205;
    property ErrorDesc: WideString readonly dispid 206;
    property ModoProduccion: OLE_CANCELBOOL dispid 207;
  end;

// *********************************************************************//
// Interface: IConsultaAlicuotaRespuesta
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2589E4FF-0788-4FEF-9565-0F05095F1356}
// *********************************************************************//
  IConsultaAlicuotaRespuesta = interface(IDispatch)
    ['{2589E4FF-0788-4FEF-9565-0F05095F1356}']
    function Get_AlicuotaPercepcion: Double; safecall;
    function Get_AlicuotaRetencion: Double; safecall;
    function Get_GrupoPercepcion: Integer; safecall;
    function Get_GrupoRetencion: Integer; safecall;
    property AlicuotaPercepcion: Double read Get_AlicuotaPercepcion;
    property AlicuotaRetencion: Double read Get_AlicuotaRetencion;
    property GrupoPercepcion: Integer read Get_GrupoPercepcion;
    property GrupoRetencion: Integer read Get_GrupoRetencion;
  end;

// *********************************************************************//
// DispIntf:  IConsultaAlicuotaRespuestaDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {2589E4FF-0788-4FEF-9565-0F05095F1356}
// *********************************************************************//
  IConsultaAlicuotaRespuestaDisp = dispinterface
    ['{2589E4FF-0788-4FEF-9565-0F05095F1356}']
    property AlicuotaPercepcion: Double readonly dispid 201;
    property AlicuotaRetencion: Double readonly dispid 202;
    property GrupoPercepcion: Integer readonly dispid 203;
    property GrupoRetencion: Integer readonly dispid 204;
  end;

// *********************************************************************//
// Interface: ICertificado
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CAD1F637-CD57-45DF-8A39-EB2227E34D93}
// *********************************************************************//
  ICertificado = interface(IDispatch)
    ['{CAD1F637-CD57-45DF-8A39-EB2227E34D93}']
    function CargarInformacionCertificado(const ArchivoCertificado: WideString; 
                                          const ArchivoClavePrivada: WideString): OLE_CANCELBOOL; safecall;
    function GenerarNuevoCertificado(const O: WideString; const CN: WideString; CUIT: Double; 
                                     const ArchivoSolicitud: WideString; 
                                     const ArchivoClavePrivada: WideString): OLE_CANCELBOOL; safecall;
    function RenovarCertificado(const ArchivoSolicitud: WideString): OLE_CANCELBOOL; safecall;
    procedure MostrarInformacionCertificado; safecall;
    procedure MostrarGenerarCertificado; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function Get_IC_Organizacion: WideString; safecall;
    function Get_IC_NombreComun: WideString; safecall;
    function Get_IC_FechaVencimiento: WideString; safecall;
    function Get_IC_CUIT: Double; safecall;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property IC_Organizacion: WideString read Get_IC_Organizacion;
    property IC_NombreComun: WideString read Get_IC_NombreComun;
    property IC_FechaVencimiento: WideString read Get_IC_FechaVencimiento;
    property IC_CUIT: Double read Get_IC_CUIT;
  end;

// *********************************************************************//
// DispIntf:  ICertificadoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CAD1F637-CD57-45DF-8A39-EB2227E34D93}
// *********************************************************************//
  ICertificadoDisp = dispinterface
    ['{CAD1F637-CD57-45DF-8A39-EB2227E34D93}']
    function CargarInformacionCertificado(const ArchivoCertificado: WideString; 
                                          const ArchivoClavePrivada: WideString): OLE_CANCELBOOL; dispid 201;
    function GenerarNuevoCertificado(const O: WideString; const CN: WideString; CUIT: Double; 
                                     const ArchivoSolicitud: WideString; 
                                     const ArchivoClavePrivada: WideString): OLE_CANCELBOOL; dispid 203;
    function RenovarCertificado(const ArchivoSolicitud: WideString): OLE_CANCELBOOL; dispid 206;
    procedure MostrarInformacionCertificado; dispid 210;
    procedure MostrarGenerarCertificado; dispid 211;
    property ErrorCode: Integer readonly dispid 204;
    property ErrorDesc: WideString readonly dispid 205;
    property IC_Organizacion: WideString readonly dispid 202;
    property IC_NombreComun: WideString readonly dispid 207;
    property IC_FechaVencimiento: WideString readonly dispid 209;
    property IC_CUIT: Double readonly dispid 208;
  end;

// *********************************************************************//
// Interface: Iwscdc
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {201C6546-D660-4171-A3D3-839583F7969E}
// *********************************************************************//
  Iwscdc = interface(IDispatch)
    ['{201C6546-D660-4171-A3D3-839583F7969E}']
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; safecall;
    function ComprobanteConstatar(const CbteModo: WideString; CuitEmisor: Double; PtoVta: Integer; 
                                  CbteTipo: Integer; CbteNro: Double; const CbteFch: WideString; 
                                  Imptotal: Double; const CodAutorizacion: WideString; 
                                  const DocTipoReceptor: WideString; 
                                  const DocNroReceptor: WideString): OLE_CANCELBOOL; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function Get_URL: WideString; safecall;
    procedure Set_URL(const Value: WideString); safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_Depurar: OLE_CANCELBOOL; safecall;
    procedure Set_Depurar(Value: OLE_CANCELBOOL); safecall;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
  end;

// *********************************************************************//
// DispIntf:  IwscdcDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {201C6546-D660-4171-A3D3-839583F7969E}
// *********************************************************************//
  IwscdcDisp = dispinterface
    ['{201C6546-D660-4171-A3D3-839583F7969E}']
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL; dispid 201;
    function ComprobanteConstatar(const CbteModo: WideString; CuitEmisor: Double; PtoVta: Integer; 
                                  CbteTipo: Integer; CbteNro: Double; const CbteFch: WideString; 
                                  Imptotal: Double; const CodAutorizacion: WideString; 
                                  const DocTipoReceptor: WideString; 
                                  const DocNroReceptor: WideString): OLE_CANCELBOOL; dispid 202;
    property ErrorCode: Integer readonly dispid 203;
    property ErrorDesc: WideString readonly dispid 204;
    property URL: WideString dispid 205;
    property CUIT: Double dispid 206;
    property Depurar: OLE_CANCELBOOL dispid 207;
  end;

// *********************************************************************//
// Interface: IBarcode
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {01F6CFB9-A47D-401E-8A89-1C3962BB9364}
// *********************************************************************//
  IBarcode = interface(IDispatch)
    ['{01F6CFB9-A47D-401E-8A89-1C3962BB9364}']
    procedure GenerarCodigo(CUIT: Double; TipoCbte: Integer; PtoVta: Integer; 
                            const Cae: WideString; const Vto: WideString; 
                            const ArchivoDestino: WideString); safecall;
    function Get_Modulo: Integer; safecall;
    procedure Set_Modulo(Value: Integer); safecall;
    function Get_Proporcion: Double; safecall;
    procedure Set_Proporcion(Value: Double); safecall;
    function Get_Altura: Integer; safecall;
    procedure Set_Altura(Value: Integer); safecall;
    function Get_MostrarTexto: OLE_CANCELBOOL; safecall;
    procedure Set_MostrarTexto(Value: OLE_CANCELBOOL); safecall;
    function Get_TamanioFuente: Integer; safecall;
    procedure Set_TamanioFuente(Value: Integer); safecall;
    function Get_Texto: WideString; safecall;
    function Interleave25(const Texto: WideString; const ArchivoDestino: WideString): OLE_CANCELBOOL; safecall;
    property Modulo: Integer read Get_Modulo write Set_Modulo;
    property Proporcion: Double read Get_Proporcion write Set_Proporcion;
    property Altura: Integer read Get_Altura write Set_Altura;
    property MostrarTexto: OLE_CANCELBOOL read Get_MostrarTexto write Set_MostrarTexto;
    property TamanioFuente: Integer read Get_TamanioFuente write Set_TamanioFuente;
    property Texto: WideString read Get_Texto;
  end;

// *********************************************************************//
// DispIntf:  IBarcodeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {01F6CFB9-A47D-401E-8A89-1C3962BB9364}
// *********************************************************************//
  IBarcodeDisp = dispinterface
    ['{01F6CFB9-A47D-401E-8A89-1C3962BB9364}']
    procedure GenerarCodigo(CUIT: Double; TipoCbte: Integer; PtoVta: Integer; 
                            const Cae: WideString; const Vto: WideString; 
                            const ArchivoDestino: WideString); dispid 201;
    property Modulo: Integer dispid 202;
    property Proporcion: Double dispid 203;
    property Altura: Integer dispid 204;
    property MostrarTexto: OLE_CANCELBOOL dispid 205;
    property TamanioFuente: Integer dispid 206;
    property Texto: WideString readonly dispid 207;
    function Interleave25(const Texto: WideString; const ArchivoDestino: WideString): OLE_CANCELBOOL; dispid 208;
  end;

// *********************************************************************//
// Interface: Iwsct
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {161A74B4-F8B8-408F-934B-2D2D32E492E2}
// *********************************************************************//
  Iwsct = interface(IDispatch)
    ['{161A74B4-F8B8-408F-934B-2D2D32E492E2}']
    procedure AgregaFactura(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                            numeroComprobante: Double; const fechaEmision: WideString; 
                            const codigoTipoAutorizacion: WideString; codigoAutorizacion: Double; 
                            const fechaVencimiento: WideString; codigoTipoDocumento: Integer; 
                            const numeroDocumento: WideString; const idImpositivo: WideString; 
                            codigoPais: Integer; const domicilioReceptor: WideString; 
                            codigoRelacionEmisorReceptor: Integer; importeGravado: Double; 
                            importeNoGravado: Double; importeExento: Double; 
                            importeOtrosTributos: Double; importeReintegro: Double; 
                            importeTotal: Double; const codigoMoneda: WideString; 
                            cotizacionMoneda: Double; const observaciones: WideString); safecall;
    procedure AgregaItem(Tipo: Integer; codigoTurismo: Integer; const codigo: WideString; 
                         const descripcion: WideString; codigoAlicuotaIVA: Integer; 
                         importeIVA: Double; importeItem: Double); safecall;
    procedure AgregaComprobanteAsociado(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                                        numeroComprobante: Double); safecall;
    procedure AgregaTributo(codigo: Integer; const descripcion: WideString; baseImponible: Double; 
                            Importe: Double); safecall;
    procedure AgregaIVA(codigo: Integer; Importe: Double); safecall;
    procedure AgregaDatoAdicional(t: Integer; const c1: WideString; const c2: WideString; 
                                  const c3: WideString; const c4: WideString; const c5: WideString; 
                                  const c6: WideString); safecall;
    procedure AgregaFormaDePago(codigo: Integer; tipoTarjeta: Integer; numeroTarjeta: Double; 
                                const swiftCode: WideString; tipoCuenta: Integer; 
                                numeroCuenta: Double); safecall;
    procedure Reset; safecall;
    function Autorizar: OLE_CANCELBOOL; safecall;
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_Depurar: OLE_CANCELBOOL; safecall;
    procedure Set_Depurar(Value: OLE_CANCELBOOL); safecall;
    function ConsultarUltimoComprobante(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer): OLE_CANCELBOOL; safecall;
    function Get_ConsultarUltimoComprobanteNumero: Integer; safecall;
    function Get_ConsultarUltimoComprobanteFecha: WideString; safecall;
    function DescargarCodigos(const NombreArchivo: WideString): OLE_CANCELBOOL; safecall;
    function Get_AutorizarCAE: Double; safecall;
    function Get_AutorizarVencimiento: WideString; safecall;
    function Get_AutorizarObservaciones: WideString; safecall;
    function Get_ModoProduccion: OLE_CANCELBOOL; safecall;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL); safecall;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
    property ConsultarUltimoComprobanteNumero: Integer read Get_ConsultarUltimoComprobanteNumero;
    property ConsultarUltimoComprobanteFecha: WideString read Get_ConsultarUltimoComprobanteFecha;
    property AutorizarCAE: Double read Get_AutorizarCAE;
    property AutorizarVencimiento: WideString read Get_AutorizarVencimiento;
    property AutorizarObservaciones: WideString read Get_AutorizarObservaciones;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  end;

// *********************************************************************//
// DispIntf:  IwsctDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {161A74B4-F8B8-408F-934B-2D2D32E492E2}
// *********************************************************************//
  IwsctDisp = dispinterface
    ['{161A74B4-F8B8-408F-934B-2D2D32E492E2}']
    procedure AgregaFactura(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                            numeroComprobante: Double; const fechaEmision: WideString; 
                            const codigoTipoAutorizacion: WideString; codigoAutorizacion: Double; 
                            const fechaVencimiento: WideString; codigoTipoDocumento: Integer; 
                            const numeroDocumento: WideString; const idImpositivo: WideString; 
                            codigoPais: Integer; const domicilioReceptor: WideString; 
                            codigoRelacionEmisorReceptor: Integer; importeGravado: Double; 
                            importeNoGravado: Double; importeExento: Double; 
                            importeOtrosTributos: Double; importeReintegro: Double; 
                            importeTotal: Double; const codigoMoneda: WideString; 
                            cotizacionMoneda: Double; const observaciones: WideString); dispid 201;
    procedure AgregaItem(Tipo: Integer; codigoTurismo: Integer; const codigo: WideString; 
                         const descripcion: WideString; codigoAlicuotaIVA: Integer; 
                         importeIVA: Double; importeItem: Double); dispid 202;
    procedure AgregaComprobanteAsociado(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                                        numeroComprobante: Double); dispid 203;
    procedure AgregaTributo(codigo: Integer; const descripcion: WideString; baseImponible: Double; 
                            Importe: Double); dispid 204;
    procedure AgregaIVA(codigo: Integer; Importe: Double); dispid 205;
    procedure AgregaDatoAdicional(t: Integer; const c1: WideString; const c2: WideString; 
                                  const c3: WideString; const c4: WideString; const c5: WideString; 
                                  const c6: WideString); dispid 206;
    procedure AgregaFormaDePago(codigo: Integer; tipoTarjeta: Integer; numeroTarjeta: Double; 
                                const swiftCode: WideString; tipoCuenta: Integer; 
                                numeroCuenta: Double); dispid 207;
    procedure Reset; dispid 208;
    function Autorizar: OLE_CANCELBOOL; dispid 209;
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL; dispid 210;
    property ErrorCode: Integer readonly dispid 211;
    property ErrorDesc: WideString readonly dispid 212;
    property CUIT: Double dispid 213;
    property Depurar: OLE_CANCELBOOL dispid 214;
    function ConsultarUltimoComprobante(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer): OLE_CANCELBOOL; dispid 215;
    property ConsultarUltimoComprobanteNumero: Integer readonly dispid 216;
    property ConsultarUltimoComprobanteFecha: WideString readonly dispid 217;
    function DescargarCodigos(const NombreArchivo: WideString): OLE_CANCELBOOL; dispid 218;
    property AutorizarCAE: Double readonly dispid 219;
    property AutorizarVencimiento: WideString readonly dispid 220;
    property AutorizarObservaciones: WideString readonly dispid 221;
    property ModoProduccion: OLE_CANCELBOOL dispid 222;
  end;

// *********************************************************************//
// Interface: Iwsfecred
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {32EF8E70-4CB3-40FD-A66C-BBB03E147C37}
// *********************************************************************//
  Iwsfecred = interface(IDispatch)
    ['{32EF8E70-4CB3-40FD-A66C-BBB03E147C37}']
    procedure Dummy; safecall;
    function consultarComprobantes(const rolCUITRepresentada: WideString; CUITContraparte: Double; 
                                   codTipoCmp: Integer; const estadoCmp: WideString; 
                                   const fecha_tipo: WideString; const fecha_desde: WideString; 
                                   const fecha_hasta: WideString; codCtaCte: Double; 
                                   const estadoCtaCte: WideString): OLE_CANCELBOOL; safecall;
    procedure rechazarNotaDC; safecall;
    procedure consultarCtasCtes; safecall;
    procedure consultarCtaCte; safecall;
    procedure informarCancelacionTotalFECred; safecall;
    function aceptarFECred(const Request: IAceptarFECredRequestTy): OLE_CANCELBOOL; safecall;
    function rechazarFECred(const Request: IRechazarFECredRequestTy): OLE_CANCELBOOL; safecall;
    function informarFacturaAgtDptoCltv(const Request: IInformarFacturaAgtDptoCltvRequestTy): OLE_CANCELBOOL; safecall;
    procedure consultarFacturasAgtDptoCltv; safecall;
    procedure consultarCuentasComitente; safecall;
    procedure consultarObligadoRecepcion; safecall;
    procedure consultarTiposRetenciones; safecall;
    procedure consultarTiposMotivosRechazo; safecall;
    procedure consultarTiposFormasCancelacion; safecall;
    procedure obtenerRemitos; safecall;
    procedure consultarHistorialEstadosComprobante; safecall;
    procedure consultarHistorialEstadosCtaCte; safecall;
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL; safecall;
    procedure CargarLicencia; safecall;
    function Get_Token: WideString; safecall;
    function Get_Sign: WideString; safecall;
    function Get_ErrorCode: Integer; safecall;
    function Get_ErrorDesc: WideString; safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_XMLRequest: WideString; safecall;
    function Get_XMLResponse: WideString; safecall;
    function Get_Depurar: OLE_CANCELBOOL; safecall;
    procedure Set_Depurar(Value: OLE_CANCELBOOL); safecall;
    function nuevoAceptarFECredRequestTy: IAceptarFECredRequestTy; safecall;
    function Get_ModoProduccion: OLE_CANCELBOOL; safecall;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL); safecall;
    function Get_consultarCmpReturn: IConsultarCmpReturnTy; safecall;
    function nuevoInformarFacturaAgtDptoCltvRequestTy: IInformarFacturaAgtDptoCltvRequestTy; safecall;
    function nuevoRechazarFECredRequestTy: IRechazarFECredRequestTy; safecall;
    property Token: WideString read Get_Token;
    property Sign: WideString read Get_Sign;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
    property consultarCmpReturn: IConsultarCmpReturnTy read Get_consultarCmpReturn;
  end;

// *********************************************************************//
// DispIntf:  IwsfecredDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {32EF8E70-4CB3-40FD-A66C-BBB03E147C37}
// *********************************************************************//
  IwsfecredDisp = dispinterface
    ['{32EF8E70-4CB3-40FD-A66C-BBB03E147C37}']
    procedure Dummy; dispid 201;
    function consultarComprobantes(const rolCUITRepresentada: WideString; CUITContraparte: Double; 
                                   codTipoCmp: Integer; const estadoCmp: WideString; 
                                   const fecha_tipo: WideString; const fecha_desde: WideString; 
                                   const fecha_hasta: WideString; codCtaCte: Double; 
                                   const estadoCtaCte: WideString): OLE_CANCELBOOL; dispid 202;
    procedure rechazarNotaDC; dispid 203;
    procedure consultarCtasCtes; dispid 204;
    procedure consultarCtaCte; dispid 205;
    procedure informarCancelacionTotalFECred; dispid 206;
    function aceptarFECred(const Request: IAceptarFECredRequestTy): OLE_CANCELBOOL; dispid 207;
    function rechazarFECred(const Request: IRechazarFECredRequestTy): OLE_CANCELBOOL; dispid 208;
    function informarFacturaAgtDptoCltv(const Request: IInformarFacturaAgtDptoCltvRequestTy): OLE_CANCELBOOL; dispid 209;
    procedure consultarFacturasAgtDptoCltv; dispid 210;
    procedure consultarCuentasComitente; dispid 211;
    procedure consultarObligadoRecepcion; dispid 212;
    procedure consultarTiposRetenciones; dispid 213;
    procedure consultarTiposMotivosRechazo; dispid 214;
    procedure consultarTiposFormasCancelacion; dispid 215;
    procedure obtenerRemitos; dispid 216;
    procedure consultarHistorialEstadosComprobante; dispid 217;
    procedure consultarHistorialEstadosCtaCte; dispid 218;
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL; dispid 219;
    procedure CargarLicencia; dispid 220;
    property Token: WideString readonly dispid 221;
    property Sign: WideString readonly dispid 222;
    property ErrorCode: Integer readonly dispid 223;
    property ErrorDesc: WideString readonly dispid 224;
    property CUIT: Double dispid 225;
    property XMLRequest: WideString readonly dispid 226;
    property XMLResponse: WideString readonly dispid 227;
    property Depurar: OLE_CANCELBOOL dispid 228;
    function nuevoAceptarFECredRequestTy: IAceptarFECredRequestTy; dispid 229;
    property ModoProduccion: OLE_CANCELBOOL dispid 230;
    property consultarCmpReturn: IConsultarCmpReturnTy readonly dispid 231;
    function nuevoInformarFacturaAgtDptoCltvRequestTy: IInformarFacturaAgtDptoCltvRequestTy; dispid 232;
    function nuevoRechazarFECredRequestTy: IRechazarFECredRequestTy; dispid 233;
  end;

// *********************************************************************//
// Interface: IIdCtaCteTy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9194512-99E1-4404-85AB-6218E498CEED}
// *********************************************************************//
  IIdCtaCteTy = interface(IDispatch)
    ['{C9194512-99E1-4404-85AB-6218E498CEED}']
    function Get_codCtaCte: Double; safecall;
    procedure Set_codCtaCte(Value: Double); safecall;
    function Get_idFactura: IdComprobanteTy; safecall;
    procedure Set_idFactura(const Value: IdComprobanteTy); safecall;
    property codCtaCte: Double read Get_codCtaCte write Set_codCtaCte;
    property idFactura: IdComprobanteTy read Get_idFactura write Set_idFactura;
  end;

// *********************************************************************//
// DispIntf:  IIdCtaCteTyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9194512-99E1-4404-85AB-6218E498CEED}
// *********************************************************************//
  IIdCtaCteTyDisp = dispinterface
    ['{C9194512-99E1-4404-85AB-6218E498CEED}']
    property codCtaCte: Double dispid 201;
    property idFactura: IdComprobanteTy dispid 202;
  end;

// *********************************************************************//
// Interface: IIdComprobanteTy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3ABD3582-6764-4A05-BFDE-CFED3D4A1143}
// *********************************************************************//
  IIdComprobanteTy = interface(IDispatch)
    ['{3ABD3582-6764-4A05-BFDE-CFED3D4A1143}']
    function Get_CuitEmisor: Double; safecall;
    procedure Set_CuitEmisor(Value: Double); safecall;
    function Get_codTipoCmp: Integer; safecall;
    procedure Set_codTipoCmp(Value: Integer); safecall;
    function Get_PtoVta: Integer; safecall;
    procedure Set_PtoVta(Value: Integer); safecall;
    function Get_nroCmp: Double; safecall;
    procedure Set_nroCmp(Value: Double); safecall;
    property CuitEmisor: Double read Get_CuitEmisor write Set_CuitEmisor;
    property codTipoCmp: Integer read Get_codTipoCmp write Set_codTipoCmp;
    property PtoVta: Integer read Get_PtoVta write Set_PtoVta;
    property nroCmp: Double read Get_nroCmp write Set_nroCmp;
  end;

// *********************************************************************//
// DispIntf:  IIdComprobanteTyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3ABD3582-6764-4A05-BFDE-CFED3D4A1143}
// *********************************************************************//
  IIdComprobanteTyDisp = dispinterface
    ['{3ABD3582-6764-4A05-BFDE-CFED3D4A1143}']
    property CuitEmisor: Double dispid 201;
    property codTipoCmp: Integer dispid 202;
    property PtoVta: Integer dispid 203;
    property nroCmp: Double dispid 204;
  end;

// *********************************************************************//
// Interface: IAceptarFECredRequestTy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F0324362-5DE0-4A53-B253-D18C37D5FD5C}
// *********************************************************************//
  IAceptarFECredRequestTy = interface(IDispatch)
    ['{F0324362-5DE0-4A53-B253-D18C37D5FD5C}']
    procedure idCtaCte(codCtaCte: Double); safecall;
    procedure idFactura(CuitEmisor: Double; codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double); safecall;
    procedure arrayConfirmarNotasDC(acepta: OLE_CANCELBOOL; CuitEmisor: Double; 
                                    codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double); safecall;
    procedure arrayFormasCancelacion(codigo: Integer; const descripcion: WideString); safecall;
    procedure arrayRetenciones(codTipo: Integer; Importe: Double; Porcentaje: Double; 
                               const descMotivo: WideString); safecall;
    procedure arrayAjustesOperacion(codigo: Integer; Importe: Double); safecall;
    function Get_tipoCancelacion: WideString; safecall;
    procedure Set_tipoCancelacion(const Value: WideString); safecall;
    function Get_importeCancelado: Double; safecall;
    procedure Set_importeCancelado(Value: Double); safecall;
    function Get_importeTotalRetPesos: Double; safecall;
    procedure Set_importeTotalRetPesos(Value: Double); safecall;
    function Get_importeEmbargoPesos: Double; safecall;
    procedure Set_importeEmbargoPesos(Value: Double); safecall;
    function Get_saldoAceptado: Double; safecall;
    procedure Set_saldoAceptado(Value: Double); safecall;
    function Get_codMoneda: WideString; safecall;
    procedure Set_codMoneda(const Value: WideString); safecall;
    function Get_cotizacionMonedaUlt: Double; safecall;
    procedure Set_cotizacionMonedaUlt(Value: Double); safecall;
    property tipoCancelacion: WideString read Get_tipoCancelacion write Set_tipoCancelacion;
    property importeCancelado: Double read Get_importeCancelado write Set_importeCancelado;
    property importeTotalRetPesos: Double read Get_importeTotalRetPesos write Set_importeTotalRetPesos;
    property importeEmbargoPesos: Double read Get_importeEmbargoPesos write Set_importeEmbargoPesos;
    property saldoAceptado: Double read Get_saldoAceptado write Set_saldoAceptado;
    property codMoneda: WideString read Get_codMoneda write Set_codMoneda;
    property cotizacionMonedaUlt: Double read Get_cotizacionMonedaUlt write Set_cotizacionMonedaUlt;
  end;

// *********************************************************************//
// DispIntf:  IAceptarFECredRequestTyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F0324362-5DE0-4A53-B253-D18C37D5FD5C}
// *********************************************************************//
  IAceptarFECredRequestTyDisp = dispinterface
    ['{F0324362-5DE0-4A53-B253-D18C37D5FD5C}']
    procedure idCtaCte(codCtaCte: Double); dispid 201;
    procedure idFactura(CuitEmisor: Double; codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double); dispid 213;
    procedure arrayConfirmarNotasDC(acepta: OLE_CANCELBOOL; CuitEmisor: Double; 
                                    codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double); dispid 202;
    procedure arrayFormasCancelacion(codigo: Integer; const descripcion: WideString); dispid 203;
    procedure arrayRetenciones(codTipo: Integer; Importe: Double; Porcentaje: Double; 
                               const descMotivo: WideString); dispid 204;
    procedure arrayAjustesOperacion(codigo: Integer; Importe: Double); dispid 205;
    property tipoCancelacion: WideString dispid 206;
    property importeCancelado: Double dispid 207;
    property importeTotalRetPesos: Double dispid 208;
    property importeEmbargoPesos: Double dispid 209;
    property saldoAceptado: Double dispid 210;
    property codMoneda: WideString dispid 211;
    property cotizacionMonedaUlt: Double dispid 212;
  end;

// *********************************************************************//
// Interface: IConsultarCmpReturnTy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BB315EBC-4D6F-4542-BC1D-B4878E91A9EF}
// *********************************************************************//
  IConsultarCmpReturnTy = interface(IDispatch)
    ['{BB315EBC-4D6F-4542-BC1D-B4878E91A9EF}']
    function Get_arrayComprobantes(Indice: Integer): IComprobanteTy; safecall;
    function Get_arrayComprobantesCount: Integer; safecall;
    property arrayComprobantes[Indice: Integer]: IComprobanteTy read Get_arrayComprobantes;
    property arrayComprobantesCount: Integer read Get_arrayComprobantesCount;
  end;

// *********************************************************************//
// DispIntf:  IConsultarCmpReturnTyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BB315EBC-4D6F-4542-BC1D-B4878E91A9EF}
// *********************************************************************//
  IConsultarCmpReturnTyDisp = dispinterface
    ['{BB315EBC-4D6F-4542-BC1D-B4878E91A9EF}']
    property arrayComprobantes[Indice: Integer]: IComprobanteTy readonly dispid 201;
    property arrayComprobantesCount: Integer readonly dispid 202;
  end;

// *********************************************************************//
// Interface: IComprobanteTy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E4EF8C5E-D0D5-4C0A-A1AA-AFDC93A8D4E7}
// *********************************************************************//
  IComprobanteTy = interface(IDispatch)
    ['{E4EF8C5E-D0D5-4C0A-A1AA-AFDC93A8D4E7}']
    function Get_CuitEmisor: Double; safecall;
    function Get_razonSocialEmi: WideString; safecall;
    function Get_codTipoCmp: Integer; safecall;
    function Get_PtoVta: Integer; safecall;
    function Get_nroCmp: Double; safecall;
    function Get_cuitReceptor: Double; safecall;
    function Get_razonSocialRecep: WideString; safecall;
    function Get_tipoCodAuto: WideString; safecall;
    function Get_CodAutorizacion: Double; safecall;
    function Get_fechaEmision: WideString; safecall;
    function Get_fechaPuestaDispo: WideString; safecall;
    function Get_fechaVenPago: WideString; safecall;
    function Get_fechaVenAcep: WideString; safecall;
    function Get_importeTotal: Double; safecall;
    function Get_codMoneda: WideString; safecall;
    function Get_cotizacionMoneda: Double; safecall;
    function Get_CBUEmisor: WideString; safecall;
    function Get_AliasEmisor: WideString; safecall;
    function Get_esAnulacion: OLE_CANCELBOOL; safecall;
    function Get_esPostAceptacion: OLE_CANCELBOOL; safecall;
    function Get_idComprobanteAsociado: IIdComprobanteTy; safecall;
    function Get_referenciasComerciales: WideString; safecall;
    function Get_arraySubtotalesIVA(Indice: Integer): ISubtotalIVATy; safecall;
    function Get_arraySubtotalesIVACount: Integer; safecall;
    function Get_arrayOtrosTributos: IOtroTributoTy; safecall;
    function Get_arrayOtrosTributosCount: Integer; safecall;
    function Get_arrayItems: IItemTy; safecall;
    function Get_arrayItemsCount: Integer; safecall;
    function Get_datosGenerales: WideString; safecall;
    function Get_datosComerciales: WideString; safecall;
    function Get_leyendaComercial: WideString; safecall;
    function Get_codCtaCte: Double; safecall;
    function Get_estado_estado: WideString; safecall;
    function Get_estado_fecha: WideString; safecall;
    function Get_tipoAcep: WideString; safecall;
    function Get_fechaHoraAcep: WideString; safecall;
    function Get_arrayMotivosRechazo: IMotivoRechazoTy; safecall;
    function Get_arrayMotivosRechazoCount: Integer; safecall;
    function Get_infoAgDtpoCltv: OLE_CANCELBOOL; safecall;
    function Get_fechaInfoAgDptoCltv: WideString; safecall;
    function Get_idPagoAgDptoCltv: WideString; safecall;
    function Get_CBUdePago: WideString; safecall;
    property CuitEmisor: Double read Get_CuitEmisor;
    property razonSocialEmi: WideString read Get_razonSocialEmi;
    property codTipoCmp: Integer read Get_codTipoCmp;
    property PtoVta: Integer read Get_PtoVta;
    property nroCmp: Double read Get_nroCmp;
    property cuitReceptor: Double read Get_cuitReceptor;
    property razonSocialRecep: WideString read Get_razonSocialRecep;
    property tipoCodAuto: WideString read Get_tipoCodAuto;
    property CodAutorizacion: Double read Get_CodAutorizacion;
    property fechaEmision: WideString read Get_fechaEmision;
    property fechaPuestaDispo: WideString read Get_fechaPuestaDispo;
    property fechaVenPago: WideString read Get_fechaVenPago;
    property fechaVenAcep: WideString read Get_fechaVenAcep;
    property importeTotal: Double read Get_importeTotal;
    property codMoneda: WideString read Get_codMoneda;
    property cotizacionMoneda: Double read Get_cotizacionMoneda;
    property CBUEmisor: WideString read Get_CBUEmisor;
    property AliasEmisor: WideString read Get_AliasEmisor;
    property esAnulacion: OLE_CANCELBOOL read Get_esAnulacion;
    property esPostAceptacion: OLE_CANCELBOOL read Get_esPostAceptacion;
    property idComprobanteAsociado: IIdComprobanteTy read Get_idComprobanteAsociado;
    property referenciasComerciales: WideString read Get_referenciasComerciales;
    property arraySubtotalesIVA[Indice: Integer]: ISubtotalIVATy read Get_arraySubtotalesIVA;
    property arraySubtotalesIVACount: Integer read Get_arraySubtotalesIVACount;
    property arrayOtrosTributos: IOtroTributoTy read Get_arrayOtrosTributos;
    property arrayOtrosTributosCount: Integer read Get_arrayOtrosTributosCount;
    property arrayItems: IItemTy read Get_arrayItems;
    property arrayItemsCount: Integer read Get_arrayItemsCount;
    property datosGenerales: WideString read Get_datosGenerales;
    property datosComerciales: WideString read Get_datosComerciales;
    property leyendaComercial: WideString read Get_leyendaComercial;
    property codCtaCte: Double read Get_codCtaCte;
    property estado_estado: WideString read Get_estado_estado;
    property estado_fecha: WideString read Get_estado_fecha;
    property tipoAcep: WideString read Get_tipoAcep;
    property fechaHoraAcep: WideString read Get_fechaHoraAcep;
    property arrayMotivosRechazo: IMotivoRechazoTy read Get_arrayMotivosRechazo;
    property arrayMotivosRechazoCount: Integer read Get_arrayMotivosRechazoCount;
    property infoAgDtpoCltv: OLE_CANCELBOOL read Get_infoAgDtpoCltv;
    property fechaInfoAgDptoCltv: WideString read Get_fechaInfoAgDptoCltv;
    property idPagoAgDptoCltv: WideString read Get_idPagoAgDptoCltv;
    property CBUdePago: WideString read Get_CBUdePago;
  end;

// *********************************************************************//
// DispIntf:  IComprobanteTyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E4EF8C5E-D0D5-4C0A-A1AA-AFDC93A8D4E7}
// *********************************************************************//
  IComprobanteTyDisp = dispinterface
    ['{E4EF8C5E-D0D5-4C0A-A1AA-AFDC93A8D4E7}']
    property CuitEmisor: Double readonly dispid 201;
    property razonSocialEmi: WideString readonly dispid 202;
    property codTipoCmp: Integer readonly dispid 203;
    property PtoVta: Integer readonly dispid 204;
    property nroCmp: Double readonly dispid 205;
    property cuitReceptor: Double readonly dispid 206;
    property razonSocialRecep: WideString readonly dispid 207;
    property tipoCodAuto: WideString readonly dispid 208;
    property CodAutorizacion: Double readonly dispid 209;
    property fechaEmision: WideString readonly dispid 210;
    property fechaPuestaDispo: WideString readonly dispid 211;
    property fechaVenPago: WideString readonly dispid 212;
    property fechaVenAcep: WideString readonly dispid 213;
    property importeTotal: Double readonly dispid 214;
    property codMoneda: WideString readonly dispid 215;
    property cotizacionMoneda: Double readonly dispid 216;
    property CBUEmisor: WideString readonly dispid 217;
    property AliasEmisor: WideString readonly dispid 218;
    property esAnulacion: OLE_CANCELBOOL readonly dispid 219;
    property esPostAceptacion: OLE_CANCELBOOL readonly dispid 220;
    property idComprobanteAsociado: IIdComprobanteTy readonly dispid 221;
    property referenciasComerciales: WideString readonly dispid 222;
    property arraySubtotalesIVA[Indice: Integer]: ISubtotalIVATy readonly dispid 223;
    property arraySubtotalesIVACount: Integer readonly dispid 224;
    property arrayOtrosTributos: IOtroTributoTy readonly dispid 225;
    property arrayOtrosTributosCount: Integer readonly dispid 226;
    property arrayItems: IItemTy readonly dispid 227;
    property arrayItemsCount: Integer readonly dispid 228;
    property datosGenerales: WideString readonly dispid 229;
    property datosComerciales: WideString readonly dispid 230;
    property leyendaComercial: WideString readonly dispid 231;
    property codCtaCte: Double readonly dispid 232;
    property estado_estado: WideString readonly dispid 233;
    property estado_fecha: WideString readonly dispid 234;
    property tipoAcep: WideString readonly dispid 235;
    property fechaHoraAcep: WideString readonly dispid 236;
    property arrayMotivosRechazo: IMotivoRechazoTy readonly dispid 237;
    property arrayMotivosRechazoCount: Integer readonly dispid 238;
    property infoAgDtpoCltv: OLE_CANCELBOOL readonly dispid 239;
    property fechaInfoAgDptoCltv: WideString readonly dispid 240;
    property idPagoAgDptoCltv: WideString readonly dispid 241;
    property CBUdePago: WideString readonly dispid 242;
  end;

// *********************************************************************//
// Interface: ISubtotalIVATy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {873012B5-0A40-440E-9F18-ED81C3C7AD4F}
// *********************************************************************//
  ISubtotalIVATy = interface(IDispatch)
    ['{873012B5-0A40-440E-9F18-ED81C3C7AD4F}']
  end;

// *********************************************************************//
// DispIntf:  ISubtotalIVATyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {873012B5-0A40-440E-9F18-ED81C3C7AD4F}
// *********************************************************************//
  ISubtotalIVATyDisp = dispinterface
    ['{873012B5-0A40-440E-9F18-ED81C3C7AD4F}']
  end;

// *********************************************************************//
// Interface: IOtroTributoTy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {96443A17-3274-4493-A940-92F4FE8F4D98}
// *********************************************************************//
  IOtroTributoTy = interface(IDispatch)
    ['{96443A17-3274-4493-A940-92F4FE8F4D98}']
  end;

// *********************************************************************//
// DispIntf:  IOtroTributoTyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {96443A17-3274-4493-A940-92F4FE8F4D98}
// *********************************************************************//
  IOtroTributoTyDisp = dispinterface
    ['{96443A17-3274-4493-A940-92F4FE8F4D98}']
  end;

// *********************************************************************//
// Interface: IItemTy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {572B401B-91D9-46CA-85A7-ED286B14693B}
// *********************************************************************//
  IItemTy = interface(IDispatch)
    ['{572B401B-91D9-46CA-85A7-ED286B14693B}']
  end;

// *********************************************************************//
// DispIntf:  IItemTyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {572B401B-91D9-46CA-85A7-ED286B14693B}
// *********************************************************************//
  IItemTyDisp = dispinterface
    ['{572B401B-91D9-46CA-85A7-ED286B14693B}']
  end;

// *********************************************************************//
// Interface: IMotivoRechazoTy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {21AC85E6-B7A9-487F-BCBC-19E18AE05D42}
// *********************************************************************//
  IMotivoRechazoTy = interface(IDispatch)
    ['{21AC85E6-B7A9-487F-BCBC-19E18AE05D42}']
  end;

// *********************************************************************//
// DispIntf:  IMotivoRechazoTyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {21AC85E6-B7A9-487F-BCBC-19E18AE05D42}
// *********************************************************************//
  IMotivoRechazoTyDisp = dispinterface
    ['{21AC85E6-B7A9-487F-BCBC-19E18AE05D42}']
  end;

// *********************************************************************//
// Interface: IInformarFacturaAgtDptoCltvRequestTy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3DEF5AFE-1202-4B92-BEBB-4B006E29C02F}
// *********************************************************************//
  IInformarFacturaAgtDptoCltvRequestTy = interface(IDispatch)
    ['{3DEF5AFE-1202-4B92-BEBB-4B006E29C02F}']
    procedure idCtaCte(codCtaCte: Double); safecall;
    procedure idFactura(CuitEmisor: Double; codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double); safecall;
    procedure ctaComitente(cuentaDepositante: Integer; subcuentaComitente: Double; 
                           const denominacion: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IInformarFacturaAgtDptoCltvRequestTyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3DEF5AFE-1202-4B92-BEBB-4B006E29C02F}
// *********************************************************************//
  IInformarFacturaAgtDptoCltvRequestTyDisp = dispinterface
    ['{3DEF5AFE-1202-4B92-BEBB-4B006E29C02F}']
    procedure idCtaCte(codCtaCte: Double); dispid 201;
    procedure idFactura(CuitEmisor: Double; codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double); dispid 202;
    procedure ctaComitente(cuentaDepositante: Integer; subcuentaComitente: Double; 
                           const denominacion: WideString); dispid 203;
  end;

// *********************************************************************//
// Interface: IRechazarFECredRequestTy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {30EBD9FB-D607-484D-A5E8-8AD7522DA407}
// *********************************************************************//
  IRechazarFECredRequestTy = interface(IDispatch)
    ['{30EBD9FB-D607-484D-A5E8-8AD7522DA407}']
    procedure idCtaCte(codCtaCte: Double); safecall;
    procedure idFactura(CuitEmisor: Double; codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double); safecall;
    procedure arrayMotivosRechazo(codMotivo: Integer; const descMotivo: WideString; 
                                  const justificacion: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IRechazarFECredRequestTyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {30EBD9FB-D607-484D-A5E8-8AD7522DA407}
// *********************************************************************//
  IRechazarFECredRequestTyDisp = dispinterface
    ['{30EBD9FB-D607-484D-A5E8-8AD7522DA407}']
    procedure idCtaCte(codCtaCte: Double); dispid 201;
    procedure idFactura(CuitEmisor: Double; codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double); dispid 202;
    procedure arrayMotivosRechazo(codMotivo: Integer; const descMotivo: WideString; 
                                  const justificacion: WideString); dispid 203;
  end;

// *********************************************************************//
// The Class Cowsaa provides a Create and CreateRemote method to          
// create instances of the default interface Iwsaa exposed by              
// the CoClass wsaa. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cowsaa = class
    class function Create: Iwsaa;
    class function CreateRemote(const MachineName: string): Iwsaa;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : Twsaa
// Help String      : 
// Default Interface: Iwsaa
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TwsaaProperties= class;
{$ENDIF}
  Twsaa = class(TOleServer)
  private
    FIntf:        Iwsaa;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TwsaaProperties;
    function      GetServerProperties: TwsaaProperties;
{$ENDIF}
    function      GetDefaultInterface: Iwsaa;
  protected
    procedure InitServerData; override;
    function Get_Token: WideString;
    function Get_Sign: WideString;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_CUIT: WideString;
    procedure Set_CUIT(const Value: WideString);
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_ProxyUserName: WideString;
    procedure Set_ProxyUserName(const Value: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const Value: WideString);
    function Get_ProxyEnabled: OLE_CANCELBOOL;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Iwsaa);
    procedure Disconnect; override;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString; const Servicio: WideString): OLE_CANCELBOOL;
    procedure CargarLicencia(const Licencia: WideString);
    property DefaultInterface: Iwsaa read GetDefaultInterface;
    property Token: WideString read Get_Token;
    property Sign: WideString read Get_Sign;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property CUIT: WideString read Get_CUIT write Set_CUIT;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TwsaaProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : Twsaa
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TwsaaProperties = class(TPersistent)
  private
    FServer:    Twsaa;
    function    GetDefaultInterface: Iwsaa;
    constructor Create(AServer: Twsaa);
  protected
    function Get_Token: WideString;
    function Get_Sign: WideString;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_CUIT: WideString;
    procedure Set_CUIT(const Value: WideString);
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_ProxyUserName: WideString;
    procedure Set_ProxyUserName(const Value: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const Value: WideString);
    function Get_ProxyEnabled: OLE_CANCELBOOL;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL);
  public
    property DefaultInterface: Iwsaa read GetDefaultInterface;
  published
    property CUIT: WideString read Get_CUIT write Set_CUIT;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Cowsfexv1 provides a Create and CreateRemote method to          
// create instances of the default interface Iwsfexv1 exposed by              
// the CoClass wsfexv1. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cowsfexv1 = class
    class function Create: Iwsfexv1;
    class function CreateRemote(const MachineName: string): Iwsfexv1;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : Twsfexv1
// Help String      : 
// Default Interface: Iwsfexv1
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  Twsfexv1Properties= class;
{$ENDIF}
  Twsfexv1 = class(TOleServer)
  private
    FIntf:        Iwsfexv1;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       Twsfexv1Properties;
    function      GetServerProperties: Twsfexv1Properties;
{$ENDIF}
    function      GetDefaultInterface: Iwsfexv1;
  protected
    procedure InitServerData; override;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_Token: WideString;
    procedure Set_Token(const Value: WideString);
    function Get_Sign: WideString;
    procedure Set_Sign(const Value: WideString);
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_SFLastCMP: Double;
    function Get_SFCAE: WideString;
    function Get_SFVencimiento: WideString;
    function Get_SFResultado: WideString;
    function Get_SFReproceso: WideString;
    function Get_SFCmpConsultarCAE: WideString;
    function Get_SFCmpConsultarVencimiento: WideString;
    function Get_SFLastId: Double;
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_ProxyUserName: WideString;
    procedure Set_ProxyUserName(const Value: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const Value: WideString);
    function Get_ProxyEnabled: OLE_CANCELBOOL;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Iwsfexv1);
    procedure Disconnect; override;
    procedure AgregaFactura(Id: Double; const Fecha_cbte: WideString; Tipo_cbte: Integer; 
                            Punto_vta: Integer; Cbte_nro: Double; Tipo_expo: Integer; 
                            const Permiso_existente: WideString; Dst_cmp: Integer; 
                            const Cliente: WideString; Cuit_pais_cliente: Double; 
                            const Domicilio_cliente: WideString; const Id_impositivo: WideString; 
                            const Moneda_Id: WideString; Moneda_ctz: Double; 
                            const Obs_comerciales: WideString; Imp_total: Double; 
                            const Obs: WideString; const Forma_pago: WideString; 
                            const Incoterms: WideString; const Incoterms_ds: WideString; 
                            Idioma_cbte: Integer);
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL;
    function Autorizar: OLE_CANCELBOOL;
    function AutorizarRespuesta(out Cae: WideString; out Fch_venc_Cae: WideString; 
                                out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL;
    function RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out Cbte_nro: Double; 
                             out Cbte_fecha: WideString): OLE_CANCELBOOL;
    procedure AgregaPermiso(const Id_permiso: WideString; Dst_merc: Integer);
    procedure AgregaCompAsoc(Cbte_tipo: Integer; Cbte_punto_vta: Integer; Cbte_nro: Double; 
                             Cbte_cuit: Double);
    procedure AgregaItem(const Pro_codigo: WideString; const Pro_ds: WideString; Pro_qty: Double; 
                         Pro_umed: Integer; Pro_precio_uni: Double; Pro_total_item: Double; 
                         Pro_bonificacion: Double);
    function SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL;
    function UltimoIdTrans(out Resultado: Double): OLE_CANCELBOOL;
    function AutorizarRespuestaObs: WideString;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL;
    function SFUltimoIdTrans: OLE_CANCELBOOL;
    function ParamGetCotizacion(const MonId: WideString; var MonCtz: Double; 
                                var MonFecha: WideString): OLE_CANCELBOOL;
    procedure CargarLicencia(const Licencia: WideString);
    property DefaultInterface: Iwsfexv1 read GetDefaultInterface;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property SFLastCMP: Double read Get_SFLastCMP;
    property SFCAE: WideString read Get_SFCAE;
    property SFVencimiento: WideString read Get_SFVencimiento;
    property SFResultado: WideString read Get_SFResultado;
    property SFReproceso: WideString read Get_SFReproceso;
    property SFCmpConsultarCAE: WideString read Get_SFCmpConsultarCAE;
    property SFCmpConsultarVencimiento: WideString read Get_SFCmpConsultarVencimiento;
    property SFLastId: Double read Get_SFLastId;
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: Twsfexv1Properties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : Twsfexv1
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 Twsfexv1Properties = class(TPersistent)
  private
    FServer:    Twsfexv1;
    function    GetDefaultInterface: Iwsfexv1;
    constructor Create(AServer: Twsfexv1);
  protected
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_Token: WideString;
    procedure Set_Token(const Value: WideString);
    function Get_Sign: WideString;
    procedure Set_Sign(const Value: WideString);
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_SFLastCMP: Double;
    function Get_SFCAE: WideString;
    function Get_SFVencimiento: WideString;
    function Get_SFResultado: WideString;
    function Get_SFReproceso: WideString;
    function Get_SFCmpConsultarCAE: WideString;
    function Get_SFCmpConsultarVencimiento: WideString;
    function Get_SFLastId: Double;
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_ProxyUserName: WideString;
    procedure Set_ProxyUserName(const Value: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const Value: WideString);
    function Get_ProxyEnabled: OLE_CANCELBOOL;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL);
  public
    property DefaultInterface: Iwsfexv1 read GetDefaultInterface;
  published
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Cowsfev1 provides a Create and CreateRemote method to          
// create instances of the default interface Iwsfev1 exposed by              
// the CoClass wsfev1. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cowsfev1 = class
    class function Create: Iwsfev1;
    class function CreateRemote(const MachineName: string): Iwsfev1;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : Twsfev1
// Help String      : 
// Default Interface: Iwsfev1
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  Twsfev1Properties= class;
{$ENDIF}
  Twsfev1 = class(TOleServer)
  private
    FIntf:        Iwsfev1;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       Twsfev1Properties;
    function      GetServerProperties: Twsfev1Properties;
{$ENDIF}
    function      GetDefaultInterface: Iwsfev1;
  protected
    procedure InitServerData; override;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_AutorizarRespCount: Integer;
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_Token: WideString;
    procedure Set_Token(const Value: WideString);
    function Get_Sign: WideString;
    procedure Set_Sign(const Value: WideString);
    function Get_SFLastCMP: Double;
    function Get_SFCAE(Indice: Integer): WideString;
    function Get_SFVencimiento(Indice: Integer): WideString;
    function Get_SFResultado(Indice: Integer): WideString;
    function Get_SFCmpConsultarCAE: WideString;
    function Get_SFCmpConsultarVencimiento: WideString;
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_ProxyUserName: WideString;
    procedure Set_ProxyUserName(const Value: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const Value: WideString);
    function Get_ProxyEnabled: OLE_CANCELBOOL;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL);
    function Get_CmpConsultarCbte: IComprobante;
    function Get_Depurar: OLE_CANCELBOOL;
    procedure Set_Depurar(Value: OLE_CANCELBOOL);
    function Get_Path: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Iwsfev1);
    procedure Disconnect; override;
    procedure AgregaFactura(Concepto: Integer; DocTipo: Integer; DocNro: Double; Cbtedesde: Double; 
                            Cbtehasta: Double; const CbteFch: WideString; Imptotal: Double; 
                            ImpTotalConc: Double; ImpNeto: Double; ImpOpEx: Double; 
                            const FechaServDesde: WideString; const FechaServHasta: WideString; 
                            const FechaVencPago: WideString; const MonId: WideString; 
                            MonCotiz: Double);
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL;
    function Autorizar(ptoVenta: Integer; CbteTipo: Integer): OLE_CANCELBOOL;
    procedure Reset;
    function AutorizarRespuesta(Indice: Integer; out Cae: WideString; out Vencimiento: WideString; 
                                out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL;
    function RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out cmp: Double): OLE_CANCELBOOL;
    function RecuperaQTYRequest(qty: Integer): OLE_CANCELBOOL;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL;
    function Dummy(out appserver: WideString; out authserver: WideString; out dbserver: WideString): OLE_CANCELBOOL;
    function CAEASolicitar(Periodo: Integer; Orden: Integer; out Cae: WideString; 
                           out FchVigDesde: WideString; out FchVigHasta: WideString; 
                           out FchTopeInf: WideString; out FchProceso: WideString): OLE_CANCELBOOL;
    function AutorizarRespuestaObs(Indice: Integer): WideString;
    function CAEAConsultar(Periodo: Integer; Orden: Integer; out Cae: WideString; 
                           out FchVigDesde: WideString; out FchVigHasta: WideString; 
                           out FchTopeInf: WideString; out FchProceso: WideString): OLE_CANCELBOOL;
    function CAEASinMovimientoInformar(PtoVta: Integer; const CAEA: WideString; 
                                       out Resultado: WideString): OLE_CANCELBOOL;
    function CAEASinMovimientoConsultar(PtoVta: Integer; const CAEA: WideString; 
                                        out Resultado: WideString): OLE_CANCELBOOL;
    function ParamGetCotizacion(const MonId: WideString; out MonCotiz: Double; 
                                out FchCotiz: WideString): OLE_CANCELBOOL;
    function ParamGetTiposConcepto(out Resultado: WideString): OLE_CANCELBOOL;
    procedure AgregaTributo(Id: Integer; const Desc: WideString; BaseImp: Double; Alic: Double; 
                            Importe: Double);
    procedure AgregaIVA(Id: Integer; BaseImp: Double; Importe: Double);
    procedure AgregaCompAsoc(Tipo: Integer; PtoVta: Integer; Nro: Double; CUIT: Double; 
                             const CbteFch: WideString);
    procedure AgregaOpcional(const Id: WideString; const Valor: WideString);
    function ParamGetTiposMonedas(out Resultado: WideString): OLE_CANCELBOOL;
    function SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL;
    function CAEAInformar(ptoVenta: Integer; CbteTipo: Integer; const Cae: WideString): OLE_CANCELBOOL;
    function AutorizarRespuestaObsCode(Indice: Integer): WideString;
    function ParamGetTiposDoc(out Resultado: WideString): OLE_CANCELBOOL;
    function ParamGetTiposCbte(out Resultado: WideString): OLE_CANCELBOOL;
    procedure LogTransaction(const RequestFilename: WideString; const ResponseFilename: WideString);
    function CmpConsultarEx(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                            const cbte_info_result: IComprobante): OLE_CANCELBOOL;
    procedure AgregaComprador(DocTipo: Integer; DocNro: Double; Porcentaje: Double);
    procedure CargarLicencia(const Licencia: WideString);
    function ParamGetPtosVenta(out Resultado: WideString): OLE_CANCELBOOL;
    property DefaultInterface: Iwsfev1 read GetDefaultInterface;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property AutorizarRespCount: Integer read Get_AutorizarRespCount;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property SFLastCMP: Double read Get_SFLastCMP;
    property SFCAE[Indice: Integer]: WideString read Get_SFCAE;
    property SFVencimiento[Indice: Integer]: WideString read Get_SFVencimiento;
    property SFResultado[Indice: Integer]: WideString read Get_SFResultado;
    property SFCmpConsultarCAE: WideString read Get_SFCmpConsultarCAE;
    property SFCmpConsultarVencimiento: WideString read Get_SFCmpConsultarVencimiento;
    property CmpConsultarCbte: IComprobante read Get_CmpConsultarCbte;
    property Path: WideString read Get_Path;
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: Twsfev1Properties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : Twsfev1
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 Twsfev1Properties = class(TPersistent)
  private
    FServer:    Twsfev1;
    function    GetDefaultInterface: Iwsfev1;
    constructor Create(AServer: Twsfev1);
  protected
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_AutorizarRespCount: Integer;
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_Token: WideString;
    procedure Set_Token(const Value: WideString);
    function Get_Sign: WideString;
    procedure Set_Sign(const Value: WideString);
    function Get_SFLastCMP: Double;
    function Get_SFCAE(Indice: Integer): WideString;
    function Get_SFVencimiento(Indice: Integer): WideString;
    function Get_SFResultado(Indice: Integer): WideString;
    function Get_SFCmpConsultarCAE: WideString;
    function Get_SFCmpConsultarVencimiento: WideString;
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_ProxyUserName: WideString;
    procedure Set_ProxyUserName(const Value: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const Value: WideString);
    function Get_ProxyEnabled: OLE_CANCELBOOL;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL);
    function Get_CmpConsultarCbte: IComprobante;
    function Get_Depurar: OLE_CANCELBOOL;
    procedure Set_Depurar(Value: OLE_CANCELBOOL);
    function Get_Path: WideString;
  public
    property DefaultInterface: Iwsfev1 read GetDefaultInterface;
  published
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Cowsbfev1 provides a Create and CreateRemote method to          
// create instances of the default interface Iwsbfev1 exposed by              
// the CoClass wsbfev1. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cowsbfev1 = class
    class function Create: Iwsbfev1;
    class function CreateRemote(const MachineName: string): Iwsbfev1;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : Twsbfev1
// Help String      : 
// Default Interface: Iwsbfev1
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  Twsbfev1Properties= class;
{$ENDIF}
  Twsbfev1 = class(TOleServer)
  private
    FIntf:        Iwsbfev1;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       Twsbfev1Properties;
    function      GetServerProperties: Twsbfev1Properties;
{$ENDIF}
    function      GetDefaultInterface: Iwsbfev1;
  protected
    procedure InitServerData; override;
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_Token: WideString;
    procedure Set_Token(const Value: WideString);
    function Get_Sign: WideString;
    procedure Set_Sign(const Value: WideString);
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_SFLastCMP: Double;
    function Get_SFLastFecha: WideString;
    function Get_SFLastId: Double;
    function Get_SFCAE: WideString;
    function Get_SFVencimiento: WideString;
    function Get_SFResultado: WideString;
    function Get_SFReproceso: WideString;
    function Get_SFCmpConsultarCAE: WideString;
    function Get_SFCmpConsultarVencimiento: WideString;
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_ProxyUserName: WideString;
    procedure Set_ProxyUserName(const Value: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const Value: WideString);
    function Get_ProxyEnabled: OLE_CANCELBOOL;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Iwsbfev1);
    procedure Disconnect; override;
    procedure AgregaFactura(Id: Double; tipo_doc: Integer; nro_doc: Double; Zona: Integer; 
                            Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                            Imp_total: Double; imp_tot_conc: Double; imp_neto: Double; 
                            impto_liq: Double; impto_liq_rni: Double; imp_op_ex: Double; 
                            Imp_perc: Double; Imp_iibb: Double; Imp_perc_mun: Double; 
                            Imp_internos: Double; const Imp_moneda_Id: WideString; 
                            Imp_moneda_ctz: Double; const Fecha_cbte: WideString);
    procedure AgregaOpcional(const Id: WideString; const Valor: WideString);
    procedure AgregaItem(const Pro_codigo_ncm: WideString; const Pro_codigo_sec: WideString; 
                         const Pro_ds: WideString; Pro_qty: Double; Pro_umed: Integer; 
                         Pro_precio_uni: Double; Imp_bonif: Double; Imp_total: Double; 
                         Iva_id: Integer);
    function Autorizar: OLE_CANCELBOOL;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL;
    procedure Reset;
    function RecuperaLastCMP(Pto_venta: Integer; Tipo_cbte: Integer; out Cbte_nro: Double; 
                             out Cbte_fecha: WideString): OLE_CANCELBOOL;
    function SFRecuperaLastCMP(Pto_venta: Integer; Tipo_cbte: Integer): OLE_CANCELBOOL;
    function RecuperaLastID(out Id: Double): OLE_CANCELBOOL;
    function SFRecuperaLastID: OLE_CANCELBOOL;
    function AutorizarRespuesta(out Cae: WideString; out Vencimiento: WideString; 
                                out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL;
    function AutorizarRespuestaObs: WideString;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; Cbte_nro: Double): OLE_CANCELBOOL;
    function ParamGetZonas(out Zonas: WideString): OLE_CANCELBOOL;
    property DefaultInterface: Iwsbfev1 read GetDefaultInterface;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property SFLastCMP: Double read Get_SFLastCMP;
    property SFLastFecha: WideString read Get_SFLastFecha;
    property SFLastId: Double read Get_SFLastId;
    property SFCAE: WideString read Get_SFCAE;
    property SFVencimiento: WideString read Get_SFVencimiento;
    property SFResultado: WideString read Get_SFResultado;
    property SFReproceso: WideString read Get_SFReproceso;
    property SFCmpConsultarCAE: WideString read Get_SFCmpConsultarCAE;
    property SFCmpConsultarVencimiento: WideString read Get_SFCmpConsultarVencimiento;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property URL: WideString read Get_URL write Set_URL;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: Twsbfev1Properties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : Twsbfev1
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 Twsbfev1Properties = class(TPersistent)
  private
    FServer:    Twsbfev1;
    function    GetDefaultInterface: Iwsbfev1;
    constructor Create(AServer: Twsbfev1);
  protected
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_Token: WideString;
    procedure Set_Token(const Value: WideString);
    function Get_Sign: WideString;
    procedure Set_Sign(const Value: WideString);
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_SFLastCMP: Double;
    function Get_SFLastFecha: WideString;
    function Get_SFLastId: Double;
    function Get_SFCAE: WideString;
    function Get_SFVencimiento: WideString;
    function Get_SFResultado: WideString;
    function Get_SFReproceso: WideString;
    function Get_SFCmpConsultarCAE: WideString;
    function Get_SFCmpConsultarVencimiento: WideString;
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_Proxy: WideString;
    procedure Set_Proxy(const Value: WideString);
    function Get_ProxyUserName: WideString;
    procedure Set_ProxyUserName(const Value: WideString);
    function Get_ProxyPassword: WideString;
    procedure Set_ProxyPassword(const Value: WideString);
    function Get_ProxyEnabled: OLE_CANCELBOOL;
    procedure Set_ProxyEnabled(Value: OLE_CANCELBOOL);
  public
    property DefaultInterface: Iwsbfev1 read GetDefaultInterface;
  published
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property URL: WideString read Get_URL write Set_URL;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
    property Proxy: WideString read Get_Proxy write Set_Proxy;
    property ProxyUserName: WideString read Get_ProxyUserName write Set_ProxyUserName;
    property ProxyPassword: WideString read Get_ProxyPassword write Set_ProxyPassword;
    property ProxyEnabled: OLE_CANCELBOOL read Get_ProxyEnabled write Set_ProxyEnabled;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Cowsmtxca provides a Create and CreateRemote method to          
// create instances of the default interface Iwsmtxca exposed by              
// the CoClass wsmtxca. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cowsmtxca = class
    class function Create: Iwsmtxca;
    class function CreateRemote(const MachineName: string): Iwsmtxca;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : Twsmtxca
// Help String      : wsmtxca Object
// Default Interface: Iwsmtxca
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TwsmtxcaProperties= class;
{$ENDIF}
  Twsmtxca = class(TOleServer)
  private
    FIntf:        Iwsmtxca;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TwsmtxcaProperties;
    function      GetServerProperties: TwsmtxcaProperties;
{$ENDIF}
    function      GetDefaultInterface: Iwsmtxca;
  protected
    procedure InitServerData; override;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_Token: WideString;
    procedure Set_Token(const Value: WideString);
    function Get_Sign: WideString;
    procedure Set_Sign(const Value: WideString);
    function Get_SFCmpConsultarCAE: WideString;
    function Get_SFCmpConsultarVencimiento: WideString;
    function Get_SFLastCMP: Double;
    function Get_SFCAE: WideString;
    function Get_SFVencimiento: WideString;
    function Get_SFResultado: WideString;
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Iwsmtxca);
    procedure Disconnect; override;
    procedure AgregaFactura(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                            numeroComprobante: Double; const fechaEmision: WideString; 
                            codigoTipoDocumento: Integer; numeroDocumento: Double; 
                            importeGravado: Double; importeNoGravado: Double; 
                            importeExento: Double; importeSubtotal: Double; 
                            importeOtrosTributos: Double; importeTotal: Double; 
                            const codigoMoneda: WideString; cotizacionMoneda: Double; 
                            const observaciones: WideString; codigoConcepto: Integer; 
                            const fechaServicioDesde: WideString; 
                            const fechaServicioHasta: WideString; 
                            const fechaVencimientoPago: WideString);
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL;
    procedure AgregaTributo(Id: Integer; const Desc: WideString; BaseImp: Double; Importe: Double);
    procedure AgregaIVA(codigo: Integer; Importe: Double);
    procedure AgregaCompAsoc(Tipo: Integer; PtoVta: Integer; Nro: Double);
    procedure AgregaItem(unidadesMtx: Integer; const codigoMtx: WideString; 
                         const codigo: WideString; const descripcion: WideString; cantidad: Double; 
                         codigoUnidadMedida: Integer; precioUnitario: Double; 
                         importeBonificacion: Double; codigoCondicionIVA: Integer; 
                         importeIVA: Double; importeItem: Double);
    function Autorizar: OLE_CANCELBOOL;
    function AutorizarRespuesta(out Cae: WideString; out Vencimiento: WideString; 
                                out Resultado: WideString): OLE_CANCELBOOL;
    function RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out cmp: Double): OLE_CANCELBOOL;
    function AutorizarRespuestaObs: WideString;
    function SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL;
    function SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL;
    function CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                          out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL;
    property DefaultInterface: Iwsmtxca read GetDefaultInterface;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property SFCmpConsultarCAE: WideString read Get_SFCmpConsultarCAE;
    property SFCmpConsultarVencimiento: WideString read Get_SFCmpConsultarVencimiento;
    property SFLastCMP: Double read Get_SFLastCMP;
    property SFCAE: WideString read Get_SFCAE;
    property SFVencimiento: WideString read Get_SFVencimiento;
    property SFResultado: WideString read Get_SFResultado;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TwsmtxcaProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : Twsmtxca
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TwsmtxcaProperties = class(TPersistent)
  private
    FServer:    Twsmtxca;
    function    GetDefaultInterface: Iwsmtxca;
    constructor Create(AServer: Twsmtxca);
  protected
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_Token: WideString;
    procedure Set_Token(const Value: WideString);
    function Get_Sign: WideString;
    procedure Set_Sign(const Value: WideString);
    function Get_SFCmpConsultarCAE: WideString;
    function Get_SFCmpConsultarVencimiento: WideString;
    function Get_SFLastCMP: Double;
    function Get_SFCAE: WideString;
    function Get_SFVencimiento: WideString;
    function Get_SFResultado: WideString;
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
  public
    property DefaultInterface: Iwsmtxca read GetDefaultInterface;
  published
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Token: WideString read Get_Token write Set_Token;
    property Sign: WideString read Get_Sign write Set_Sign;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Cowsseg provides a Create and CreateRemote method to          
// create instances of the default interface Iwsseg exposed by              
// the CoClass wsseg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cowsseg = class
    class function Create: Iwsseg;
    class function CreateRemote(const MachineName: string): Iwsseg;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : Twsseg
// Help String      : wsseg Object
// Default Interface: Iwsseg
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TwssegProperties= class;
{$ENDIF}
  Twsseg = class(TOleServer)
  private
    FIntf:        Iwsseg;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TwssegProperties;
    function      GetServerProperties: TwssegProperties;
{$ENDIF}
    function      GetDefaultInterface: Iwsseg;
  protected
    procedure InitServerData; override;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_RespuestaAutorizarCAE: WideString;
    function Get_RespuestaAutorizarVencimiento: WideString;
    function Get_RespuestaAutorizarResultado: WideString;
    function Get_RespuestaAutorizarReproceso: WideString;
    function Get_RespuestaGetLast_CMPNro: Integer;
    function Get_RespuestaGetLast_CMPFecha: WideString;
    function Get_RespuestaGetLast_IDId: Integer;
    function Get_RespuestaAutorizarObs: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Iwsseg);
    procedure Disconnect; override;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL;
    procedure AgregaFactura(Id: Integer; tipo_doc: Integer; nro_doc: Double; Tipo_cbte: Integer; 
                            Punto_vta: Integer; Cbte_nro: Integer; Imp_total: Double; 
                            imp_tot_conc: Double; imp_neto: Double; impto_liq: Double; 
                            impto_liq_rni: Double; imp_op_ex: Double; Imp_perc: Double; 
                            Imp_iibb: Double; Imp_perc_mun: Double; Imp_internos: Double; 
                            const Imp_moneda_Id: WideString; Imp_moneda_ctz: Double; 
                            Imp_otrib_prov: Double; const Fecha_cbte: WideString);
    procedure AgregaItem(const Poliza: WideString; const Endoso: WideString; const Ds: WideString; 
                         qty: Double; Precio_uni: Double; Imp_bonif: Double; Imp_total: Double; 
                         Imp_valor_aseg: Double; const Imp_moneda_vaseg: WideString; Iva_id: Integer);
    function Autorizar: OLE_CANCELBOOL;
    function GetLast_CMP(Pto_venta: Integer; Tipo_cbte: Integer): OLE_CANCELBOOL;
    function GetLast_ID: OLE_CANCELBOOL;
    function GetCMP(Tipo_cbte: Integer; Punto_vta: Integer; Cbte_nro: Integer): OLE_CANCELBOOL;
    procedure LogTransaction(const RequestFilename: WideString; const ResponseFilename: WideString);
    property DefaultInterface: Iwsseg read GetDefaultInterface;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property RespuestaAutorizarCAE: WideString read Get_RespuestaAutorizarCAE;
    property RespuestaAutorizarVencimiento: WideString read Get_RespuestaAutorizarVencimiento;
    property RespuestaAutorizarResultado: WideString read Get_RespuestaAutorizarResultado;
    property RespuestaAutorizarReproceso: WideString read Get_RespuestaAutorizarReproceso;
    property RespuestaGetLast_CMPNro: Integer read Get_RespuestaGetLast_CMPNro;
    property RespuestaGetLast_CMPFecha: WideString read Get_RespuestaGetLast_CMPFecha;
    property RespuestaGetLast_IDId: Integer read Get_RespuestaGetLast_IDId;
    property RespuestaAutorizarObs: WideString read Get_RespuestaAutorizarObs;
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TwssegProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : Twsseg
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TwssegProperties = class(TPersistent)
  private
    FServer:    Twsseg;
    function    GetDefaultInterface: Iwsseg;
    constructor Create(AServer: Twsseg);
  protected
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_RespuestaAutorizarCAE: WideString;
    function Get_RespuestaAutorizarVencimiento: WideString;
    function Get_RespuestaAutorizarResultado: WideString;
    function Get_RespuestaAutorizarReproceso: WideString;
    function Get_RespuestaGetLast_CMPNro: Integer;
    function Get_RespuestaGetLast_CMPFecha: WideString;
    function Get_RespuestaGetLast_IDId: Integer;
    function Get_RespuestaAutorizarObs: WideString;
  public
    property DefaultInterface: Iwsseg read GetDefaultInterface;
  published
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CowsPadron provides a Create and CreateRemote method to          
// create instances of the default interface IwsPadron exposed by              
// the CoClass wsPadron. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CowsPadron = class
    class function Create: IwsPadron;
    class function CreateRemote(const MachineName: string): IwsPadron;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TwsPadron
// Help String      : 
// Default Interface: IwsPadron
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TwsPadronProperties= class;
{$ENDIF}
  TwsPadron = class(TOleServer)
  private
    FIntf:        IwsPadron;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TwsPadronProperties;
    function      GetServerProperties: TwsPadronProperties;
{$ENDIF}
    function      GetDefaultInterface: IwsPadron;
  protected
    procedure InitServerData; override;
    function Get_ErrorDesc: WideString;
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_ModoProduccion: OLE_CANCELBOOL;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL);
    function Get_Contribuyente: IContribuyente;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IwsPadron);
    procedure Disconnect; override;
    function consultar(CUIT: Double; const contribuyenteResult: IContribuyente): OLE_CANCELBOOL;
    function descargarConstancia(CUIT: Double; const ArchivoDestino: WideString): OLE_CANCELBOOL;
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL;
    procedure CargarLicencia(const Licencia: WideString);
    function sfConsultar(CUIT: Double): OLE_CANCELBOOL;
    property DefaultInterface: IwsPadron read GetDefaultInterface;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property Contribuyente: IContribuyente read Get_Contribuyente;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TwsPadronProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TwsPadron
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TwsPadronProperties = class(TPersistent)
  private
    FServer:    TwsPadron;
    function    GetDefaultInterface: IwsPadron;
    constructor Create(AServer: TwsPadron);
  protected
    function Get_ErrorDesc: WideString;
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_ModoProduccion: OLE_CANCELBOOL;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL);
    function Get_Contribuyente: IContribuyente;
  public
    property DefaultInterface: IwsPadron read GetDefaultInterface;
  published
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoComprobante provides a Create and CreateRemote method to          
// create instances of the default interface IComprobante exposed by              
// the CoClass Comprobante. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComprobante = class
    class function Create: IComprobante;
    class function CreateRemote(const MachineName: string): IComprobante;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TComprobante
// Help String      : 
// Default Interface: IComprobante
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TComprobanteProperties= class;
{$ENDIF}
  TComprobante = class(TOleServer)
  private
    FIntf:        IComprobante;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TComprobanteProperties;
    function      GetServerProperties: TComprobanteProperties;
{$ENDIF}
    function      GetDefaultInterface: IComprobante;
  protected
    procedure InitServerData; override;
    function Get_Concepto: Integer;
    function Get_DocTipo: Integer;
    function Get_DocNro: Double;
    function Get_Cbtedesde: Double;
    function Get_Cbtehasta: Double;
    function Get_CbteFch: WideString;
    function Get_Imptotal: Double;
    function Get_ImpTotConc: Double;
    function Get_ImpNeto: Double;
    function Get_ImpOpEx: Double;
    function Get_ImpTrib: Double;
    function Get_ImpIVA: Double;
    function Get_FchServDesde: WideString;
    function Get_FchServHasta: WideString;
    function Get_FchVtoPago: WideString;
    function Get_MonId: WideString;
    function Get_MonCotiz: Double;
    function Get_CbtesAsocCount: Integer;
    function Get_TributosCount: Integer;
    function Get_IvaCount: Integer;
    function Get_OpcionalesCount: Integer;
    function Get_Resultado: WideString;
    function Get_CodAutorizacion: WideString;
    function Get_EmisionTipo: WideString;
    function Get_FchVto: WideString;
    function Get_FchProceso: WideString;
    function Get_ObservacionesCount: Integer;
    function Get_PtoVta: Integer;
    function Get_CbteTipo: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IComprobante);
    procedure Disconnect; override;
    function CbtesAsoc(Indice: Integer): ICbteAsoc;
    function Tributos(Indice: Integer): ITributo;
    function Iva(Indice: Integer): IAlicIva;
    function Opcionales(Indice: Integer): IOpcional;
    function observaciones(Indice: Integer): IObs;
    property DefaultInterface: IComprobante read GetDefaultInterface;
    property Concepto: Integer read Get_Concepto;
    property DocTipo: Integer read Get_DocTipo;
    property DocNro: Double read Get_DocNro;
    property Cbtedesde: Double read Get_Cbtedesde;
    property Cbtehasta: Double read Get_Cbtehasta;
    property CbteFch: WideString read Get_CbteFch;
    property Imptotal: Double read Get_Imptotal;
    property ImpTotConc: Double read Get_ImpTotConc;
    property ImpNeto: Double read Get_ImpNeto;
    property ImpOpEx: Double read Get_ImpOpEx;
    property ImpTrib: Double read Get_ImpTrib;
    property ImpIVA: Double read Get_ImpIVA;
    property FchServDesde: WideString read Get_FchServDesde;
    property FchServHasta: WideString read Get_FchServHasta;
    property FchVtoPago: WideString read Get_FchVtoPago;
    property MonId: WideString read Get_MonId;
    property MonCotiz: Double read Get_MonCotiz;
    property CbtesAsocCount: Integer read Get_CbtesAsocCount;
    property TributosCount: Integer read Get_TributosCount;
    property IvaCount: Integer read Get_IvaCount;
    property OpcionalesCount: Integer read Get_OpcionalesCount;
    property Resultado: WideString read Get_Resultado;
    property CodAutorizacion: WideString read Get_CodAutorizacion;
    property EmisionTipo: WideString read Get_EmisionTipo;
    property FchVto: WideString read Get_FchVto;
    property FchProceso: WideString read Get_FchProceso;
    property ObservacionesCount: Integer read Get_ObservacionesCount;
    property PtoVta: Integer read Get_PtoVta;
    property CbteTipo: Integer read Get_CbteTipo;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TComprobanteProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TComprobante
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TComprobanteProperties = class(TPersistent)
  private
    FServer:    TComprobante;
    function    GetDefaultInterface: IComprobante;
    constructor Create(AServer: TComprobante);
  protected
    function Get_Concepto: Integer;
    function Get_DocTipo: Integer;
    function Get_DocNro: Double;
    function Get_Cbtedesde: Double;
    function Get_Cbtehasta: Double;
    function Get_CbteFch: WideString;
    function Get_Imptotal: Double;
    function Get_ImpTotConc: Double;
    function Get_ImpNeto: Double;
    function Get_ImpOpEx: Double;
    function Get_ImpTrib: Double;
    function Get_ImpIVA: Double;
    function Get_FchServDesde: WideString;
    function Get_FchServHasta: WideString;
    function Get_FchVtoPago: WideString;
    function Get_MonId: WideString;
    function Get_MonCotiz: Double;
    function Get_CbtesAsocCount: Integer;
    function Get_TributosCount: Integer;
    function Get_IvaCount: Integer;
    function Get_OpcionalesCount: Integer;
    function Get_Resultado: WideString;
    function Get_CodAutorizacion: WideString;
    function Get_EmisionTipo: WideString;
    function Get_FchVto: WideString;
    function Get_FchProceso: WideString;
    function Get_ObservacionesCount: Integer;
    function Get_PtoVta: Integer;
    function Get_CbteTipo: Integer;
  public
    property DefaultInterface: IComprobante read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCbteAsoc provides a Create and CreateRemote method to          
// create instances of the default interface ICbteAsoc exposed by              
// the CoClass CbteAsoc. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCbteAsoc = class
    class function Create: ICbteAsoc;
    class function CreateRemote(const MachineName: string): ICbteAsoc;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCbteAsoc
// Help String      : 
// Default Interface: ICbteAsoc
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCbteAsocProperties= class;
{$ENDIF}
  TCbteAsoc = class(TOleServer)
  private
    FIntf:        ICbteAsoc;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCbteAsocProperties;
    function      GetServerProperties: TCbteAsocProperties;
{$ENDIF}
    function      GetDefaultInterface: ICbteAsoc;
  protected
    procedure InitServerData; override;
    function Get_Tipo: Integer;
    function Get_PtoVta: Integer;
    function Get_Nro: Double;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICbteAsoc);
    procedure Disconnect; override;
    property DefaultInterface: ICbteAsoc read GetDefaultInterface;
    property Tipo: Integer read Get_Tipo;
    property PtoVta: Integer read Get_PtoVta;
    property Nro: Double read Get_Nro;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCbteAsocProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCbteAsoc
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCbteAsocProperties = class(TPersistent)
  private
    FServer:    TCbteAsoc;
    function    GetDefaultInterface: ICbteAsoc;
    constructor Create(AServer: TCbteAsoc);
  protected
    function Get_Tipo: Integer;
    function Get_PtoVta: Integer;
    function Get_Nro: Double;
  public
    property DefaultInterface: ICbteAsoc read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoTributo provides a Create and CreateRemote method to          
// create instances of the default interface ITributo exposed by              
// the CoClass Tributo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTributo = class
    class function Create: ITributo;
    class function CreateRemote(const MachineName: string): ITributo;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TTributo
// Help String      : 
// Default Interface: ITributo
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TTributoProperties= class;
{$ENDIF}
  TTributo = class(TOleServer)
  private
    FIntf:        ITributo;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TTributoProperties;
    function      GetServerProperties: TTributoProperties;
{$ENDIF}
    function      GetDefaultInterface: ITributo;
  protected
    procedure InitServerData; override;
    function Get_Id: Integer;
    function Get_Desc: WideString;
    function Get_BaseImp: Double;
    function Get_Alic: Double;
    function Get_Importe: Double;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ITributo);
    procedure Disconnect; override;
    property DefaultInterface: ITributo read GetDefaultInterface;
    property Id: Integer read Get_Id;
    property Desc: WideString read Get_Desc;
    property BaseImp: Double read Get_BaseImp;
    property Alic: Double read Get_Alic;
    property Importe: Double read Get_Importe;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TTributoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TTributo
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TTributoProperties = class(TPersistent)
  private
    FServer:    TTributo;
    function    GetDefaultInterface: ITributo;
    constructor Create(AServer: TTributo);
  protected
    function Get_Id: Integer;
    function Get_Desc: WideString;
    function Get_BaseImp: Double;
    function Get_Alic: Double;
    function Get_Importe: Double;
  public
    property DefaultInterface: ITributo read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoAlicIva provides a Create and CreateRemote method to          
// create instances of the default interface IAlicIva exposed by              
// the CoClass AlicIva. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAlicIva = class
    class function Create: IAlicIva;
    class function CreateRemote(const MachineName: string): IAlicIva;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAlicIva
// Help String      : 
// Default Interface: IAlicIva
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAlicIvaProperties= class;
{$ENDIF}
  TAlicIva = class(TOleServer)
  private
    FIntf:        IAlicIva;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TAlicIvaProperties;
    function      GetServerProperties: TAlicIvaProperties;
{$ENDIF}
    function      GetDefaultInterface: IAlicIva;
  protected
    procedure InitServerData; override;
    function Get_Id: Integer;
    function Get_BaseImp: Double;
    function Get_Importe: Double;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IAlicIva);
    procedure Disconnect; override;
    property DefaultInterface: IAlicIva read GetDefaultInterface;
    property Id: Integer read Get_Id;
    property BaseImp: Double read Get_BaseImp;
    property Importe: Double read Get_Importe;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAlicIvaProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAlicIva
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAlicIvaProperties = class(TPersistent)
  private
    FServer:    TAlicIva;
    function    GetDefaultInterface: IAlicIva;
    constructor Create(AServer: TAlicIva);
  protected
    function Get_Id: Integer;
    function Get_BaseImp: Double;
    function Get_Importe: Double;
  public
    property DefaultInterface: IAlicIva read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoOpcional provides a Create and CreateRemote method to          
// create instances of the default interface IOpcional exposed by              
// the CoClass Opcional. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcional = class
    class function Create: IOpcional;
    class function CreateRemote(const MachineName: string): IOpcional;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcional
// Help String      : 
// Default Interface: IOpcional
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TOpcionalProperties= class;
{$ENDIF}
  TOpcional = class(TOleServer)
  private
    FIntf:        IOpcional;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TOpcionalProperties;
    function      GetServerProperties: TOpcionalProperties;
{$ENDIF}
    function      GetDefaultInterface: IOpcional;
  protected
    procedure InitServerData; override;
    function Get_Id: WideString;
    function Get_Valor: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IOpcional);
    procedure Disconnect; override;
    property DefaultInterface: IOpcional read GetDefaultInterface;
    property Id: WideString read Get_Id;
    property Valor: WideString read Get_Valor;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TOpcionalProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TOpcional
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TOpcionalProperties = class(TPersistent)
  private
    FServer:    TOpcional;
    function    GetDefaultInterface: IOpcional;
    constructor Create(AServer: TOpcional);
  protected
    function Get_Id: WideString;
    function Get_Valor: WideString;
  public
    property DefaultInterface: IOpcional read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoObs provides a Create and CreateRemote method to          
// create instances of the default interface IObs exposed by              
// the CoClass Obs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoObs = class
    class function Create: IObs;
    class function CreateRemote(const MachineName: string): IObs;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TObs
// Help String      : 
// Default Interface: IObs
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TObsProperties= class;
{$ENDIF}
  TObs = class(TOleServer)
  private
    FIntf:        IObs;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TObsProperties;
    function      GetServerProperties: TObsProperties;
{$ENDIF}
    function      GetDefaultInterface: IObs;
  protected
    procedure InitServerData; override;
    function Get_Code: Integer;
    function Get_Msg: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IObs);
    procedure Disconnect; override;
    property DefaultInterface: IObs read GetDefaultInterface;
    property Code: Integer read Get_Code;
    property Msg: WideString read Get_Msg;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TObsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TObs
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TObsProperties = class(TPersistent)
  private
    FServer:    TObs;
    function    GetDefaultInterface: IObs;
    constructor Create(AServer: TObs);
  protected
    function Get_Code: Integer;
    function Get_Msg: WideString;
  public
    property DefaultInterface: IObs read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoContribuyente provides a Create and CreateRemote method to          
// create instances of the default interface IContribuyente exposed by              
// the CoClass Contribuyente. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoContribuyente = class
    class function Create: IContribuyente;
    class function CreateRemote(const MachineName: string): IContribuyente;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TContribuyente
// Help String      : 
// Default Interface: IContribuyente
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TContribuyenteProperties= class;
{$ENDIF}
  TContribuyente = class(TOleServer)
  private
    FIntf:        IContribuyente;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TContribuyenteProperties;
    function      GetServerProperties: TContribuyenteProperties;
{$ENDIF}
    function      GetDefaultInterface: IContribuyente;
  protected
    procedure InitServerData; override;
    function Get_idPersona: WideString;
    function Get_tipoPersona: WideString;
    function Get_tipoClave: WideString;
    function Get_estadoClave: WideString;
    function Get_nombre: WideString;
    function Get_tipoDocumento: WideString;
    function Get_numeroDocumento: WideString;
    function Get_domicilioFiscal: IDomicilio;
    function Get_idDependencia: Integer;
    function Get_mesCierre: Integer;
    function Get_fechaInscripcion: WideString;
    function Get_idCatAutonomo: Integer;
    function Get_impuestosCount: Integer;
    function Get_actividadesCount: Integer;
    function Get_condicionIVA: TipoResponsable;
    function Get_condicionIVADesc: WideString;
    function Get_SolicitarConstanciaInscripcion: OLE_CANCELBOOL;
    function Get_observaciones: WideString;
    function Get_nombreSimple: WideString;
    function Get_apellido: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IContribuyente);
    procedure Disconnect; override;
    function impuestos(Indice: Integer): Integer;
    function categoriasMonotributoCount: Integer;
    function categoriasMonotributo(Indice: Integer): Integer;
    function actividades(Indice: Integer): Integer;
    function actividadesDesc(Inidice: Integer): WideString;
    property DefaultInterface: IContribuyente read GetDefaultInterface;
    property idPersona: WideString read Get_idPersona;
    property tipoPersona: WideString read Get_tipoPersona;
    property tipoClave: WideString read Get_tipoClave;
    property estadoClave: WideString read Get_estadoClave;
    property nombre: WideString read Get_nombre;
    property tipoDocumento: WideString read Get_tipoDocumento;
    property numeroDocumento: WideString read Get_numeroDocumento;
    property domicilioFiscal: IDomicilio read Get_domicilioFiscal;
    property idDependencia: Integer read Get_idDependencia;
    property mesCierre: Integer read Get_mesCierre;
    property fechaInscripcion: WideString read Get_fechaInscripcion;
    property idCatAutonomo: Integer read Get_idCatAutonomo;
    property impuestosCount: Integer read Get_impuestosCount;
    property actividadesCount: Integer read Get_actividadesCount;
    property condicionIVA: TipoResponsable read Get_condicionIVA;
    property condicionIVADesc: WideString read Get_condicionIVADesc;
    property SolicitarConstanciaInscripcion: OLE_CANCELBOOL read Get_SolicitarConstanciaInscripcion;
    property observaciones: WideString read Get_observaciones;
    property nombreSimple: WideString read Get_nombreSimple;
    property apellido: WideString read Get_apellido;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TContribuyenteProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TContribuyente
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TContribuyenteProperties = class(TPersistent)
  private
    FServer:    TContribuyente;
    function    GetDefaultInterface: IContribuyente;
    constructor Create(AServer: TContribuyente);
  protected
    function Get_idPersona: WideString;
    function Get_tipoPersona: WideString;
    function Get_tipoClave: WideString;
    function Get_estadoClave: WideString;
    function Get_nombre: WideString;
    function Get_tipoDocumento: WideString;
    function Get_numeroDocumento: WideString;
    function Get_domicilioFiscal: IDomicilio;
    function Get_idDependencia: Integer;
    function Get_mesCierre: Integer;
    function Get_fechaInscripcion: WideString;
    function Get_idCatAutonomo: Integer;
    function Get_impuestosCount: Integer;
    function Get_actividadesCount: Integer;
    function Get_condicionIVA: TipoResponsable;
    function Get_condicionIVADesc: WideString;
    function Get_SolicitarConstanciaInscripcion: OLE_CANCELBOOL;
    function Get_observaciones: WideString;
    function Get_nombreSimple: WideString;
    function Get_apellido: WideString;
  public
    property DefaultInterface: IContribuyente read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDomicilio provides a Create and CreateRemote method to          
// create instances of the default interface IDomicilio exposed by              
// the CoClass Domicilio. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDomicilio = class
    class function Create: IDomicilio;
    class function CreateRemote(const MachineName: string): IDomicilio;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDomicilio
// Help String      : 
// Default Interface: IDomicilio
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDomicilioProperties= class;
{$ENDIF}
  TDomicilio = class(TOleServer)
  private
    FIntf:        IDomicilio;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDomicilioProperties;
    function      GetServerProperties: TDomicilioProperties;
{$ENDIF}
    function      GetDefaultInterface: IDomicilio;
  protected
    procedure InitServerData; override;
    function Get_direccion: WideString;
    function Get_localidad: WideString;
    function Get_codPostal: WideString;
    function Get_idProvincia: Integer;
    function Get_provincia: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDomicilio);
    procedure Disconnect; override;
    property DefaultInterface: IDomicilio read GetDefaultInterface;
    property direccion: WideString read Get_direccion;
    property localidad: WideString read Get_localidad;
    property codPostal: WideString read Get_codPostal;
    property idProvincia: Integer read Get_idProvincia;
    property provincia: WideString read Get_provincia;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDomicilioProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDomicilio
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDomicilioProperties = class(TPersistent)
  private
    FServer:    TDomicilio;
    function    GetDefaultInterface: IDomicilio;
    constructor Create(AServer: TDomicilio);
  protected
    function Get_direccion: WideString;
    function Get_localidad: WideString;
    function Get_codPostal: WideString;
    function Get_idProvincia: Integer;
    function Get_provincia: WideString;
  public
    property DefaultInterface: IDomicilio read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CowsPadronARBA provides a Create and CreateRemote method to          
// create instances of the default interface IwsPadronARBA exposed by              
// the CoClass wsPadronARBA. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CowsPadronARBA = class
    class function Create: IwsPadronARBA;
    class function CreateRemote(const MachineName: string): IwsPadronARBA;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TwsPadronARBA
// Help String      : 
// Default Interface: IwsPadronARBA
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TwsPadronARBAProperties= class;
{$ENDIF}
  TwsPadronARBA = class(TOleServer)
  private
    FIntf:        IwsPadronARBA;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TwsPadronARBAProperties;
    function      GetServerProperties: TwsPadronARBAProperties;
{$ENDIF}
    function      GetDefaultInterface: IwsPadronARBA;
  protected
    procedure InitServerData; override;
    function Get_User: WideString;
    procedure Set_User(const Value: WideString);
    function Get_Password: WideString;
    procedure Set_Password(const Value: WideString);
    function Get_ConsultaAlicuotaRespuesta: IConsultaAlicuotaRespuesta;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_ModoProduccion: OLE_CANCELBOOL;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IwsPadronARBA);
    procedure Disconnect; override;
    function ConsultaAlicuota(const FechaDesde: WideString; const FechaHasta: WideString; 
                              CUIT: Double): OLE_CANCELBOOL;
    property DefaultInterface: IwsPadronARBA read GetDefaultInterface;
    property ConsultaAlicuotaRespuesta: IConsultaAlicuotaRespuesta read Get_ConsultaAlicuotaRespuesta;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property User: WideString read Get_User write Set_User;
    property Password: WideString read Get_Password write Set_Password;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TwsPadronARBAProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TwsPadronARBA
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TwsPadronARBAProperties = class(TPersistent)
  private
    FServer:    TwsPadronARBA;
    function    GetDefaultInterface: IwsPadronARBA;
    constructor Create(AServer: TwsPadronARBA);
  protected
    function Get_User: WideString;
    procedure Set_User(const Value: WideString);
    function Get_Password: WideString;
    procedure Set_Password(const Value: WideString);
    function Get_ConsultaAlicuotaRespuesta: IConsultaAlicuotaRespuesta;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_ModoProduccion: OLE_CANCELBOOL;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL);
  public
    property DefaultInterface: IwsPadronARBA read GetDefaultInterface;
  published
    property User: WideString read Get_User write Set_User;
    property Password: WideString read Get_Password write Set_Password;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoConsultaAlicuotaRespuesta provides a Create and CreateRemote method to          
// create instances of the default interface IConsultaAlicuotaRespuesta exposed by              
// the CoClass ConsultaAlicuotaRespuesta. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConsultaAlicuotaRespuesta = class
    class function Create: IConsultaAlicuotaRespuesta;
    class function CreateRemote(const MachineName: string): IConsultaAlicuotaRespuesta;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TConsultaAlicuotaRespuesta
// Help String      : 
// Default Interface: IConsultaAlicuotaRespuesta
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TConsultaAlicuotaRespuestaProperties= class;
{$ENDIF}
  TConsultaAlicuotaRespuesta = class(TOleServer)
  private
    FIntf:        IConsultaAlicuotaRespuesta;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TConsultaAlicuotaRespuestaProperties;
    function      GetServerProperties: TConsultaAlicuotaRespuestaProperties;
{$ENDIF}
    function      GetDefaultInterface: IConsultaAlicuotaRespuesta;
  protected
    procedure InitServerData; override;
    function Get_AlicuotaPercepcion: Double;
    function Get_AlicuotaRetencion: Double;
    function Get_GrupoPercepcion: Integer;
    function Get_GrupoRetencion: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IConsultaAlicuotaRespuesta);
    procedure Disconnect; override;
    property DefaultInterface: IConsultaAlicuotaRespuesta read GetDefaultInterface;
    property AlicuotaPercepcion: Double read Get_AlicuotaPercepcion;
    property AlicuotaRetencion: Double read Get_AlicuotaRetencion;
    property GrupoPercepcion: Integer read Get_GrupoPercepcion;
    property GrupoRetencion: Integer read Get_GrupoRetencion;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TConsultaAlicuotaRespuestaProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TConsultaAlicuotaRespuesta
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TConsultaAlicuotaRespuestaProperties = class(TPersistent)
  private
    FServer:    TConsultaAlicuotaRespuesta;
    function    GetDefaultInterface: IConsultaAlicuotaRespuesta;
    constructor Create(AServer: TConsultaAlicuotaRespuesta);
  protected
    function Get_AlicuotaPercepcion: Double;
    function Get_AlicuotaRetencion: Double;
    function Get_GrupoPercepcion: Integer;
    function Get_GrupoRetencion: Integer;
  public
    property DefaultInterface: IConsultaAlicuotaRespuesta read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoCertificado provides a Create and CreateRemote method to          
// create instances of the default interface ICertificado exposed by              
// the CoClass Certificado. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCertificado = class
    class function Create: ICertificado;
    class function CreateRemote(const MachineName: string): ICertificado;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCertificado
// Help String      : 
// Default Interface: ICertificado
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCertificadoProperties= class;
{$ENDIF}
  TCertificado = class(TOleServer)
  private
    FIntf:        ICertificado;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TCertificadoProperties;
    function      GetServerProperties: TCertificadoProperties;
{$ENDIF}
    function      GetDefaultInterface: ICertificado;
  protected
    procedure InitServerData; override;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_IC_Organizacion: WideString;
    function Get_IC_NombreComun: WideString;
    function Get_IC_FechaVencimiento: WideString;
    function Get_IC_CUIT: Double;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICertificado);
    procedure Disconnect; override;
    function CargarInformacionCertificado(const ArchivoCertificado: WideString; 
                                          const ArchivoClavePrivada: WideString): OLE_CANCELBOOL;
    function GenerarNuevoCertificado(const O: WideString; const CN: WideString; CUIT: Double; 
                                     const ArchivoSolicitud: WideString; 
                                     const ArchivoClavePrivada: WideString): OLE_CANCELBOOL;
    function RenovarCertificado(const ArchivoSolicitud: WideString): OLE_CANCELBOOL;
    procedure MostrarInformacionCertificado;
    procedure MostrarGenerarCertificado;
    property DefaultInterface: ICertificado read GetDefaultInterface;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property IC_Organizacion: WideString read Get_IC_Organizacion;
    property IC_NombreComun: WideString read Get_IC_NombreComun;
    property IC_FechaVencimiento: WideString read Get_IC_FechaVencimiento;
    property IC_CUIT: Double read Get_IC_CUIT;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCertificadoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCertificado
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCertificadoProperties = class(TPersistent)
  private
    FServer:    TCertificado;
    function    GetDefaultInterface: ICertificado;
    constructor Create(AServer: TCertificado);
  protected
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_IC_Organizacion: WideString;
    function Get_IC_NombreComun: WideString;
    function Get_IC_FechaVencimiento: WideString;
    function Get_IC_CUIT: Double;
  public
    property DefaultInterface: ICertificado read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class Cowscdc provides a Create and CreateRemote method to          
// create instances of the default interface Iwscdc exposed by              
// the CoClass wscdc. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cowscdc = class
    class function Create: Iwscdc;
    class function CreateRemote(const MachineName: string): Iwscdc;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : Twscdc
// Help String      : wscdc Object
// Default Interface: Iwscdc
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TwscdcProperties= class;
{$ENDIF}
  Twscdc = class(TOleServer)
  private
    FIntf:        Iwscdc;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TwscdcProperties;
    function      GetServerProperties: TwscdcProperties;
{$ENDIF}
    function      GetDefaultInterface: Iwscdc;
  protected
    procedure InitServerData; override;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_Depurar: OLE_CANCELBOOL;
    procedure Set_Depurar(Value: OLE_CANCELBOOL);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Iwscdc);
    procedure Disconnect; override;
    function login(const Certificado: WideString; const ClavePrivada: WideString; 
                   const URL: WideString): OLE_CANCELBOOL;
    function ComprobanteConstatar(const CbteModo: WideString; CuitEmisor: Double; PtoVta: Integer; 
                                  CbteTipo: Integer; CbteNro: Double; const CbteFch: WideString; 
                                  Imptotal: Double; const CodAutorizacion: WideString; 
                                  const DocTipoReceptor: WideString; 
                                  const DocNroReceptor: WideString): OLE_CANCELBOOL;
    property DefaultInterface: Iwscdc read GetDefaultInterface;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TwscdcProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : Twscdc
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TwscdcProperties = class(TPersistent)
  private
    FServer:    Twscdc;
    function    GetDefaultInterface: Iwscdc;
    constructor Create(AServer: Twscdc);
  protected
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_URL: WideString;
    procedure Set_URL(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_Depurar: OLE_CANCELBOOL;
    procedure Set_Depurar(Value: OLE_CANCELBOOL);
  public
    property DefaultInterface: Iwscdc read GetDefaultInterface;
  published
    property URL: WideString read Get_URL write Set_URL;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoBarcode provides a Create and CreateRemote method to          
// create instances of the default interface IBarcode exposed by              
// the CoClass Barcode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBarcode = class
    class function Create: IBarcode;
    class function CreateRemote(const MachineName: string): IBarcode;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TBarcode
// Help String      : Barcode Object
// Default Interface: IBarcode
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TBarcodeProperties= class;
{$ENDIF}
  TBarcode = class(TOleServer)
  private
    FIntf:        IBarcode;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TBarcodeProperties;
    function      GetServerProperties: TBarcodeProperties;
{$ENDIF}
    function      GetDefaultInterface: IBarcode;
  protected
    procedure InitServerData; override;
    function Get_Modulo: Integer;
    procedure Set_Modulo(Value: Integer);
    function Get_Proporcion: Double;
    procedure Set_Proporcion(Value: Double);
    function Get_Altura: Integer;
    procedure Set_Altura(Value: Integer);
    function Get_MostrarTexto: OLE_CANCELBOOL;
    procedure Set_MostrarTexto(Value: OLE_CANCELBOOL);
    function Get_TamanioFuente: Integer;
    procedure Set_TamanioFuente(Value: Integer);
    function Get_Texto: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IBarcode);
    procedure Disconnect; override;
    procedure GenerarCodigo(CUIT: Double; TipoCbte: Integer; PtoVta: Integer; 
                            const Cae: WideString; const Vto: WideString; 
                            const ArchivoDestino: WideString);
    function Interleave25(const Texto: WideString; const ArchivoDestino: WideString): OLE_CANCELBOOL;
    property DefaultInterface: IBarcode read GetDefaultInterface;
    property Texto: WideString read Get_Texto;
    property Modulo: Integer read Get_Modulo write Set_Modulo;
    property Proporcion: Double read Get_Proporcion write Set_Proporcion;
    property Altura: Integer read Get_Altura write Set_Altura;
    property MostrarTexto: OLE_CANCELBOOL read Get_MostrarTexto write Set_MostrarTexto;
    property TamanioFuente: Integer read Get_TamanioFuente write Set_TamanioFuente;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TBarcodeProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TBarcode
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TBarcodeProperties = class(TPersistent)
  private
    FServer:    TBarcode;
    function    GetDefaultInterface: IBarcode;
    constructor Create(AServer: TBarcode);
  protected
    function Get_Modulo: Integer;
    procedure Set_Modulo(Value: Integer);
    function Get_Proporcion: Double;
    procedure Set_Proporcion(Value: Double);
    function Get_Altura: Integer;
    procedure Set_Altura(Value: Integer);
    function Get_MostrarTexto: OLE_CANCELBOOL;
    procedure Set_MostrarTexto(Value: OLE_CANCELBOOL);
    function Get_TamanioFuente: Integer;
    procedure Set_TamanioFuente(Value: Integer);
    function Get_Texto: WideString;
  public
    property DefaultInterface: IBarcode read GetDefaultInterface;
  published
    property Modulo: Integer read Get_Modulo write Set_Modulo;
    property Proporcion: Double read Get_Proporcion write Set_Proporcion;
    property Altura: Integer read Get_Altura write Set_Altura;
    property MostrarTexto: OLE_CANCELBOOL read Get_MostrarTexto write Set_MostrarTexto;
    property TamanioFuente: Integer read Get_TamanioFuente write Set_TamanioFuente;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Cowsct provides a Create and CreateRemote method to          
// create instances of the default interface Iwsct exposed by              
// the CoClass wsct. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cowsct = class
    class function Create: Iwsct;
    class function CreateRemote(const MachineName: string): Iwsct;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : Twsct
// Help String      : 
// Default Interface: Iwsct
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TwsctProperties= class;
{$ENDIF}
  Twsct = class(TOleServer)
  private
    FIntf:        Iwsct;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TwsctProperties;
    function      GetServerProperties: TwsctProperties;
{$ENDIF}
    function      GetDefaultInterface: Iwsct;
  protected
    procedure InitServerData; override;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_Depurar: OLE_CANCELBOOL;
    procedure Set_Depurar(Value: OLE_CANCELBOOL);
    function Get_ConsultarUltimoComprobanteNumero: Integer;
    function Get_ConsultarUltimoComprobanteFecha: WideString;
    function Get_AutorizarCAE: Double;
    function Get_AutorizarVencimiento: WideString;
    function Get_AutorizarObservaciones: WideString;
    function Get_ModoProduccion: OLE_CANCELBOOL;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Iwsct);
    procedure Disconnect; override;
    procedure AgregaFactura(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                            numeroComprobante: Double; const fechaEmision: WideString; 
                            const codigoTipoAutorizacion: WideString; codigoAutorizacion: Double; 
                            const fechaVencimiento: WideString; codigoTipoDocumento: Integer; 
                            const numeroDocumento: WideString; const idImpositivo: WideString; 
                            codigoPais: Integer; const domicilioReceptor: WideString; 
                            codigoRelacionEmisorReceptor: Integer; importeGravado: Double; 
                            importeNoGravado: Double; importeExento: Double; 
                            importeOtrosTributos: Double; importeReintegro: Double; 
                            importeTotal: Double; const codigoMoneda: WideString; 
                            cotizacionMoneda: Double; const observaciones: WideString);
    procedure AgregaItem(Tipo: Integer; codigoTurismo: Integer; const codigo: WideString; 
                         const descripcion: WideString; codigoAlicuotaIVA: Integer; 
                         importeIVA: Double; importeItem: Double);
    procedure AgregaComprobanteAsociado(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                                        numeroComprobante: Double);
    procedure AgregaTributo(codigo: Integer; const descripcion: WideString; baseImponible: Double; 
                            Importe: Double);
    procedure AgregaIVA(codigo: Integer; Importe: Double);
    procedure AgregaDatoAdicional(t: Integer; const c1: WideString; const c2: WideString; 
                                  const c3: WideString; const c4: WideString; const c5: WideString; 
                                  const c6: WideString);
    procedure AgregaFormaDePago(codigo: Integer; tipoTarjeta: Integer; numeroTarjeta: Double; 
                                const swiftCode: WideString; tipoCuenta: Integer; 
                                numeroCuenta: Double);
    procedure Reset;
    function Autorizar: OLE_CANCELBOOL;
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL;
    function ConsultarUltimoComprobante(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer): OLE_CANCELBOOL;
    function DescargarCodigos(const NombreArchivo: WideString): OLE_CANCELBOOL;
    property DefaultInterface: Iwsct read GetDefaultInterface;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property ConsultarUltimoComprobanteNumero: Integer read Get_ConsultarUltimoComprobanteNumero;
    property ConsultarUltimoComprobanteFecha: WideString read Get_ConsultarUltimoComprobanteFecha;
    property AutorizarCAE: Double read Get_AutorizarCAE;
    property AutorizarVencimiento: WideString read Get_AutorizarVencimiento;
    property AutorizarObservaciones: WideString read Get_AutorizarObservaciones;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TwsctProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : Twsct
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TwsctProperties = class(TPersistent)
  private
    FServer:    Twsct;
    function    GetDefaultInterface: Iwsct;
    constructor Create(AServer: Twsct);
  protected
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_Depurar: OLE_CANCELBOOL;
    procedure Set_Depurar(Value: OLE_CANCELBOOL);
    function Get_ConsultarUltimoComprobanteNumero: Integer;
    function Get_ConsultarUltimoComprobanteFecha: WideString;
    function Get_AutorizarCAE: Double;
    function Get_AutorizarVencimiento: WideString;
    function Get_AutorizarObservaciones: WideString;
    function Get_ModoProduccion: OLE_CANCELBOOL;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL);
  public
    property DefaultInterface: Iwsct read GetDefaultInterface;
  published
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  end;
{$ENDIF}


// *********************************************************************//
// The Class Cowsfecred provides a Create and CreateRemote method to          
// create instances of the default interface Iwsfecred exposed by              
// the CoClass wsfecred. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cowsfecred = class
    class function Create: Iwsfecred;
    class function CreateRemote(const MachineName: string): Iwsfecred;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : Twsfecred
// Help String      : wsfecred Object
// Default Interface: Iwsfecred
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TwsfecredProperties= class;
{$ENDIF}
  Twsfecred = class(TOleServer)
  private
    FIntf:        Iwsfecred;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TwsfecredProperties;
    function      GetServerProperties: TwsfecredProperties;
{$ENDIF}
    function      GetDefaultInterface: Iwsfecred;
  protected
    procedure InitServerData; override;
    function Get_Token: WideString;
    function Get_Sign: WideString;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_Depurar: OLE_CANCELBOOL;
    procedure Set_Depurar(Value: OLE_CANCELBOOL);
    function Get_ModoProduccion: OLE_CANCELBOOL;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL);
    function Get_consultarCmpReturn: IConsultarCmpReturnTy;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Iwsfecred);
    procedure Disconnect; override;
    procedure Dummy;
    function consultarComprobantes(const rolCUITRepresentada: WideString; CUITContraparte: Double; 
                                   codTipoCmp: Integer; const estadoCmp: WideString; 
                                   const fecha_tipo: WideString; const fecha_desde: WideString; 
                                   const fecha_hasta: WideString; codCtaCte: Double; 
                                   const estadoCtaCte: WideString): OLE_CANCELBOOL;
    procedure rechazarNotaDC;
    procedure consultarCtasCtes;
    procedure consultarCtaCte;
    procedure informarCancelacionTotalFECred;
    function aceptarFECred(const Request: IAceptarFECredRequestTy): OLE_CANCELBOOL;
    function rechazarFECred(const Request: IRechazarFECredRequestTy): OLE_CANCELBOOL;
    function informarFacturaAgtDptoCltv(const Request: IInformarFacturaAgtDptoCltvRequestTy): OLE_CANCELBOOL;
    procedure consultarFacturasAgtDptoCltv;
    procedure consultarCuentasComitente;
    procedure consultarObligadoRecepcion;
    procedure consultarTiposRetenciones;
    procedure consultarTiposMotivosRechazo;
    procedure consultarTiposFormasCancelacion;
    procedure obtenerRemitos;
    procedure consultarHistorialEstadosComprobante;
    procedure consultarHistorialEstadosCtaCte;
    function login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL;
    procedure CargarLicencia;
    function nuevoAceptarFECredRequestTy: IAceptarFECredRequestTy;
    function nuevoInformarFacturaAgtDptoCltvRequestTy: IInformarFacturaAgtDptoCltvRequestTy;
    function nuevoRechazarFECredRequestTy: IRechazarFECredRequestTy;
    property DefaultInterface: Iwsfecred read GetDefaultInterface;
    property Token: WideString read Get_Token;
    property Sign: WideString read Get_Sign;
    property ErrorCode: Integer read Get_ErrorCode;
    property ErrorDesc: WideString read Get_ErrorDesc;
    property XMLRequest: WideString read Get_XMLRequest;
    property XMLResponse: WideString read Get_XMLResponse;
    property consultarCmpReturn: IConsultarCmpReturnTy read Get_consultarCmpReturn;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TwsfecredProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : Twsfecred
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TwsfecredProperties = class(TPersistent)
  private
    FServer:    Twsfecred;
    function    GetDefaultInterface: Iwsfecred;
    constructor Create(AServer: Twsfecred);
  protected
    function Get_Token: WideString;
    function Get_Sign: WideString;
    function Get_ErrorCode: Integer;
    function Get_ErrorDesc: WideString;
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_XMLRequest: WideString;
    function Get_XMLResponse: WideString;
    function Get_Depurar: OLE_CANCELBOOL;
    procedure Set_Depurar(Value: OLE_CANCELBOOL);
    function Get_ModoProduccion: OLE_CANCELBOOL;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL);
    function Get_consultarCmpReturn: IConsultarCmpReturnTy;
  public
    property DefaultInterface: Iwsfecred read GetDefaultInterface;
  published
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property Depurar: OLE_CANCELBOOL read Get_Depurar write Set_Depurar;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoIdCtaCteTy provides a Create and CreateRemote method to          
// create instances of the default interface IIdCtaCteTy exposed by              
// the CoClass IdCtaCteTy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoIdCtaCteTy = class
    class function Create: IIdCtaCteTy;
    class function CreateRemote(const MachineName: string): IIdCtaCteTy;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TIdCtaCteTy
// Help String      : 
// Default Interface: IIdCtaCteTy
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TIdCtaCteTyProperties= class;
{$ENDIF}
  TIdCtaCteTy = class(TOleServer)
  private
    FIntf:        IIdCtaCteTy;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TIdCtaCteTyProperties;
    function      GetServerProperties: TIdCtaCteTyProperties;
{$ENDIF}
    function      GetDefaultInterface: IIdCtaCteTy;
  protected
    procedure InitServerData; override;
    function Get_codCtaCte: Double;
    procedure Set_codCtaCte(Value: Double);
    function Get_idFactura: IdComprobanteTy;
    procedure Set_idFactura(const Value: IdComprobanteTy);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IIdCtaCteTy);
    procedure Disconnect; override;
    property DefaultInterface: IIdCtaCteTy read GetDefaultInterface;
    property codCtaCte: Double read Get_codCtaCte write Set_codCtaCte;
    property idFactura: IdComprobanteTy read Get_idFactura write Set_idFactura;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TIdCtaCteTyProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TIdCtaCteTy
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TIdCtaCteTyProperties = class(TPersistent)
  private
    FServer:    TIdCtaCteTy;
    function    GetDefaultInterface: IIdCtaCteTy;
    constructor Create(AServer: TIdCtaCteTy);
  protected
    function Get_codCtaCte: Double;
    procedure Set_codCtaCte(Value: Double);
    function Get_idFactura: IdComprobanteTy;
    procedure Set_idFactura(const Value: IdComprobanteTy);
  public
    property DefaultInterface: IIdCtaCteTy read GetDefaultInterface;
  published
    property codCtaCte: Double read Get_codCtaCte write Set_codCtaCte;
    property idFactura: IdComprobanteTy read Get_idFactura write Set_idFactura;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoIdComprobanteTy provides a Create and CreateRemote method to          
// create instances of the default interface IIdComprobanteTy exposed by              
// the CoClass IdComprobanteTy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoIdComprobanteTy = class
    class function Create: IIdComprobanteTy;
    class function CreateRemote(const MachineName: string): IIdComprobanteTy;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TIdComprobanteTy
// Help String      : 
// Default Interface: IIdComprobanteTy
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TIdComprobanteTyProperties= class;
{$ENDIF}
  TIdComprobanteTy = class(TOleServer)
  private
    FIntf:        IIdComprobanteTy;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TIdComprobanteTyProperties;
    function      GetServerProperties: TIdComprobanteTyProperties;
{$ENDIF}
    function      GetDefaultInterface: IIdComprobanteTy;
  protected
    procedure InitServerData; override;
    function Get_CuitEmisor: Double;
    procedure Set_CuitEmisor(Value: Double);
    function Get_codTipoCmp: Integer;
    procedure Set_codTipoCmp(Value: Integer);
    function Get_PtoVta: Integer;
    procedure Set_PtoVta(Value: Integer);
    function Get_nroCmp: Double;
    procedure Set_nroCmp(Value: Double);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IIdComprobanteTy);
    procedure Disconnect; override;
    property DefaultInterface: IIdComprobanteTy read GetDefaultInterface;
    property CuitEmisor: Double read Get_CuitEmisor write Set_CuitEmisor;
    property codTipoCmp: Integer read Get_codTipoCmp write Set_codTipoCmp;
    property PtoVta: Integer read Get_PtoVta write Set_PtoVta;
    property nroCmp: Double read Get_nroCmp write Set_nroCmp;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TIdComprobanteTyProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TIdComprobanteTy
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TIdComprobanteTyProperties = class(TPersistent)
  private
    FServer:    TIdComprobanteTy;
    function    GetDefaultInterface: IIdComprobanteTy;
    constructor Create(AServer: TIdComprobanteTy);
  protected
    function Get_CuitEmisor: Double;
    procedure Set_CuitEmisor(Value: Double);
    function Get_codTipoCmp: Integer;
    procedure Set_codTipoCmp(Value: Integer);
    function Get_PtoVta: Integer;
    procedure Set_PtoVta(Value: Integer);
    function Get_nroCmp: Double;
    procedure Set_nroCmp(Value: Double);
  public
    property DefaultInterface: IIdComprobanteTy read GetDefaultInterface;
  published
    property CuitEmisor: Double read Get_CuitEmisor write Set_CuitEmisor;
    property codTipoCmp: Integer read Get_codTipoCmp write Set_codTipoCmp;
    property PtoVta: Integer read Get_PtoVta write Set_PtoVta;
    property nroCmp: Double read Get_nroCmp write Set_nroCmp;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoAceptarFECredRequestTy provides a Create and CreateRemote method to          
// create instances of the default interface IAceptarFECredRequestTy exposed by              
// the CoClass AceptarFECredRequestTy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAceptarFECredRequestTy = class
    class function Create: IAceptarFECredRequestTy;
    class function CreateRemote(const MachineName: string): IAceptarFECredRequestTy;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TAceptarFECredRequestTy
// Help String      : 
// Default Interface: IAceptarFECredRequestTy
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TAceptarFECredRequestTyProperties= class;
{$ENDIF}
  TAceptarFECredRequestTy = class(TOleServer)
  private
    FIntf:        IAceptarFECredRequestTy;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TAceptarFECredRequestTyProperties;
    function      GetServerProperties: TAceptarFECredRequestTyProperties;
{$ENDIF}
    function      GetDefaultInterface: IAceptarFECredRequestTy;
  protected
    procedure InitServerData; override;
    function Get_tipoCancelacion: WideString;
    procedure Set_tipoCancelacion(const Value: WideString);
    function Get_importeCancelado: Double;
    procedure Set_importeCancelado(Value: Double);
    function Get_importeTotalRetPesos: Double;
    procedure Set_importeTotalRetPesos(Value: Double);
    function Get_importeEmbargoPesos: Double;
    procedure Set_importeEmbargoPesos(Value: Double);
    function Get_saldoAceptado: Double;
    procedure Set_saldoAceptado(Value: Double);
    function Get_codMoneda: WideString;
    procedure Set_codMoneda(const Value: WideString);
    function Get_cotizacionMonedaUlt: Double;
    procedure Set_cotizacionMonedaUlt(Value: Double);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IAceptarFECredRequestTy);
    procedure Disconnect; override;
    procedure idCtaCte(codCtaCte: Double);
    procedure idFactura(CuitEmisor: Double; codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double);
    procedure arrayConfirmarNotasDC(acepta: OLE_CANCELBOOL; CuitEmisor: Double; 
                                    codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double);
    procedure arrayFormasCancelacion(codigo: Integer; const descripcion: WideString);
    procedure arrayRetenciones(codTipo: Integer; Importe: Double; Porcentaje: Double; 
                               const descMotivo: WideString);
    procedure arrayAjustesOperacion(codigo: Integer; Importe: Double);
    property DefaultInterface: IAceptarFECredRequestTy read GetDefaultInterface;
    property tipoCancelacion: WideString read Get_tipoCancelacion write Set_tipoCancelacion;
    property importeCancelado: Double read Get_importeCancelado write Set_importeCancelado;
    property importeTotalRetPesos: Double read Get_importeTotalRetPesos write Set_importeTotalRetPesos;
    property importeEmbargoPesos: Double read Get_importeEmbargoPesos write Set_importeEmbargoPesos;
    property saldoAceptado: Double read Get_saldoAceptado write Set_saldoAceptado;
    property codMoneda: WideString read Get_codMoneda write Set_codMoneda;
    property cotizacionMonedaUlt: Double read Get_cotizacionMonedaUlt write Set_cotizacionMonedaUlt;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TAceptarFECredRequestTyProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TAceptarFECredRequestTy
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TAceptarFECredRequestTyProperties = class(TPersistent)
  private
    FServer:    TAceptarFECredRequestTy;
    function    GetDefaultInterface: IAceptarFECredRequestTy;
    constructor Create(AServer: TAceptarFECredRequestTy);
  protected
    function Get_tipoCancelacion: WideString;
    procedure Set_tipoCancelacion(const Value: WideString);
    function Get_importeCancelado: Double;
    procedure Set_importeCancelado(Value: Double);
    function Get_importeTotalRetPesos: Double;
    procedure Set_importeTotalRetPesos(Value: Double);
    function Get_importeEmbargoPesos: Double;
    procedure Set_importeEmbargoPesos(Value: Double);
    function Get_saldoAceptado: Double;
    procedure Set_saldoAceptado(Value: Double);
    function Get_codMoneda: WideString;
    procedure Set_codMoneda(const Value: WideString);
    function Get_cotizacionMonedaUlt: Double;
    procedure Set_cotizacionMonedaUlt(Value: Double);
  public
    property DefaultInterface: IAceptarFECredRequestTy read GetDefaultInterface;
  published
    property tipoCancelacion: WideString read Get_tipoCancelacion write Set_tipoCancelacion;
    property importeCancelado: Double read Get_importeCancelado write Set_importeCancelado;
    property importeTotalRetPesos: Double read Get_importeTotalRetPesos write Set_importeTotalRetPesos;
    property importeEmbargoPesos: Double read Get_importeEmbargoPesos write Set_importeEmbargoPesos;
    property saldoAceptado: Double read Get_saldoAceptado write Set_saldoAceptado;
    property codMoneda: WideString read Get_codMoneda write Set_codMoneda;
    property cotizacionMonedaUlt: Double read Get_cotizacionMonedaUlt write Set_cotizacionMonedaUlt;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoConsultarCmpReturnTy provides a Create and CreateRemote method to          
// create instances of the default interface IConsultarCmpReturnTy exposed by              
// the CoClass ConsultarCmpReturnTy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConsultarCmpReturnTy = class
    class function Create: IConsultarCmpReturnTy;
    class function CreateRemote(const MachineName: string): IConsultarCmpReturnTy;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TConsultarCmpReturnTy
// Help String      : 
// Default Interface: IConsultarCmpReturnTy
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TConsultarCmpReturnTyProperties= class;
{$ENDIF}
  TConsultarCmpReturnTy = class(TOleServer)
  private
    FIntf:        IConsultarCmpReturnTy;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TConsultarCmpReturnTyProperties;
    function      GetServerProperties: TConsultarCmpReturnTyProperties;
{$ENDIF}
    function      GetDefaultInterface: IConsultarCmpReturnTy;
  protected
    procedure InitServerData; override;
    function Get_arrayComprobantes(Indice: Integer): IComprobanteTy;
    function Get_arrayComprobantesCount: Integer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IConsultarCmpReturnTy);
    procedure Disconnect; override;
    property DefaultInterface: IConsultarCmpReturnTy read GetDefaultInterface;
    property arrayComprobantes[Indice: Integer]: IComprobanteTy read Get_arrayComprobantes;
    property arrayComprobantesCount: Integer read Get_arrayComprobantesCount;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TConsultarCmpReturnTyProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TConsultarCmpReturnTy
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TConsultarCmpReturnTyProperties = class(TPersistent)
  private
    FServer:    TConsultarCmpReturnTy;
    function    GetDefaultInterface: IConsultarCmpReturnTy;
    constructor Create(AServer: TConsultarCmpReturnTy);
  protected
    function Get_arrayComprobantes(Indice: Integer): IComprobanteTy;
    function Get_arrayComprobantesCount: Integer;
  public
    property DefaultInterface: IConsultarCmpReturnTy read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoComprobanteTy provides a Create and CreateRemote method to          
// create instances of the default interface IComprobanteTy exposed by              
// the CoClass ComprobanteTy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComprobanteTy = class
    class function Create: IComprobanteTy;
    class function CreateRemote(const MachineName: string): IComprobanteTy;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TComprobanteTy
// Help String      : 
// Default Interface: IComprobanteTy
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TComprobanteTyProperties= class;
{$ENDIF}
  TComprobanteTy = class(TOleServer)
  private
    FIntf:        IComprobanteTy;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TComprobanteTyProperties;
    function      GetServerProperties: TComprobanteTyProperties;
{$ENDIF}
    function      GetDefaultInterface: IComprobanteTy;
  protected
    procedure InitServerData; override;
    function Get_CuitEmisor: Double;
    function Get_razonSocialEmi: WideString;
    function Get_codTipoCmp: Integer;
    function Get_PtoVta: Integer;
    function Get_nroCmp: Double;
    function Get_cuitReceptor: Double;
    function Get_razonSocialRecep: WideString;
    function Get_tipoCodAuto: WideString;
    function Get_CodAutorizacion: Double;
    function Get_fechaEmision: WideString;
    function Get_fechaPuestaDispo: WideString;
    function Get_fechaVenPago: WideString;
    function Get_fechaVenAcep: WideString;
    function Get_importeTotal: Double;
    function Get_codMoneda: WideString;
    function Get_cotizacionMoneda: Double;
    function Get_CBUEmisor: WideString;
    function Get_AliasEmisor: WideString;
    function Get_esAnulacion: OLE_CANCELBOOL;
    function Get_esPostAceptacion: OLE_CANCELBOOL;
    function Get_idComprobanteAsociado: IIdComprobanteTy;
    function Get_referenciasComerciales: WideString;
    function Get_arraySubtotalesIVA(Indice: Integer): ISubtotalIVATy;
    function Get_arraySubtotalesIVACount: Integer;
    function Get_arrayOtrosTributos: IOtroTributoTy;
    function Get_arrayOtrosTributosCount: Integer;
    function Get_arrayItems: IItemTy;
    function Get_arrayItemsCount: Integer;
    function Get_datosGenerales: WideString;
    function Get_datosComerciales: WideString;
    function Get_leyendaComercial: WideString;
    function Get_codCtaCte: Double;
    function Get_estado_estado: WideString;
    function Get_estado_fecha: WideString;
    function Get_tipoAcep: WideString;
    function Get_fechaHoraAcep: WideString;
    function Get_arrayMotivosRechazo: IMotivoRechazoTy;
    function Get_arrayMotivosRechazoCount: Integer;
    function Get_infoAgDtpoCltv: OLE_CANCELBOOL;
    function Get_fechaInfoAgDptoCltv: WideString;
    function Get_idPagoAgDptoCltv: WideString;
    function Get_CBUdePago: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IComprobanteTy);
    procedure Disconnect; override;
    property DefaultInterface: IComprobanteTy read GetDefaultInterface;
    property CuitEmisor: Double read Get_CuitEmisor;
    property razonSocialEmi: WideString read Get_razonSocialEmi;
    property codTipoCmp: Integer read Get_codTipoCmp;
    property PtoVta: Integer read Get_PtoVta;
    property nroCmp: Double read Get_nroCmp;
    property cuitReceptor: Double read Get_cuitReceptor;
    property razonSocialRecep: WideString read Get_razonSocialRecep;
    property tipoCodAuto: WideString read Get_tipoCodAuto;
    property CodAutorizacion: Double read Get_CodAutorizacion;
    property fechaEmision: WideString read Get_fechaEmision;
    property fechaPuestaDispo: WideString read Get_fechaPuestaDispo;
    property fechaVenPago: WideString read Get_fechaVenPago;
    property fechaVenAcep: WideString read Get_fechaVenAcep;
    property importeTotal: Double read Get_importeTotal;
    property codMoneda: WideString read Get_codMoneda;
    property cotizacionMoneda: Double read Get_cotizacionMoneda;
    property CBUEmisor: WideString read Get_CBUEmisor;
    property AliasEmisor: WideString read Get_AliasEmisor;
    property esAnulacion: OLE_CANCELBOOL read Get_esAnulacion;
    property esPostAceptacion: OLE_CANCELBOOL read Get_esPostAceptacion;
    property idComprobanteAsociado: IIdComprobanteTy read Get_idComprobanteAsociado;
    property referenciasComerciales: WideString read Get_referenciasComerciales;
    property arraySubtotalesIVA[Indice: Integer]: ISubtotalIVATy read Get_arraySubtotalesIVA;
    property arraySubtotalesIVACount: Integer read Get_arraySubtotalesIVACount;
    property arrayOtrosTributos: IOtroTributoTy read Get_arrayOtrosTributos;
    property arrayOtrosTributosCount: Integer read Get_arrayOtrosTributosCount;
    property arrayItems: IItemTy read Get_arrayItems;
    property arrayItemsCount: Integer read Get_arrayItemsCount;
    property datosGenerales: WideString read Get_datosGenerales;
    property datosComerciales: WideString read Get_datosComerciales;
    property leyendaComercial: WideString read Get_leyendaComercial;
    property codCtaCte: Double read Get_codCtaCte;
    property estado_estado: WideString read Get_estado_estado;
    property estado_fecha: WideString read Get_estado_fecha;
    property tipoAcep: WideString read Get_tipoAcep;
    property fechaHoraAcep: WideString read Get_fechaHoraAcep;
    property arrayMotivosRechazo: IMotivoRechazoTy read Get_arrayMotivosRechazo;
    property arrayMotivosRechazoCount: Integer read Get_arrayMotivosRechazoCount;
    property infoAgDtpoCltv: OLE_CANCELBOOL read Get_infoAgDtpoCltv;
    property fechaInfoAgDptoCltv: WideString read Get_fechaInfoAgDptoCltv;
    property idPagoAgDptoCltv: WideString read Get_idPagoAgDptoCltv;
    property CBUdePago: WideString read Get_CBUdePago;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TComprobanteTyProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TComprobanteTy
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TComprobanteTyProperties = class(TPersistent)
  private
    FServer:    TComprobanteTy;
    function    GetDefaultInterface: IComprobanteTy;
    constructor Create(AServer: TComprobanteTy);
  protected
    function Get_CuitEmisor: Double;
    function Get_razonSocialEmi: WideString;
    function Get_codTipoCmp: Integer;
    function Get_PtoVta: Integer;
    function Get_nroCmp: Double;
    function Get_cuitReceptor: Double;
    function Get_razonSocialRecep: WideString;
    function Get_tipoCodAuto: WideString;
    function Get_CodAutorizacion: Double;
    function Get_fechaEmision: WideString;
    function Get_fechaPuestaDispo: WideString;
    function Get_fechaVenPago: WideString;
    function Get_fechaVenAcep: WideString;
    function Get_importeTotal: Double;
    function Get_codMoneda: WideString;
    function Get_cotizacionMoneda: Double;
    function Get_CBUEmisor: WideString;
    function Get_AliasEmisor: WideString;
    function Get_esAnulacion: OLE_CANCELBOOL;
    function Get_esPostAceptacion: OLE_CANCELBOOL;
    function Get_idComprobanteAsociado: IIdComprobanteTy;
    function Get_referenciasComerciales: WideString;
    function Get_arraySubtotalesIVA(Indice: Integer): ISubtotalIVATy;
    function Get_arraySubtotalesIVACount: Integer;
    function Get_arrayOtrosTributos: IOtroTributoTy;
    function Get_arrayOtrosTributosCount: Integer;
    function Get_arrayItems: IItemTy;
    function Get_arrayItemsCount: Integer;
    function Get_datosGenerales: WideString;
    function Get_datosComerciales: WideString;
    function Get_leyendaComercial: WideString;
    function Get_codCtaCte: Double;
    function Get_estado_estado: WideString;
    function Get_estado_fecha: WideString;
    function Get_tipoAcep: WideString;
    function Get_fechaHoraAcep: WideString;
    function Get_arrayMotivosRechazo: IMotivoRechazoTy;
    function Get_arrayMotivosRechazoCount: Integer;
    function Get_infoAgDtpoCltv: OLE_CANCELBOOL;
    function Get_fechaInfoAgDptoCltv: WideString;
    function Get_idPagoAgDptoCltv: WideString;
    function Get_CBUdePago: WideString;
  public
    property DefaultInterface: IComprobanteTy read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSubtotalIVATy provides a Create and CreateRemote method to          
// create instances of the default interface ISubtotalIVATy exposed by              
// the CoClass SubtotalIVATy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSubtotalIVATy = class
    class function Create: ISubtotalIVATy;
    class function CreateRemote(const MachineName: string): ISubtotalIVATy;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSubtotalIVATy
// Help String      : 
// Default Interface: ISubtotalIVATy
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSubtotalIVATyProperties= class;
{$ENDIF}
  TSubtotalIVATy = class(TOleServer)
  private
    FIntf:        ISubtotalIVATy;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSubtotalIVATyProperties;
    function      GetServerProperties: TSubtotalIVATyProperties;
{$ENDIF}
    function      GetDefaultInterface: ISubtotalIVATy;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISubtotalIVATy);
    procedure Disconnect; override;
    property DefaultInterface: ISubtotalIVATy read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSubtotalIVATyProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSubtotalIVATy
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSubtotalIVATyProperties = class(TPersistent)
  private
    FServer:    TSubtotalIVATy;
    function    GetDefaultInterface: ISubtotalIVATy;
    constructor Create(AServer: TSubtotalIVATy);
  protected
  public
    property DefaultInterface: ISubtotalIVATy read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoItemTy provides a Create and CreateRemote method to          
// create instances of the default interface IItemTy exposed by              
// the CoClass ItemTy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoItemTy = class
    class function Create: IItemTy;
    class function CreateRemote(const MachineName: string): IItemTy;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TItemTy
// Help String      : 
// Default Interface: IItemTy
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TItemTyProperties= class;
{$ENDIF}
  TItemTy = class(TOleServer)
  private
    FIntf:        IItemTy;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TItemTyProperties;
    function      GetServerProperties: TItemTyProperties;
{$ENDIF}
    function      GetDefaultInterface: IItemTy;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IItemTy);
    procedure Disconnect; override;
    property DefaultInterface: IItemTy read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TItemTyProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TItemTy
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TItemTyProperties = class(TPersistent)
  private
    FServer:    TItemTy;
    function    GetDefaultInterface: IItemTy;
    constructor Create(AServer: TItemTy);
  protected
  public
    property DefaultInterface: IItemTy read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMotivoRechazoType provides a Create and CreateRemote method to          
// create instances of the default interface IMotivoRechazoTy exposed by              
// the CoClass MotivoRechazoType. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMotivoRechazoType = class
    class function Create: IMotivoRechazoTy;
    class function CreateRemote(const MachineName: string): IMotivoRechazoTy;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMotivoRechazoType
// Help String      : 
// Default Interface: IMotivoRechazoTy
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMotivoRechazoTypeProperties= class;
{$ENDIF}
  TMotivoRechazoType = class(TOleServer)
  private
    FIntf:        IMotivoRechazoTy;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMotivoRechazoTypeProperties;
    function      GetServerProperties: TMotivoRechazoTypeProperties;
{$ENDIF}
    function      GetDefaultInterface: IMotivoRechazoTy;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMotivoRechazoTy);
    procedure Disconnect; override;
    property DefaultInterface: IMotivoRechazoTy read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMotivoRechazoTypeProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMotivoRechazoType
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMotivoRechazoTypeProperties = class(TPersistent)
  private
    FServer:    TMotivoRechazoType;
    function    GetDefaultInterface: IMotivoRechazoTy;
    constructor Create(AServer: TMotivoRechazoType);
  protected
  public
    property DefaultInterface: IMotivoRechazoTy read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoInformarFacturaAgtDptoCltvRequestTy provides a Create and CreateRemote method to          
// create instances of the default interface IInformarFacturaAgtDptoCltvRequestTy exposed by              
// the CoClass InformarFacturaAgtDptoCltvRequestTy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInformarFacturaAgtDptoCltvRequestTy = class
    class function Create: IInformarFacturaAgtDptoCltvRequestTy;
    class function CreateRemote(const MachineName: string): IInformarFacturaAgtDptoCltvRequestTy;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TInformarFacturaAgtDptoCltvRequestTy
// Help String      : 
// Default Interface: IInformarFacturaAgtDptoCltvRequestTy
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TInformarFacturaAgtDptoCltvRequestTyProperties= class;
{$ENDIF}
  TInformarFacturaAgtDptoCltvRequestTy = class(TOleServer)
  private
    FIntf:        IInformarFacturaAgtDptoCltvRequestTy;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TInformarFacturaAgtDptoCltvRequestTyProperties;
    function      GetServerProperties: TInformarFacturaAgtDptoCltvRequestTyProperties;
{$ENDIF}
    function      GetDefaultInterface: IInformarFacturaAgtDptoCltvRequestTy;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IInformarFacturaAgtDptoCltvRequestTy);
    procedure Disconnect; override;
    procedure idCtaCte(codCtaCte: Double);
    procedure idFactura(CuitEmisor: Double; codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double);
    procedure ctaComitente(cuentaDepositante: Integer; subcuentaComitente: Double; 
                           const denominacion: WideString);
    property DefaultInterface: IInformarFacturaAgtDptoCltvRequestTy read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TInformarFacturaAgtDptoCltvRequestTyProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TInformarFacturaAgtDptoCltvRequestTy
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TInformarFacturaAgtDptoCltvRequestTyProperties = class(TPersistent)
  private
    FServer:    TInformarFacturaAgtDptoCltvRequestTy;
    function    GetDefaultInterface: IInformarFacturaAgtDptoCltvRequestTy;
    constructor Create(AServer: TInformarFacturaAgtDptoCltvRequestTy);
  protected
  public
    property DefaultInterface: IInformarFacturaAgtDptoCltvRequestTy read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRechazarFECredRequestTy provides a Create and CreateRemote method to          
// create instances of the default interface IRechazarFECredRequestTy exposed by              
// the CoClass RechazarFECredRequestTy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRechazarFECredRequestTy = class
    class function Create: IRechazarFECredRequestTy;
    class function CreateRemote(const MachineName: string): IRechazarFECredRequestTy;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRechazarFECredRequestTy
// Help String      : 
// Default Interface: IRechazarFECredRequestTy
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRechazarFECredRequestTyProperties= class;
{$ENDIF}
  TRechazarFECredRequestTy = class(TOleServer)
  private
    FIntf:        IRechazarFECredRequestTy;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TRechazarFECredRequestTyProperties;
    function      GetServerProperties: TRechazarFECredRequestTyProperties;
{$ENDIF}
    function      GetDefaultInterface: IRechazarFECredRequestTy;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IRechazarFECredRequestTy);
    procedure Disconnect; override;
    procedure idCtaCte(codCtaCte: Double);
    procedure idFactura(CuitEmisor: Double; codTipoCmp: Integer; PtoVta: Integer; nroCmp: Double);
    procedure arrayMotivosRechazo(codMotivo: Integer; const descMotivo: WideString; 
                                  const justificacion: WideString);
    property DefaultInterface: IRechazarFECredRequestTy read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRechazarFECredRequestTyProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRechazarFECredRequestTy
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRechazarFECredRequestTyProperties = class(TPersistent)
  private
    FServer:    TRechazarFECredRequestTy;
    function    GetDefaultInterface: IRechazarFECredRequestTy;
    constructor Create(AServer: TRechazarFECredRequestTy);
  protected
  public
    property DefaultInterface: IRechazarFECredRequestTy read GetDefaultInterface;
  published
  end;
{$ENDIF}


resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function Cowsaa.Create: Iwsaa;
begin
  Result := CreateComObject(CLASS_wsaa) as Iwsaa;
end;

class function Cowsaa.CreateRemote(const MachineName: string): Iwsaa;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsaa) as Iwsaa;
end;

procedure Twsaa.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{33B45EE7-0219-4BE1-A9CA-2B57CA4FD209}';
    IntfIID:   '{47BE3547-1C9B-4BCA-9F4E-A65234F2C129}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure Twsaa.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as Iwsaa;
  end;
end;

procedure Twsaa.ConnectTo(svrIntf: Iwsaa);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure Twsaa.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function Twsaa.GetDefaultInterface: Iwsaa;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor Twsaa.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TwsaaProperties.Create(Self);
{$ENDIF}
end;

destructor Twsaa.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function Twsaa.GetServerProperties: TwsaaProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function Twsaa.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

function Twsaa.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

function Twsaa.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsaa.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsaa.Get_CUIT: WideString;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsaa.Set_CUIT(const Value: WideString);
  { Warning: The property CUIT has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CUIT := Value;
end;

function Twsaa.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function Twsaa.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function Twsaa.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure Twsaa.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function Twsaa.Get_ProxyUserName: WideString;
begin
    Result := DefaultInterface.ProxyUserName;
end;

procedure Twsaa.Set_ProxyUserName(const Value: WideString);
  { Warning: The property ProxyUserName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyUserName := Value;
end;

function Twsaa.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure Twsaa.Set_ProxyPassword(const Value: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := Value;
end;

function Twsaa.Get_ProxyEnabled: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ProxyEnabled;
end;

procedure Twsaa.Set_ProxyEnabled(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ProxyEnabled(Value);
end;

function Twsaa.login(const Certificado: WideString; const ClavePrivada: WideString; 
                     const URL: WideString; const Servicio: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.login(Certificado, ClavePrivada, URL, Servicio);
end;

procedure Twsaa.CargarLicencia(const Licencia: WideString);
begin
  DefaultInterface.CargarLicencia(Licencia);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TwsaaProperties.Create(AServer: Twsaa);
begin
  inherited Create;
  FServer := AServer;
end;

function TwsaaProperties.GetDefaultInterface: Iwsaa;
begin
  Result := FServer.DefaultInterface;
end;

function TwsaaProperties.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

function TwsaaProperties.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

function TwsaaProperties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function TwsaaProperties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TwsaaProperties.Get_CUIT: WideString;
begin
    Result := DefaultInterface.CUIT;
end;

procedure TwsaaProperties.Set_CUIT(const Value: WideString);
  { Warning: The property CUIT has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CUIT := Value;
end;

function TwsaaProperties.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function TwsaaProperties.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function TwsaaProperties.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure TwsaaProperties.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function TwsaaProperties.Get_ProxyUserName: WideString;
begin
    Result := DefaultInterface.ProxyUserName;
end;

procedure TwsaaProperties.Set_ProxyUserName(const Value: WideString);
  { Warning: The property ProxyUserName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyUserName := Value;
end;

function TwsaaProperties.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure TwsaaProperties.Set_ProxyPassword(const Value: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := Value;
end;

function TwsaaProperties.Get_ProxyEnabled: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ProxyEnabled;
end;

procedure TwsaaProperties.Set_ProxyEnabled(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ProxyEnabled(Value);
end;

{$ENDIF}

class function Cowsfexv1.Create: Iwsfexv1;
begin
  Result := CreateComObject(CLASS_wsfexv1) as Iwsfexv1;
end;

class function Cowsfexv1.CreateRemote(const MachineName: string): Iwsfexv1;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsfexv1) as Iwsfexv1;
end;

procedure Twsfexv1.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CBC36AD9-1D16-4590-A82C-2ED017AAAB4C}';
    IntfIID:   '{10891378-BAE5-4F40-AF39-70C54F4E8175}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure Twsfexv1.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as Iwsfexv1;
  end;
end;

procedure Twsfexv1.ConnectTo(svrIntf: Iwsfexv1);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure Twsfexv1.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function Twsfexv1.GetDefaultInterface: Iwsfexv1;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor Twsfexv1.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := Twsfexv1Properties.Create(Self);
{$ENDIF}
end;

destructor Twsfexv1.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function Twsfexv1.GetServerProperties: Twsfexv1Properties;
begin
  Result := FProps;
end;
{$ENDIF}

function Twsfexv1.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsfexv1.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsfexv1.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure Twsfexv1.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function Twsfexv1.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsfexv1.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twsfexv1.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

procedure Twsfexv1.Set_Token(const Value: WideString);
  { Warning: The property Token has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Token := Value;
end;

function Twsfexv1.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

procedure Twsfexv1.Set_Sign(const Value: WideString);
  { Warning: The property Sign has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sign := Value;
end;

function Twsfexv1.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function Twsfexv1.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function Twsfexv1.Get_SFLastCMP: Double;
begin
    Result := DefaultInterface.SFLastCMP;
end;

function Twsfexv1.Get_SFCAE: WideString;
begin
    Result := DefaultInterface.SFCAE;
end;

function Twsfexv1.Get_SFVencimiento: WideString;
begin
    Result := DefaultInterface.SFVencimiento;
end;

function Twsfexv1.Get_SFResultado: WideString;
begin
    Result := DefaultInterface.SFResultado;
end;

function Twsfexv1.Get_SFReproceso: WideString;
begin
    Result := DefaultInterface.SFReproceso;
end;

function Twsfexv1.Get_SFCmpConsultarCAE: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarCAE;
end;

function Twsfexv1.Get_SFCmpConsultarVencimiento: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarVencimiento;
end;

function Twsfexv1.Get_SFLastId: Double;
begin
    Result := DefaultInterface.SFLastId;
end;

function Twsfexv1.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure Twsfexv1.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function Twsfexv1.Get_ProxyUserName: WideString;
begin
    Result := DefaultInterface.ProxyUserName;
end;

procedure Twsfexv1.Set_ProxyUserName(const Value: WideString);
  { Warning: The property ProxyUserName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyUserName := Value;
end;

function Twsfexv1.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure Twsfexv1.Set_ProxyPassword(const Value: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := Value;
end;

function Twsfexv1.Get_ProxyEnabled: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ProxyEnabled;
end;

procedure Twsfexv1.Set_ProxyEnabled(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ProxyEnabled(Value);
end;

procedure Twsfexv1.AgregaFactura(Id: Double; const Fecha_cbte: WideString; Tipo_cbte: Integer; 
                                 Punto_vta: Integer; Cbte_nro: Double; Tipo_expo: Integer; 
                                 const Permiso_existente: WideString; Dst_cmp: Integer; 
                                 const Cliente: WideString; Cuit_pais_cliente: Double; 
                                 const Domicilio_cliente: WideString; 
                                 const Id_impositivo: WideString; const Moneda_Id: WideString; 
                                 Moneda_ctz: Double; const Obs_comerciales: WideString; 
                                 Imp_total: Double; const Obs: WideString; 
                                 const Forma_pago: WideString; const Incoterms: WideString; 
                                 const Incoterms_ds: WideString; Idioma_cbte: Integer);
begin
  DefaultInterface.AgregaFactura(Id, Fecha_cbte, Tipo_cbte, Punto_vta, Cbte_nro, Tipo_expo, 
                                 Permiso_existente, Dst_cmp, Cliente, Cuit_pais_cliente, 
                                 Domicilio_cliente, Id_impositivo, Moneda_Id, Moneda_ctz, 
                                 Obs_comerciales, Imp_total, Obs, Forma_pago, Incoterms, 
                                 Incoterms_ds, Idioma_cbte);
end;

function Twsfexv1.login(const Certificado: WideString; const ClavePrivada: WideString; 
                        const URL: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.login(Certificado, ClavePrivada, URL);
end;

function Twsfexv1.Autorizar: OLE_CANCELBOOL;
begin
  Result := DefaultInterface.Autorizar;
end;

function Twsfexv1.AutorizarRespuesta(out Cae: WideString; out Fch_venc_Cae: WideString; 
                                     out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.AutorizarRespuesta(Cae, Fch_venc_Cae, Resultado, Reproceso);
end;

function Twsfexv1.RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out Cbte_nro: Double; 
                                  out Cbte_fecha: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.RecuperaLastCMP(PtoVta, TipoComp, Cbte_nro, Cbte_fecha);
end;

procedure Twsfexv1.AgregaPermiso(const Id_permiso: WideString; Dst_merc: Integer);
begin
  DefaultInterface.AgregaPermiso(Id_permiso, Dst_merc);
end;

procedure Twsfexv1.AgregaCompAsoc(Cbte_tipo: Integer; Cbte_punto_vta: Integer; Cbte_nro: Double; 
                                  Cbte_cuit: Double);
begin
  DefaultInterface.AgregaCompAsoc(Cbte_tipo, Cbte_punto_vta, Cbte_nro, Cbte_cuit);
end;

procedure Twsfexv1.AgregaItem(const Pro_codigo: WideString; const Pro_ds: WideString; 
                              Pro_qty: Double; Pro_umed: Integer; Pro_precio_uni: Double; 
                              Pro_total_item: Double; Pro_bonificacion: Double);
begin
  DefaultInterface.AgregaItem(Pro_codigo, Pro_ds, Pro_qty, Pro_umed, Pro_precio_uni, 
                              Pro_total_item, Pro_bonificacion);
end;

function Twsfexv1.SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.SFRecuperaLastCMP(PtoVta, TipoComp);
end;

function Twsfexv1.SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.SFCmpConsultar(Tipo_cbte, Punto_vta, cbt_nro);
end;

function Twsfexv1.UltimoIdTrans(out Resultado: Double): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.UltimoIdTrans(Resultado);
end;

function Twsfexv1.AutorizarRespuestaObs: WideString;
begin
  Result := DefaultInterface.AutorizarRespuestaObs;
end;

function Twsfexv1.CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                               out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CmpConsultar(Tipo_cbte, Punto_vta, cbt_nro, Cae, Vencimiento);
end;

function Twsfexv1.SFUltimoIdTrans: OLE_CANCELBOOL;
begin
  Result := DefaultInterface.SFUltimoIdTrans;
end;

function Twsfexv1.ParamGetCotizacion(const MonId: WideString; var MonCtz: Double; 
                                     var MonFecha: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ParamGetCotizacion(MonId, MonCtz, MonFecha);
end;

procedure Twsfexv1.CargarLicencia(const Licencia: WideString);
begin
  DefaultInterface.CargarLicencia(Licencia);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor Twsfexv1Properties.Create(AServer: Twsfexv1);
begin
  inherited Create;
  FServer := AServer;
end;

function Twsfexv1Properties.GetDefaultInterface: Iwsfexv1;
begin
  Result := FServer.DefaultInterface;
end;

function Twsfexv1Properties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsfexv1Properties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsfexv1Properties.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure Twsfexv1Properties.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function Twsfexv1Properties.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsfexv1Properties.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twsfexv1Properties.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

procedure Twsfexv1Properties.Set_Token(const Value: WideString);
  { Warning: The property Token has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Token := Value;
end;

function Twsfexv1Properties.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

procedure Twsfexv1Properties.Set_Sign(const Value: WideString);
  { Warning: The property Sign has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sign := Value;
end;

function Twsfexv1Properties.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function Twsfexv1Properties.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function Twsfexv1Properties.Get_SFLastCMP: Double;
begin
    Result := DefaultInterface.SFLastCMP;
end;

function Twsfexv1Properties.Get_SFCAE: WideString;
begin
    Result := DefaultInterface.SFCAE;
end;

function Twsfexv1Properties.Get_SFVencimiento: WideString;
begin
    Result := DefaultInterface.SFVencimiento;
end;

function Twsfexv1Properties.Get_SFResultado: WideString;
begin
    Result := DefaultInterface.SFResultado;
end;

function Twsfexv1Properties.Get_SFReproceso: WideString;
begin
    Result := DefaultInterface.SFReproceso;
end;

function Twsfexv1Properties.Get_SFCmpConsultarCAE: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarCAE;
end;

function Twsfexv1Properties.Get_SFCmpConsultarVencimiento: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarVencimiento;
end;

function Twsfexv1Properties.Get_SFLastId: Double;
begin
    Result := DefaultInterface.SFLastId;
end;

function Twsfexv1Properties.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure Twsfexv1Properties.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function Twsfexv1Properties.Get_ProxyUserName: WideString;
begin
    Result := DefaultInterface.ProxyUserName;
end;

procedure Twsfexv1Properties.Set_ProxyUserName(const Value: WideString);
  { Warning: The property ProxyUserName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyUserName := Value;
end;

function Twsfexv1Properties.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure Twsfexv1Properties.Set_ProxyPassword(const Value: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := Value;
end;

function Twsfexv1Properties.Get_ProxyEnabled: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ProxyEnabled;
end;

procedure Twsfexv1Properties.Set_ProxyEnabled(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ProxyEnabled(Value);
end;

{$ENDIF}

class function Cowsfev1.Create: Iwsfev1;
begin
  Result := CreateComObject(CLASS_wsfev1) as Iwsfev1;
end;

class function Cowsfev1.CreateRemote(const MachineName: string): Iwsfev1;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsfev1) as Iwsfev1;
end;

procedure Twsfev1.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6804CFD5-32DD-43AE-A463-CB64FCBE32D2}';
    IntfIID:   '{E0A95BBC-E328-4AA6-84E2-405C10AD41A2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure Twsfev1.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as Iwsfev1;
  end;
end;

procedure Twsfev1.ConnectTo(svrIntf: Iwsfev1);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure Twsfev1.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function Twsfev1.GetDefaultInterface: Iwsfev1;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor Twsfev1.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := Twsfev1Properties.Create(Self);
{$ENDIF}
end;

destructor Twsfev1.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function Twsfev1.GetServerProperties: Twsfev1Properties;
begin
  Result := FProps;
end;
{$ENDIF}

function Twsfev1.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsfev1.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsfev1.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure Twsfev1.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function Twsfev1.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsfev1.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twsfev1.Get_AutorizarRespCount: Integer;
begin
    Result := DefaultInterface.AutorizarRespCount;
end;

function Twsfev1.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function Twsfev1.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function Twsfev1.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

procedure Twsfev1.Set_Token(const Value: WideString);
  { Warning: The property Token has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Token := Value;
end;

function Twsfev1.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

procedure Twsfev1.Set_Sign(const Value: WideString);
  { Warning: The property Sign has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sign := Value;
end;

function Twsfev1.Get_SFLastCMP: Double;
begin
    Result := DefaultInterface.SFLastCMP;
end;

function Twsfev1.Get_SFCAE(Indice: Integer): WideString;
begin
    Result := DefaultInterface.SFCAE[Indice];
end;

function Twsfev1.Get_SFVencimiento(Indice: Integer): WideString;
begin
    Result := DefaultInterface.SFVencimiento[Indice];
end;

function Twsfev1.Get_SFResultado(Indice: Integer): WideString;
begin
    Result := DefaultInterface.SFResultado[Indice];
end;

function Twsfev1.Get_SFCmpConsultarCAE: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarCAE;
end;

function Twsfev1.Get_SFCmpConsultarVencimiento: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarVencimiento;
end;

function Twsfev1.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure Twsfev1.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function Twsfev1.Get_ProxyUserName: WideString;
begin
    Result := DefaultInterface.ProxyUserName;
end;

procedure Twsfev1.Set_ProxyUserName(const Value: WideString);
  { Warning: The property ProxyUserName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyUserName := Value;
end;

function Twsfev1.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure Twsfev1.Set_ProxyPassword(const Value: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := Value;
end;

function Twsfev1.Get_ProxyEnabled: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ProxyEnabled;
end;

procedure Twsfev1.Set_ProxyEnabled(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ProxyEnabled(Value);
end;

function Twsfev1.Get_CmpConsultarCbte: IComprobante;
begin
    Result := DefaultInterface.CmpConsultarCbte;
end;

function Twsfev1.Get_Depurar: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.Depurar;
end;

procedure Twsfev1.Set_Depurar(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_Depurar(Value);
end;

function Twsfev1.Get_Path: WideString;
begin
    Result := DefaultInterface.Path;
end;

procedure Twsfev1.AgregaFactura(Concepto: Integer; DocTipo: Integer; DocNro: Double; 
                                Cbtedesde: Double; Cbtehasta: Double; const CbteFch: WideString; 
                                Imptotal: Double; ImpTotalConc: Double; ImpNeto: Double; 
                                ImpOpEx: Double; const FechaServDesde: WideString; 
                                const FechaServHasta: WideString; const FechaVencPago: WideString; 
                                const MonId: WideString; MonCotiz: Double);
begin
  DefaultInterface.AgregaFactura(Concepto, DocTipo, DocNro, Cbtedesde, Cbtehasta, CbteFch, 
                                 Imptotal, ImpTotalConc, ImpNeto, ImpOpEx, FechaServDesde, 
                                 FechaServHasta, FechaVencPago, MonId, MonCotiz);
end;

function Twsfev1.login(const Certificado: WideString; const ClavePrivada: WideString; 
                       const URL: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.login(Certificado, ClavePrivada, URL);
end;

function Twsfev1.Autorizar(ptoVenta: Integer; CbteTipo: Integer): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.Autorizar(ptoVenta, CbteTipo);
end;

procedure Twsfev1.Reset;
begin
  DefaultInterface.Reset;
end;

function Twsfev1.AutorizarRespuesta(Indice: Integer; out Cae: WideString; 
                                    out Vencimiento: WideString; out Resultado: WideString; 
                                    out Reproceso: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.AutorizarRespuesta(Indice, Cae, Vencimiento, Resultado, Reproceso);
end;

function Twsfev1.RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out cmp: Double): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.RecuperaLastCMP(PtoVta, TipoComp, cmp);
end;

function Twsfev1.RecuperaQTYRequest(qty: Integer): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.RecuperaQTYRequest(qty);
end;

function Twsfev1.CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                              out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CmpConsultar(Tipo_cbte, Punto_vta, cbt_nro, Cae, Vencimiento);
end;

function Twsfev1.Dummy(out appserver: WideString; out authserver: WideString; 
                       out dbserver: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.Dummy(appserver, authserver, dbserver);
end;

function Twsfev1.CAEASolicitar(Periodo: Integer; Orden: Integer; out Cae: WideString; 
                               out FchVigDesde: WideString; out FchVigHasta: WideString; 
                               out FchTopeInf: WideString; out FchProceso: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CAEASolicitar(Periodo, Orden, Cae, FchVigDesde, FchVigHasta, 
                                           FchTopeInf, FchProceso);
end;

function Twsfev1.AutorizarRespuestaObs(Indice: Integer): WideString;
begin
  Result := DefaultInterface.AutorizarRespuestaObs(Indice);
end;

function Twsfev1.CAEAConsultar(Periodo: Integer; Orden: Integer; out Cae: WideString; 
                               out FchVigDesde: WideString; out FchVigHasta: WideString; 
                               out FchTopeInf: WideString; out FchProceso: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CAEAConsultar(Periodo, Orden, Cae, FchVigDesde, FchVigHasta, 
                                           FchTopeInf, FchProceso);
end;

function Twsfev1.CAEASinMovimientoInformar(PtoVta: Integer; const CAEA: WideString; 
                                           out Resultado: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CAEASinMovimientoInformar(PtoVta, CAEA, Resultado);
end;

function Twsfev1.CAEASinMovimientoConsultar(PtoVta: Integer; const CAEA: WideString; 
                                            out Resultado: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CAEASinMovimientoConsultar(PtoVta, CAEA, Resultado);
end;

function Twsfev1.ParamGetCotizacion(const MonId: WideString; out MonCotiz: Double; 
                                    out FchCotiz: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ParamGetCotizacion(MonId, MonCotiz, FchCotiz);
end;

function Twsfev1.ParamGetTiposConcepto(out Resultado: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ParamGetTiposConcepto(Resultado);
end;

procedure Twsfev1.AgregaTributo(Id: Integer; const Desc: WideString; BaseImp: Double; Alic: Double; 
                                Importe: Double);
begin
  DefaultInterface.AgregaTributo(Id, Desc, BaseImp, Alic, Importe);
end;

procedure Twsfev1.AgregaIVA(Id: Integer; BaseImp: Double; Importe: Double);
begin
  DefaultInterface.AgregaIVA(Id, BaseImp, Importe);
end;

procedure Twsfev1.AgregaCompAsoc(Tipo: Integer; PtoVta: Integer; Nro: Double; CUIT: Double; 
                                 const CbteFch: WideString);
begin
  DefaultInterface.AgregaCompAsoc(Tipo, PtoVta, Nro, CUIT, CbteFch);
end;

procedure Twsfev1.AgregaOpcional(const Id: WideString; const Valor: WideString);
begin
  DefaultInterface.AgregaOpcional(Id, Valor);
end;

function Twsfev1.ParamGetTiposMonedas(out Resultado: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ParamGetTiposMonedas(Resultado);
end;

function Twsfev1.SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.SFRecuperaLastCMP(PtoVta, TipoComp);
end;

function Twsfev1.SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.SFCmpConsultar(Tipo_cbte, Punto_vta, cbt_nro);
end;

function Twsfev1.CAEAInformar(ptoVenta: Integer; CbteTipo: Integer; const Cae: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CAEAInformar(ptoVenta, CbteTipo, Cae);
end;

function Twsfev1.AutorizarRespuestaObsCode(Indice: Integer): WideString;
begin
  Result := DefaultInterface.AutorizarRespuestaObsCode(Indice);
end;

function Twsfev1.ParamGetTiposDoc(out Resultado: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ParamGetTiposDoc(Resultado);
end;

function Twsfev1.ParamGetTiposCbte(out Resultado: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ParamGetTiposCbte(Resultado);
end;

procedure Twsfev1.LogTransaction(const RequestFilename: WideString; 
                                 const ResponseFilename: WideString);
begin
  DefaultInterface.LogTransaction(RequestFilename, ResponseFilename);
end;

function Twsfev1.CmpConsultarEx(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                                const cbte_info_result: IComprobante): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CmpConsultarEx(Tipo_cbte, Punto_vta, cbt_nro, cbte_info_result);
end;

procedure Twsfev1.AgregaComprador(DocTipo: Integer; DocNro: Double; Porcentaje: Double);
begin
  DefaultInterface.AgregaComprador(DocTipo, DocNro, Porcentaje);
end;

procedure Twsfev1.CargarLicencia(const Licencia: WideString);
begin
  DefaultInterface.CargarLicencia(Licencia);
end;

function Twsfev1.ParamGetPtosVenta(out Resultado: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ParamGetPtosVenta(Resultado);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor Twsfev1Properties.Create(AServer: Twsfev1);
begin
  inherited Create;
  FServer := AServer;
end;

function Twsfev1Properties.GetDefaultInterface: Iwsfev1;
begin
  Result := FServer.DefaultInterface;
end;

function Twsfev1Properties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsfev1Properties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsfev1Properties.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure Twsfev1Properties.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function Twsfev1Properties.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsfev1Properties.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twsfev1Properties.Get_AutorizarRespCount: Integer;
begin
    Result := DefaultInterface.AutorizarRespCount;
end;

function Twsfev1Properties.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function Twsfev1Properties.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function Twsfev1Properties.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

procedure Twsfev1Properties.Set_Token(const Value: WideString);
  { Warning: The property Token has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Token := Value;
end;

function Twsfev1Properties.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

procedure Twsfev1Properties.Set_Sign(const Value: WideString);
  { Warning: The property Sign has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sign := Value;
end;

function Twsfev1Properties.Get_SFLastCMP: Double;
begin
    Result := DefaultInterface.SFLastCMP;
end;

function Twsfev1Properties.Get_SFCAE(Indice: Integer): WideString;
begin
    Result := DefaultInterface.SFCAE[Indice];
end;

function Twsfev1Properties.Get_SFVencimiento(Indice: Integer): WideString;
begin
    Result := DefaultInterface.SFVencimiento[Indice];
end;

function Twsfev1Properties.Get_SFResultado(Indice: Integer): WideString;
begin
    Result := DefaultInterface.SFResultado[Indice];
end;

function Twsfev1Properties.Get_SFCmpConsultarCAE: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarCAE;
end;

function Twsfev1Properties.Get_SFCmpConsultarVencimiento: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarVencimiento;
end;

function Twsfev1Properties.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure Twsfev1Properties.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function Twsfev1Properties.Get_ProxyUserName: WideString;
begin
    Result := DefaultInterface.ProxyUserName;
end;

procedure Twsfev1Properties.Set_ProxyUserName(const Value: WideString);
  { Warning: The property ProxyUserName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyUserName := Value;
end;

function Twsfev1Properties.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure Twsfev1Properties.Set_ProxyPassword(const Value: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := Value;
end;

function Twsfev1Properties.Get_ProxyEnabled: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ProxyEnabled;
end;

procedure Twsfev1Properties.Set_ProxyEnabled(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ProxyEnabled(Value);
end;

function Twsfev1Properties.Get_CmpConsultarCbte: IComprobante;
begin
    Result := DefaultInterface.CmpConsultarCbte;
end;

function Twsfev1Properties.Get_Depurar: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.Depurar;
end;

procedure Twsfev1Properties.Set_Depurar(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_Depurar(Value);
end;

function Twsfev1Properties.Get_Path: WideString;
begin
    Result := DefaultInterface.Path;
end;

{$ENDIF}

class function Cowsbfev1.Create: Iwsbfev1;
begin
  Result := CreateComObject(CLASS_wsbfev1) as Iwsbfev1;
end;

class function Cowsbfev1.CreateRemote(const MachineName: string): Iwsbfev1;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsbfev1) as Iwsbfev1;
end;

procedure Twsbfev1.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2E472E22-AD8A-4071-8C62-D2D9B8CE47D3}';
    IntfIID:   '{A5C9683D-3D72-4392-AD49-A4DFB83D8C63}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure Twsbfev1.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as Iwsbfev1;
  end;
end;

procedure Twsbfev1.ConnectTo(svrIntf: Iwsbfev1);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure Twsbfev1.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function Twsbfev1.GetDefaultInterface: Iwsbfev1;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor Twsbfev1.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := Twsbfev1Properties.Create(Self);
{$ENDIF}
end;

destructor Twsbfev1.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function Twsbfev1.GetServerProperties: Twsbfev1Properties;
begin
  Result := FProps;
end;
{$ENDIF}

function Twsbfev1.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsbfev1.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twsbfev1.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure Twsbfev1.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function Twsbfev1.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

procedure Twsbfev1.Set_Token(const Value: WideString);
  { Warning: The property Token has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Token := Value;
end;

function Twsbfev1.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

procedure Twsbfev1.Set_Sign(const Value: WideString);
  { Warning: The property Sign has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sign := Value;
end;

function Twsbfev1.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsbfev1.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsbfev1.Get_SFLastCMP: Double;
begin
    Result := DefaultInterface.SFLastCMP;
end;

function Twsbfev1.Get_SFLastFecha: WideString;
begin
    Result := DefaultInterface.SFLastFecha;
end;

function Twsbfev1.Get_SFLastId: Double;
begin
    Result := DefaultInterface.SFLastId;
end;

function Twsbfev1.Get_SFCAE: WideString;
begin
    Result := DefaultInterface.SFCAE;
end;

function Twsbfev1.Get_SFVencimiento: WideString;
begin
    Result := DefaultInterface.SFVencimiento;
end;

function Twsbfev1.Get_SFResultado: WideString;
begin
    Result := DefaultInterface.SFResultado;
end;

function Twsbfev1.Get_SFReproceso: WideString;
begin
    Result := DefaultInterface.SFReproceso;
end;

function Twsbfev1.Get_SFCmpConsultarCAE: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarCAE;
end;

function Twsbfev1.Get_SFCmpConsultarVencimiento: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarVencimiento;
end;

function Twsbfev1.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function Twsbfev1.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function Twsbfev1.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure Twsbfev1.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function Twsbfev1.Get_ProxyUserName: WideString;
begin
    Result := DefaultInterface.ProxyUserName;
end;

procedure Twsbfev1.Set_ProxyUserName(const Value: WideString);
  { Warning: The property ProxyUserName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyUserName := Value;
end;

function Twsbfev1.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure Twsbfev1.Set_ProxyPassword(const Value: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := Value;
end;

function Twsbfev1.Get_ProxyEnabled: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ProxyEnabled;
end;

procedure Twsbfev1.Set_ProxyEnabled(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ProxyEnabled(Value);
end;

procedure Twsbfev1.AgregaFactura(Id: Double; tipo_doc: Integer; nro_doc: Double; Zona: Integer; 
                                 Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                                 Imp_total: Double; imp_tot_conc: Double; imp_neto: Double; 
                                 impto_liq: Double; impto_liq_rni: Double; imp_op_ex: Double; 
                                 Imp_perc: Double; Imp_iibb: Double; Imp_perc_mun: Double; 
                                 Imp_internos: Double; const Imp_moneda_Id: WideString; 
                                 Imp_moneda_ctz: Double; const Fecha_cbte: WideString);
begin
  DefaultInterface.AgregaFactura(Id, tipo_doc, nro_doc, Zona, Tipo_cbte, Punto_vta, cbt_nro, 
                                 Imp_total, imp_tot_conc, imp_neto, impto_liq, impto_liq_rni, 
                                 imp_op_ex, Imp_perc, Imp_iibb, Imp_perc_mun, Imp_internos, 
                                 Imp_moneda_Id, Imp_moneda_ctz, Fecha_cbte);
end;

procedure Twsbfev1.AgregaOpcional(const Id: WideString; const Valor: WideString);
begin
  DefaultInterface.AgregaOpcional(Id, Valor);
end;

procedure Twsbfev1.AgregaItem(const Pro_codigo_ncm: WideString; const Pro_codigo_sec: WideString; 
                              const Pro_ds: WideString; Pro_qty: Double; Pro_umed: Integer; 
                              Pro_precio_uni: Double; Imp_bonif: Double; Imp_total: Double; 
                              Iva_id: Integer);
begin
  DefaultInterface.AgregaItem(Pro_codigo_ncm, Pro_codigo_sec, Pro_ds, Pro_qty, Pro_umed, 
                              Pro_precio_uni, Imp_bonif, Imp_total, Iva_id);
end;

function Twsbfev1.Autorizar: OLE_CANCELBOOL;
begin
  Result := DefaultInterface.Autorizar;
end;

function Twsbfev1.login(const Certificado: WideString; const ClavePrivada: WideString; 
                        const URL: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.login(Certificado, ClavePrivada, URL);
end;

procedure Twsbfev1.Reset;
begin
  DefaultInterface.Reset;
end;

function Twsbfev1.RecuperaLastCMP(Pto_venta: Integer; Tipo_cbte: Integer; out Cbte_nro: Double; 
                                  out Cbte_fecha: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.RecuperaLastCMP(Pto_venta, Tipo_cbte, Cbte_nro, Cbte_fecha);
end;

function Twsbfev1.SFRecuperaLastCMP(Pto_venta: Integer; Tipo_cbte: Integer): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.SFRecuperaLastCMP(Pto_venta, Tipo_cbte);
end;

function Twsbfev1.RecuperaLastID(out Id: Double): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.RecuperaLastID(Id);
end;

function Twsbfev1.SFRecuperaLastID: OLE_CANCELBOOL;
begin
  Result := DefaultInterface.SFRecuperaLastID;
end;

function Twsbfev1.AutorizarRespuesta(out Cae: WideString; out Vencimiento: WideString; 
                                     out Resultado: WideString; out Reproceso: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.AutorizarRespuesta(Cae, Vencimiento, Resultado, Reproceso);
end;

function Twsbfev1.AutorizarRespuestaObs: WideString;
begin
  Result := DefaultInterface.AutorizarRespuestaObs;
end;

function Twsbfev1.CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                               out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CmpConsultar(Tipo_cbte, Punto_vta, cbt_nro, Cae, Vencimiento);
end;

function Twsbfev1.SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; Cbte_nro: Double): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.SFCmpConsultar(Tipo_cbte, Punto_vta, Cbte_nro);
end;

function Twsbfev1.ParamGetZonas(out Zonas: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ParamGetZonas(Zonas);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor Twsbfev1Properties.Create(AServer: Twsbfev1);
begin
  inherited Create;
  FServer := AServer;
end;

function Twsbfev1Properties.GetDefaultInterface: Iwsbfev1;
begin
  Result := FServer.DefaultInterface;
end;

function Twsbfev1Properties.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsbfev1Properties.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twsbfev1Properties.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure Twsbfev1Properties.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function Twsbfev1Properties.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

procedure Twsbfev1Properties.Set_Token(const Value: WideString);
  { Warning: The property Token has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Token := Value;
end;

function Twsbfev1Properties.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

procedure Twsbfev1Properties.Set_Sign(const Value: WideString);
  { Warning: The property Sign has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sign := Value;
end;

function Twsbfev1Properties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsbfev1Properties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsbfev1Properties.Get_SFLastCMP: Double;
begin
    Result := DefaultInterface.SFLastCMP;
end;

function Twsbfev1Properties.Get_SFLastFecha: WideString;
begin
    Result := DefaultInterface.SFLastFecha;
end;

function Twsbfev1Properties.Get_SFLastId: Double;
begin
    Result := DefaultInterface.SFLastId;
end;

function Twsbfev1Properties.Get_SFCAE: WideString;
begin
    Result := DefaultInterface.SFCAE;
end;

function Twsbfev1Properties.Get_SFVencimiento: WideString;
begin
    Result := DefaultInterface.SFVencimiento;
end;

function Twsbfev1Properties.Get_SFResultado: WideString;
begin
    Result := DefaultInterface.SFResultado;
end;

function Twsbfev1Properties.Get_SFReproceso: WideString;
begin
    Result := DefaultInterface.SFReproceso;
end;

function Twsbfev1Properties.Get_SFCmpConsultarCAE: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarCAE;
end;

function Twsbfev1Properties.Get_SFCmpConsultarVencimiento: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarVencimiento;
end;

function Twsbfev1Properties.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function Twsbfev1Properties.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function Twsbfev1Properties.Get_Proxy: WideString;
begin
    Result := DefaultInterface.Proxy;
end;

procedure Twsbfev1Properties.Set_Proxy(const Value: WideString);
  { Warning: The property Proxy has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Proxy := Value;
end;

function Twsbfev1Properties.Get_ProxyUserName: WideString;
begin
    Result := DefaultInterface.ProxyUserName;
end;

procedure Twsbfev1Properties.Set_ProxyUserName(const Value: WideString);
  { Warning: The property ProxyUserName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyUserName := Value;
end;

function Twsbfev1Properties.Get_ProxyPassword: WideString;
begin
    Result := DefaultInterface.ProxyPassword;
end;

procedure Twsbfev1Properties.Set_ProxyPassword(const Value: WideString);
  { Warning: The property ProxyPassword has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ProxyPassword := Value;
end;

function Twsbfev1Properties.Get_ProxyEnabled: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ProxyEnabled;
end;

procedure Twsbfev1Properties.Set_ProxyEnabled(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ProxyEnabled(Value);
end;

{$ENDIF}

class function Cowsmtxca.Create: Iwsmtxca;
begin
  Result := CreateComObject(CLASS_wsmtxca) as Iwsmtxca;
end;

class function Cowsmtxca.CreateRemote(const MachineName: string): Iwsmtxca;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsmtxca) as Iwsmtxca;
end;

procedure Twsmtxca.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C3DD12A3-EAA2-4F45-8F5D-4A25CBD19838}';
    IntfIID:   '{C297BD2B-A528-446B-BF55-FAF195383E0E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure Twsmtxca.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as Iwsmtxca;
  end;
end;

procedure Twsmtxca.ConnectTo(svrIntf: Iwsmtxca);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure Twsmtxca.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function Twsmtxca.GetDefaultInterface: Iwsmtxca;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor Twsmtxca.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TwsmtxcaProperties.Create(Self);
{$ENDIF}
end;

destructor Twsmtxca.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function Twsmtxca.GetServerProperties: TwsmtxcaProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function Twsmtxca.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsmtxca.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsmtxca.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure Twsmtxca.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function Twsmtxca.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsmtxca.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twsmtxca.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

procedure Twsmtxca.Set_Token(const Value: WideString);
  { Warning: The property Token has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Token := Value;
end;

function Twsmtxca.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

procedure Twsmtxca.Set_Sign(const Value: WideString);
  { Warning: The property Sign has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sign := Value;
end;

function Twsmtxca.Get_SFCmpConsultarCAE: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarCAE;
end;

function Twsmtxca.Get_SFCmpConsultarVencimiento: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarVencimiento;
end;

function Twsmtxca.Get_SFLastCMP: Double;
begin
    Result := DefaultInterface.SFLastCMP;
end;

function Twsmtxca.Get_SFCAE: WideString;
begin
    Result := DefaultInterface.SFCAE;
end;

function Twsmtxca.Get_SFVencimiento: WideString;
begin
    Result := DefaultInterface.SFVencimiento;
end;

function Twsmtxca.Get_SFResultado: WideString;
begin
    Result := DefaultInterface.SFResultado;
end;

function Twsmtxca.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function Twsmtxca.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

procedure Twsmtxca.AgregaFactura(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                                 numeroComprobante: Double; const fechaEmision: WideString; 
                                 codigoTipoDocumento: Integer; numeroDocumento: Double; 
                                 importeGravado: Double; importeNoGravado: Double; 
                                 importeExento: Double; importeSubtotal: Double; 
                                 importeOtrosTributos: Double; importeTotal: Double; 
                                 const codigoMoneda: WideString; cotizacionMoneda: Double; 
                                 const observaciones: WideString; codigoConcepto: Integer; 
                                 const fechaServicioDesde: WideString; 
                                 const fechaServicioHasta: WideString; 
                                 const fechaVencimientoPago: WideString);
begin
  DefaultInterface.AgregaFactura(codigoTipoComprobante, numeroPuntoVenta, numeroComprobante, 
                                 fechaEmision, codigoTipoDocumento, numeroDocumento, 
                                 importeGravado, importeNoGravado, importeExento, importeSubtotal, 
                                 importeOtrosTributos, importeTotal, codigoMoneda, 
                                 cotizacionMoneda, observaciones, codigoConcepto, 
                                 fechaServicioDesde, fechaServicioHasta, fechaVencimientoPago);
end;

function Twsmtxca.login(const Certificado: WideString; const ClavePrivada: WideString; 
                        const URL: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.login(Certificado, ClavePrivada, URL);
end;

procedure Twsmtxca.AgregaTributo(Id: Integer; const Desc: WideString; BaseImp: Double; 
                                 Importe: Double);
begin
  DefaultInterface.AgregaTributo(Id, Desc, BaseImp, Importe);
end;

procedure Twsmtxca.AgregaIVA(codigo: Integer; Importe: Double);
begin
  DefaultInterface.AgregaIVA(codigo, Importe);
end;

procedure Twsmtxca.AgregaCompAsoc(Tipo: Integer; PtoVta: Integer; Nro: Double);
begin
  DefaultInterface.AgregaCompAsoc(Tipo, PtoVta, Nro);
end;

procedure Twsmtxca.AgregaItem(unidadesMtx: Integer; const codigoMtx: WideString; 
                              const codigo: WideString; const descripcion: WideString; 
                              cantidad: Double; codigoUnidadMedida: Integer; 
                              precioUnitario: Double; importeBonificacion: Double; 
                              codigoCondicionIVA: Integer; importeIVA: Double; importeItem: Double);
begin
  DefaultInterface.AgregaItem(unidadesMtx, codigoMtx, codigo, descripcion, cantidad, 
                              codigoUnidadMedida, precioUnitario, importeBonificacion, 
                              codigoCondicionIVA, importeIVA, importeItem);
end;

function Twsmtxca.Autorizar: OLE_CANCELBOOL;
begin
  Result := DefaultInterface.Autorizar;
end;

function Twsmtxca.AutorizarRespuesta(out Cae: WideString; out Vencimiento: WideString; 
                                     out Resultado: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.AutorizarRespuesta(Cae, Vencimiento, Resultado);
end;

function Twsmtxca.RecuperaLastCMP(PtoVta: Integer; TipoComp: Integer; out cmp: Double): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.RecuperaLastCMP(PtoVta, TipoComp, cmp);
end;

function Twsmtxca.AutorizarRespuestaObs: WideString;
begin
  Result := DefaultInterface.AutorizarRespuestaObs;
end;

function Twsmtxca.SFCmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.SFCmpConsultar(Tipo_cbte, Punto_vta, cbt_nro);
end;

function Twsmtxca.SFRecuperaLastCMP(PtoVta: Integer; TipoComp: Integer): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.SFRecuperaLastCMP(PtoVta, TipoComp);
end;

function Twsmtxca.CmpConsultar(Tipo_cbte: Integer; Punto_vta: Integer; cbt_nro: Double; 
                               out Cae: WideString; out Vencimiento: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CmpConsultar(Tipo_cbte, Punto_vta, cbt_nro, Cae, Vencimiento);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TwsmtxcaProperties.Create(AServer: Twsmtxca);
begin
  inherited Create;
  FServer := AServer;
end;

function TwsmtxcaProperties.GetDefaultInterface: Iwsmtxca;
begin
  Result := FServer.DefaultInterface;
end;

function TwsmtxcaProperties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function TwsmtxcaProperties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TwsmtxcaProperties.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TwsmtxcaProperties.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function TwsmtxcaProperties.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure TwsmtxcaProperties.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function TwsmtxcaProperties.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

procedure TwsmtxcaProperties.Set_Token(const Value: WideString);
  { Warning: The property Token has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Token := Value;
end;

function TwsmtxcaProperties.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

procedure TwsmtxcaProperties.Set_Sign(const Value: WideString);
  { Warning: The property Sign has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sign := Value;
end;

function TwsmtxcaProperties.Get_SFCmpConsultarCAE: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarCAE;
end;

function TwsmtxcaProperties.Get_SFCmpConsultarVencimiento: WideString;
begin
    Result := DefaultInterface.SFCmpConsultarVencimiento;
end;

function TwsmtxcaProperties.Get_SFLastCMP: Double;
begin
    Result := DefaultInterface.SFLastCMP;
end;

function TwsmtxcaProperties.Get_SFCAE: WideString;
begin
    Result := DefaultInterface.SFCAE;
end;

function TwsmtxcaProperties.Get_SFVencimiento: WideString;
begin
    Result := DefaultInterface.SFVencimiento;
end;

function TwsmtxcaProperties.Get_SFResultado: WideString;
begin
    Result := DefaultInterface.SFResultado;
end;

function TwsmtxcaProperties.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function TwsmtxcaProperties.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

{$ENDIF}

class function Cowsseg.Create: Iwsseg;
begin
  Result := CreateComObject(CLASS_wsseg) as Iwsseg;
end;

class function Cowsseg.CreateRemote(const MachineName: string): Iwsseg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsseg) as Iwsseg;
end;

procedure Twsseg.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5B4092EF-B311-4CDD-A9F8-61A0AEC7E54C}';
    IntfIID:   '{B1E85685-67E8-4B99-B8B6-85A6138E4DD0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure Twsseg.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as Iwsseg;
  end;
end;

procedure Twsseg.ConnectTo(svrIntf: Iwsseg);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure Twsseg.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function Twsseg.GetDefaultInterface: Iwsseg;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor Twsseg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TwssegProperties.Create(Self);
{$ENDIF}
end;

destructor Twsseg.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function Twsseg.GetServerProperties: TwssegProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function Twsseg.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsseg.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsseg.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure Twsseg.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function Twsseg.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsseg.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twsseg.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function Twsseg.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function Twsseg.Get_RespuestaAutorizarCAE: WideString;
begin
    Result := DefaultInterface.RespuestaAutorizarCAE;
end;

function Twsseg.Get_RespuestaAutorizarVencimiento: WideString;
begin
    Result := DefaultInterface.RespuestaAutorizarVencimiento;
end;

function Twsseg.Get_RespuestaAutorizarResultado: WideString;
begin
    Result := DefaultInterface.RespuestaAutorizarResultado;
end;

function Twsseg.Get_RespuestaAutorizarReproceso: WideString;
begin
    Result := DefaultInterface.RespuestaAutorizarReproceso;
end;

function Twsseg.Get_RespuestaGetLast_CMPNro: Integer;
begin
    Result := DefaultInterface.RespuestaGetLast_CMPNro;
end;

function Twsseg.Get_RespuestaGetLast_CMPFecha: WideString;
begin
    Result := DefaultInterface.RespuestaGetLast_CMPFecha;
end;

function Twsseg.Get_RespuestaGetLast_IDId: Integer;
begin
    Result := DefaultInterface.RespuestaGetLast_IDId;
end;

function Twsseg.Get_RespuestaAutorizarObs: WideString;
begin
    Result := DefaultInterface.RespuestaAutorizarObs;
end;

function Twsseg.login(const Certificado: WideString; const ClavePrivada: WideString; 
                      const URL: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.login(Certificado, ClavePrivada, URL);
end;

procedure Twsseg.AgregaFactura(Id: Integer; tipo_doc: Integer; nro_doc: Double; Tipo_cbte: Integer; 
                               Punto_vta: Integer; Cbte_nro: Integer; Imp_total: Double; 
                               imp_tot_conc: Double; imp_neto: Double; impto_liq: Double; 
                               impto_liq_rni: Double; imp_op_ex: Double; Imp_perc: Double; 
                               Imp_iibb: Double; Imp_perc_mun: Double; Imp_internos: Double; 
                               const Imp_moneda_Id: WideString; Imp_moneda_ctz: Double; 
                               Imp_otrib_prov: Double; const Fecha_cbte: WideString);
begin
  DefaultInterface.AgregaFactura(Id, tipo_doc, nro_doc, Tipo_cbte, Punto_vta, Cbte_nro, Imp_total, 
                                 imp_tot_conc, imp_neto, impto_liq, impto_liq_rni, imp_op_ex, 
                                 Imp_perc, Imp_iibb, Imp_perc_mun, Imp_internos, Imp_moneda_Id, 
                                 Imp_moneda_ctz, Imp_otrib_prov, Fecha_cbte);
end;

procedure Twsseg.AgregaItem(const Poliza: WideString; const Endoso: WideString; 
                            const Ds: WideString; qty: Double; Precio_uni: Double; 
                            Imp_bonif: Double; Imp_total: Double; Imp_valor_aseg: Double; 
                            const Imp_moneda_vaseg: WideString; Iva_id: Integer);
begin
  DefaultInterface.AgregaItem(Poliza, Endoso, Ds, qty, Precio_uni, Imp_bonif, Imp_total, 
                              Imp_valor_aseg, Imp_moneda_vaseg, Iva_id);
end;

function Twsseg.Autorizar: OLE_CANCELBOOL;
begin
  Result := DefaultInterface.Autorizar;
end;

function Twsseg.GetLast_CMP(Pto_venta: Integer; Tipo_cbte: Integer): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.GetLast_CMP(Pto_venta, Tipo_cbte);
end;

function Twsseg.GetLast_ID: OLE_CANCELBOOL;
begin
  Result := DefaultInterface.GetLast_ID;
end;

function Twsseg.GetCMP(Tipo_cbte: Integer; Punto_vta: Integer; Cbte_nro: Integer): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.GetCMP(Tipo_cbte, Punto_vta, Cbte_nro);
end;

procedure Twsseg.LogTransaction(const RequestFilename: WideString; 
                                const ResponseFilename: WideString);
begin
  DefaultInterface.LogTransaction(RequestFilename, ResponseFilename);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TwssegProperties.Create(AServer: Twsseg);
begin
  inherited Create;
  FServer := AServer;
end;

function TwssegProperties.GetDefaultInterface: Iwsseg;
begin
  Result := FServer.DefaultInterface;
end;

function TwssegProperties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function TwssegProperties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TwssegProperties.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TwssegProperties.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function TwssegProperties.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure TwssegProperties.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function TwssegProperties.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function TwssegProperties.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function TwssegProperties.Get_RespuestaAutorizarCAE: WideString;
begin
    Result := DefaultInterface.RespuestaAutorizarCAE;
end;

function TwssegProperties.Get_RespuestaAutorizarVencimiento: WideString;
begin
    Result := DefaultInterface.RespuestaAutorizarVencimiento;
end;

function TwssegProperties.Get_RespuestaAutorizarResultado: WideString;
begin
    Result := DefaultInterface.RespuestaAutorizarResultado;
end;

function TwssegProperties.Get_RespuestaAutorizarReproceso: WideString;
begin
    Result := DefaultInterface.RespuestaAutorizarReproceso;
end;

function TwssegProperties.Get_RespuestaGetLast_CMPNro: Integer;
begin
    Result := DefaultInterface.RespuestaGetLast_CMPNro;
end;

function TwssegProperties.Get_RespuestaGetLast_CMPFecha: WideString;
begin
    Result := DefaultInterface.RespuestaGetLast_CMPFecha;
end;

function TwssegProperties.Get_RespuestaGetLast_IDId: Integer;
begin
    Result := DefaultInterface.RespuestaGetLast_IDId;
end;

function TwssegProperties.Get_RespuestaAutorizarObs: WideString;
begin
    Result := DefaultInterface.RespuestaAutorizarObs;
end;

{$ENDIF}

class function CowsPadron.Create: IwsPadron;
begin
  Result := CreateComObject(CLASS_wsPadron) as IwsPadron;
end;

class function CowsPadron.CreateRemote(const MachineName: string): IwsPadron;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsPadron) as IwsPadron;
end;

procedure TwsPadron.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F57D2D12-E231-4AF7-BB54-3CDDFB52713B}';
    IntfIID:   '{0CEB0878-6393-4701-8C86-2CA793CDCB0D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TwsPadron.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IwsPadron;
  end;
end;

procedure TwsPadron.ConnectTo(svrIntf: IwsPadron);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TwsPadron.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TwsPadron.GetDefaultInterface: IwsPadron;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TwsPadron.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TwsPadronProperties.Create(Self);
{$ENDIF}
end;

destructor TwsPadron.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TwsPadron.GetServerProperties: TwsPadronProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TwsPadron.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TwsPadron.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure TwsPadron.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function TwsPadron.Get_ModoProduccion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ModoProduccion;
end;

procedure TwsPadron.Set_ModoProduccion(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ModoProduccion(Value);
end;

function TwsPadron.Get_Contribuyente: IContribuyente;
begin
    Result := DefaultInterface.Contribuyente;
end;

function TwsPadron.consultar(CUIT: Double; const contribuyenteResult: IContribuyente): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.consultar(CUIT, contribuyenteResult);
end;

function TwsPadron.descargarConstancia(CUIT: Double; const ArchivoDestino: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.descargarConstancia(CUIT, ArchivoDestino);
end;

function TwsPadron.login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.login(Certificado, ClavePrivada);
end;

procedure TwsPadron.CargarLicencia(const Licencia: WideString);
begin
  DefaultInterface.CargarLicencia(Licencia);
end;

function TwsPadron.sfConsultar(CUIT: Double): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.sfConsultar(CUIT);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TwsPadronProperties.Create(AServer: TwsPadron);
begin
  inherited Create;
  FServer := AServer;
end;

function TwsPadronProperties.GetDefaultInterface: IwsPadron;
begin
  Result := FServer.DefaultInterface;
end;

function TwsPadronProperties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TwsPadronProperties.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure TwsPadronProperties.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function TwsPadronProperties.Get_ModoProduccion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ModoProduccion;
end;

procedure TwsPadronProperties.Set_ModoProduccion(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ModoProduccion(Value);
end;

function TwsPadronProperties.Get_Contribuyente: IContribuyente;
begin
    Result := DefaultInterface.Contribuyente;
end;

{$ENDIF}

class function CoComprobante.Create: IComprobante;
begin
  Result := CreateComObject(CLASS_Comprobante) as IComprobante;
end;

class function CoComprobante.CreateRemote(const MachineName: string): IComprobante;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Comprobante) as IComprobante;
end;

procedure TComprobante.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A9B8A44F-99B4-4D18-8A54-A66CC5C39BEB}';
    IntfIID:   '{DC4152DF-68E8-4C5C-804F-22B28CF4C726}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TComprobante.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IComprobante;
  end;
end;

procedure TComprobante.ConnectTo(svrIntf: IComprobante);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TComprobante.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TComprobante.GetDefaultInterface: IComprobante;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TComprobante.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TComprobanteProperties.Create(Self);
{$ENDIF}
end;

destructor TComprobante.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TComprobante.GetServerProperties: TComprobanteProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TComprobante.Get_Concepto: Integer;
begin
    Result := DefaultInterface.Concepto;
end;

function TComprobante.Get_DocTipo: Integer;
begin
    Result := DefaultInterface.DocTipo;
end;

function TComprobante.Get_DocNro: Double;
begin
    Result := DefaultInterface.DocNro;
end;

function TComprobante.Get_Cbtedesde: Double;
begin
    Result := DefaultInterface.Cbtedesde;
end;

function TComprobante.Get_Cbtehasta: Double;
begin
    Result := DefaultInterface.Cbtehasta;
end;

function TComprobante.Get_CbteFch: WideString;
begin
    Result := DefaultInterface.CbteFch;
end;

function TComprobante.Get_Imptotal: Double;
begin
    Result := DefaultInterface.Imptotal;
end;

function TComprobante.Get_ImpTotConc: Double;
begin
    Result := DefaultInterface.ImpTotConc;
end;

function TComprobante.Get_ImpNeto: Double;
begin
    Result := DefaultInterface.ImpNeto;
end;

function TComprobante.Get_ImpOpEx: Double;
begin
    Result := DefaultInterface.ImpOpEx;
end;

function TComprobante.Get_ImpTrib: Double;
begin
    Result := DefaultInterface.ImpTrib;
end;

function TComprobante.Get_ImpIVA: Double;
begin
    Result := DefaultInterface.ImpIVA;
end;

function TComprobante.Get_FchServDesde: WideString;
begin
    Result := DefaultInterface.FchServDesde;
end;

function TComprobante.Get_FchServHasta: WideString;
begin
    Result := DefaultInterface.FchServHasta;
end;

function TComprobante.Get_FchVtoPago: WideString;
begin
    Result := DefaultInterface.FchVtoPago;
end;

function TComprobante.Get_MonId: WideString;
begin
    Result := DefaultInterface.MonId;
end;

function TComprobante.Get_MonCotiz: Double;
begin
    Result := DefaultInterface.MonCotiz;
end;

function TComprobante.Get_CbtesAsocCount: Integer;
begin
    Result := DefaultInterface.CbtesAsocCount;
end;

function TComprobante.Get_TributosCount: Integer;
begin
    Result := DefaultInterface.TributosCount;
end;

function TComprobante.Get_IvaCount: Integer;
begin
    Result := DefaultInterface.IvaCount;
end;

function TComprobante.Get_OpcionalesCount: Integer;
begin
    Result := DefaultInterface.OpcionalesCount;
end;

function TComprobante.Get_Resultado: WideString;
begin
    Result := DefaultInterface.Resultado;
end;

function TComprobante.Get_CodAutorizacion: WideString;
begin
    Result := DefaultInterface.CodAutorizacion;
end;

function TComprobante.Get_EmisionTipo: WideString;
begin
    Result := DefaultInterface.EmisionTipo;
end;

function TComprobante.Get_FchVto: WideString;
begin
    Result := DefaultInterface.FchVto;
end;

function TComprobante.Get_FchProceso: WideString;
begin
    Result := DefaultInterface.FchProceso;
end;

function TComprobante.Get_ObservacionesCount: Integer;
begin
    Result := DefaultInterface.ObservacionesCount;
end;

function TComprobante.Get_PtoVta: Integer;
begin
    Result := DefaultInterface.PtoVta;
end;

function TComprobante.Get_CbteTipo: Integer;
begin
    Result := DefaultInterface.CbteTipo;
end;

function TComprobante.CbtesAsoc(Indice: Integer): ICbteAsoc;
begin
  Result := DefaultInterface.CbtesAsoc(Indice);
end;

function TComprobante.Tributos(Indice: Integer): ITributo;
begin
  Result := DefaultInterface.Tributos(Indice);
end;

function TComprobante.Iva(Indice: Integer): IAlicIva;
begin
  Result := DefaultInterface.Iva(Indice);
end;

function TComprobante.Opcionales(Indice: Integer): IOpcional;
begin
  Result := DefaultInterface.Opcionales(Indice);
end;

function TComprobante.observaciones(Indice: Integer): IObs;
begin
  Result := DefaultInterface.observaciones(Indice);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TComprobanteProperties.Create(AServer: TComprobante);
begin
  inherited Create;
  FServer := AServer;
end;

function TComprobanteProperties.GetDefaultInterface: IComprobante;
begin
  Result := FServer.DefaultInterface;
end;

function TComprobanteProperties.Get_Concepto: Integer;
begin
    Result := DefaultInterface.Concepto;
end;

function TComprobanteProperties.Get_DocTipo: Integer;
begin
    Result := DefaultInterface.DocTipo;
end;

function TComprobanteProperties.Get_DocNro: Double;
begin
    Result := DefaultInterface.DocNro;
end;

function TComprobanteProperties.Get_Cbtedesde: Double;
begin
    Result := DefaultInterface.Cbtedesde;
end;

function TComprobanteProperties.Get_Cbtehasta: Double;
begin
    Result := DefaultInterface.Cbtehasta;
end;

function TComprobanteProperties.Get_CbteFch: WideString;
begin
    Result := DefaultInterface.CbteFch;
end;

function TComprobanteProperties.Get_Imptotal: Double;
begin
    Result := DefaultInterface.Imptotal;
end;

function TComprobanteProperties.Get_ImpTotConc: Double;
begin
    Result := DefaultInterface.ImpTotConc;
end;

function TComprobanteProperties.Get_ImpNeto: Double;
begin
    Result := DefaultInterface.ImpNeto;
end;

function TComprobanteProperties.Get_ImpOpEx: Double;
begin
    Result := DefaultInterface.ImpOpEx;
end;

function TComprobanteProperties.Get_ImpTrib: Double;
begin
    Result := DefaultInterface.ImpTrib;
end;

function TComprobanteProperties.Get_ImpIVA: Double;
begin
    Result := DefaultInterface.ImpIVA;
end;

function TComprobanteProperties.Get_FchServDesde: WideString;
begin
    Result := DefaultInterface.FchServDesde;
end;

function TComprobanteProperties.Get_FchServHasta: WideString;
begin
    Result := DefaultInterface.FchServHasta;
end;

function TComprobanteProperties.Get_FchVtoPago: WideString;
begin
    Result := DefaultInterface.FchVtoPago;
end;

function TComprobanteProperties.Get_MonId: WideString;
begin
    Result := DefaultInterface.MonId;
end;

function TComprobanteProperties.Get_MonCotiz: Double;
begin
    Result := DefaultInterface.MonCotiz;
end;

function TComprobanteProperties.Get_CbtesAsocCount: Integer;
begin
    Result := DefaultInterface.CbtesAsocCount;
end;

function TComprobanteProperties.Get_TributosCount: Integer;
begin
    Result := DefaultInterface.TributosCount;
end;

function TComprobanteProperties.Get_IvaCount: Integer;
begin
    Result := DefaultInterface.IvaCount;
end;

function TComprobanteProperties.Get_OpcionalesCount: Integer;
begin
    Result := DefaultInterface.OpcionalesCount;
end;

function TComprobanteProperties.Get_Resultado: WideString;
begin
    Result := DefaultInterface.Resultado;
end;

function TComprobanteProperties.Get_CodAutorizacion: WideString;
begin
    Result := DefaultInterface.CodAutorizacion;
end;

function TComprobanteProperties.Get_EmisionTipo: WideString;
begin
    Result := DefaultInterface.EmisionTipo;
end;

function TComprobanteProperties.Get_FchVto: WideString;
begin
    Result := DefaultInterface.FchVto;
end;

function TComprobanteProperties.Get_FchProceso: WideString;
begin
    Result := DefaultInterface.FchProceso;
end;

function TComprobanteProperties.Get_ObservacionesCount: Integer;
begin
    Result := DefaultInterface.ObservacionesCount;
end;

function TComprobanteProperties.Get_PtoVta: Integer;
begin
    Result := DefaultInterface.PtoVta;
end;

function TComprobanteProperties.Get_CbteTipo: Integer;
begin
    Result := DefaultInterface.CbteTipo;
end;

{$ENDIF}

class function CoCbteAsoc.Create: ICbteAsoc;
begin
  Result := CreateComObject(CLASS_CbteAsoc) as ICbteAsoc;
end;

class function CoCbteAsoc.CreateRemote(const MachineName: string): ICbteAsoc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CbteAsoc) as ICbteAsoc;
end;

procedure TCbteAsoc.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{259527D7-6AE5-411F-89EC-9C9A480A41F9}';
    IntfIID:   '{43E44C59-376E-4A27-93D2-ADC712D2BA2E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCbteAsoc.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICbteAsoc;
  end;
end;

procedure TCbteAsoc.ConnectTo(svrIntf: ICbteAsoc);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCbteAsoc.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCbteAsoc.GetDefaultInterface: ICbteAsoc;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCbteAsoc.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCbteAsocProperties.Create(Self);
{$ENDIF}
end;

destructor TCbteAsoc.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCbteAsoc.GetServerProperties: TCbteAsocProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCbteAsoc.Get_Tipo: Integer;
begin
    Result := DefaultInterface.Tipo;
end;

function TCbteAsoc.Get_PtoVta: Integer;
begin
    Result := DefaultInterface.PtoVta;
end;

function TCbteAsoc.Get_Nro: Double;
begin
    Result := DefaultInterface.Nro;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCbteAsocProperties.Create(AServer: TCbteAsoc);
begin
  inherited Create;
  FServer := AServer;
end;

function TCbteAsocProperties.GetDefaultInterface: ICbteAsoc;
begin
  Result := FServer.DefaultInterface;
end;

function TCbteAsocProperties.Get_Tipo: Integer;
begin
    Result := DefaultInterface.Tipo;
end;

function TCbteAsocProperties.Get_PtoVta: Integer;
begin
    Result := DefaultInterface.PtoVta;
end;

function TCbteAsocProperties.Get_Nro: Double;
begin
    Result := DefaultInterface.Nro;
end;

{$ENDIF}

class function CoTributo.Create: ITributo;
begin
  Result := CreateComObject(CLASS_Tributo) as ITributo;
end;

class function CoTributo.CreateRemote(const MachineName: string): ITributo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Tributo) as ITributo;
end;

procedure TTributo.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FD8F306C-CE28-460C-810C-57CE15C35A37}';
    IntfIID:   '{8C1BE2D0-B8B0-442E-A8D6-8BBBE941DB0C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TTributo.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ITributo;
  end;
end;

procedure TTributo.ConnectTo(svrIntf: ITributo);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TTributo.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TTributo.GetDefaultInterface: ITributo;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TTributo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TTributoProperties.Create(Self);
{$ENDIF}
end;

destructor TTributo.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TTributo.GetServerProperties: TTributoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TTributo.Get_Id: Integer;
begin
    Result := DefaultInterface.Id;
end;

function TTributo.Get_Desc: WideString;
begin
    Result := DefaultInterface.Desc;
end;

function TTributo.Get_BaseImp: Double;
begin
    Result := DefaultInterface.BaseImp;
end;

function TTributo.Get_Alic: Double;
begin
    Result := DefaultInterface.Alic;
end;

function TTributo.Get_Importe: Double;
begin
    Result := DefaultInterface.Importe;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TTributoProperties.Create(AServer: TTributo);
begin
  inherited Create;
  FServer := AServer;
end;

function TTributoProperties.GetDefaultInterface: ITributo;
begin
  Result := FServer.DefaultInterface;
end;

function TTributoProperties.Get_Id: Integer;
begin
    Result := DefaultInterface.Id;
end;

function TTributoProperties.Get_Desc: WideString;
begin
    Result := DefaultInterface.Desc;
end;

function TTributoProperties.Get_BaseImp: Double;
begin
    Result := DefaultInterface.BaseImp;
end;

function TTributoProperties.Get_Alic: Double;
begin
    Result := DefaultInterface.Alic;
end;

function TTributoProperties.Get_Importe: Double;
begin
    Result := DefaultInterface.Importe;
end;

{$ENDIF}

class function CoAlicIva.Create: IAlicIva;
begin
  Result := CreateComObject(CLASS_AlicIva) as IAlicIva;
end;

class function CoAlicIva.CreateRemote(const MachineName: string): IAlicIva;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AlicIva) as IAlicIva;
end;

procedure TAlicIva.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{DA06EFB8-3B19-4061-A544-157036E2CB57}';
    IntfIID:   '{ADE1B3EE-2618-461B-B8D3-F048B400330A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAlicIva.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IAlicIva;
  end;
end;

procedure TAlicIva.ConnectTo(svrIntf: IAlicIva);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAlicIva.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAlicIva.GetDefaultInterface: IAlicIva;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TAlicIva.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAlicIvaProperties.Create(Self);
{$ENDIF}
end;

destructor TAlicIva.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAlicIva.GetServerProperties: TAlicIvaProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAlicIva.Get_Id: Integer;
begin
    Result := DefaultInterface.Id;
end;

function TAlicIva.Get_BaseImp: Double;
begin
    Result := DefaultInterface.BaseImp;
end;

function TAlicIva.Get_Importe: Double;
begin
    Result := DefaultInterface.Importe;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAlicIvaProperties.Create(AServer: TAlicIva);
begin
  inherited Create;
  FServer := AServer;
end;

function TAlicIvaProperties.GetDefaultInterface: IAlicIva;
begin
  Result := FServer.DefaultInterface;
end;

function TAlicIvaProperties.Get_Id: Integer;
begin
    Result := DefaultInterface.Id;
end;

function TAlicIvaProperties.Get_BaseImp: Double;
begin
    Result := DefaultInterface.BaseImp;
end;

function TAlicIvaProperties.Get_Importe: Double;
begin
    Result := DefaultInterface.Importe;
end;

{$ENDIF}

class function CoOpcional.Create: IOpcional;
begin
  Result := CreateComObject(CLASS_Opcional) as IOpcional;
end;

class function CoOpcional.CreateRemote(const MachineName: string): IOpcional;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Opcional) as IOpcional;
end;

procedure TOpcional.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{74473C21-FABC-49EB-B268-7D6B33D8C728}';
    IntfIID:   '{7689C644-3F89-44FE-97CF-EAF233A262C8}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcional.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IOpcional;
  end;
end;

procedure TOpcional.ConnectTo(svrIntf: IOpcional);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcional.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcional.GetDefaultInterface: IOpcional;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TOpcional.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TOpcionalProperties.Create(Self);
{$ENDIF}
end;

destructor TOpcional.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TOpcional.GetServerProperties: TOpcionalProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TOpcional.Get_Id: WideString;
begin
    Result := DefaultInterface.Id;
end;

function TOpcional.Get_Valor: WideString;
begin
    Result := DefaultInterface.Valor;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TOpcionalProperties.Create(AServer: TOpcional);
begin
  inherited Create;
  FServer := AServer;
end;

function TOpcionalProperties.GetDefaultInterface: IOpcional;
begin
  Result := FServer.DefaultInterface;
end;

function TOpcionalProperties.Get_Id: WideString;
begin
    Result := DefaultInterface.Id;
end;

function TOpcionalProperties.Get_Valor: WideString;
begin
    Result := DefaultInterface.Valor;
end;

{$ENDIF}

class function CoObs.Create: IObs;
begin
  Result := CreateComObject(CLASS_Obs) as IObs;
end;

class function CoObs.CreateRemote(const MachineName: string): IObs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Obs) as IObs;
end;

procedure TObs.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C778E764-6411-4086-A488-14FC22B1BA4A}';
    IntfIID:   '{3417F5A9-B0F6-4CF9-B30B-055E17860895}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TObs.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IObs;
  end;
end;

procedure TObs.ConnectTo(svrIntf: IObs);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TObs.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TObs.GetDefaultInterface: IObs;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TObs.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TObsProperties.Create(Self);
{$ENDIF}
end;

destructor TObs.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TObs.GetServerProperties: TObsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TObs.Get_Code: Integer;
begin
    Result := DefaultInterface.Code;
end;

function TObs.Get_Msg: WideString;
begin
    Result := DefaultInterface.Msg;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TObsProperties.Create(AServer: TObs);
begin
  inherited Create;
  FServer := AServer;
end;

function TObsProperties.GetDefaultInterface: IObs;
begin
  Result := FServer.DefaultInterface;
end;

function TObsProperties.Get_Code: Integer;
begin
    Result := DefaultInterface.Code;
end;

function TObsProperties.Get_Msg: WideString;
begin
    Result := DefaultInterface.Msg;
end;

{$ENDIF}

class function CoContribuyente.Create: IContribuyente;
begin
  Result := CreateComObject(CLASS_Contribuyente) as IContribuyente;
end;

class function CoContribuyente.CreateRemote(const MachineName: string): IContribuyente;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Contribuyente) as IContribuyente;
end;

procedure TContribuyente.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0214EC04-2B59-4CDA-BE4F-6212C9B65F02}';
    IntfIID:   '{19A25CC6-4F15-4C2E-AF88-7AD7901B23A9}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TContribuyente.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IContribuyente;
  end;
end;

procedure TContribuyente.ConnectTo(svrIntf: IContribuyente);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TContribuyente.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TContribuyente.GetDefaultInterface: IContribuyente;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TContribuyente.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TContribuyenteProperties.Create(Self);
{$ENDIF}
end;

destructor TContribuyente.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TContribuyente.GetServerProperties: TContribuyenteProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TContribuyente.Get_idPersona: WideString;
begin
    Result := DefaultInterface.idPersona;
end;

function TContribuyente.Get_tipoPersona: WideString;
begin
    Result := DefaultInterface.tipoPersona;
end;

function TContribuyente.Get_tipoClave: WideString;
begin
    Result := DefaultInterface.tipoClave;
end;

function TContribuyente.Get_estadoClave: WideString;
begin
    Result := DefaultInterface.estadoClave;
end;

function TContribuyente.Get_nombre: WideString;
begin
    Result := DefaultInterface.nombre;
end;

function TContribuyente.Get_tipoDocumento: WideString;
begin
    Result := DefaultInterface.tipoDocumento;
end;

function TContribuyente.Get_numeroDocumento: WideString;
begin
    Result := DefaultInterface.numeroDocumento;
end;

function TContribuyente.Get_domicilioFiscal: IDomicilio;
begin
    Result := DefaultInterface.domicilioFiscal;
end;

function TContribuyente.Get_idDependencia: Integer;
begin
    Result := DefaultInterface.idDependencia;
end;

function TContribuyente.Get_mesCierre: Integer;
begin
    Result := DefaultInterface.mesCierre;
end;

function TContribuyente.Get_fechaInscripcion: WideString;
begin
    Result := DefaultInterface.fechaInscripcion;
end;

function TContribuyente.Get_idCatAutonomo: Integer;
begin
    Result := DefaultInterface.idCatAutonomo;
end;

function TContribuyente.Get_impuestosCount: Integer;
begin
    Result := DefaultInterface.impuestosCount;
end;

function TContribuyente.Get_actividadesCount: Integer;
begin
    Result := DefaultInterface.actividadesCount;
end;

function TContribuyente.Get_condicionIVA: TipoResponsable;
begin
    Result := DefaultInterface.condicionIVA;
end;

function TContribuyente.Get_condicionIVADesc: WideString;
begin
    Result := DefaultInterface.condicionIVADesc;
end;

function TContribuyente.Get_SolicitarConstanciaInscripcion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.SolicitarConstanciaInscripcion;
end;

function TContribuyente.Get_observaciones: WideString;
begin
    Result := DefaultInterface.observaciones;
end;

function TContribuyente.Get_nombreSimple: WideString;
begin
    Result := DefaultInterface.nombreSimple;
end;

function TContribuyente.Get_apellido: WideString;
begin
    Result := DefaultInterface.apellido;
end;

function TContribuyente.impuestos(Indice: Integer): Integer;
begin
  Result := DefaultInterface.impuestos(Indice);
end;

function TContribuyente.categoriasMonotributoCount: Integer;
begin
  Result := DefaultInterface.categoriasMonotributoCount;
end;

function TContribuyente.categoriasMonotributo(Indice: Integer): Integer;
begin
  Result := DefaultInterface.categoriasMonotributo(Indice);
end;

function TContribuyente.actividades(Indice: Integer): Integer;
begin
  Result := DefaultInterface.actividades(Indice);
end;

function TContribuyente.actividadesDesc(Inidice: Integer): WideString;
begin
  Result := DefaultInterface.actividadesDesc(Inidice);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TContribuyenteProperties.Create(AServer: TContribuyente);
begin
  inherited Create;
  FServer := AServer;
end;

function TContribuyenteProperties.GetDefaultInterface: IContribuyente;
begin
  Result := FServer.DefaultInterface;
end;

function TContribuyenteProperties.Get_idPersona: WideString;
begin
    Result := DefaultInterface.idPersona;
end;

function TContribuyenteProperties.Get_tipoPersona: WideString;
begin
    Result := DefaultInterface.tipoPersona;
end;

function TContribuyenteProperties.Get_tipoClave: WideString;
begin
    Result := DefaultInterface.tipoClave;
end;

function TContribuyenteProperties.Get_estadoClave: WideString;
begin
    Result := DefaultInterface.estadoClave;
end;

function TContribuyenteProperties.Get_nombre: WideString;
begin
    Result := DefaultInterface.nombre;
end;

function TContribuyenteProperties.Get_tipoDocumento: WideString;
begin
    Result := DefaultInterface.tipoDocumento;
end;

function TContribuyenteProperties.Get_numeroDocumento: WideString;
begin
    Result := DefaultInterface.numeroDocumento;
end;

function TContribuyenteProperties.Get_domicilioFiscal: IDomicilio;
begin
    Result := DefaultInterface.domicilioFiscal;
end;

function TContribuyenteProperties.Get_idDependencia: Integer;
begin
    Result := DefaultInterface.idDependencia;
end;

function TContribuyenteProperties.Get_mesCierre: Integer;
begin
    Result := DefaultInterface.mesCierre;
end;

function TContribuyenteProperties.Get_fechaInscripcion: WideString;
begin
    Result := DefaultInterface.fechaInscripcion;
end;

function TContribuyenteProperties.Get_idCatAutonomo: Integer;
begin
    Result := DefaultInterface.idCatAutonomo;
end;

function TContribuyenteProperties.Get_impuestosCount: Integer;
begin
    Result := DefaultInterface.impuestosCount;
end;

function TContribuyenteProperties.Get_actividadesCount: Integer;
begin
    Result := DefaultInterface.actividadesCount;
end;

function TContribuyenteProperties.Get_condicionIVA: TipoResponsable;
begin
    Result := DefaultInterface.condicionIVA;
end;

function TContribuyenteProperties.Get_condicionIVADesc: WideString;
begin
    Result := DefaultInterface.condicionIVADesc;
end;

function TContribuyenteProperties.Get_SolicitarConstanciaInscripcion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.SolicitarConstanciaInscripcion;
end;

function TContribuyenteProperties.Get_observaciones: WideString;
begin
    Result := DefaultInterface.observaciones;
end;

function TContribuyenteProperties.Get_nombreSimple: WideString;
begin
    Result := DefaultInterface.nombreSimple;
end;

function TContribuyenteProperties.Get_apellido: WideString;
begin
    Result := DefaultInterface.apellido;
end;

{$ENDIF}

class function CoDomicilio.Create: IDomicilio;
begin
  Result := CreateComObject(CLASS_Domicilio) as IDomicilio;
end;

class function CoDomicilio.CreateRemote(const MachineName: string): IDomicilio;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Domicilio) as IDomicilio;
end;

procedure TDomicilio.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0370A743-18E0-424E-8124-9CA27A80EB16}';
    IntfIID:   '{EC378410-896F-4CF2-84A8-53E61AE3D6CF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDomicilio.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDomicilio;
  end;
end;

procedure TDomicilio.ConnectTo(svrIntf: IDomicilio);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDomicilio.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDomicilio.GetDefaultInterface: IDomicilio;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDomicilio.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDomicilioProperties.Create(Self);
{$ENDIF}
end;

destructor TDomicilio.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDomicilio.GetServerProperties: TDomicilioProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDomicilio.Get_direccion: WideString;
begin
    Result := DefaultInterface.direccion;
end;

function TDomicilio.Get_localidad: WideString;
begin
    Result := DefaultInterface.localidad;
end;

function TDomicilio.Get_codPostal: WideString;
begin
    Result := DefaultInterface.codPostal;
end;

function TDomicilio.Get_idProvincia: Integer;
begin
    Result := DefaultInterface.idProvincia;
end;

function TDomicilio.Get_provincia: WideString;
begin
    Result := DefaultInterface.provincia;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDomicilioProperties.Create(AServer: TDomicilio);
begin
  inherited Create;
  FServer := AServer;
end;

function TDomicilioProperties.GetDefaultInterface: IDomicilio;
begin
  Result := FServer.DefaultInterface;
end;

function TDomicilioProperties.Get_direccion: WideString;
begin
    Result := DefaultInterface.direccion;
end;

function TDomicilioProperties.Get_localidad: WideString;
begin
    Result := DefaultInterface.localidad;
end;

function TDomicilioProperties.Get_codPostal: WideString;
begin
    Result := DefaultInterface.codPostal;
end;

function TDomicilioProperties.Get_idProvincia: Integer;
begin
    Result := DefaultInterface.idProvincia;
end;

function TDomicilioProperties.Get_provincia: WideString;
begin
    Result := DefaultInterface.provincia;
end;

{$ENDIF}

class function CowsPadronARBA.Create: IwsPadronARBA;
begin
  Result := CreateComObject(CLASS_wsPadronARBA) as IwsPadronARBA;
end;

class function CowsPadronARBA.CreateRemote(const MachineName: string): IwsPadronARBA;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsPadronARBA) as IwsPadronARBA;
end;

procedure TwsPadronARBA.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6F042FCF-8D78-498B-8630-61346537279F}';
    IntfIID:   '{924DCE98-B918-42E4-A00A-76FD1D8D483A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TwsPadronARBA.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IwsPadronARBA;
  end;
end;

procedure TwsPadronARBA.ConnectTo(svrIntf: IwsPadronARBA);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TwsPadronARBA.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TwsPadronARBA.GetDefaultInterface: IwsPadronARBA;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TwsPadronARBA.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TwsPadronARBAProperties.Create(Self);
{$ENDIF}
end;

destructor TwsPadronARBA.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TwsPadronARBA.GetServerProperties: TwsPadronARBAProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TwsPadronARBA.Get_User: WideString;
begin
    Result := DefaultInterface.User;
end;

procedure TwsPadronARBA.Set_User(const Value: WideString);
  { Warning: The property User has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.User := Value;
end;

function TwsPadronARBA.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TwsPadronARBA.Set_Password(const Value: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := Value;
end;

function TwsPadronARBA.Get_ConsultaAlicuotaRespuesta: IConsultaAlicuotaRespuesta;
begin
    Result := DefaultInterface.ConsultaAlicuotaRespuesta;
end;

function TwsPadronARBA.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function TwsPadronARBA.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TwsPadronARBA.Get_ModoProduccion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ModoProduccion;
end;

procedure TwsPadronARBA.Set_ModoProduccion(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ModoProduccion(Value);
end;

function TwsPadronARBA.ConsultaAlicuota(const FechaDesde: WideString; const FechaHasta: WideString; 
                                        CUIT: Double): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ConsultaAlicuota(FechaDesde, FechaHasta, CUIT);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TwsPadronARBAProperties.Create(AServer: TwsPadronARBA);
begin
  inherited Create;
  FServer := AServer;
end;

function TwsPadronARBAProperties.GetDefaultInterface: IwsPadronARBA;
begin
  Result := FServer.DefaultInterface;
end;

function TwsPadronARBAProperties.Get_User: WideString;
begin
    Result := DefaultInterface.User;
end;

procedure TwsPadronARBAProperties.Set_User(const Value: WideString);
  { Warning: The property User has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.User := Value;
end;

function TwsPadronARBAProperties.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TwsPadronARBAProperties.Set_Password(const Value: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := Value;
end;

function TwsPadronARBAProperties.Get_ConsultaAlicuotaRespuesta: IConsultaAlicuotaRespuesta;
begin
    Result := DefaultInterface.ConsultaAlicuotaRespuesta;
end;

function TwsPadronARBAProperties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function TwsPadronARBAProperties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TwsPadronARBAProperties.Get_ModoProduccion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ModoProduccion;
end;

procedure TwsPadronARBAProperties.Set_ModoProduccion(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ModoProduccion(Value);
end;

{$ENDIF}

class function CoConsultaAlicuotaRespuesta.Create: IConsultaAlicuotaRespuesta;
begin
  Result := CreateComObject(CLASS_ConsultaAlicuotaRespuesta) as IConsultaAlicuotaRespuesta;
end;

class function CoConsultaAlicuotaRespuesta.CreateRemote(const MachineName: string): IConsultaAlicuotaRespuesta;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultaAlicuotaRespuesta) as IConsultaAlicuotaRespuesta;
end;

procedure TConsultaAlicuotaRespuesta.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E17927E3-019B-4B2E-BB5B-CD6DA8A61F59}';
    IntfIID:   '{2589E4FF-0788-4FEF-9565-0F05095F1356}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TConsultaAlicuotaRespuesta.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IConsultaAlicuotaRespuesta;
  end;
end;

procedure TConsultaAlicuotaRespuesta.ConnectTo(svrIntf: IConsultaAlicuotaRespuesta);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TConsultaAlicuotaRespuesta.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TConsultaAlicuotaRespuesta.GetDefaultInterface: IConsultaAlicuotaRespuesta;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TConsultaAlicuotaRespuesta.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TConsultaAlicuotaRespuestaProperties.Create(Self);
{$ENDIF}
end;

destructor TConsultaAlicuotaRespuesta.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TConsultaAlicuotaRespuesta.GetServerProperties: TConsultaAlicuotaRespuestaProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TConsultaAlicuotaRespuesta.Get_AlicuotaPercepcion: Double;
begin
    Result := DefaultInterface.AlicuotaPercepcion;
end;

function TConsultaAlicuotaRespuesta.Get_AlicuotaRetencion: Double;
begin
    Result := DefaultInterface.AlicuotaRetencion;
end;

function TConsultaAlicuotaRespuesta.Get_GrupoPercepcion: Integer;
begin
    Result := DefaultInterface.GrupoPercepcion;
end;

function TConsultaAlicuotaRespuesta.Get_GrupoRetencion: Integer;
begin
    Result := DefaultInterface.GrupoRetencion;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TConsultaAlicuotaRespuestaProperties.Create(AServer: TConsultaAlicuotaRespuesta);
begin
  inherited Create;
  FServer := AServer;
end;

function TConsultaAlicuotaRespuestaProperties.GetDefaultInterface: IConsultaAlicuotaRespuesta;
begin
  Result := FServer.DefaultInterface;
end;

function TConsultaAlicuotaRespuestaProperties.Get_AlicuotaPercepcion: Double;
begin
    Result := DefaultInterface.AlicuotaPercepcion;
end;

function TConsultaAlicuotaRespuestaProperties.Get_AlicuotaRetencion: Double;
begin
    Result := DefaultInterface.AlicuotaRetencion;
end;

function TConsultaAlicuotaRespuestaProperties.Get_GrupoPercepcion: Integer;
begin
    Result := DefaultInterface.GrupoPercepcion;
end;

function TConsultaAlicuotaRespuestaProperties.Get_GrupoRetencion: Integer;
begin
    Result := DefaultInterface.GrupoRetencion;
end;

{$ENDIF}

class function CoCertificado.Create: ICertificado;
begin
  Result := CreateComObject(CLASS_Certificado) as ICertificado;
end;

class function CoCertificado.CreateRemote(const MachineName: string): ICertificado;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Certificado) as ICertificado;
end;

procedure TCertificado.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{189DA0FB-8B57-4C51-834E-666BE83E5878}';
    IntfIID:   '{CAD1F637-CD57-45DF-8A39-EB2227E34D93}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCertificado.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ICertificado;
  end;
end;

procedure TCertificado.ConnectTo(svrIntf: ICertificado);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCertificado.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCertificado.GetDefaultInterface: ICertificado;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TCertificado.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCertificadoProperties.Create(Self);
{$ENDIF}
end;

destructor TCertificado.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCertificado.GetServerProperties: TCertificadoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TCertificado.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function TCertificado.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TCertificado.Get_IC_Organizacion: WideString;
begin
    Result := DefaultInterface.IC_Organizacion;
end;

function TCertificado.Get_IC_NombreComun: WideString;
begin
    Result := DefaultInterface.IC_NombreComun;
end;

function TCertificado.Get_IC_FechaVencimiento: WideString;
begin
    Result := DefaultInterface.IC_FechaVencimiento;
end;

function TCertificado.Get_IC_CUIT: Double;
begin
    Result := DefaultInterface.IC_CUIT;
end;

function TCertificado.CargarInformacionCertificado(const ArchivoCertificado: WideString; 
                                                   const ArchivoClavePrivada: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.CargarInformacionCertificado(ArchivoCertificado, ArchivoClavePrivada);
end;

function TCertificado.GenerarNuevoCertificado(const O: WideString; const CN: WideString; 
                                              CUIT: Double; const ArchivoSolicitud: WideString; 
                                              const ArchivoClavePrivada: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.GenerarNuevoCertificado(O, CN, CUIT, ArchivoSolicitud, 
                                                     ArchivoClavePrivada);
end;

function TCertificado.RenovarCertificado(const ArchivoSolicitud: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.RenovarCertificado(ArchivoSolicitud);
end;

procedure TCertificado.MostrarInformacionCertificado;
begin
  DefaultInterface.MostrarInformacionCertificado;
end;

procedure TCertificado.MostrarGenerarCertificado;
begin
  DefaultInterface.MostrarGenerarCertificado;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCertificadoProperties.Create(AServer: TCertificado);
begin
  inherited Create;
  FServer := AServer;
end;

function TCertificadoProperties.GetDefaultInterface: ICertificado;
begin
  Result := FServer.DefaultInterface;
end;

function TCertificadoProperties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function TCertificadoProperties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TCertificadoProperties.Get_IC_Organizacion: WideString;
begin
    Result := DefaultInterface.IC_Organizacion;
end;

function TCertificadoProperties.Get_IC_NombreComun: WideString;
begin
    Result := DefaultInterface.IC_NombreComun;
end;

function TCertificadoProperties.Get_IC_FechaVencimiento: WideString;
begin
    Result := DefaultInterface.IC_FechaVencimiento;
end;

function TCertificadoProperties.Get_IC_CUIT: Double;
begin
    Result := DefaultInterface.IC_CUIT;
end;

{$ENDIF}

class function Cowscdc.Create: Iwscdc;
begin
  Result := CreateComObject(CLASS_wscdc) as Iwscdc;
end;

class function Cowscdc.CreateRemote(const MachineName: string): Iwscdc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wscdc) as Iwscdc;
end;

procedure Twscdc.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FDFE6850-8AE7-4B58-8D03-7655A9F28402}';
    IntfIID:   '{201C6546-D660-4171-A3D3-839583F7969E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure Twscdc.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as Iwscdc;
  end;
end;

procedure Twscdc.ConnectTo(svrIntf: Iwscdc);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure Twscdc.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function Twscdc.GetDefaultInterface: Iwscdc;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor Twscdc.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TwscdcProperties.Create(Self);
{$ENDIF}
end;

destructor Twscdc.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function Twscdc.GetServerProperties: TwscdcProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function Twscdc.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twscdc.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twscdc.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure Twscdc.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function Twscdc.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twscdc.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twscdc.Get_Depurar: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.Depurar;
end;

procedure Twscdc.Set_Depurar(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_Depurar(Value);
end;

function Twscdc.login(const Certificado: WideString; const ClavePrivada: WideString; 
                      const URL: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.login(Certificado, ClavePrivada, URL);
end;

function Twscdc.ComprobanteConstatar(const CbteModo: WideString; CuitEmisor: Double; 
                                     PtoVta: Integer; CbteTipo: Integer; CbteNro: Double; 
                                     const CbteFch: WideString; Imptotal: Double; 
                                     const CodAutorizacion: WideString; 
                                     const DocTipoReceptor: WideString; 
                                     const DocNroReceptor: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ComprobanteConstatar(CbteModo, CuitEmisor, PtoVta, CbteTipo, CbteNro, 
                                                  CbteFch, Imptotal, CodAutorizacion, 
                                                  DocTipoReceptor, DocNroReceptor);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TwscdcProperties.Create(AServer: Twscdc);
begin
  inherited Create;
  FServer := AServer;
end;

function TwscdcProperties.GetDefaultInterface: Iwscdc;
begin
  Result := FServer.DefaultInterface;
end;

function TwscdcProperties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function TwscdcProperties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TwscdcProperties.Get_URL: WideString;
begin
    Result := DefaultInterface.URL;
end;

procedure TwscdcProperties.Set_URL(const Value: WideString);
  { Warning: The property URL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.URL := Value;
end;

function TwscdcProperties.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure TwscdcProperties.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function TwscdcProperties.Get_Depurar: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.Depurar;
end;

procedure TwscdcProperties.Set_Depurar(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_Depurar(Value);
end;

{$ENDIF}

class function CoBarcode.Create: IBarcode;
begin
  Result := CreateComObject(CLASS_Barcode) as IBarcode;
end;

class function CoBarcode.CreateRemote(const MachineName: string): IBarcode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Barcode) as IBarcode;
end;

procedure TBarcode.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C53215BA-E553-4742-8D17-193B041996F9}';
    IntfIID:   '{01F6CFB9-A47D-401E-8A89-1C3962BB9364}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TBarcode.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IBarcode;
  end;
end;

procedure TBarcode.ConnectTo(svrIntf: IBarcode);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TBarcode.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TBarcode.GetDefaultInterface: IBarcode;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TBarcode.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TBarcodeProperties.Create(Self);
{$ENDIF}
end;

destructor TBarcode.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TBarcode.GetServerProperties: TBarcodeProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TBarcode.Get_Modulo: Integer;
begin
    Result := DefaultInterface.Modulo;
end;

procedure TBarcode.Set_Modulo(Value: Integer);
begin
  DefaultInterface.Set_Modulo(Value);
end;

function TBarcode.Get_Proporcion: Double;
begin
    Result := DefaultInterface.Proporcion;
end;

procedure TBarcode.Set_Proporcion(Value: Double);
begin
  DefaultInterface.Set_Proporcion(Value);
end;

function TBarcode.Get_Altura: Integer;
begin
    Result := DefaultInterface.Altura;
end;

procedure TBarcode.Set_Altura(Value: Integer);
begin
  DefaultInterface.Set_Altura(Value);
end;

function TBarcode.Get_MostrarTexto: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.MostrarTexto;
end;

procedure TBarcode.Set_MostrarTexto(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_MostrarTexto(Value);
end;

function TBarcode.Get_TamanioFuente: Integer;
begin
    Result := DefaultInterface.TamanioFuente;
end;

procedure TBarcode.Set_TamanioFuente(Value: Integer);
begin
  DefaultInterface.Set_TamanioFuente(Value);
end;

function TBarcode.Get_Texto: WideString;
begin
    Result := DefaultInterface.Texto;
end;

procedure TBarcode.GenerarCodigo(CUIT: Double; TipoCbte: Integer; PtoVta: Integer; 
                                 const Cae: WideString; const Vto: WideString; 
                                 const ArchivoDestino: WideString);
begin
  DefaultInterface.GenerarCodigo(CUIT, TipoCbte, PtoVta, Cae, Vto, ArchivoDestino);
end;

function TBarcode.Interleave25(const Texto: WideString; const ArchivoDestino: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.Interleave25(Texto, ArchivoDestino);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TBarcodeProperties.Create(AServer: TBarcode);
begin
  inherited Create;
  FServer := AServer;
end;

function TBarcodeProperties.GetDefaultInterface: IBarcode;
begin
  Result := FServer.DefaultInterface;
end;

function TBarcodeProperties.Get_Modulo: Integer;
begin
    Result := DefaultInterface.Modulo;
end;

procedure TBarcodeProperties.Set_Modulo(Value: Integer);
begin
  DefaultInterface.Set_Modulo(Value);
end;

function TBarcodeProperties.Get_Proporcion: Double;
begin
    Result := DefaultInterface.Proporcion;
end;

procedure TBarcodeProperties.Set_Proporcion(Value: Double);
begin
  DefaultInterface.Set_Proporcion(Value);
end;

function TBarcodeProperties.Get_Altura: Integer;
begin
    Result := DefaultInterface.Altura;
end;

procedure TBarcodeProperties.Set_Altura(Value: Integer);
begin
  DefaultInterface.Set_Altura(Value);
end;

function TBarcodeProperties.Get_MostrarTexto: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.MostrarTexto;
end;

procedure TBarcodeProperties.Set_MostrarTexto(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_MostrarTexto(Value);
end;

function TBarcodeProperties.Get_TamanioFuente: Integer;
begin
    Result := DefaultInterface.TamanioFuente;
end;

procedure TBarcodeProperties.Set_TamanioFuente(Value: Integer);
begin
  DefaultInterface.Set_TamanioFuente(Value);
end;

function TBarcodeProperties.Get_Texto: WideString;
begin
    Result := DefaultInterface.Texto;
end;

{$ENDIF}

class function Cowsct.Create: Iwsct;
begin
  Result := CreateComObject(CLASS_wsct) as Iwsct;
end;

class function Cowsct.CreateRemote(const MachineName: string): Iwsct;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsct) as Iwsct;
end;

procedure Twsct.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0C0A8678-5679-4F36-A995-85DA19D90CF5}';
    IntfIID:   '{161A74B4-F8B8-408F-934B-2D2D32E492E2}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure Twsct.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as Iwsct;
  end;
end;

procedure Twsct.ConnectTo(svrIntf: Iwsct);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure Twsct.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function Twsct.GetDefaultInterface: Iwsct;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor Twsct.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TwsctProperties.Create(Self);
{$ENDIF}
end;

destructor Twsct.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function Twsct.GetServerProperties: TwsctProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function Twsct.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsct.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsct.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsct.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twsct.Get_Depurar: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.Depurar;
end;

procedure Twsct.Set_Depurar(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_Depurar(Value);
end;

function Twsct.Get_ConsultarUltimoComprobanteNumero: Integer;
begin
    Result := DefaultInterface.ConsultarUltimoComprobanteNumero;
end;

function Twsct.Get_ConsultarUltimoComprobanteFecha: WideString;
begin
    Result := DefaultInterface.ConsultarUltimoComprobanteFecha;
end;

function Twsct.Get_AutorizarCAE: Double;
begin
    Result := DefaultInterface.AutorizarCAE;
end;

function Twsct.Get_AutorizarVencimiento: WideString;
begin
    Result := DefaultInterface.AutorizarVencimiento;
end;

function Twsct.Get_AutorizarObservaciones: WideString;
begin
    Result := DefaultInterface.AutorizarObservaciones;
end;

function Twsct.Get_ModoProduccion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ModoProduccion;
end;

procedure Twsct.Set_ModoProduccion(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ModoProduccion(Value);
end;

procedure Twsct.AgregaFactura(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer; 
                              numeroComprobante: Double; const fechaEmision: WideString; 
                              const codigoTipoAutorizacion: WideString; codigoAutorizacion: Double; 
                              const fechaVencimiento: WideString; codigoTipoDocumento: Integer; 
                              const numeroDocumento: WideString; const idImpositivo: WideString; 
                              codigoPais: Integer; const domicilioReceptor: WideString; 
                              codigoRelacionEmisorReceptor: Integer; importeGravado: Double; 
                              importeNoGravado: Double; importeExento: Double; 
                              importeOtrosTributos: Double; importeReintegro: Double; 
                              importeTotal: Double; const codigoMoneda: WideString; 
                              cotizacionMoneda: Double; const observaciones: WideString);
begin
  DefaultInterface.AgregaFactura(codigoTipoComprobante, numeroPuntoVenta, numeroComprobante, 
                                 fechaEmision, codigoTipoAutorizacion, codigoAutorizacion, 
                                 fechaVencimiento, codigoTipoDocumento, numeroDocumento, 
                                 idImpositivo, codigoPais, domicilioReceptor, 
                                 codigoRelacionEmisorReceptor, importeGravado, importeNoGravado, 
                                 importeExento, importeOtrosTributos, importeReintegro, 
                                 importeTotal, codigoMoneda, cotizacionMoneda, observaciones);
end;

procedure Twsct.AgregaItem(Tipo: Integer; codigoTurismo: Integer; const codigo: WideString; 
                           const descripcion: WideString; codigoAlicuotaIVA: Integer; 
                           importeIVA: Double; importeItem: Double);
begin
  DefaultInterface.AgregaItem(Tipo, codigoTurismo, codigo, descripcion, codigoAlicuotaIVA, 
                              importeIVA, importeItem);
end;

procedure Twsct.AgregaComprobanteAsociado(codigoTipoComprobante: Integer; 
                                          numeroPuntoVenta: Integer; numeroComprobante: Double);
begin
  DefaultInterface.AgregaComprobanteAsociado(codigoTipoComprobante, numeroPuntoVenta, 
                                             numeroComprobante);
end;

procedure Twsct.AgregaTributo(codigo: Integer; const descripcion: WideString; 
                              baseImponible: Double; Importe: Double);
begin
  DefaultInterface.AgregaTributo(codigo, descripcion, baseImponible, Importe);
end;

procedure Twsct.AgregaIVA(codigo: Integer; Importe: Double);
begin
  DefaultInterface.AgregaIVA(codigo, Importe);
end;

procedure Twsct.AgregaDatoAdicional(t: Integer; const c1: WideString; const c2: WideString; 
                                    const c3: WideString; const c4: WideString; 
                                    const c5: WideString; const c6: WideString);
begin
  DefaultInterface.AgregaDatoAdicional(t, c1, c2, c3, c4, c5, c6);
end;

procedure Twsct.AgregaFormaDePago(codigo: Integer; tipoTarjeta: Integer; numeroTarjeta: Double; 
                                  const swiftCode: WideString; tipoCuenta: Integer; 
                                  numeroCuenta: Double);
begin
  DefaultInterface.AgregaFormaDePago(codigo, tipoTarjeta, numeroTarjeta, swiftCode, tipoCuenta, 
                                     numeroCuenta);
end;

procedure Twsct.Reset;
begin
  DefaultInterface.Reset;
end;

function Twsct.Autorizar: OLE_CANCELBOOL;
begin
  Result := DefaultInterface.Autorizar;
end;

function Twsct.login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.login(Certificado, ClavePrivada);
end;

function Twsct.ConsultarUltimoComprobante(codigoTipoComprobante: Integer; numeroPuntoVenta: Integer): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.ConsultarUltimoComprobante(codigoTipoComprobante, numeroPuntoVenta);
end;

function Twsct.DescargarCodigos(const NombreArchivo: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.DescargarCodigos(NombreArchivo);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TwsctProperties.Create(AServer: Twsct);
begin
  inherited Create;
  FServer := AServer;
end;

function TwsctProperties.GetDefaultInterface: Iwsct;
begin
  Result := FServer.DefaultInterface;
end;

function TwsctProperties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function TwsctProperties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TwsctProperties.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure TwsctProperties.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function TwsctProperties.Get_Depurar: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.Depurar;
end;

procedure TwsctProperties.Set_Depurar(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_Depurar(Value);
end;

function TwsctProperties.Get_ConsultarUltimoComprobanteNumero: Integer;
begin
    Result := DefaultInterface.ConsultarUltimoComprobanteNumero;
end;

function TwsctProperties.Get_ConsultarUltimoComprobanteFecha: WideString;
begin
    Result := DefaultInterface.ConsultarUltimoComprobanteFecha;
end;

function TwsctProperties.Get_AutorizarCAE: Double;
begin
    Result := DefaultInterface.AutorizarCAE;
end;

function TwsctProperties.Get_AutorizarVencimiento: WideString;
begin
    Result := DefaultInterface.AutorizarVencimiento;
end;

function TwsctProperties.Get_AutorizarObservaciones: WideString;
begin
    Result := DefaultInterface.AutorizarObservaciones;
end;

function TwsctProperties.Get_ModoProduccion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ModoProduccion;
end;

procedure TwsctProperties.Set_ModoProduccion(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ModoProduccion(Value);
end;

{$ENDIF}

class function Cowsfecred.Create: Iwsfecred;
begin
  Result := CreateComObject(CLASS_wsfecred) as Iwsfecred;
end;

class function Cowsfecred.CreateRemote(const MachineName: string): Iwsfecred;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_wsfecred) as Iwsfecred;
end;

procedure Twsfecred.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A9EFDBFE-92AC-4D25-B52E-053810AAEB03}';
    IntfIID:   '{32EF8E70-4CB3-40FD-A66C-BBB03E147C37}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure Twsfecred.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as Iwsfecred;
  end;
end;

procedure Twsfecred.ConnectTo(svrIntf: Iwsfecred);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure Twsfecred.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function Twsfecred.GetDefaultInterface: Iwsfecred;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor Twsfecred.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TwsfecredProperties.Create(Self);
{$ENDIF}
end;

destructor Twsfecred.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function Twsfecred.GetServerProperties: TwsfecredProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function Twsfecred.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

function Twsfecred.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

function Twsfecred.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function Twsfecred.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function Twsfecred.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure Twsfecred.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function Twsfecred.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function Twsfecred.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function Twsfecred.Get_Depurar: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.Depurar;
end;

procedure Twsfecred.Set_Depurar(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_Depurar(Value);
end;

function Twsfecred.Get_ModoProduccion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ModoProduccion;
end;

procedure Twsfecred.Set_ModoProduccion(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ModoProduccion(Value);
end;

function Twsfecred.Get_consultarCmpReturn: IConsultarCmpReturnTy;
begin
    Result := DefaultInterface.consultarCmpReturn;
end;

procedure Twsfecred.Dummy;
begin
  DefaultInterface.Dummy;
end;

function Twsfecred.consultarComprobantes(const rolCUITRepresentada: WideString; 
                                         CUITContraparte: Double; codTipoCmp: Integer; 
                                         const estadoCmp: WideString; const fecha_tipo: WideString; 
                                         const fecha_desde: WideString; 
                                         const fecha_hasta: WideString; codCtaCte: Double; 
                                         const estadoCtaCte: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.consultarComprobantes(rolCUITRepresentada, CUITContraparte, 
                                                   codTipoCmp, estadoCmp, fecha_tipo, fecha_desde, 
                                                   fecha_hasta, codCtaCte, estadoCtaCte);
end;

procedure Twsfecred.rechazarNotaDC;
begin
  DefaultInterface.rechazarNotaDC;
end;

procedure Twsfecred.consultarCtasCtes;
begin
  DefaultInterface.consultarCtasCtes;
end;

procedure Twsfecred.consultarCtaCte;
begin
  DefaultInterface.consultarCtaCte;
end;

procedure Twsfecred.informarCancelacionTotalFECred;
begin
  DefaultInterface.informarCancelacionTotalFECred;
end;

function Twsfecred.aceptarFECred(const Request: IAceptarFECredRequestTy): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.aceptarFECred(Request);
end;

function Twsfecred.rechazarFECred(const Request: IRechazarFECredRequestTy): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.rechazarFECred(Request);
end;

function Twsfecred.informarFacturaAgtDptoCltv(const Request: IInformarFacturaAgtDptoCltvRequestTy): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.informarFacturaAgtDptoCltv(Request);
end;

procedure Twsfecred.consultarFacturasAgtDptoCltv;
begin
  DefaultInterface.consultarFacturasAgtDptoCltv;
end;

procedure Twsfecred.consultarCuentasComitente;
begin
  DefaultInterface.consultarCuentasComitente;
end;

procedure Twsfecred.consultarObligadoRecepcion;
begin
  DefaultInterface.consultarObligadoRecepcion;
end;

procedure Twsfecred.consultarTiposRetenciones;
begin
  DefaultInterface.consultarTiposRetenciones;
end;

procedure Twsfecred.consultarTiposMotivosRechazo;
begin
  DefaultInterface.consultarTiposMotivosRechazo;
end;

procedure Twsfecred.consultarTiposFormasCancelacion;
begin
  DefaultInterface.consultarTiposFormasCancelacion;
end;

procedure Twsfecred.obtenerRemitos;
begin
  DefaultInterface.obtenerRemitos;
end;

procedure Twsfecred.consultarHistorialEstadosComprobante;
begin
  DefaultInterface.consultarHistorialEstadosComprobante;
end;

procedure Twsfecred.consultarHistorialEstadosCtaCte;
begin
  DefaultInterface.consultarHistorialEstadosCtaCte;
end;

function Twsfecred.login(const Certificado: WideString; const ClavePrivada: WideString): OLE_CANCELBOOL;
begin
  Result := DefaultInterface.login(Certificado, ClavePrivada);
end;

procedure Twsfecred.CargarLicencia;
begin
  DefaultInterface.CargarLicencia;
end;

function Twsfecred.nuevoAceptarFECredRequestTy: IAceptarFECredRequestTy;
begin
  Result := DefaultInterface.nuevoAceptarFECredRequestTy;
end;

function Twsfecred.nuevoInformarFacturaAgtDptoCltvRequestTy: IInformarFacturaAgtDptoCltvRequestTy;
begin
  Result := DefaultInterface.nuevoInformarFacturaAgtDptoCltvRequestTy;
end;

function Twsfecred.nuevoRechazarFECredRequestTy: IRechazarFECredRequestTy;
begin
  Result := DefaultInterface.nuevoRechazarFECredRequestTy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TwsfecredProperties.Create(AServer: Twsfecred);
begin
  inherited Create;
  FServer := AServer;
end;

function TwsfecredProperties.GetDefaultInterface: Iwsfecred;
begin
  Result := FServer.DefaultInterface;
end;

function TwsfecredProperties.Get_Token: WideString;
begin
    Result := DefaultInterface.Token;
end;

function TwsfecredProperties.Get_Sign: WideString;
begin
    Result := DefaultInterface.Sign;
end;

function TwsfecredProperties.Get_ErrorCode: Integer;
begin
    Result := DefaultInterface.ErrorCode;
end;

function TwsfecredProperties.Get_ErrorDesc: WideString;
begin
    Result := DefaultInterface.ErrorDesc;
end;

function TwsfecredProperties.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure TwsfecredProperties.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function TwsfecredProperties.Get_XMLRequest: WideString;
begin
    Result := DefaultInterface.XMLRequest;
end;

function TwsfecredProperties.Get_XMLResponse: WideString;
begin
    Result := DefaultInterface.XMLResponse;
end;

function TwsfecredProperties.Get_Depurar: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.Depurar;
end;

procedure TwsfecredProperties.Set_Depurar(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_Depurar(Value);
end;

function TwsfecredProperties.Get_ModoProduccion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ModoProduccion;
end;

procedure TwsfecredProperties.Set_ModoProduccion(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ModoProduccion(Value);
end;

function TwsfecredProperties.Get_consultarCmpReturn: IConsultarCmpReturnTy;
begin
    Result := DefaultInterface.consultarCmpReturn;
end;

{$ENDIF}

class function CoIdCtaCteTy.Create: IIdCtaCteTy;
begin
  Result := CreateComObject(CLASS_IdCtaCteTy) as IIdCtaCteTy;
end;

class function CoIdCtaCteTy.CreateRemote(const MachineName: string): IIdCtaCteTy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_IdCtaCteTy) as IIdCtaCteTy;
end;

procedure TIdCtaCteTy.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{B27AFDD3-1232-49BB-B143-8D6B9CDD2AC5}';
    IntfIID:   '{C9194512-99E1-4404-85AB-6218E498CEED}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TIdCtaCteTy.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IIdCtaCteTy;
  end;
end;

procedure TIdCtaCteTy.ConnectTo(svrIntf: IIdCtaCteTy);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TIdCtaCteTy.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TIdCtaCteTy.GetDefaultInterface: IIdCtaCteTy;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TIdCtaCteTy.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TIdCtaCteTyProperties.Create(Self);
{$ENDIF}
end;

destructor TIdCtaCteTy.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TIdCtaCteTy.GetServerProperties: TIdCtaCteTyProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TIdCtaCteTy.Get_codCtaCte: Double;
begin
    Result := DefaultInterface.codCtaCte;
end;

procedure TIdCtaCteTy.Set_codCtaCte(Value: Double);
begin
  DefaultInterface.Set_codCtaCte(Value);
end;

function TIdCtaCteTy.Get_idFactura: IdComprobanteTy;
begin
    Result := DefaultInterface.idFactura;
end;

procedure TIdCtaCteTy.Set_idFactura(const Value: IdComprobanteTy);
begin
  DefaultInterface.Set_idFactura(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TIdCtaCteTyProperties.Create(AServer: TIdCtaCteTy);
begin
  inherited Create;
  FServer := AServer;
end;

function TIdCtaCteTyProperties.GetDefaultInterface: IIdCtaCteTy;
begin
  Result := FServer.DefaultInterface;
end;

function TIdCtaCteTyProperties.Get_codCtaCte: Double;
begin
    Result := DefaultInterface.codCtaCte;
end;

procedure TIdCtaCteTyProperties.Set_codCtaCte(Value: Double);
begin
  DefaultInterface.Set_codCtaCte(Value);
end;

function TIdCtaCteTyProperties.Get_idFactura: IdComprobanteTy;
begin
    Result := DefaultInterface.idFactura;
end;

procedure TIdCtaCteTyProperties.Set_idFactura(const Value: IdComprobanteTy);
begin
  DefaultInterface.Set_idFactura(Value);
end;

{$ENDIF}

class function CoIdComprobanteTy.Create: IIdComprobanteTy;
begin
  Result := CreateComObject(CLASS_IdComprobanteTy) as IIdComprobanteTy;
end;

class function CoIdComprobanteTy.CreateRemote(const MachineName: string): IIdComprobanteTy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_IdComprobanteTy) as IIdComprobanteTy;
end;

procedure TIdComprobanteTy.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{02CD78F9-A667-49EA-8508-CFC2F476AB45}';
    IntfIID:   '{3ABD3582-6764-4A05-BFDE-CFED3D4A1143}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TIdComprobanteTy.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IIdComprobanteTy;
  end;
end;

procedure TIdComprobanteTy.ConnectTo(svrIntf: IIdComprobanteTy);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TIdComprobanteTy.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TIdComprobanteTy.GetDefaultInterface: IIdComprobanteTy;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TIdComprobanteTy.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TIdComprobanteTyProperties.Create(Self);
{$ENDIF}
end;

destructor TIdComprobanteTy.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TIdComprobanteTy.GetServerProperties: TIdComprobanteTyProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TIdComprobanteTy.Get_CuitEmisor: Double;
begin
    Result := DefaultInterface.CuitEmisor;
end;

procedure TIdComprobanteTy.Set_CuitEmisor(Value: Double);
begin
  DefaultInterface.Set_CuitEmisor(Value);
end;

function TIdComprobanteTy.Get_codTipoCmp: Integer;
begin
    Result := DefaultInterface.codTipoCmp;
end;

procedure TIdComprobanteTy.Set_codTipoCmp(Value: Integer);
begin
  DefaultInterface.Set_codTipoCmp(Value);
end;

function TIdComprobanteTy.Get_PtoVta: Integer;
begin
    Result := DefaultInterface.PtoVta;
end;

procedure TIdComprobanteTy.Set_PtoVta(Value: Integer);
begin
  DefaultInterface.Set_PtoVta(Value);
end;

function TIdComprobanteTy.Get_nroCmp: Double;
begin
    Result := DefaultInterface.nroCmp;
end;

procedure TIdComprobanteTy.Set_nroCmp(Value: Double);
begin
  DefaultInterface.Set_nroCmp(Value);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TIdComprobanteTyProperties.Create(AServer: TIdComprobanteTy);
begin
  inherited Create;
  FServer := AServer;
end;

function TIdComprobanteTyProperties.GetDefaultInterface: IIdComprobanteTy;
begin
  Result := FServer.DefaultInterface;
end;

function TIdComprobanteTyProperties.Get_CuitEmisor: Double;
begin
    Result := DefaultInterface.CuitEmisor;
end;

procedure TIdComprobanteTyProperties.Set_CuitEmisor(Value: Double);
begin
  DefaultInterface.Set_CuitEmisor(Value);
end;

function TIdComprobanteTyProperties.Get_codTipoCmp: Integer;
begin
    Result := DefaultInterface.codTipoCmp;
end;

procedure TIdComprobanteTyProperties.Set_codTipoCmp(Value: Integer);
begin
  DefaultInterface.Set_codTipoCmp(Value);
end;

function TIdComprobanteTyProperties.Get_PtoVta: Integer;
begin
    Result := DefaultInterface.PtoVta;
end;

procedure TIdComprobanteTyProperties.Set_PtoVta(Value: Integer);
begin
  DefaultInterface.Set_PtoVta(Value);
end;

function TIdComprobanteTyProperties.Get_nroCmp: Double;
begin
    Result := DefaultInterface.nroCmp;
end;

procedure TIdComprobanteTyProperties.Set_nroCmp(Value: Double);
begin
  DefaultInterface.Set_nroCmp(Value);
end;

{$ENDIF}

class function CoAceptarFECredRequestTy.Create: IAceptarFECredRequestTy;
begin
  Result := CreateComObject(CLASS_AceptarFECredRequestTy) as IAceptarFECredRequestTy;
end;

class function CoAceptarFECredRequestTy.CreateRemote(const MachineName: string): IAceptarFECredRequestTy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AceptarFECredRequestTy) as IAceptarFECredRequestTy;
end;

procedure TAceptarFECredRequestTy.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4516C1D1-6EC6-4017-BCB7-75E2C45C45D3}';
    IntfIID:   '{F0324362-5DE0-4A53-B253-D18C37D5FD5C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAceptarFECredRequestTy.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IAceptarFECredRequestTy;
  end;
end;

procedure TAceptarFECredRequestTy.ConnectTo(svrIntf: IAceptarFECredRequestTy);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAceptarFECredRequestTy.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAceptarFECredRequestTy.GetDefaultInterface: IAceptarFECredRequestTy;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TAceptarFECredRequestTy.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TAceptarFECredRequestTyProperties.Create(Self);
{$ENDIF}
end;

destructor TAceptarFECredRequestTy.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TAceptarFECredRequestTy.GetServerProperties: TAceptarFECredRequestTyProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TAceptarFECredRequestTy.Get_tipoCancelacion: WideString;
begin
    Result := DefaultInterface.tipoCancelacion;
end;

procedure TAceptarFECredRequestTy.Set_tipoCancelacion(const Value: WideString);
  { Warning: The property tipoCancelacion has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.tipoCancelacion := Value;
end;

function TAceptarFECredRequestTy.Get_importeCancelado: Double;
begin
    Result := DefaultInterface.importeCancelado;
end;

procedure TAceptarFECredRequestTy.Set_importeCancelado(Value: Double);
begin
  DefaultInterface.Set_importeCancelado(Value);
end;

function TAceptarFECredRequestTy.Get_importeTotalRetPesos: Double;
begin
    Result := DefaultInterface.importeTotalRetPesos;
end;

procedure TAceptarFECredRequestTy.Set_importeTotalRetPesos(Value: Double);
begin
  DefaultInterface.Set_importeTotalRetPesos(Value);
end;

function TAceptarFECredRequestTy.Get_importeEmbargoPesos: Double;
begin
    Result := DefaultInterface.importeEmbargoPesos;
end;

procedure TAceptarFECredRequestTy.Set_importeEmbargoPesos(Value: Double);
begin
  DefaultInterface.Set_importeEmbargoPesos(Value);
end;

function TAceptarFECredRequestTy.Get_saldoAceptado: Double;
begin
    Result := DefaultInterface.saldoAceptado;
end;

procedure TAceptarFECredRequestTy.Set_saldoAceptado(Value: Double);
begin
  DefaultInterface.Set_saldoAceptado(Value);
end;

function TAceptarFECredRequestTy.Get_codMoneda: WideString;
begin
    Result := DefaultInterface.codMoneda;
end;

procedure TAceptarFECredRequestTy.Set_codMoneda(const Value: WideString);
  { Warning: The property codMoneda has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.codMoneda := Value;
end;

function TAceptarFECredRequestTy.Get_cotizacionMonedaUlt: Double;
begin
    Result := DefaultInterface.cotizacionMonedaUlt;
end;

procedure TAceptarFECredRequestTy.Set_cotizacionMonedaUlt(Value: Double);
begin
  DefaultInterface.Set_cotizacionMonedaUlt(Value);
end;

procedure TAceptarFECredRequestTy.idCtaCte(codCtaCte: Double);
begin
  DefaultInterface.idCtaCte(codCtaCte);
end;

procedure TAceptarFECredRequestTy.idFactura(CuitEmisor: Double; codTipoCmp: Integer; 
                                            PtoVta: Integer; nroCmp: Double);
begin
  DefaultInterface.idFactura(CuitEmisor, codTipoCmp, PtoVta, nroCmp);
end;

procedure TAceptarFECredRequestTy.arrayConfirmarNotasDC(acepta: OLE_CANCELBOOL; CuitEmisor: Double; 
                                                        codTipoCmp: Integer; PtoVta: Integer; 
                                                        nroCmp: Double);
begin
  DefaultInterface.arrayConfirmarNotasDC(acepta, CuitEmisor, codTipoCmp, PtoVta, nroCmp);
end;

procedure TAceptarFECredRequestTy.arrayFormasCancelacion(codigo: Integer; 
                                                         const descripcion: WideString);
begin
  DefaultInterface.arrayFormasCancelacion(codigo, descripcion);
end;

procedure TAceptarFECredRequestTy.arrayRetenciones(codTipo: Integer; Importe: Double; 
                                                   Porcentaje: Double; const descMotivo: WideString);
begin
  DefaultInterface.arrayRetenciones(codTipo, Importe, Porcentaje, descMotivo);
end;

procedure TAceptarFECredRequestTy.arrayAjustesOperacion(codigo: Integer; Importe: Double);
begin
  DefaultInterface.arrayAjustesOperacion(codigo, Importe);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TAceptarFECredRequestTyProperties.Create(AServer: TAceptarFECredRequestTy);
begin
  inherited Create;
  FServer := AServer;
end;

function TAceptarFECredRequestTyProperties.GetDefaultInterface: IAceptarFECredRequestTy;
begin
  Result := FServer.DefaultInterface;
end;

function TAceptarFECredRequestTyProperties.Get_tipoCancelacion: WideString;
begin
    Result := DefaultInterface.tipoCancelacion;
end;

procedure TAceptarFECredRequestTyProperties.Set_tipoCancelacion(const Value: WideString);
  { Warning: The property tipoCancelacion has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.tipoCancelacion := Value;
end;

function TAceptarFECredRequestTyProperties.Get_importeCancelado: Double;
begin
    Result := DefaultInterface.importeCancelado;
end;

procedure TAceptarFECredRequestTyProperties.Set_importeCancelado(Value: Double);
begin
  DefaultInterface.Set_importeCancelado(Value);
end;

function TAceptarFECredRequestTyProperties.Get_importeTotalRetPesos: Double;
begin
    Result := DefaultInterface.importeTotalRetPesos;
end;

procedure TAceptarFECredRequestTyProperties.Set_importeTotalRetPesos(Value: Double);
begin
  DefaultInterface.Set_importeTotalRetPesos(Value);
end;

function TAceptarFECredRequestTyProperties.Get_importeEmbargoPesos: Double;
begin
    Result := DefaultInterface.importeEmbargoPesos;
end;

procedure TAceptarFECredRequestTyProperties.Set_importeEmbargoPesos(Value: Double);
begin
  DefaultInterface.Set_importeEmbargoPesos(Value);
end;

function TAceptarFECredRequestTyProperties.Get_saldoAceptado: Double;
begin
    Result := DefaultInterface.saldoAceptado;
end;

procedure TAceptarFECredRequestTyProperties.Set_saldoAceptado(Value: Double);
begin
  DefaultInterface.Set_saldoAceptado(Value);
end;

function TAceptarFECredRequestTyProperties.Get_codMoneda: WideString;
begin
    Result := DefaultInterface.codMoneda;
end;

procedure TAceptarFECredRequestTyProperties.Set_codMoneda(const Value: WideString);
  { Warning: The property codMoneda has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.codMoneda := Value;
end;

function TAceptarFECredRequestTyProperties.Get_cotizacionMonedaUlt: Double;
begin
    Result := DefaultInterface.cotizacionMonedaUlt;
end;

procedure TAceptarFECredRequestTyProperties.Set_cotizacionMonedaUlt(Value: Double);
begin
  DefaultInterface.Set_cotizacionMonedaUlt(Value);
end;

{$ENDIF}

class function CoConsultarCmpReturnTy.Create: IConsultarCmpReturnTy;
begin
  Result := CreateComObject(CLASS_ConsultarCmpReturnTy) as IConsultarCmpReturnTy;
end;

class function CoConsultarCmpReturnTy.CreateRemote(const MachineName: string): IConsultarCmpReturnTy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConsultarCmpReturnTy) as IConsultarCmpReturnTy;
end;

procedure TConsultarCmpReturnTy.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C2B0F281-F728-47D0-ACD5-30F614857DD6}';
    IntfIID:   '{BB315EBC-4D6F-4542-BC1D-B4878E91A9EF}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TConsultarCmpReturnTy.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IConsultarCmpReturnTy;
  end;
end;

procedure TConsultarCmpReturnTy.ConnectTo(svrIntf: IConsultarCmpReturnTy);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TConsultarCmpReturnTy.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TConsultarCmpReturnTy.GetDefaultInterface: IConsultarCmpReturnTy;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TConsultarCmpReturnTy.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TConsultarCmpReturnTyProperties.Create(Self);
{$ENDIF}
end;

destructor TConsultarCmpReturnTy.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TConsultarCmpReturnTy.GetServerProperties: TConsultarCmpReturnTyProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TConsultarCmpReturnTy.Get_arrayComprobantes(Indice: Integer): IComprobanteTy;
begin
    Result := DefaultInterface.arrayComprobantes[Indice];
end;

function TConsultarCmpReturnTy.Get_arrayComprobantesCount: Integer;
begin
    Result := DefaultInterface.arrayComprobantesCount;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TConsultarCmpReturnTyProperties.Create(AServer: TConsultarCmpReturnTy);
begin
  inherited Create;
  FServer := AServer;
end;

function TConsultarCmpReturnTyProperties.GetDefaultInterface: IConsultarCmpReturnTy;
begin
  Result := FServer.DefaultInterface;
end;

function TConsultarCmpReturnTyProperties.Get_arrayComprobantes(Indice: Integer): IComprobanteTy;
begin
    Result := DefaultInterface.arrayComprobantes[Indice];
end;

function TConsultarCmpReturnTyProperties.Get_arrayComprobantesCount: Integer;
begin
    Result := DefaultInterface.arrayComprobantesCount;
end;

{$ENDIF}

class function CoComprobanteTy.Create: IComprobanteTy;
begin
  Result := CreateComObject(CLASS_ComprobanteTy) as IComprobanteTy;
end;

class function CoComprobanteTy.CreateRemote(const MachineName: string): IComprobanteTy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComprobanteTy) as IComprobanteTy;
end;

procedure TComprobanteTy.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5088161C-D4C5-4804-B3D2-ADBB7105F6CD}';
    IntfIID:   '{E4EF8C5E-D0D5-4C0A-A1AA-AFDC93A8D4E7}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TComprobanteTy.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IComprobanteTy;
  end;
end;

procedure TComprobanteTy.ConnectTo(svrIntf: IComprobanteTy);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TComprobanteTy.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TComprobanteTy.GetDefaultInterface: IComprobanteTy;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TComprobanteTy.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TComprobanteTyProperties.Create(Self);
{$ENDIF}
end;

destructor TComprobanteTy.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TComprobanteTy.GetServerProperties: TComprobanteTyProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TComprobanteTy.Get_CuitEmisor: Double;
begin
    Result := DefaultInterface.CuitEmisor;
end;

function TComprobanteTy.Get_razonSocialEmi: WideString;
begin
    Result := DefaultInterface.razonSocialEmi;
end;

function TComprobanteTy.Get_codTipoCmp: Integer;
begin
    Result := DefaultInterface.codTipoCmp;
end;

function TComprobanteTy.Get_PtoVta: Integer;
begin
    Result := DefaultInterface.PtoVta;
end;

function TComprobanteTy.Get_nroCmp: Double;
begin
    Result := DefaultInterface.nroCmp;
end;

function TComprobanteTy.Get_cuitReceptor: Double;
begin
    Result := DefaultInterface.cuitReceptor;
end;

function TComprobanteTy.Get_razonSocialRecep: WideString;
begin
    Result := DefaultInterface.razonSocialRecep;
end;

function TComprobanteTy.Get_tipoCodAuto: WideString;
begin
    Result := DefaultInterface.tipoCodAuto;
end;

function TComprobanteTy.Get_CodAutorizacion: Double;
begin
    Result := DefaultInterface.CodAutorizacion;
end;

function TComprobanteTy.Get_fechaEmision: WideString;
begin
    Result := DefaultInterface.fechaEmision;
end;

function TComprobanteTy.Get_fechaPuestaDispo: WideString;
begin
    Result := DefaultInterface.fechaPuestaDispo;
end;

function TComprobanteTy.Get_fechaVenPago: WideString;
begin
    Result := DefaultInterface.fechaVenPago;
end;

function TComprobanteTy.Get_fechaVenAcep: WideString;
begin
    Result := DefaultInterface.fechaVenAcep;
end;

function TComprobanteTy.Get_importeTotal: Double;
begin
    Result := DefaultInterface.importeTotal;
end;

function TComprobanteTy.Get_codMoneda: WideString;
begin
    Result := DefaultInterface.codMoneda;
end;

function TComprobanteTy.Get_cotizacionMoneda: Double;
begin
    Result := DefaultInterface.cotizacionMoneda;
end;

function TComprobanteTy.Get_CBUEmisor: WideString;
begin
    Result := DefaultInterface.CBUEmisor;
end;

function TComprobanteTy.Get_AliasEmisor: WideString;
begin
    Result := DefaultInterface.AliasEmisor;
end;

function TComprobanteTy.Get_esAnulacion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.esAnulacion;
end;

function TComprobanteTy.Get_esPostAceptacion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.esPostAceptacion;
end;

function TComprobanteTy.Get_idComprobanteAsociado: IIdComprobanteTy;
begin
    Result := DefaultInterface.idComprobanteAsociado;
end;

function TComprobanteTy.Get_referenciasComerciales: WideString;
begin
    Result := DefaultInterface.referenciasComerciales;
end;

function TComprobanteTy.Get_arraySubtotalesIVA(Indice: Integer): ISubtotalIVATy;
begin
    Result := DefaultInterface.arraySubtotalesIVA[Indice];
end;

function TComprobanteTy.Get_arraySubtotalesIVACount: Integer;
begin
    Result := DefaultInterface.arraySubtotalesIVACount;
end;

function TComprobanteTy.Get_arrayOtrosTributos: IOtroTributoTy;
begin
    Result := DefaultInterface.arrayOtrosTributos;
end;

function TComprobanteTy.Get_arrayOtrosTributosCount: Integer;
begin
    Result := DefaultInterface.arrayOtrosTributosCount;
end;

function TComprobanteTy.Get_arrayItems: IItemTy;
begin
    Result := DefaultInterface.arrayItems;
end;

function TComprobanteTy.Get_arrayItemsCount: Integer;
begin
    Result := DefaultInterface.arrayItemsCount;
end;

function TComprobanteTy.Get_datosGenerales: WideString;
begin
    Result := DefaultInterface.datosGenerales;
end;

function TComprobanteTy.Get_datosComerciales: WideString;
begin
    Result := DefaultInterface.datosComerciales;
end;

function TComprobanteTy.Get_leyendaComercial: WideString;
begin
    Result := DefaultInterface.leyendaComercial;
end;

function TComprobanteTy.Get_codCtaCte: Double;
begin
    Result := DefaultInterface.codCtaCte;
end;

function TComprobanteTy.Get_estado_estado: WideString;
begin
    Result := DefaultInterface.estado_estado;
end;

function TComprobanteTy.Get_estado_fecha: WideString;
begin
    Result := DefaultInterface.estado_fecha;
end;

function TComprobanteTy.Get_tipoAcep: WideString;
begin
    Result := DefaultInterface.tipoAcep;
end;

function TComprobanteTy.Get_fechaHoraAcep: WideString;
begin
    Result := DefaultInterface.fechaHoraAcep;
end;

function TComprobanteTy.Get_arrayMotivosRechazo: IMotivoRechazoTy;
begin
    Result := DefaultInterface.arrayMotivosRechazo;
end;

function TComprobanteTy.Get_arrayMotivosRechazoCount: Integer;
begin
    Result := DefaultInterface.arrayMotivosRechazoCount;
end;

function TComprobanteTy.Get_infoAgDtpoCltv: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.infoAgDtpoCltv;
end;

function TComprobanteTy.Get_fechaInfoAgDptoCltv: WideString;
begin
    Result := DefaultInterface.fechaInfoAgDptoCltv;
end;

function TComprobanteTy.Get_idPagoAgDptoCltv: WideString;
begin
    Result := DefaultInterface.idPagoAgDptoCltv;
end;

function TComprobanteTy.Get_CBUdePago: WideString;
begin
    Result := DefaultInterface.CBUdePago;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TComprobanteTyProperties.Create(AServer: TComprobanteTy);
begin
  inherited Create;
  FServer := AServer;
end;

function TComprobanteTyProperties.GetDefaultInterface: IComprobanteTy;
begin
  Result := FServer.DefaultInterface;
end;

function TComprobanteTyProperties.Get_CuitEmisor: Double;
begin
    Result := DefaultInterface.CuitEmisor;
end;

function TComprobanteTyProperties.Get_razonSocialEmi: WideString;
begin
    Result := DefaultInterface.razonSocialEmi;
end;

function TComprobanteTyProperties.Get_codTipoCmp: Integer;
begin
    Result := DefaultInterface.codTipoCmp;
end;

function TComprobanteTyProperties.Get_PtoVta: Integer;
begin
    Result := DefaultInterface.PtoVta;
end;

function TComprobanteTyProperties.Get_nroCmp: Double;
begin
    Result := DefaultInterface.nroCmp;
end;

function TComprobanteTyProperties.Get_cuitReceptor: Double;
begin
    Result := DefaultInterface.cuitReceptor;
end;

function TComprobanteTyProperties.Get_razonSocialRecep: WideString;
begin
    Result := DefaultInterface.razonSocialRecep;
end;

function TComprobanteTyProperties.Get_tipoCodAuto: WideString;
begin
    Result := DefaultInterface.tipoCodAuto;
end;

function TComprobanteTyProperties.Get_CodAutorizacion: Double;
begin
    Result := DefaultInterface.CodAutorizacion;
end;

function TComprobanteTyProperties.Get_fechaEmision: WideString;
begin
    Result := DefaultInterface.fechaEmision;
end;

function TComprobanteTyProperties.Get_fechaPuestaDispo: WideString;
begin
    Result := DefaultInterface.fechaPuestaDispo;
end;

function TComprobanteTyProperties.Get_fechaVenPago: WideString;
begin
    Result := DefaultInterface.fechaVenPago;
end;

function TComprobanteTyProperties.Get_fechaVenAcep: WideString;
begin
    Result := DefaultInterface.fechaVenAcep;
end;

function TComprobanteTyProperties.Get_importeTotal: Double;
begin
    Result := DefaultInterface.importeTotal;
end;

function TComprobanteTyProperties.Get_codMoneda: WideString;
begin
    Result := DefaultInterface.codMoneda;
end;

function TComprobanteTyProperties.Get_cotizacionMoneda: Double;
begin
    Result := DefaultInterface.cotizacionMoneda;
end;

function TComprobanteTyProperties.Get_CBUEmisor: WideString;
begin
    Result := DefaultInterface.CBUEmisor;
end;

function TComprobanteTyProperties.Get_AliasEmisor: WideString;
begin
    Result := DefaultInterface.AliasEmisor;
end;

function TComprobanteTyProperties.Get_esAnulacion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.esAnulacion;
end;

function TComprobanteTyProperties.Get_esPostAceptacion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.esPostAceptacion;
end;

function TComprobanteTyProperties.Get_idComprobanteAsociado: IIdComprobanteTy;
begin
    Result := DefaultInterface.idComprobanteAsociado;
end;

function TComprobanteTyProperties.Get_referenciasComerciales: WideString;
begin
    Result := DefaultInterface.referenciasComerciales;
end;

function TComprobanteTyProperties.Get_arraySubtotalesIVA(Indice: Integer): ISubtotalIVATy;
begin
    Result := DefaultInterface.arraySubtotalesIVA[Indice];
end;

function TComprobanteTyProperties.Get_arraySubtotalesIVACount: Integer;
begin
    Result := DefaultInterface.arraySubtotalesIVACount;
end;

function TComprobanteTyProperties.Get_arrayOtrosTributos: IOtroTributoTy;
begin
    Result := DefaultInterface.arrayOtrosTributos;
end;

function TComprobanteTyProperties.Get_arrayOtrosTributosCount: Integer;
begin
    Result := DefaultInterface.arrayOtrosTributosCount;
end;

function TComprobanteTyProperties.Get_arrayItems: IItemTy;
begin
    Result := DefaultInterface.arrayItems;
end;

function TComprobanteTyProperties.Get_arrayItemsCount: Integer;
begin
    Result := DefaultInterface.arrayItemsCount;
end;

function TComprobanteTyProperties.Get_datosGenerales: WideString;
begin
    Result := DefaultInterface.datosGenerales;
end;

function TComprobanteTyProperties.Get_datosComerciales: WideString;
begin
    Result := DefaultInterface.datosComerciales;
end;

function TComprobanteTyProperties.Get_leyendaComercial: WideString;
begin
    Result := DefaultInterface.leyendaComercial;
end;

function TComprobanteTyProperties.Get_codCtaCte: Double;
begin
    Result := DefaultInterface.codCtaCte;
end;

function TComprobanteTyProperties.Get_estado_estado: WideString;
begin
    Result := DefaultInterface.estado_estado;
end;

function TComprobanteTyProperties.Get_estado_fecha: WideString;
begin
    Result := DefaultInterface.estado_fecha;
end;

function TComprobanteTyProperties.Get_tipoAcep: WideString;
begin
    Result := DefaultInterface.tipoAcep;
end;

function TComprobanteTyProperties.Get_fechaHoraAcep: WideString;
begin
    Result := DefaultInterface.fechaHoraAcep;
end;

function TComprobanteTyProperties.Get_arrayMotivosRechazo: IMotivoRechazoTy;
begin
    Result := DefaultInterface.arrayMotivosRechazo;
end;

function TComprobanteTyProperties.Get_arrayMotivosRechazoCount: Integer;
begin
    Result := DefaultInterface.arrayMotivosRechazoCount;
end;

function TComprobanteTyProperties.Get_infoAgDtpoCltv: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.infoAgDtpoCltv;
end;

function TComprobanteTyProperties.Get_fechaInfoAgDptoCltv: WideString;
begin
    Result := DefaultInterface.fechaInfoAgDptoCltv;
end;

function TComprobanteTyProperties.Get_idPagoAgDptoCltv: WideString;
begin
    Result := DefaultInterface.idPagoAgDptoCltv;
end;

function TComprobanteTyProperties.Get_CBUdePago: WideString;
begin
    Result := DefaultInterface.CBUdePago;
end;

{$ENDIF}

class function CoSubtotalIVATy.Create: ISubtotalIVATy;
begin
  Result := CreateComObject(CLASS_SubtotalIVATy) as ISubtotalIVATy;
end;

class function CoSubtotalIVATy.CreateRemote(const MachineName: string): ISubtotalIVATy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SubtotalIVATy) as ISubtotalIVATy;
end;

procedure TSubtotalIVATy.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6AB7D1ED-1C7B-498D-B0CB-639178F5E98F}';
    IntfIID:   '{873012B5-0A40-440E-9F18-ED81C3C7AD4F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSubtotalIVATy.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISubtotalIVATy;
  end;
end;

procedure TSubtotalIVATy.ConnectTo(svrIntf: ISubtotalIVATy);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSubtotalIVATy.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSubtotalIVATy.GetDefaultInterface: ISubtotalIVATy;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSubtotalIVATy.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSubtotalIVATyProperties.Create(Self);
{$ENDIF}
end;

destructor TSubtotalIVATy.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSubtotalIVATy.GetServerProperties: TSubtotalIVATyProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSubtotalIVATyProperties.Create(AServer: TSubtotalIVATy);
begin
  inherited Create;
  FServer := AServer;
end;

function TSubtotalIVATyProperties.GetDefaultInterface: ISubtotalIVATy;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoItemTy.Create: IItemTy;
begin
  Result := CreateComObject(CLASS_ItemTy) as IItemTy;
end;

class function CoItemTy.CreateRemote(const MachineName: string): IItemTy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ItemTy) as IItemTy;
end;

procedure TItemTy.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2FA6E1A5-A1F8-4A90-9B4F-2C8A722AD481}';
    IntfIID:   '{572B401B-91D9-46CA-85A7-ED286B14693B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TItemTy.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IItemTy;
  end;
end;

procedure TItemTy.ConnectTo(svrIntf: IItemTy);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TItemTy.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TItemTy.GetDefaultInterface: IItemTy;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TItemTy.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TItemTyProperties.Create(Self);
{$ENDIF}
end;

destructor TItemTy.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TItemTy.GetServerProperties: TItemTyProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TItemTyProperties.Create(AServer: TItemTy);
begin
  inherited Create;
  FServer := AServer;
end;

function TItemTyProperties.GetDefaultInterface: IItemTy;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoMotivoRechazoType.Create: IMotivoRechazoTy;
begin
  Result := CreateComObject(CLASS_MotivoRechazoType) as IMotivoRechazoTy;
end;

class function CoMotivoRechazoType.CreateRemote(const MachineName: string): IMotivoRechazoTy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MotivoRechazoType) as IMotivoRechazoTy;
end;

procedure TMotivoRechazoType.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{519CBF25-50EE-42E6-A732-A7CC2AC99A1C}';
    IntfIID:   '{21AC85E6-B7A9-487F-BCBC-19E18AE05D42}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMotivoRechazoType.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMotivoRechazoTy;
  end;
end;

procedure TMotivoRechazoType.ConnectTo(svrIntf: IMotivoRechazoTy);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMotivoRechazoType.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMotivoRechazoType.GetDefaultInterface: IMotivoRechazoTy;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMotivoRechazoType.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMotivoRechazoTypeProperties.Create(Self);
{$ENDIF}
end;

destructor TMotivoRechazoType.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMotivoRechazoType.GetServerProperties: TMotivoRechazoTypeProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMotivoRechazoTypeProperties.Create(AServer: TMotivoRechazoType);
begin
  inherited Create;
  FServer := AServer;
end;

function TMotivoRechazoTypeProperties.GetDefaultInterface: IMotivoRechazoTy;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoInformarFacturaAgtDptoCltvRequestTy.Create: IInformarFacturaAgtDptoCltvRequestTy;
begin
  Result := CreateComObject(CLASS_InformarFacturaAgtDptoCltvRequestTy) as IInformarFacturaAgtDptoCltvRequestTy;
end;

class function CoInformarFacturaAgtDptoCltvRequestTy.CreateRemote(const MachineName: string): IInformarFacturaAgtDptoCltvRequestTy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_InformarFacturaAgtDptoCltvRequestTy) as IInformarFacturaAgtDptoCltvRequestTy;
end;

procedure TInformarFacturaAgtDptoCltvRequestTy.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CD68CB93-ECDF-42BE-9854-02FA02E8B30C}';
    IntfIID:   '{3DEF5AFE-1202-4B92-BEBB-4B006E29C02F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TInformarFacturaAgtDptoCltvRequestTy.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IInformarFacturaAgtDptoCltvRequestTy;
  end;
end;

procedure TInformarFacturaAgtDptoCltvRequestTy.ConnectTo(svrIntf: IInformarFacturaAgtDptoCltvRequestTy);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TInformarFacturaAgtDptoCltvRequestTy.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TInformarFacturaAgtDptoCltvRequestTy.GetDefaultInterface: IInformarFacturaAgtDptoCltvRequestTy;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TInformarFacturaAgtDptoCltvRequestTy.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TInformarFacturaAgtDptoCltvRequestTyProperties.Create(Self);
{$ENDIF}
end;

destructor TInformarFacturaAgtDptoCltvRequestTy.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TInformarFacturaAgtDptoCltvRequestTy.GetServerProperties: TInformarFacturaAgtDptoCltvRequestTyProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TInformarFacturaAgtDptoCltvRequestTy.idCtaCte(codCtaCte: Double);
begin
  DefaultInterface.idCtaCte(codCtaCte);
end;

procedure TInformarFacturaAgtDptoCltvRequestTy.idFactura(CuitEmisor: Double; codTipoCmp: Integer; 
                                                         PtoVta: Integer; nroCmp: Double);
begin
  DefaultInterface.idFactura(CuitEmisor, codTipoCmp, PtoVta, nroCmp);
end;

procedure TInformarFacturaAgtDptoCltvRequestTy.ctaComitente(cuentaDepositante: Integer; 
                                                            subcuentaComitente: Double; 
                                                            const denominacion: WideString);
begin
  DefaultInterface.ctaComitente(cuentaDepositante, subcuentaComitente, denominacion);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TInformarFacturaAgtDptoCltvRequestTyProperties.Create(AServer: TInformarFacturaAgtDptoCltvRequestTy);
begin
  inherited Create;
  FServer := AServer;
end;

function TInformarFacturaAgtDptoCltvRequestTyProperties.GetDefaultInterface: IInformarFacturaAgtDptoCltvRequestTy;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoRechazarFECredRequestTy.Create: IRechazarFECredRequestTy;
begin
  Result := CreateComObject(CLASS_RechazarFECredRequestTy) as IRechazarFECredRequestTy;
end;

class function CoRechazarFECredRequestTy.CreateRemote(const MachineName: string): IRechazarFECredRequestTy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RechazarFECredRequestTy) as IRechazarFECredRequestTy;
end;

procedure TRechazarFECredRequestTy.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{28C2A13F-C5BE-49BE-8DA4-635CF9529B93}';
    IntfIID:   '{30EBD9FB-D607-484D-A5E8-8AD7522DA407}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRechazarFECredRequestTy.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IRechazarFECredRequestTy;
  end;
end;

procedure TRechazarFECredRequestTy.ConnectTo(svrIntf: IRechazarFECredRequestTy);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRechazarFECredRequestTy.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRechazarFECredRequestTy.GetDefaultInterface: IRechazarFECredRequestTy;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TRechazarFECredRequestTy.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRechazarFECredRequestTyProperties.Create(Self);
{$ENDIF}
end;

destructor TRechazarFECredRequestTy.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRechazarFECredRequestTy.GetServerProperties: TRechazarFECredRequestTyProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TRechazarFECredRequestTy.idCtaCte(codCtaCte: Double);
begin
  DefaultInterface.idCtaCte(codCtaCte);
end;

procedure TRechazarFECredRequestTy.idFactura(CuitEmisor: Double; codTipoCmp: Integer; 
                                             PtoVta: Integer; nroCmp: Double);
begin
  DefaultInterface.idFactura(CuitEmisor, codTipoCmp, PtoVta, nroCmp);
end;

procedure TRechazarFECredRequestTy.arrayMotivosRechazo(codMotivo: Integer; 
                                                       const descMotivo: WideString; 
                                                       const justificacion: WideString);
begin
  DefaultInterface.arrayMotivosRechazo(codMotivo, descMotivo, justificacion);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRechazarFECredRequestTyProperties.Create(AServer: TRechazarFECredRequestTy);
begin
  inherited Create;
  FServer := AServer;
end;

function TRechazarFECredRequestTyProperties.GetDefaultInterface: IRechazarFECredRequestTy;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

end.
