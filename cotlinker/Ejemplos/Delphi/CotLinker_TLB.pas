unit CotLinker_TLB;

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
// File generated on 26/07/2017 05:00:06 p.m. from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\xampp\bitingenieria.com.ar\cotlinker\cotlinker.dll (1)
// LIBID: {D81F83E9-DA3C-4D93-BA63-1F0DD4165F21}
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
  CotLinkerMajorVersion = 1;
  CotLinkerMinorVersion = 0;

  LIBID_CotLinker: TGUID = '{D81F83E9-DA3C-4D93-BA63-1F0DD4165F21}';

  IID_IClienteRE: TGUID = '{4F1E8A62-FF50-431F-A55B-93DF553056C7}';
  CLASS_ClienteRE: TGUID = '{F38108A8-23C0-4A64-89AB-E12296EC0523}';
  IID_IRemito: TGUID = '{C6730FEF-5B9B-40CC-A590-C009D88E261D}';
  CLASS_Remito: TGUID = '{51DDA116-61C5-4915-9F5E-5EC26F7F4393}';
  IID_IProducto: TGUID = '{64B5FDC0-3C74-44DB-A7A5-23F0F3568990}';
  CLASS_Producto: TGUID = '{3E5EAD2A-FF3C-43B5-931E-4BCA016AED95}';
  IID_IResultado: TGUID = '{40C4AF11-AA56-4A59-8C39-4E2786590D4D}';
  CLASS_Resultado: TGUID = '{C7F51EE5-245E-4837-A375-63F47D290A60}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IClienteRE = interface;
  IClienteREDisp = dispinterface;
  IRemito = interface;
  IRemitoDisp = dispinterface;
  IProducto = interface;
  IProductoDisp = dispinterface;
  IResultado = interface;
  IResultadoDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ClienteRE = IClienteRE;
  Remito = IRemito;
  Producto = IProducto;
  Resultado = IResultado;


// *********************************************************************//
// Interface: IClienteRE
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F1E8A62-FF50-431F-A55B-93DF553056C7}
// *********************************************************************//
  IClienteRE = interface(IDispatch)
    ['{4F1E8A62-FF50-431F-A55B-93DF553056C7}']
    procedure AgregaRemito(const Remito: IRemito); safecall;
    procedure AgregaProducto(const Producto: IProducto); safecall;
    procedure Inicializar; safecall;
    function Enviar: OLE_CANCELBOOL; safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const Value: WideString); safecall;
    function Get_CUIT: Double; safecall;
    procedure Set_CUIT(Value: Double); safecall;
    function Get_NroPlanta: Integer; safecall;
    procedure Set_NroPlanta(Value: Integer); safecall;
    function Get_NroPuerta: Integer; safecall;
    procedure Set_NroPuerta(Value: Integer); safecall;
    function Get_Fecha: WideString; safecall;
    procedure Set_Fecha(const Value: WideString); safecall;
    function Get_NroSecuencial: Integer; safecall;
    procedure Set_NroSecuencial(Value: Integer); safecall;
    function Get_Pedido: WideString; safecall;
    function Get_XMLRespuesta: WideString; safecall;
    procedure ObtenerResultado(const Resultado: IResultado); safecall;
    function Get_ModoProduccion: OLE_CANCELBOOL; safecall;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL); safecall;
    function NuevoRemito: IRemito; safecall;
    function NuevoProducto: IProducto; safecall;
    function Get_Resultado: IResultado; safecall;
    procedure AgregaNuevoRemito; safecall;
    procedure AgregaNuevoProducto; safecall;
    property Password: WideString read Get_Password write Set_Password;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property NroPlanta: Integer read Get_NroPlanta write Set_NroPlanta;
    property NroPuerta: Integer read Get_NroPuerta write Set_NroPuerta;
    property Fecha: WideString read Get_Fecha write Set_Fecha;
    property NroSecuencial: Integer read Get_NroSecuencial write Set_NroSecuencial;
    property Pedido: WideString read Get_Pedido;
    property XMLRespuesta: WideString read Get_XMLRespuesta;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
    property Resultado: IResultado read Get_Resultado;
  end;

// *********************************************************************//
// DispIntf:  IClienteREDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4F1E8A62-FF50-431F-A55B-93DF553056C7}
// *********************************************************************//
  IClienteREDisp = dispinterface
    ['{4F1E8A62-FF50-431F-A55B-93DF553056C7}']
    procedure AgregaRemito(const Remito: IRemito); dispid 201;
    procedure AgregaProducto(const Producto: IProducto); dispid 202;
    procedure Inicializar; dispid 203;
    function Enviar: OLE_CANCELBOOL; dispid 204;
    property Password: WideString dispid 208;
    property CUIT: Double dispid 209;
    property NroPlanta: Integer dispid 210;
    property NroPuerta: Integer dispid 211;
    property Fecha: WideString dispid 212;
    property NroSecuencial: Integer dispid 213;
    property Pedido: WideString readonly dispid 207;
    property XMLRespuesta: WideString readonly dispid 214;
    procedure ObtenerResultado(const Resultado: IResultado); dispid 206;
    property ModoProduccion: OLE_CANCELBOOL dispid 205;
    function NuevoRemito: IRemito; dispid 215;
    function NuevoProducto: IProducto; dispid 216;
    property Resultado: IResultado readonly dispid 217;
    procedure AgregaNuevoRemito; dispid 218;
    procedure AgregaNuevoProducto; dispid 219;
  end;

// *********************************************************************//
// Interface: IRemito
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6730FEF-5B9B-40CC-A590-C009D88E261D}
// *********************************************************************//
  IRemito = interface(IDispatch)
    ['{C6730FEF-5B9B-40CC-A590-C009D88E261D}']
    function Get_FECHA_EMISION: WideString; safecall;
    procedure Set_FECHA_EMISION(const Value: WideString); safecall;
    function Get_CU_CODIGO_DGI: Integer; safecall;
    procedure Set_CU_CODIGO_DGI(Value: Integer); safecall;
    function Get_CU_TIPO: WideString; safecall;
    procedure Set_CU_TIPO(const Value: WideString); safecall;
    function Get_CU_PREFIJO: Integer; safecall;
    procedure Set_CU_PREFIJO(Value: Integer); safecall;
    function Get_CU_NUMERO: Integer; safecall;
    procedure Set_CU_NUMERO(Value: Integer); safecall;
    function Get_FECHA_SALIDA_TRANSPORTE: WideString; safecall;
    procedure Set_FECHA_SALIDA_TRANSPORTE(const Value: WideString); safecall;
    function Get_HORA_SALIDA_TRANSPORTE: WideString; safecall;
    procedure Set_HORA_SALIDA_TRANSPORTE(const Value: WideString); safecall;
    function Get_SUJETO_GENERADOR: WideString; safecall;
    procedure Set_SUJETO_GENERADOR(const Value: WideString); safecall;
    function Get_DESTINATARIO_CONSUMIDOR_FINAL: OLE_CANCELBOOL; safecall;
    procedure Set_DESTINATARIO_CONSUMIDOR_FINAL(Value: OLE_CANCELBOOL); safecall;
    function Get_DESTINATARIO_TIPO_DOCUMENTO: WideString; safecall;
    procedure Set_DESTINATARIO_TIPO_DOCUMENTO(const Value: WideString); safecall;
    function Get_DESTINATARIO_DOCUMENTO: WideString; safecall;
    procedure Set_DESTINATARIO_DOCUMENTO(const Value: WideString); safecall;
    function Get_DESTINATARIO_CUIT: Double; safecall;
    procedure Set_DESTINATARIO_CUIT(Value: Double); safecall;
    function Get_DESTINATARIO_RAZON_SOCIAL: WideString; safecall;
    procedure Set_DESTINATARIO_RAZON_SOCIAL(const Value: WideString); safecall;
    function Get_DESTINATARIO_TENEDOR: OLE_CANCELBOOL; safecall;
    procedure Set_DESTINATARIO_TENEDOR(Value: OLE_CANCELBOOL); safecall;
    function Get_DESTINO_DOMICILIO_CALLE: WideString; safecall;
    procedure Set_DESTINO_DOMICILIO_CALLE(const Value: WideString); safecall;
    function Get_DESTINO_DOMICILIO_NUMERO: Integer; safecall;
    procedure Set_DESTINO_DOMICILIO_NUMERO(Value: Integer); safecall;
    function Get_DESTINO_DOMICILIO_COMPLE: WideString; safecall;
    procedure Set_DESTINO_DOMICILIO_COMPLE(const Value: WideString); safecall;
    function Get_DESTINO_DOMICILIO_PISO: WideString; safecall;
    procedure Set_DESTINO_DOMICILIO_PISO(const Value: WideString); safecall;
    function Get_DESTINO_DOMICILIO_DTO: WideString; safecall;
    procedure Set_DESTINO_DOMICILIO_DTO(const Value: WideString); safecall;
    function Get_DESTINO_DOMICILIO_BARRIO: WideString; safecall;
    procedure Set_DESTINO_DOMICILIO_BARRIO(const Value: WideString); safecall;
    function Get_DESTINO_DOMICILIO_CODIGO_POSTAL: WideString; safecall;
    procedure Set_DESTINO_DOMICILIO_CODIGO_POSTAL(const Value: WideString); safecall;
    function Get_DESTINO_DOMICILIO_LOCALIDAD: WideString; safecall;
    procedure Set_DESTINO_DOMICILIO_LOCALIDAD(const Value: WideString); safecall;
    function Get_DESTINO_DOMICILIO_PROVINCIA: WideString; safecall;
    procedure Set_DESTINO_DOMICILIO_PROVINCIA(const Value: WideString); safecall;
    function Get_PROPIO_DESTINO_DOMICILIO_CODIGO: WideString; safecall;
    procedure Set_PROPIO_DESTINO_DOMICILIO_CODIGO(const Value: WideString); safecall;
    function Get_ENTREGA_DOMICILIO_ORIGEN: WideString; safecall;
    procedure Set_ENTREGA_DOMICILIO_ORIGEN(const Value: WideString); safecall;
    function Get_ORIGEN_CUIT: Double; safecall;
    procedure Set_ORIGEN_CUIT(Value: Double); safecall;
    function Get_ORIGEN_RAZON_SOCIAL: WideString; safecall;
    procedure Set_ORIGEN_RAZON_SOCIAL(const Value: WideString); safecall;
    function Get_EMISOR_TENEDOR: OLE_CANCELBOOL; safecall;
    procedure Set_EMISOR_TENEDOR(Value: OLE_CANCELBOOL); safecall;
    function Get_ORIGEN_DOMICILIO_CALLE: WideString; safecall;
    procedure Set_ORIGEN_DOMICILIO_CALLE(const Value: WideString); safecall;
    function Get_ORIGEN_DOMICILIO_NUMERO: Integer; safecall;
    procedure Set_ORIGEN_DOMICILIO_NUMERO(Value: Integer); safecall;
    function Get_ORIGEN_DOMICILIO_COMPLE: WideString; safecall;
    procedure Set_ORIGEN_DOMICILIO_COMPLE(const Value: WideString); safecall;
    function Get_ORIGEN_DOMICILIO_PISO: WideString; safecall;
    procedure Set_ORIGEN_DOMICILIO_PISO(const Value: WideString); safecall;
    function Get_ORIGEN_DOMICILIO_DTO: WideString; safecall;
    procedure Set_ORIGEN_DOMICILIO_DTO(const Value: WideString); safecall;
    function Get_ORIGEN_DOMICILIO_BARRIO: WideString; safecall;
    procedure Set_ORIGEN_DOMICILIO_BARRIO(const Value: WideString); safecall;
    function Get_ORIGEN_DOMICILIO_CODIGO_POSTAL: WideString; safecall;
    procedure Set_ORIGEN_DOMICILIO_CODIGO_POSTAL(const Value: WideString); safecall;
    function Get_ORIGEN_DOMICILIO_LOCALIDAD: WideString; safecall;
    procedure Set_ORIGEN_DOMICILIO_LOCALIDAD(const Value: WideString); safecall;
    function Get_ORIGEN_DOMICILIO_PROVINCIA: WideString; safecall;
    procedure Set_ORIGEN_DOMICILIO_PROVINCIA(const Value: WideString); safecall;
    function Get_TRANSPORTISTA_CUIT: Double; safecall;
    procedure Set_TRANSPORTISTA_CUIT(Value: Double); safecall;
    function Get_TIPO_RECORRIDO: WideString; safecall;
    procedure Set_TIPO_RECORRIDO(const Value: WideString); safecall;
    function Get_RECORRIDO_LOCALIDAD: WideString; safecall;
    procedure Set_RECORRIDO_LOCALIDAD(const Value: WideString); safecall;
    function Get_RECORRIDO_CALLE: WideString; safecall;
    procedure Set_RECORRIDO_CALLE(const Value: WideString); safecall;
    function Get_RECORRIDO_RUTA: WideString; safecall;
    procedure Set_RECORRIDO_RUTA(const Value: WideString); safecall;
    function Get_PATENTE_VEHICULO: WideString; safecall;
    procedure Set_PATENTE_VEHICULO(const Value: WideString); safecall;
    function Get_PATENTE_ACOPLADO: WideString; safecall;
    procedure Set_PATENTE_ACOPLADO(const Value: WideString); safecall;
    function Get_PRODUCTO_NO_TERM_DEV: OLE_CANCELBOOL; safecall;
    procedure Set_PRODUCTO_NO_TERM_DEV(Value: OLE_CANCELBOOL); safecall;
    function Get_IMPORTE: Double; safecall;
    procedure Set_IMPORTE(Value: Double); safecall;
    function LineaTexto: WideString; safecall;
    property FECHA_EMISION: WideString read Get_FECHA_EMISION write Set_FECHA_EMISION;
    property CU_CODIGO_DGI: Integer read Get_CU_CODIGO_DGI write Set_CU_CODIGO_DGI;
    property CU_TIPO: WideString read Get_CU_TIPO write Set_CU_TIPO;
    property CU_PREFIJO: Integer read Get_CU_PREFIJO write Set_CU_PREFIJO;
    property CU_NUMERO: Integer read Get_CU_NUMERO write Set_CU_NUMERO;
    property FECHA_SALIDA_TRANSPORTE: WideString read Get_FECHA_SALIDA_TRANSPORTE write Set_FECHA_SALIDA_TRANSPORTE;
    property HORA_SALIDA_TRANSPORTE: WideString read Get_HORA_SALIDA_TRANSPORTE write Set_HORA_SALIDA_TRANSPORTE;
    property SUJETO_GENERADOR: WideString read Get_SUJETO_GENERADOR write Set_SUJETO_GENERADOR;
    property DESTINATARIO_CONSUMIDOR_FINAL: OLE_CANCELBOOL read Get_DESTINATARIO_CONSUMIDOR_FINAL write Set_DESTINATARIO_CONSUMIDOR_FINAL;
    property DESTINATARIO_TIPO_DOCUMENTO: WideString read Get_DESTINATARIO_TIPO_DOCUMENTO write Set_DESTINATARIO_TIPO_DOCUMENTO;
    property DESTINATARIO_DOCUMENTO: WideString read Get_DESTINATARIO_DOCUMENTO write Set_DESTINATARIO_DOCUMENTO;
    property DESTINATARIO_CUIT: Double read Get_DESTINATARIO_CUIT write Set_DESTINATARIO_CUIT;
    property DESTINATARIO_RAZON_SOCIAL: WideString read Get_DESTINATARIO_RAZON_SOCIAL write Set_DESTINATARIO_RAZON_SOCIAL;
    property DESTINATARIO_TENEDOR: OLE_CANCELBOOL read Get_DESTINATARIO_TENEDOR write Set_DESTINATARIO_TENEDOR;
    property DESTINO_DOMICILIO_CALLE: WideString read Get_DESTINO_DOMICILIO_CALLE write Set_DESTINO_DOMICILIO_CALLE;
    property DESTINO_DOMICILIO_NUMERO: Integer read Get_DESTINO_DOMICILIO_NUMERO write Set_DESTINO_DOMICILIO_NUMERO;
    property DESTINO_DOMICILIO_COMPLE: WideString read Get_DESTINO_DOMICILIO_COMPLE write Set_DESTINO_DOMICILIO_COMPLE;
    property DESTINO_DOMICILIO_PISO: WideString read Get_DESTINO_DOMICILIO_PISO write Set_DESTINO_DOMICILIO_PISO;
    property DESTINO_DOMICILIO_DTO: WideString read Get_DESTINO_DOMICILIO_DTO write Set_DESTINO_DOMICILIO_DTO;
    property DESTINO_DOMICILIO_BARRIO: WideString read Get_DESTINO_DOMICILIO_BARRIO write Set_DESTINO_DOMICILIO_BARRIO;
    property DESTINO_DOMICILIO_CODIGO_POSTAL: WideString read Get_DESTINO_DOMICILIO_CODIGO_POSTAL write Set_DESTINO_DOMICILIO_CODIGO_POSTAL;
    property DESTINO_DOMICILIO_LOCALIDAD: WideString read Get_DESTINO_DOMICILIO_LOCALIDAD write Set_DESTINO_DOMICILIO_LOCALIDAD;
    property DESTINO_DOMICILIO_PROVINCIA: WideString read Get_DESTINO_DOMICILIO_PROVINCIA write Set_DESTINO_DOMICILIO_PROVINCIA;
    property PROPIO_DESTINO_DOMICILIO_CODIGO: WideString read Get_PROPIO_DESTINO_DOMICILIO_CODIGO write Set_PROPIO_DESTINO_DOMICILIO_CODIGO;
    property ENTREGA_DOMICILIO_ORIGEN: WideString read Get_ENTREGA_DOMICILIO_ORIGEN write Set_ENTREGA_DOMICILIO_ORIGEN;
    property ORIGEN_CUIT: Double read Get_ORIGEN_CUIT write Set_ORIGEN_CUIT;
    property ORIGEN_RAZON_SOCIAL: WideString read Get_ORIGEN_RAZON_SOCIAL write Set_ORIGEN_RAZON_SOCIAL;
    property EMISOR_TENEDOR: OLE_CANCELBOOL read Get_EMISOR_TENEDOR write Set_EMISOR_TENEDOR;
    property ORIGEN_DOMICILIO_CALLE: WideString read Get_ORIGEN_DOMICILIO_CALLE write Set_ORIGEN_DOMICILIO_CALLE;
    property ORIGEN_DOMICILIO_NUMERO: Integer read Get_ORIGEN_DOMICILIO_NUMERO write Set_ORIGEN_DOMICILIO_NUMERO;
    property ORIGEN_DOMICILIO_COMPLE: WideString read Get_ORIGEN_DOMICILIO_COMPLE write Set_ORIGEN_DOMICILIO_COMPLE;
    property ORIGEN_DOMICILIO_PISO: WideString read Get_ORIGEN_DOMICILIO_PISO write Set_ORIGEN_DOMICILIO_PISO;
    property ORIGEN_DOMICILIO_DTO: WideString read Get_ORIGEN_DOMICILIO_DTO write Set_ORIGEN_DOMICILIO_DTO;
    property ORIGEN_DOMICILIO_BARRIO: WideString read Get_ORIGEN_DOMICILIO_BARRIO write Set_ORIGEN_DOMICILIO_BARRIO;
    property ORIGEN_DOMICILIO_CODIGO_POSTAL: WideString read Get_ORIGEN_DOMICILIO_CODIGO_POSTAL write Set_ORIGEN_DOMICILIO_CODIGO_POSTAL;
    property ORIGEN_DOMICILIO_LOCALIDAD: WideString read Get_ORIGEN_DOMICILIO_LOCALIDAD write Set_ORIGEN_DOMICILIO_LOCALIDAD;
    property ORIGEN_DOMICILIO_PROVINCIA: WideString read Get_ORIGEN_DOMICILIO_PROVINCIA write Set_ORIGEN_DOMICILIO_PROVINCIA;
    property TRANSPORTISTA_CUIT: Double read Get_TRANSPORTISTA_CUIT write Set_TRANSPORTISTA_CUIT;
    property TIPO_RECORRIDO: WideString read Get_TIPO_RECORRIDO write Set_TIPO_RECORRIDO;
    property RECORRIDO_LOCALIDAD: WideString read Get_RECORRIDO_LOCALIDAD write Set_RECORRIDO_LOCALIDAD;
    property RECORRIDO_CALLE: WideString read Get_RECORRIDO_CALLE write Set_RECORRIDO_CALLE;
    property RECORRIDO_RUTA: WideString read Get_RECORRIDO_RUTA write Set_RECORRIDO_RUTA;
    property PATENTE_VEHICULO: WideString read Get_PATENTE_VEHICULO write Set_PATENTE_VEHICULO;
    property PATENTE_ACOPLADO: WideString read Get_PATENTE_ACOPLADO write Set_PATENTE_ACOPLADO;
    property PRODUCTO_NO_TERM_DEV: OLE_CANCELBOOL read Get_PRODUCTO_NO_TERM_DEV write Set_PRODUCTO_NO_TERM_DEV;
    property IMPORTE: Double read Get_IMPORTE write Set_IMPORTE;
  end;

// *********************************************************************//
// DispIntf:  IRemitoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C6730FEF-5B9B-40CC-A590-C009D88E261D}
// *********************************************************************//
  IRemitoDisp = dispinterface
    ['{C6730FEF-5B9B-40CC-A590-C009D88E261D}']
    property FECHA_EMISION: WideString dispid 201;
    property CU_CODIGO_DGI: Integer dispid 202;
    property CU_TIPO: WideString dispid 203;
    property CU_PREFIJO: Integer dispid 204;
    property CU_NUMERO: Integer dispid 205;
    property FECHA_SALIDA_TRANSPORTE: WideString dispid 206;
    property HORA_SALIDA_TRANSPORTE: WideString dispid 207;
    property SUJETO_GENERADOR: WideString dispid 208;
    property DESTINATARIO_CONSUMIDOR_FINAL: OLE_CANCELBOOL dispid 209;
    property DESTINATARIO_TIPO_DOCUMENTO: WideString dispid 210;
    property DESTINATARIO_DOCUMENTO: WideString dispid 211;
    property DESTINATARIO_CUIT: Double dispid 212;
    property DESTINATARIO_RAZON_SOCIAL: WideString dispid 213;
    property DESTINATARIO_TENEDOR: OLE_CANCELBOOL dispid 214;
    property DESTINO_DOMICILIO_CALLE: WideString dispid 215;
    property DESTINO_DOMICILIO_NUMERO: Integer dispid 216;
    property DESTINO_DOMICILIO_COMPLE: WideString dispid 217;
    property DESTINO_DOMICILIO_PISO: WideString dispid 218;
    property DESTINO_DOMICILIO_DTO: WideString dispid 219;
    property DESTINO_DOMICILIO_BARRIO: WideString dispid 220;
    property DESTINO_DOMICILIO_CODIGO_POSTAL: WideString dispid 221;
    property DESTINO_DOMICILIO_LOCALIDAD: WideString dispid 222;
    property DESTINO_DOMICILIO_PROVINCIA: WideString dispid 223;
    property PROPIO_DESTINO_DOMICILIO_CODIGO: WideString dispid 224;
    property ENTREGA_DOMICILIO_ORIGEN: WideString dispid 225;
    property ORIGEN_CUIT: Double dispid 226;
    property ORIGEN_RAZON_SOCIAL: WideString dispid 227;
    property EMISOR_TENEDOR: OLE_CANCELBOOL dispid 228;
    property ORIGEN_DOMICILIO_CALLE: WideString dispid 229;
    property ORIGEN_DOMICILIO_NUMERO: Integer dispid 230;
    property ORIGEN_DOMICILIO_COMPLE: WideString dispid 231;
    property ORIGEN_DOMICILIO_PISO: WideString dispid 232;
    property ORIGEN_DOMICILIO_DTO: WideString dispid 233;
    property ORIGEN_DOMICILIO_BARRIO: WideString dispid 234;
    property ORIGEN_DOMICILIO_CODIGO_POSTAL: WideString dispid 235;
    property ORIGEN_DOMICILIO_LOCALIDAD: WideString dispid 236;
    property ORIGEN_DOMICILIO_PROVINCIA: WideString dispid 237;
    property TRANSPORTISTA_CUIT: Double dispid 238;
    property TIPO_RECORRIDO: WideString dispid 239;
    property RECORRIDO_LOCALIDAD: WideString dispid 240;
    property RECORRIDO_CALLE: WideString dispid 241;
    property RECORRIDO_RUTA: WideString dispid 242;
    property PATENTE_VEHICULO: WideString dispid 243;
    property PATENTE_ACOPLADO: WideString dispid 244;
    property PRODUCTO_NO_TERM_DEV: OLE_CANCELBOOL dispid 245;
    property IMPORTE: Double dispid 246;
    function LineaTexto: WideString; dispid 247;
  end;

// *********************************************************************//
// Interface: IProducto
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {64B5FDC0-3C74-44DB-A7A5-23F0F3568990}
// *********************************************************************//
  IProducto = interface(IDispatch)
    ['{64B5FDC0-3C74-44DB-A7A5-23F0F3568990}']
    function Get_CODIGO_UNICO_PRODUCTO: WideString; safecall;
    procedure Set_CODIGO_UNICO_PRODUCTO(const Value: WideString); safecall;
    function Get_RENTAS_CODIGO_UNIDAD_MEDIDA: Integer; safecall;
    procedure Set_RENTAS_CODIGO_UNIDAD_MEDIDA(Value: Integer); safecall;
    function Get_CANTIDAD: Double; safecall;
    procedure Set_CANTIDAD(Value: Double); safecall;
    function Get_PROPIO_CODIGO_PRODUCTO: WideString; safecall;
    procedure Set_PROPIO_CODIGO_PRODUCTO(const Value: WideString); safecall;
    function Get_PROPIO_DESCRIPCION_PRODUCTO: WideString; safecall;
    procedure Set_PROPIO_DESCRIPCION_PRODUCTO(const Value: WideString); safecall;
    function Get_PROPIO_DESCRIPCION_UNIDAD_MEDIDA: WideString; safecall;
    procedure Set_PROPIO_DESCRIPCION_UNIDAD_MEDIDA(const Value: WideString); safecall;
    function Get_CANTIDAD_AJUSTADA: Double; safecall;
    procedure Set_CANTIDAD_AJUSTADA(Value: Double); safecall;
    function LineaTexto: WideString; safecall;
    property CODIGO_UNICO_PRODUCTO: WideString read Get_CODIGO_UNICO_PRODUCTO write Set_CODIGO_UNICO_PRODUCTO;
    property RENTAS_CODIGO_UNIDAD_MEDIDA: Integer read Get_RENTAS_CODIGO_UNIDAD_MEDIDA write Set_RENTAS_CODIGO_UNIDAD_MEDIDA;
    property CANTIDAD: Double read Get_CANTIDAD write Set_CANTIDAD;
    property PROPIO_CODIGO_PRODUCTO: WideString read Get_PROPIO_CODIGO_PRODUCTO write Set_PROPIO_CODIGO_PRODUCTO;
    property PROPIO_DESCRIPCION_PRODUCTO: WideString read Get_PROPIO_DESCRIPCION_PRODUCTO write Set_PROPIO_DESCRIPCION_PRODUCTO;
    property PROPIO_DESCRIPCION_UNIDAD_MEDIDA: WideString read Get_PROPIO_DESCRIPCION_UNIDAD_MEDIDA write Set_PROPIO_DESCRIPCION_UNIDAD_MEDIDA;
    property CANTIDAD_AJUSTADA: Double read Get_CANTIDAD_AJUSTADA write Set_CANTIDAD_AJUSTADA;
  end;

// *********************************************************************//
// DispIntf:  IProductoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {64B5FDC0-3C74-44DB-A7A5-23F0F3568990}
// *********************************************************************//
  IProductoDisp = dispinterface
    ['{64B5FDC0-3C74-44DB-A7A5-23F0F3568990}']
    property CODIGO_UNICO_PRODUCTO: WideString dispid 201;
    property RENTAS_CODIGO_UNIDAD_MEDIDA: Integer dispid 202;
    property CANTIDAD: Double dispid 203;
    property PROPIO_CODIGO_PRODUCTO: WideString dispid 204;
    property PROPIO_DESCRIPCION_PRODUCTO: WideString dispid 205;
    property PROPIO_DESCRIPCION_UNIDAD_MEDIDA: WideString dispid 206;
    property CANTIDAD_AJUSTADA: Double dispid 207;
    function LineaTexto: WideString; dispid 208;
  end;

// *********************************************************************//
// Interface: IResultado
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {40C4AF11-AA56-4A59-8C39-4E2786590D4D}
// *********************************************************************//
  IResultado = interface(IDispatch)
    ['{40C4AF11-AA56-4A59-8C39-4E2786590D4D}']
    function Get_TransactionOk: OLE_CANCELBOOL; safecall;
    function Get_numeroComprobante: Integer; safecall;
    function Get_ErrorCount: Integer; safecall;
    function Get_ErrorCodigo(index: Integer): Integer; safecall;
    function Get_ErrorDesc(index: Integer): WideString; safecall;
    function Get_Errores: WideString; safecall;
    function Get_COT: Integer; safecall;
    procedure Parsear(const XML: WideString); safecall;
    function Get_ErrorRemito(index: Integer): WideString; safecall;
    property TransactionOk: OLE_CANCELBOOL read Get_TransactionOk;
    property numeroComprobante: Integer read Get_numeroComprobante;
    property ErrorCount: Integer read Get_ErrorCount;
    property ErrorCodigo[index: Integer]: Integer read Get_ErrorCodigo;
    property ErrorDesc[index: Integer]: WideString read Get_ErrorDesc;
    property Errores: WideString read Get_Errores;
    property COT: Integer read Get_COT;
    property ErrorRemito[index: Integer]: WideString read Get_ErrorRemito;
  end;

// *********************************************************************//
// DispIntf:  IResultadoDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {40C4AF11-AA56-4A59-8C39-4E2786590D4D}
// *********************************************************************//
  IResultadoDisp = dispinterface
    ['{40C4AF11-AA56-4A59-8C39-4E2786590D4D}']
    property TransactionOk: OLE_CANCELBOOL readonly dispid 202;
    property numeroComprobante: Integer readonly dispid 201;
    property ErrorCount: Integer readonly dispid 203;
    property ErrorCodigo[index: Integer]: Integer readonly dispid 204;
    property ErrorDesc[index: Integer]: WideString readonly dispid 205;
    property Errores: WideString readonly dispid 206;
    property COT: Integer readonly dispid 207;
    procedure Parsear(const XML: WideString); dispid 208;
    property ErrorRemito[index: Integer]: WideString readonly dispid 209;
  end;

// *********************************************************************//
// The Class CoClienteRE provides a Create and CreateRemote method to          
// create instances of the default interface IClienteRE exposed by              
// the CoClass ClienteRE. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClienteRE = class
    class function Create: IClienteRE;
    class function CreateRemote(const MachineName: string): IClienteRE;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TClienteRE
// Help String      : RemitoElectronico Object
// Default Interface: IClienteRE
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TClienteREProperties= class;
{$ENDIF}
  TClienteRE = class(TOleServer)
  private
    FIntf:        IClienteRE;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TClienteREProperties;
    function      GetServerProperties: TClienteREProperties;
{$ENDIF}
    function      GetDefaultInterface: IClienteRE;
  protected
    procedure InitServerData; override;
    function Get_Password: WideString;
    procedure Set_Password(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_NroPlanta: Integer;
    procedure Set_NroPlanta(Value: Integer);
    function Get_NroPuerta: Integer;
    procedure Set_NroPuerta(Value: Integer);
    function Get_Fecha: WideString;
    procedure Set_Fecha(const Value: WideString);
    function Get_NroSecuencial: Integer;
    procedure Set_NroSecuencial(Value: Integer);
    function Get_Pedido: WideString;
    function Get_XMLRespuesta: WideString;
    function Get_ModoProduccion: OLE_CANCELBOOL;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL);
    function Get_Resultado: IResultado;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IClienteRE);
    procedure Disconnect; override;
    procedure AgregaRemito(const Remito: IRemito);
    procedure AgregaProducto(const Producto: IProducto);
    procedure Inicializar;
    function Enviar: OLE_CANCELBOOL;
    procedure ObtenerResultado(const Resultado: IResultado);
    function NuevoRemito: IRemito;
    function NuevoProducto: IProducto;
    procedure AgregaNuevoRemito;
    procedure AgregaNuevoProducto;
    property DefaultInterface: IClienteRE read GetDefaultInterface;
    property Pedido: WideString read Get_Pedido;
    property XMLRespuesta: WideString read Get_XMLRespuesta;
    property Resultado: IResultado read Get_Resultado;
    property Password: WideString read Get_Password write Set_Password;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property NroPlanta: Integer read Get_NroPlanta write Set_NroPlanta;
    property NroPuerta: Integer read Get_NroPuerta write Set_NroPuerta;
    property Fecha: WideString read Get_Fecha write Set_Fecha;
    property NroSecuencial: Integer read Get_NroSecuencial write Set_NroSecuencial;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TClienteREProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TClienteRE
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TClienteREProperties = class(TPersistent)
  private
    FServer:    TClienteRE;
    function    GetDefaultInterface: IClienteRE;
    constructor Create(AServer: TClienteRE);
  protected
    function Get_Password: WideString;
    procedure Set_Password(const Value: WideString);
    function Get_CUIT: Double;
    procedure Set_CUIT(Value: Double);
    function Get_NroPlanta: Integer;
    procedure Set_NroPlanta(Value: Integer);
    function Get_NroPuerta: Integer;
    procedure Set_NroPuerta(Value: Integer);
    function Get_Fecha: WideString;
    procedure Set_Fecha(const Value: WideString);
    function Get_NroSecuencial: Integer;
    procedure Set_NroSecuencial(Value: Integer);
    function Get_Pedido: WideString;
    function Get_XMLRespuesta: WideString;
    function Get_ModoProduccion: OLE_CANCELBOOL;
    procedure Set_ModoProduccion(Value: OLE_CANCELBOOL);
    function Get_Resultado: IResultado;
  public
    property DefaultInterface: IClienteRE read GetDefaultInterface;
  published
    property Password: WideString read Get_Password write Set_Password;
    property CUIT: Double read Get_CUIT write Set_CUIT;
    property NroPlanta: Integer read Get_NroPlanta write Set_NroPlanta;
    property NroPuerta: Integer read Get_NroPuerta write Set_NroPuerta;
    property Fecha: WideString read Get_Fecha write Set_Fecha;
    property NroSecuencial: Integer read Get_NroSecuencial write Set_NroSecuencial;
    property ModoProduccion: OLE_CANCELBOOL read Get_ModoProduccion write Set_ModoProduccion;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRemito provides a Create and CreateRemote method to          
// create instances of the default interface IRemito exposed by              
// the CoClass Remito. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRemito = class
    class function Create: IRemito;
    class function CreateRemote(const MachineName: string): IRemito;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRemito
// Help String      : Remito Object
// Default Interface: IRemito
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRemitoProperties= class;
{$ENDIF}
  TRemito = class(TOleServer)
  private
    FIntf:        IRemito;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TRemitoProperties;
    function      GetServerProperties: TRemitoProperties;
{$ENDIF}
    function      GetDefaultInterface: IRemito;
  protected
    procedure InitServerData; override;
    function Get_FECHA_EMISION: WideString;
    procedure Set_FECHA_EMISION(const Value: WideString);
    function Get_CU_CODIGO_DGI: Integer;
    procedure Set_CU_CODIGO_DGI(Value: Integer);
    function Get_CU_TIPO: WideString;
    procedure Set_CU_TIPO(const Value: WideString);
    function Get_CU_PREFIJO: Integer;
    procedure Set_CU_PREFIJO(Value: Integer);
    function Get_CU_NUMERO: Integer;
    procedure Set_CU_NUMERO(Value: Integer);
    function Get_FECHA_SALIDA_TRANSPORTE: WideString;
    procedure Set_FECHA_SALIDA_TRANSPORTE(const Value: WideString);
    function Get_HORA_SALIDA_TRANSPORTE: WideString;
    procedure Set_HORA_SALIDA_TRANSPORTE(const Value: WideString);
    function Get_SUJETO_GENERADOR: WideString;
    procedure Set_SUJETO_GENERADOR(const Value: WideString);
    function Get_DESTINATARIO_CONSUMIDOR_FINAL: OLE_CANCELBOOL;
    procedure Set_DESTINATARIO_CONSUMIDOR_FINAL(Value: OLE_CANCELBOOL);
    function Get_DESTINATARIO_TIPO_DOCUMENTO: WideString;
    procedure Set_DESTINATARIO_TIPO_DOCUMENTO(const Value: WideString);
    function Get_DESTINATARIO_DOCUMENTO: WideString;
    procedure Set_DESTINATARIO_DOCUMENTO(const Value: WideString);
    function Get_DESTINATARIO_CUIT: Double;
    procedure Set_DESTINATARIO_CUIT(Value: Double);
    function Get_DESTINATARIO_RAZON_SOCIAL: WideString;
    procedure Set_DESTINATARIO_RAZON_SOCIAL(const Value: WideString);
    function Get_DESTINATARIO_TENEDOR: OLE_CANCELBOOL;
    procedure Set_DESTINATARIO_TENEDOR(Value: OLE_CANCELBOOL);
    function Get_DESTINO_DOMICILIO_CALLE: WideString;
    procedure Set_DESTINO_DOMICILIO_CALLE(const Value: WideString);
    function Get_DESTINO_DOMICILIO_NUMERO: Integer;
    procedure Set_DESTINO_DOMICILIO_NUMERO(Value: Integer);
    function Get_DESTINO_DOMICILIO_COMPLE: WideString;
    procedure Set_DESTINO_DOMICILIO_COMPLE(const Value: WideString);
    function Get_DESTINO_DOMICILIO_PISO: WideString;
    procedure Set_DESTINO_DOMICILIO_PISO(const Value: WideString);
    function Get_DESTINO_DOMICILIO_DTO: WideString;
    procedure Set_DESTINO_DOMICILIO_DTO(const Value: WideString);
    function Get_DESTINO_DOMICILIO_BARRIO: WideString;
    procedure Set_DESTINO_DOMICILIO_BARRIO(const Value: WideString);
    function Get_DESTINO_DOMICILIO_CODIGO_POSTAL: WideString;
    procedure Set_DESTINO_DOMICILIO_CODIGO_POSTAL(const Value: WideString);
    function Get_DESTINO_DOMICILIO_LOCALIDAD: WideString;
    procedure Set_DESTINO_DOMICILIO_LOCALIDAD(const Value: WideString);
    function Get_DESTINO_DOMICILIO_PROVINCIA: WideString;
    procedure Set_DESTINO_DOMICILIO_PROVINCIA(const Value: WideString);
    function Get_PROPIO_DESTINO_DOMICILIO_CODIGO: WideString;
    procedure Set_PROPIO_DESTINO_DOMICILIO_CODIGO(const Value: WideString);
    function Get_ENTREGA_DOMICILIO_ORIGEN: WideString;
    procedure Set_ENTREGA_DOMICILIO_ORIGEN(const Value: WideString);
    function Get_ORIGEN_CUIT: Double;
    procedure Set_ORIGEN_CUIT(Value: Double);
    function Get_ORIGEN_RAZON_SOCIAL: WideString;
    procedure Set_ORIGEN_RAZON_SOCIAL(const Value: WideString);
    function Get_EMISOR_TENEDOR: OLE_CANCELBOOL;
    procedure Set_EMISOR_TENEDOR(Value: OLE_CANCELBOOL);
    function Get_ORIGEN_DOMICILIO_CALLE: WideString;
    procedure Set_ORIGEN_DOMICILIO_CALLE(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_NUMERO: Integer;
    procedure Set_ORIGEN_DOMICILIO_NUMERO(Value: Integer);
    function Get_ORIGEN_DOMICILIO_COMPLE: WideString;
    procedure Set_ORIGEN_DOMICILIO_COMPLE(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_PISO: WideString;
    procedure Set_ORIGEN_DOMICILIO_PISO(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_DTO: WideString;
    procedure Set_ORIGEN_DOMICILIO_DTO(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_BARRIO: WideString;
    procedure Set_ORIGEN_DOMICILIO_BARRIO(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_CODIGO_POSTAL: WideString;
    procedure Set_ORIGEN_DOMICILIO_CODIGO_POSTAL(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_LOCALIDAD: WideString;
    procedure Set_ORIGEN_DOMICILIO_LOCALIDAD(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_PROVINCIA: WideString;
    procedure Set_ORIGEN_DOMICILIO_PROVINCIA(const Value: WideString);
    function Get_TRANSPORTISTA_CUIT: Double;
    procedure Set_TRANSPORTISTA_CUIT(Value: Double);
    function Get_TIPO_RECORRIDO: WideString;
    procedure Set_TIPO_RECORRIDO(const Value: WideString);
    function Get_RECORRIDO_LOCALIDAD: WideString;
    procedure Set_RECORRIDO_LOCALIDAD(const Value: WideString);
    function Get_RECORRIDO_CALLE: WideString;
    procedure Set_RECORRIDO_CALLE(const Value: WideString);
    function Get_RECORRIDO_RUTA: WideString;
    procedure Set_RECORRIDO_RUTA(const Value: WideString);
    function Get_PATENTE_VEHICULO: WideString;
    procedure Set_PATENTE_VEHICULO(const Value: WideString);
    function Get_PATENTE_ACOPLADO: WideString;
    procedure Set_PATENTE_ACOPLADO(const Value: WideString);
    function Get_PRODUCTO_NO_TERM_DEV: OLE_CANCELBOOL;
    procedure Set_PRODUCTO_NO_TERM_DEV(Value: OLE_CANCELBOOL);
    function Get_IMPORTE: Double;
    procedure Set_IMPORTE(Value: Double);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IRemito);
    procedure Disconnect; override;
    function LineaTexto: WideString;
    property DefaultInterface: IRemito read GetDefaultInterface;
    property FECHA_EMISION: WideString read Get_FECHA_EMISION write Set_FECHA_EMISION;
    property CU_CODIGO_DGI: Integer read Get_CU_CODIGO_DGI write Set_CU_CODIGO_DGI;
    property CU_TIPO: WideString read Get_CU_TIPO write Set_CU_TIPO;
    property CU_PREFIJO: Integer read Get_CU_PREFIJO write Set_CU_PREFIJO;
    property CU_NUMERO: Integer read Get_CU_NUMERO write Set_CU_NUMERO;
    property FECHA_SALIDA_TRANSPORTE: WideString read Get_FECHA_SALIDA_TRANSPORTE write Set_FECHA_SALIDA_TRANSPORTE;
    property HORA_SALIDA_TRANSPORTE: WideString read Get_HORA_SALIDA_TRANSPORTE write Set_HORA_SALIDA_TRANSPORTE;
    property SUJETO_GENERADOR: WideString read Get_SUJETO_GENERADOR write Set_SUJETO_GENERADOR;
    property DESTINATARIO_CONSUMIDOR_FINAL: OLE_CANCELBOOL read Get_DESTINATARIO_CONSUMIDOR_FINAL write Set_DESTINATARIO_CONSUMIDOR_FINAL;
    property DESTINATARIO_TIPO_DOCUMENTO: WideString read Get_DESTINATARIO_TIPO_DOCUMENTO write Set_DESTINATARIO_TIPO_DOCUMENTO;
    property DESTINATARIO_DOCUMENTO: WideString read Get_DESTINATARIO_DOCUMENTO write Set_DESTINATARIO_DOCUMENTO;
    property DESTINATARIO_CUIT: Double read Get_DESTINATARIO_CUIT write Set_DESTINATARIO_CUIT;
    property DESTINATARIO_RAZON_SOCIAL: WideString read Get_DESTINATARIO_RAZON_SOCIAL write Set_DESTINATARIO_RAZON_SOCIAL;
    property DESTINATARIO_TENEDOR: OLE_CANCELBOOL read Get_DESTINATARIO_TENEDOR write Set_DESTINATARIO_TENEDOR;
    property DESTINO_DOMICILIO_CALLE: WideString read Get_DESTINO_DOMICILIO_CALLE write Set_DESTINO_DOMICILIO_CALLE;
    property DESTINO_DOMICILIO_NUMERO: Integer read Get_DESTINO_DOMICILIO_NUMERO write Set_DESTINO_DOMICILIO_NUMERO;
    property DESTINO_DOMICILIO_COMPLE: WideString read Get_DESTINO_DOMICILIO_COMPLE write Set_DESTINO_DOMICILIO_COMPLE;
    property DESTINO_DOMICILIO_PISO: WideString read Get_DESTINO_DOMICILIO_PISO write Set_DESTINO_DOMICILIO_PISO;
    property DESTINO_DOMICILIO_DTO: WideString read Get_DESTINO_DOMICILIO_DTO write Set_DESTINO_DOMICILIO_DTO;
    property DESTINO_DOMICILIO_BARRIO: WideString read Get_DESTINO_DOMICILIO_BARRIO write Set_DESTINO_DOMICILIO_BARRIO;
    property DESTINO_DOMICILIO_CODIGO_POSTAL: WideString read Get_DESTINO_DOMICILIO_CODIGO_POSTAL write Set_DESTINO_DOMICILIO_CODIGO_POSTAL;
    property DESTINO_DOMICILIO_LOCALIDAD: WideString read Get_DESTINO_DOMICILIO_LOCALIDAD write Set_DESTINO_DOMICILIO_LOCALIDAD;
    property DESTINO_DOMICILIO_PROVINCIA: WideString read Get_DESTINO_DOMICILIO_PROVINCIA write Set_DESTINO_DOMICILIO_PROVINCIA;
    property PROPIO_DESTINO_DOMICILIO_CODIGO: WideString read Get_PROPIO_DESTINO_DOMICILIO_CODIGO write Set_PROPIO_DESTINO_DOMICILIO_CODIGO;
    property ENTREGA_DOMICILIO_ORIGEN: WideString read Get_ENTREGA_DOMICILIO_ORIGEN write Set_ENTREGA_DOMICILIO_ORIGEN;
    property ORIGEN_CUIT: Double read Get_ORIGEN_CUIT write Set_ORIGEN_CUIT;
    property ORIGEN_RAZON_SOCIAL: WideString read Get_ORIGEN_RAZON_SOCIAL write Set_ORIGEN_RAZON_SOCIAL;
    property EMISOR_TENEDOR: OLE_CANCELBOOL read Get_EMISOR_TENEDOR write Set_EMISOR_TENEDOR;
    property ORIGEN_DOMICILIO_CALLE: WideString read Get_ORIGEN_DOMICILIO_CALLE write Set_ORIGEN_DOMICILIO_CALLE;
    property ORIGEN_DOMICILIO_NUMERO: Integer read Get_ORIGEN_DOMICILIO_NUMERO write Set_ORIGEN_DOMICILIO_NUMERO;
    property ORIGEN_DOMICILIO_COMPLE: WideString read Get_ORIGEN_DOMICILIO_COMPLE write Set_ORIGEN_DOMICILIO_COMPLE;
    property ORIGEN_DOMICILIO_PISO: WideString read Get_ORIGEN_DOMICILIO_PISO write Set_ORIGEN_DOMICILIO_PISO;
    property ORIGEN_DOMICILIO_DTO: WideString read Get_ORIGEN_DOMICILIO_DTO write Set_ORIGEN_DOMICILIO_DTO;
    property ORIGEN_DOMICILIO_BARRIO: WideString read Get_ORIGEN_DOMICILIO_BARRIO write Set_ORIGEN_DOMICILIO_BARRIO;
    property ORIGEN_DOMICILIO_CODIGO_POSTAL: WideString read Get_ORIGEN_DOMICILIO_CODIGO_POSTAL write Set_ORIGEN_DOMICILIO_CODIGO_POSTAL;
    property ORIGEN_DOMICILIO_LOCALIDAD: WideString read Get_ORIGEN_DOMICILIO_LOCALIDAD write Set_ORIGEN_DOMICILIO_LOCALIDAD;
    property ORIGEN_DOMICILIO_PROVINCIA: WideString read Get_ORIGEN_DOMICILIO_PROVINCIA write Set_ORIGEN_DOMICILIO_PROVINCIA;
    property TRANSPORTISTA_CUIT: Double read Get_TRANSPORTISTA_CUIT write Set_TRANSPORTISTA_CUIT;
    property TIPO_RECORRIDO: WideString read Get_TIPO_RECORRIDO write Set_TIPO_RECORRIDO;
    property RECORRIDO_LOCALIDAD: WideString read Get_RECORRIDO_LOCALIDAD write Set_RECORRIDO_LOCALIDAD;
    property RECORRIDO_CALLE: WideString read Get_RECORRIDO_CALLE write Set_RECORRIDO_CALLE;
    property RECORRIDO_RUTA: WideString read Get_RECORRIDO_RUTA write Set_RECORRIDO_RUTA;
    property PATENTE_VEHICULO: WideString read Get_PATENTE_VEHICULO write Set_PATENTE_VEHICULO;
    property PATENTE_ACOPLADO: WideString read Get_PATENTE_ACOPLADO write Set_PATENTE_ACOPLADO;
    property PRODUCTO_NO_TERM_DEV: OLE_CANCELBOOL read Get_PRODUCTO_NO_TERM_DEV write Set_PRODUCTO_NO_TERM_DEV;
    property IMPORTE: Double read Get_IMPORTE write Set_IMPORTE;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRemitoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRemito
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRemitoProperties = class(TPersistent)
  private
    FServer:    TRemito;
    function    GetDefaultInterface: IRemito;
    constructor Create(AServer: TRemito);
  protected
    function Get_FECHA_EMISION: WideString;
    procedure Set_FECHA_EMISION(const Value: WideString);
    function Get_CU_CODIGO_DGI: Integer;
    procedure Set_CU_CODIGO_DGI(Value: Integer);
    function Get_CU_TIPO: WideString;
    procedure Set_CU_TIPO(const Value: WideString);
    function Get_CU_PREFIJO: Integer;
    procedure Set_CU_PREFIJO(Value: Integer);
    function Get_CU_NUMERO: Integer;
    procedure Set_CU_NUMERO(Value: Integer);
    function Get_FECHA_SALIDA_TRANSPORTE: WideString;
    procedure Set_FECHA_SALIDA_TRANSPORTE(const Value: WideString);
    function Get_HORA_SALIDA_TRANSPORTE: WideString;
    procedure Set_HORA_SALIDA_TRANSPORTE(const Value: WideString);
    function Get_SUJETO_GENERADOR: WideString;
    procedure Set_SUJETO_GENERADOR(const Value: WideString);
    function Get_DESTINATARIO_CONSUMIDOR_FINAL: OLE_CANCELBOOL;
    procedure Set_DESTINATARIO_CONSUMIDOR_FINAL(Value: OLE_CANCELBOOL);
    function Get_DESTINATARIO_TIPO_DOCUMENTO: WideString;
    procedure Set_DESTINATARIO_TIPO_DOCUMENTO(const Value: WideString);
    function Get_DESTINATARIO_DOCUMENTO: WideString;
    procedure Set_DESTINATARIO_DOCUMENTO(const Value: WideString);
    function Get_DESTINATARIO_CUIT: Double;
    procedure Set_DESTINATARIO_CUIT(Value: Double);
    function Get_DESTINATARIO_RAZON_SOCIAL: WideString;
    procedure Set_DESTINATARIO_RAZON_SOCIAL(const Value: WideString);
    function Get_DESTINATARIO_TENEDOR: OLE_CANCELBOOL;
    procedure Set_DESTINATARIO_TENEDOR(Value: OLE_CANCELBOOL);
    function Get_DESTINO_DOMICILIO_CALLE: WideString;
    procedure Set_DESTINO_DOMICILIO_CALLE(const Value: WideString);
    function Get_DESTINO_DOMICILIO_NUMERO: Integer;
    procedure Set_DESTINO_DOMICILIO_NUMERO(Value: Integer);
    function Get_DESTINO_DOMICILIO_COMPLE: WideString;
    procedure Set_DESTINO_DOMICILIO_COMPLE(const Value: WideString);
    function Get_DESTINO_DOMICILIO_PISO: WideString;
    procedure Set_DESTINO_DOMICILIO_PISO(const Value: WideString);
    function Get_DESTINO_DOMICILIO_DTO: WideString;
    procedure Set_DESTINO_DOMICILIO_DTO(const Value: WideString);
    function Get_DESTINO_DOMICILIO_BARRIO: WideString;
    procedure Set_DESTINO_DOMICILIO_BARRIO(const Value: WideString);
    function Get_DESTINO_DOMICILIO_CODIGO_POSTAL: WideString;
    procedure Set_DESTINO_DOMICILIO_CODIGO_POSTAL(const Value: WideString);
    function Get_DESTINO_DOMICILIO_LOCALIDAD: WideString;
    procedure Set_DESTINO_DOMICILIO_LOCALIDAD(const Value: WideString);
    function Get_DESTINO_DOMICILIO_PROVINCIA: WideString;
    procedure Set_DESTINO_DOMICILIO_PROVINCIA(const Value: WideString);
    function Get_PROPIO_DESTINO_DOMICILIO_CODIGO: WideString;
    procedure Set_PROPIO_DESTINO_DOMICILIO_CODIGO(const Value: WideString);
    function Get_ENTREGA_DOMICILIO_ORIGEN: WideString;
    procedure Set_ENTREGA_DOMICILIO_ORIGEN(const Value: WideString);
    function Get_ORIGEN_CUIT: Double;
    procedure Set_ORIGEN_CUIT(Value: Double);
    function Get_ORIGEN_RAZON_SOCIAL: WideString;
    procedure Set_ORIGEN_RAZON_SOCIAL(const Value: WideString);
    function Get_EMISOR_TENEDOR: OLE_CANCELBOOL;
    procedure Set_EMISOR_TENEDOR(Value: OLE_CANCELBOOL);
    function Get_ORIGEN_DOMICILIO_CALLE: WideString;
    procedure Set_ORIGEN_DOMICILIO_CALLE(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_NUMERO: Integer;
    procedure Set_ORIGEN_DOMICILIO_NUMERO(Value: Integer);
    function Get_ORIGEN_DOMICILIO_COMPLE: WideString;
    procedure Set_ORIGEN_DOMICILIO_COMPLE(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_PISO: WideString;
    procedure Set_ORIGEN_DOMICILIO_PISO(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_DTO: WideString;
    procedure Set_ORIGEN_DOMICILIO_DTO(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_BARRIO: WideString;
    procedure Set_ORIGEN_DOMICILIO_BARRIO(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_CODIGO_POSTAL: WideString;
    procedure Set_ORIGEN_DOMICILIO_CODIGO_POSTAL(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_LOCALIDAD: WideString;
    procedure Set_ORIGEN_DOMICILIO_LOCALIDAD(const Value: WideString);
    function Get_ORIGEN_DOMICILIO_PROVINCIA: WideString;
    procedure Set_ORIGEN_DOMICILIO_PROVINCIA(const Value: WideString);
    function Get_TRANSPORTISTA_CUIT: Double;
    procedure Set_TRANSPORTISTA_CUIT(Value: Double);
    function Get_TIPO_RECORRIDO: WideString;
    procedure Set_TIPO_RECORRIDO(const Value: WideString);
    function Get_RECORRIDO_LOCALIDAD: WideString;
    procedure Set_RECORRIDO_LOCALIDAD(const Value: WideString);
    function Get_RECORRIDO_CALLE: WideString;
    procedure Set_RECORRIDO_CALLE(const Value: WideString);
    function Get_RECORRIDO_RUTA: WideString;
    procedure Set_RECORRIDO_RUTA(const Value: WideString);
    function Get_PATENTE_VEHICULO: WideString;
    procedure Set_PATENTE_VEHICULO(const Value: WideString);
    function Get_PATENTE_ACOPLADO: WideString;
    procedure Set_PATENTE_ACOPLADO(const Value: WideString);
    function Get_PRODUCTO_NO_TERM_DEV: OLE_CANCELBOOL;
    procedure Set_PRODUCTO_NO_TERM_DEV(Value: OLE_CANCELBOOL);
    function Get_IMPORTE: Double;
    procedure Set_IMPORTE(Value: Double);
  public
    property DefaultInterface: IRemito read GetDefaultInterface;
  published
    property FECHA_EMISION: WideString read Get_FECHA_EMISION write Set_FECHA_EMISION;
    property CU_CODIGO_DGI: Integer read Get_CU_CODIGO_DGI write Set_CU_CODIGO_DGI;
    property CU_TIPO: WideString read Get_CU_TIPO write Set_CU_TIPO;
    property CU_PREFIJO: Integer read Get_CU_PREFIJO write Set_CU_PREFIJO;
    property CU_NUMERO: Integer read Get_CU_NUMERO write Set_CU_NUMERO;
    property FECHA_SALIDA_TRANSPORTE: WideString read Get_FECHA_SALIDA_TRANSPORTE write Set_FECHA_SALIDA_TRANSPORTE;
    property HORA_SALIDA_TRANSPORTE: WideString read Get_HORA_SALIDA_TRANSPORTE write Set_HORA_SALIDA_TRANSPORTE;
    property SUJETO_GENERADOR: WideString read Get_SUJETO_GENERADOR write Set_SUJETO_GENERADOR;
    property DESTINATARIO_CONSUMIDOR_FINAL: OLE_CANCELBOOL read Get_DESTINATARIO_CONSUMIDOR_FINAL write Set_DESTINATARIO_CONSUMIDOR_FINAL;
    property DESTINATARIO_TIPO_DOCUMENTO: WideString read Get_DESTINATARIO_TIPO_DOCUMENTO write Set_DESTINATARIO_TIPO_DOCUMENTO;
    property DESTINATARIO_DOCUMENTO: WideString read Get_DESTINATARIO_DOCUMENTO write Set_DESTINATARIO_DOCUMENTO;
    property DESTINATARIO_CUIT: Double read Get_DESTINATARIO_CUIT write Set_DESTINATARIO_CUIT;
    property DESTINATARIO_RAZON_SOCIAL: WideString read Get_DESTINATARIO_RAZON_SOCIAL write Set_DESTINATARIO_RAZON_SOCIAL;
    property DESTINATARIO_TENEDOR: OLE_CANCELBOOL read Get_DESTINATARIO_TENEDOR write Set_DESTINATARIO_TENEDOR;
    property DESTINO_DOMICILIO_CALLE: WideString read Get_DESTINO_DOMICILIO_CALLE write Set_DESTINO_DOMICILIO_CALLE;
    property DESTINO_DOMICILIO_NUMERO: Integer read Get_DESTINO_DOMICILIO_NUMERO write Set_DESTINO_DOMICILIO_NUMERO;
    property DESTINO_DOMICILIO_COMPLE: WideString read Get_DESTINO_DOMICILIO_COMPLE write Set_DESTINO_DOMICILIO_COMPLE;
    property DESTINO_DOMICILIO_PISO: WideString read Get_DESTINO_DOMICILIO_PISO write Set_DESTINO_DOMICILIO_PISO;
    property DESTINO_DOMICILIO_DTO: WideString read Get_DESTINO_DOMICILIO_DTO write Set_DESTINO_DOMICILIO_DTO;
    property DESTINO_DOMICILIO_BARRIO: WideString read Get_DESTINO_DOMICILIO_BARRIO write Set_DESTINO_DOMICILIO_BARRIO;
    property DESTINO_DOMICILIO_CODIGO_POSTAL: WideString read Get_DESTINO_DOMICILIO_CODIGO_POSTAL write Set_DESTINO_DOMICILIO_CODIGO_POSTAL;
    property DESTINO_DOMICILIO_LOCALIDAD: WideString read Get_DESTINO_DOMICILIO_LOCALIDAD write Set_DESTINO_DOMICILIO_LOCALIDAD;
    property DESTINO_DOMICILIO_PROVINCIA: WideString read Get_DESTINO_DOMICILIO_PROVINCIA write Set_DESTINO_DOMICILIO_PROVINCIA;
    property PROPIO_DESTINO_DOMICILIO_CODIGO: WideString read Get_PROPIO_DESTINO_DOMICILIO_CODIGO write Set_PROPIO_DESTINO_DOMICILIO_CODIGO;
    property ENTREGA_DOMICILIO_ORIGEN: WideString read Get_ENTREGA_DOMICILIO_ORIGEN write Set_ENTREGA_DOMICILIO_ORIGEN;
    property ORIGEN_CUIT: Double read Get_ORIGEN_CUIT write Set_ORIGEN_CUIT;
    property ORIGEN_RAZON_SOCIAL: WideString read Get_ORIGEN_RAZON_SOCIAL write Set_ORIGEN_RAZON_SOCIAL;
    property EMISOR_TENEDOR: OLE_CANCELBOOL read Get_EMISOR_TENEDOR write Set_EMISOR_TENEDOR;
    property ORIGEN_DOMICILIO_CALLE: WideString read Get_ORIGEN_DOMICILIO_CALLE write Set_ORIGEN_DOMICILIO_CALLE;
    property ORIGEN_DOMICILIO_NUMERO: Integer read Get_ORIGEN_DOMICILIO_NUMERO write Set_ORIGEN_DOMICILIO_NUMERO;
    property ORIGEN_DOMICILIO_COMPLE: WideString read Get_ORIGEN_DOMICILIO_COMPLE write Set_ORIGEN_DOMICILIO_COMPLE;
    property ORIGEN_DOMICILIO_PISO: WideString read Get_ORIGEN_DOMICILIO_PISO write Set_ORIGEN_DOMICILIO_PISO;
    property ORIGEN_DOMICILIO_DTO: WideString read Get_ORIGEN_DOMICILIO_DTO write Set_ORIGEN_DOMICILIO_DTO;
    property ORIGEN_DOMICILIO_BARRIO: WideString read Get_ORIGEN_DOMICILIO_BARRIO write Set_ORIGEN_DOMICILIO_BARRIO;
    property ORIGEN_DOMICILIO_CODIGO_POSTAL: WideString read Get_ORIGEN_DOMICILIO_CODIGO_POSTAL write Set_ORIGEN_DOMICILIO_CODIGO_POSTAL;
    property ORIGEN_DOMICILIO_LOCALIDAD: WideString read Get_ORIGEN_DOMICILIO_LOCALIDAD write Set_ORIGEN_DOMICILIO_LOCALIDAD;
    property ORIGEN_DOMICILIO_PROVINCIA: WideString read Get_ORIGEN_DOMICILIO_PROVINCIA write Set_ORIGEN_DOMICILIO_PROVINCIA;
    property TRANSPORTISTA_CUIT: Double read Get_TRANSPORTISTA_CUIT write Set_TRANSPORTISTA_CUIT;
    property TIPO_RECORRIDO: WideString read Get_TIPO_RECORRIDO write Set_TIPO_RECORRIDO;
    property RECORRIDO_LOCALIDAD: WideString read Get_RECORRIDO_LOCALIDAD write Set_RECORRIDO_LOCALIDAD;
    property RECORRIDO_CALLE: WideString read Get_RECORRIDO_CALLE write Set_RECORRIDO_CALLE;
    property RECORRIDO_RUTA: WideString read Get_RECORRIDO_RUTA write Set_RECORRIDO_RUTA;
    property PATENTE_VEHICULO: WideString read Get_PATENTE_VEHICULO write Set_PATENTE_VEHICULO;
    property PATENTE_ACOPLADO: WideString read Get_PATENTE_ACOPLADO write Set_PATENTE_ACOPLADO;
    property PRODUCTO_NO_TERM_DEV: OLE_CANCELBOOL read Get_PRODUCTO_NO_TERM_DEV write Set_PRODUCTO_NO_TERM_DEV;
    property IMPORTE: Double read Get_IMPORTE write Set_IMPORTE;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoProducto provides a Create and CreateRemote method to          
// create instances of the default interface IProducto exposed by              
// the CoClass Producto. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProducto = class
    class function Create: IProducto;
    class function CreateRemote(const MachineName: string): IProducto;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TProducto
// Help String      : Producto Object
// Default Interface: IProducto
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TProductoProperties= class;
{$ENDIF}
  TProducto = class(TOleServer)
  private
    FIntf:        IProducto;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TProductoProperties;
    function      GetServerProperties: TProductoProperties;
{$ENDIF}
    function      GetDefaultInterface: IProducto;
  protected
    procedure InitServerData; override;
    function Get_CODIGO_UNICO_PRODUCTO: WideString;
    procedure Set_CODIGO_UNICO_PRODUCTO(const Value: WideString);
    function Get_RENTAS_CODIGO_UNIDAD_MEDIDA: Integer;
    procedure Set_RENTAS_CODIGO_UNIDAD_MEDIDA(Value: Integer);
    function Get_CANTIDAD: Double;
    procedure Set_CANTIDAD(Value: Double);
    function Get_PROPIO_CODIGO_PRODUCTO: WideString;
    procedure Set_PROPIO_CODIGO_PRODUCTO(const Value: WideString);
    function Get_PROPIO_DESCRIPCION_PRODUCTO: WideString;
    procedure Set_PROPIO_DESCRIPCION_PRODUCTO(const Value: WideString);
    function Get_PROPIO_DESCRIPCION_UNIDAD_MEDIDA: WideString;
    procedure Set_PROPIO_DESCRIPCION_UNIDAD_MEDIDA(const Value: WideString);
    function Get_CANTIDAD_AJUSTADA: Double;
    procedure Set_CANTIDAD_AJUSTADA(Value: Double);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IProducto);
    procedure Disconnect; override;
    function LineaTexto: WideString;
    property DefaultInterface: IProducto read GetDefaultInterface;
    property CODIGO_UNICO_PRODUCTO: WideString read Get_CODIGO_UNICO_PRODUCTO write Set_CODIGO_UNICO_PRODUCTO;
    property RENTAS_CODIGO_UNIDAD_MEDIDA: Integer read Get_RENTAS_CODIGO_UNIDAD_MEDIDA write Set_RENTAS_CODIGO_UNIDAD_MEDIDA;
    property CANTIDAD: Double read Get_CANTIDAD write Set_CANTIDAD;
    property PROPIO_CODIGO_PRODUCTO: WideString read Get_PROPIO_CODIGO_PRODUCTO write Set_PROPIO_CODIGO_PRODUCTO;
    property PROPIO_DESCRIPCION_PRODUCTO: WideString read Get_PROPIO_DESCRIPCION_PRODUCTO write Set_PROPIO_DESCRIPCION_PRODUCTO;
    property PROPIO_DESCRIPCION_UNIDAD_MEDIDA: WideString read Get_PROPIO_DESCRIPCION_UNIDAD_MEDIDA write Set_PROPIO_DESCRIPCION_UNIDAD_MEDIDA;
    property CANTIDAD_AJUSTADA: Double read Get_CANTIDAD_AJUSTADA write Set_CANTIDAD_AJUSTADA;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TProductoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TProducto
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TProductoProperties = class(TPersistent)
  private
    FServer:    TProducto;
    function    GetDefaultInterface: IProducto;
    constructor Create(AServer: TProducto);
  protected
    function Get_CODIGO_UNICO_PRODUCTO: WideString;
    procedure Set_CODIGO_UNICO_PRODUCTO(const Value: WideString);
    function Get_RENTAS_CODIGO_UNIDAD_MEDIDA: Integer;
    procedure Set_RENTAS_CODIGO_UNIDAD_MEDIDA(Value: Integer);
    function Get_CANTIDAD: Double;
    procedure Set_CANTIDAD(Value: Double);
    function Get_PROPIO_CODIGO_PRODUCTO: WideString;
    procedure Set_PROPIO_CODIGO_PRODUCTO(const Value: WideString);
    function Get_PROPIO_DESCRIPCION_PRODUCTO: WideString;
    procedure Set_PROPIO_DESCRIPCION_PRODUCTO(const Value: WideString);
    function Get_PROPIO_DESCRIPCION_UNIDAD_MEDIDA: WideString;
    procedure Set_PROPIO_DESCRIPCION_UNIDAD_MEDIDA(const Value: WideString);
    function Get_CANTIDAD_AJUSTADA: Double;
    procedure Set_CANTIDAD_AJUSTADA(Value: Double);
  public
    property DefaultInterface: IProducto read GetDefaultInterface;
  published
    property CODIGO_UNICO_PRODUCTO: WideString read Get_CODIGO_UNICO_PRODUCTO write Set_CODIGO_UNICO_PRODUCTO;
    property RENTAS_CODIGO_UNIDAD_MEDIDA: Integer read Get_RENTAS_CODIGO_UNIDAD_MEDIDA write Set_RENTAS_CODIGO_UNIDAD_MEDIDA;
    property CANTIDAD: Double read Get_CANTIDAD write Set_CANTIDAD;
    property PROPIO_CODIGO_PRODUCTO: WideString read Get_PROPIO_CODIGO_PRODUCTO write Set_PROPIO_CODIGO_PRODUCTO;
    property PROPIO_DESCRIPCION_PRODUCTO: WideString read Get_PROPIO_DESCRIPCION_PRODUCTO write Set_PROPIO_DESCRIPCION_PRODUCTO;
    property PROPIO_DESCRIPCION_UNIDAD_MEDIDA: WideString read Get_PROPIO_DESCRIPCION_UNIDAD_MEDIDA write Set_PROPIO_DESCRIPCION_UNIDAD_MEDIDA;
    property CANTIDAD_AJUSTADA: Double read Get_CANTIDAD_AJUSTADA write Set_CANTIDAD_AJUSTADA;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoResultado provides a Create and CreateRemote method to          
// create instances of the default interface IResultado exposed by              
// the CoClass Resultado. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoResultado = class
    class function Create: IResultado;
    class function CreateRemote(const MachineName: string): IResultado;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TResultado
// Help String      : TransactionResult Object
// Default Interface: IResultado
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TResultadoProperties= class;
{$ENDIF}
  TResultado = class(TOleServer)
  private
    FIntf:        IResultado;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TResultadoProperties;
    function      GetServerProperties: TResultadoProperties;
{$ENDIF}
    function      GetDefaultInterface: IResultado;
  protected
    procedure InitServerData; override;
    function Get_TransactionOk: OLE_CANCELBOOL;
    function Get_numeroComprobante: Integer;
    function Get_ErrorCount: Integer;
    function Get_ErrorCodigo(index: Integer): Integer;
    function Get_ErrorDesc(index: Integer): WideString;
    function Get_Errores: WideString;
    function Get_COT: Integer;
    function Get_ErrorRemito(index: Integer): WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IResultado);
    procedure Disconnect; override;
    procedure Parsear(const XML: WideString);
    property DefaultInterface: IResultado read GetDefaultInterface;
    property TransactionOk: OLE_CANCELBOOL read Get_TransactionOk;
    property numeroComprobante: Integer read Get_numeroComprobante;
    property ErrorCount: Integer read Get_ErrorCount;
    property ErrorCodigo[index: Integer]: Integer read Get_ErrorCodigo;
    property ErrorDesc[index: Integer]: WideString read Get_ErrorDesc;
    property Errores: WideString read Get_Errores;
    property COT: Integer read Get_COT;
    property ErrorRemito[index: Integer]: WideString read Get_ErrorRemito;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TResultadoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TResultado
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TResultadoProperties = class(TPersistent)
  private
    FServer:    TResultado;
    function    GetDefaultInterface: IResultado;
    constructor Create(AServer: TResultado);
  protected
    function Get_TransactionOk: OLE_CANCELBOOL;
    function Get_numeroComprobante: Integer;
    function Get_ErrorCount: Integer;
    function Get_ErrorCodigo(index: Integer): Integer;
    function Get_ErrorDesc(index: Integer): WideString;
    function Get_Errores: WideString;
    function Get_COT: Integer;
    function Get_ErrorRemito(index: Integer): WideString;
  public
    property DefaultInterface: IResultado read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoClienteRE.Create: IClienteRE;
begin
  Result := CreateComObject(CLASS_ClienteRE) as IClienteRE;
end;

class function CoClienteRE.CreateRemote(const MachineName: string): IClienteRE;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClienteRE) as IClienteRE;
end;

procedure TClienteRE.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F38108A8-23C0-4A64-89AB-E12296EC0523}';
    IntfIID:   '{4F1E8A62-FF50-431F-A55B-93DF553056C7}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TClienteRE.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IClienteRE;
  end;
end;

procedure TClienteRE.ConnectTo(svrIntf: IClienteRE);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TClienteRE.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TClienteRE.GetDefaultInterface: IClienteRE;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TClienteRE.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TClienteREProperties.Create(Self);
{$ENDIF}
end;

destructor TClienteRE.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TClienteRE.GetServerProperties: TClienteREProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TClienteRE.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TClienteRE.Set_Password(const Value: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := Value;
end;

function TClienteRE.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure TClienteRE.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function TClienteRE.Get_NroPlanta: Integer;
begin
    Result := DefaultInterface.NroPlanta;
end;

procedure TClienteRE.Set_NroPlanta(Value: Integer);
begin
  DefaultInterface.Set_NroPlanta(Value);
end;

function TClienteRE.Get_NroPuerta: Integer;
begin
    Result := DefaultInterface.NroPuerta;
end;

procedure TClienteRE.Set_NroPuerta(Value: Integer);
begin
  DefaultInterface.Set_NroPuerta(Value);
end;

function TClienteRE.Get_Fecha: WideString;
begin
    Result := DefaultInterface.Fecha;
end;

procedure TClienteRE.Set_Fecha(const Value: WideString);
  { Warning: The property Fecha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Fecha := Value;
end;

function TClienteRE.Get_NroSecuencial: Integer;
begin
    Result := DefaultInterface.NroSecuencial;
end;

procedure TClienteRE.Set_NroSecuencial(Value: Integer);
begin
  DefaultInterface.Set_NroSecuencial(Value);
end;

function TClienteRE.Get_Pedido: WideString;
begin
    Result := DefaultInterface.Pedido;
end;

function TClienteRE.Get_XMLRespuesta: WideString;
begin
    Result := DefaultInterface.XMLRespuesta;
end;

function TClienteRE.Get_ModoProduccion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ModoProduccion;
end;

procedure TClienteRE.Set_ModoProduccion(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ModoProduccion(Value);
end;

function TClienteRE.Get_Resultado: IResultado;
begin
    Result := DefaultInterface.Resultado;
end;

procedure TClienteRE.AgregaRemito(const Remito: IRemito);
begin
  DefaultInterface.AgregaRemito(Remito);
end;

procedure TClienteRE.AgregaProducto(const Producto: IProducto);
begin
  DefaultInterface.AgregaProducto(Producto);
end;

procedure TClienteRE.Inicializar;
begin
  DefaultInterface.Inicializar;
end;

function TClienteRE.Enviar: OLE_CANCELBOOL;
begin
  Result := DefaultInterface.Enviar;
end;

procedure TClienteRE.ObtenerResultado(const Resultado: IResultado);
begin
  DefaultInterface.ObtenerResultado(Resultado);
end;

function TClienteRE.NuevoRemito: IRemito;
begin
  Result := DefaultInterface.NuevoRemito;
end;

function TClienteRE.NuevoProducto: IProducto;
begin
  Result := DefaultInterface.NuevoProducto;
end;

procedure TClienteRE.AgregaNuevoRemito;
begin
  DefaultInterface.AgregaNuevoRemito;
end;

procedure TClienteRE.AgregaNuevoProducto;
begin
  DefaultInterface.AgregaNuevoProducto;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TClienteREProperties.Create(AServer: TClienteRE);
begin
  inherited Create;
  FServer := AServer;
end;

function TClienteREProperties.GetDefaultInterface: IClienteRE;
begin
  Result := FServer.DefaultInterface;
end;

function TClienteREProperties.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TClienteREProperties.Set_Password(const Value: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := Value;
end;

function TClienteREProperties.Get_CUIT: Double;
begin
    Result := DefaultInterface.CUIT;
end;

procedure TClienteREProperties.Set_CUIT(Value: Double);
begin
  DefaultInterface.Set_CUIT(Value);
end;

function TClienteREProperties.Get_NroPlanta: Integer;
begin
    Result := DefaultInterface.NroPlanta;
end;

procedure TClienteREProperties.Set_NroPlanta(Value: Integer);
begin
  DefaultInterface.Set_NroPlanta(Value);
end;

function TClienteREProperties.Get_NroPuerta: Integer;
begin
    Result := DefaultInterface.NroPuerta;
end;

procedure TClienteREProperties.Set_NroPuerta(Value: Integer);
begin
  DefaultInterface.Set_NroPuerta(Value);
end;

function TClienteREProperties.Get_Fecha: WideString;
begin
    Result := DefaultInterface.Fecha;
end;

procedure TClienteREProperties.Set_Fecha(const Value: WideString);
  { Warning: The property Fecha has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Fecha := Value;
end;

function TClienteREProperties.Get_NroSecuencial: Integer;
begin
    Result := DefaultInterface.NroSecuencial;
end;

procedure TClienteREProperties.Set_NroSecuencial(Value: Integer);
begin
  DefaultInterface.Set_NroSecuencial(Value);
end;

function TClienteREProperties.Get_Pedido: WideString;
begin
    Result := DefaultInterface.Pedido;
end;

function TClienteREProperties.Get_XMLRespuesta: WideString;
begin
    Result := DefaultInterface.XMLRespuesta;
end;

function TClienteREProperties.Get_ModoProduccion: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.ModoProduccion;
end;

procedure TClienteREProperties.Set_ModoProduccion(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_ModoProduccion(Value);
end;

function TClienteREProperties.Get_Resultado: IResultado;
begin
    Result := DefaultInterface.Resultado;
end;

{$ENDIF}

class function CoRemito.Create: IRemito;
begin
  Result := CreateComObject(CLASS_Remito) as IRemito;
end;

class function CoRemito.CreateRemote(const MachineName: string): IRemito;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Remito) as IRemito;
end;

procedure TRemito.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{51DDA116-61C5-4915-9F5E-5EC26F7F4393}';
    IntfIID:   '{C6730FEF-5B9B-40CC-A590-C009D88E261D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRemito.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IRemito;
  end;
end;

procedure TRemito.ConnectTo(svrIntf: IRemito);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRemito.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRemito.GetDefaultInterface: IRemito;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TRemito.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRemitoProperties.Create(Self);
{$ENDIF}
end;

destructor TRemito.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRemito.GetServerProperties: TRemitoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TRemito.Get_FECHA_EMISION: WideString;
begin
    Result := DefaultInterface.FECHA_EMISION;
end;

procedure TRemito.Set_FECHA_EMISION(const Value: WideString);
  { Warning: The property FECHA_EMISION has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FECHA_EMISION := Value;
end;

function TRemito.Get_CU_CODIGO_DGI: Integer;
begin
    Result := DefaultInterface.CU_CODIGO_DGI;
end;

procedure TRemito.Set_CU_CODIGO_DGI(Value: Integer);
begin
  DefaultInterface.Set_CU_CODIGO_DGI(Value);
end;

function TRemito.Get_CU_TIPO: WideString;
begin
    Result := DefaultInterface.CU_TIPO;
end;

procedure TRemito.Set_CU_TIPO(const Value: WideString);
  { Warning: The property CU_TIPO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CU_TIPO := Value;
end;

function TRemito.Get_CU_PREFIJO: Integer;
begin
    Result := DefaultInterface.CU_PREFIJO;
end;

procedure TRemito.Set_CU_PREFIJO(Value: Integer);
begin
  DefaultInterface.Set_CU_PREFIJO(Value);
end;

function TRemito.Get_CU_NUMERO: Integer;
begin
    Result := DefaultInterface.CU_NUMERO;
end;

procedure TRemito.Set_CU_NUMERO(Value: Integer);
begin
  DefaultInterface.Set_CU_NUMERO(Value);
end;

function TRemito.Get_FECHA_SALIDA_TRANSPORTE: WideString;
begin
    Result := DefaultInterface.FECHA_SALIDA_TRANSPORTE;
end;

procedure TRemito.Set_FECHA_SALIDA_TRANSPORTE(const Value: WideString);
  { Warning: The property FECHA_SALIDA_TRANSPORTE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FECHA_SALIDA_TRANSPORTE := Value;
end;

function TRemito.Get_HORA_SALIDA_TRANSPORTE: WideString;
begin
    Result := DefaultInterface.HORA_SALIDA_TRANSPORTE;
end;

procedure TRemito.Set_HORA_SALIDA_TRANSPORTE(const Value: WideString);
  { Warning: The property HORA_SALIDA_TRANSPORTE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HORA_SALIDA_TRANSPORTE := Value;
end;

function TRemito.Get_SUJETO_GENERADOR: WideString;
begin
    Result := DefaultInterface.SUJETO_GENERADOR;
end;

procedure TRemito.Set_SUJETO_GENERADOR(const Value: WideString);
  { Warning: The property SUJETO_GENERADOR has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SUJETO_GENERADOR := Value;
end;

function TRemito.Get_DESTINATARIO_CONSUMIDOR_FINAL: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.DESTINATARIO_CONSUMIDOR_FINAL;
end;

procedure TRemito.Set_DESTINATARIO_CONSUMIDOR_FINAL(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_DESTINATARIO_CONSUMIDOR_FINAL(Value);
end;

function TRemito.Get_DESTINATARIO_TIPO_DOCUMENTO: WideString;
begin
    Result := DefaultInterface.DESTINATARIO_TIPO_DOCUMENTO;
end;

procedure TRemito.Set_DESTINATARIO_TIPO_DOCUMENTO(const Value: WideString);
  { Warning: The property DESTINATARIO_TIPO_DOCUMENTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINATARIO_TIPO_DOCUMENTO := Value;
end;

function TRemito.Get_DESTINATARIO_DOCUMENTO: WideString;
begin
    Result := DefaultInterface.DESTINATARIO_DOCUMENTO;
end;

procedure TRemito.Set_DESTINATARIO_DOCUMENTO(const Value: WideString);
  { Warning: The property DESTINATARIO_DOCUMENTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINATARIO_DOCUMENTO := Value;
end;

function TRemito.Get_DESTINATARIO_CUIT: Double;
begin
    Result := DefaultInterface.DESTINATARIO_CUIT;
end;

procedure TRemito.Set_DESTINATARIO_CUIT(Value: Double);
begin
  DefaultInterface.Set_DESTINATARIO_CUIT(Value);
end;

function TRemito.Get_DESTINATARIO_RAZON_SOCIAL: WideString;
begin
    Result := DefaultInterface.DESTINATARIO_RAZON_SOCIAL;
end;

procedure TRemito.Set_DESTINATARIO_RAZON_SOCIAL(const Value: WideString);
  { Warning: The property DESTINATARIO_RAZON_SOCIAL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINATARIO_RAZON_SOCIAL := Value;
end;

function TRemito.Get_DESTINATARIO_TENEDOR: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.DESTINATARIO_TENEDOR;
end;

procedure TRemito.Set_DESTINATARIO_TENEDOR(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_DESTINATARIO_TENEDOR(Value);
end;

function TRemito.Get_DESTINO_DOMICILIO_CALLE: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_CALLE;
end;

procedure TRemito.Set_DESTINO_DOMICILIO_CALLE(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_CALLE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_CALLE := Value;
end;

function TRemito.Get_DESTINO_DOMICILIO_NUMERO: Integer;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_NUMERO;
end;

procedure TRemito.Set_DESTINO_DOMICILIO_NUMERO(Value: Integer);
begin
  DefaultInterface.Set_DESTINO_DOMICILIO_NUMERO(Value);
end;

function TRemito.Get_DESTINO_DOMICILIO_COMPLE: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_COMPLE;
end;

procedure TRemito.Set_DESTINO_DOMICILIO_COMPLE(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_COMPLE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_COMPLE := Value;
end;

function TRemito.Get_DESTINO_DOMICILIO_PISO: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_PISO;
end;

procedure TRemito.Set_DESTINO_DOMICILIO_PISO(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_PISO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_PISO := Value;
end;

function TRemito.Get_DESTINO_DOMICILIO_DTO: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_DTO;
end;

procedure TRemito.Set_DESTINO_DOMICILIO_DTO(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_DTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_DTO := Value;
end;

function TRemito.Get_DESTINO_DOMICILIO_BARRIO: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_BARRIO;
end;

procedure TRemito.Set_DESTINO_DOMICILIO_BARRIO(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_BARRIO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_BARRIO := Value;
end;

function TRemito.Get_DESTINO_DOMICILIO_CODIGO_POSTAL: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_CODIGO_POSTAL;
end;

procedure TRemito.Set_DESTINO_DOMICILIO_CODIGO_POSTAL(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_CODIGO_POSTAL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_CODIGO_POSTAL := Value;
end;

function TRemito.Get_DESTINO_DOMICILIO_LOCALIDAD: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_LOCALIDAD;
end;

procedure TRemito.Set_DESTINO_DOMICILIO_LOCALIDAD(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_LOCALIDAD has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_LOCALIDAD := Value;
end;

function TRemito.Get_DESTINO_DOMICILIO_PROVINCIA: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_PROVINCIA;
end;

procedure TRemito.Set_DESTINO_DOMICILIO_PROVINCIA(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_PROVINCIA has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_PROVINCIA := Value;
end;

function TRemito.Get_PROPIO_DESTINO_DOMICILIO_CODIGO: WideString;
begin
    Result := DefaultInterface.PROPIO_DESTINO_DOMICILIO_CODIGO;
end;

procedure TRemito.Set_PROPIO_DESTINO_DOMICILIO_CODIGO(const Value: WideString);
  { Warning: The property PROPIO_DESTINO_DOMICILIO_CODIGO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PROPIO_DESTINO_DOMICILIO_CODIGO := Value;
end;

function TRemito.Get_ENTREGA_DOMICILIO_ORIGEN: WideString;
begin
    Result := DefaultInterface.ENTREGA_DOMICILIO_ORIGEN;
end;

procedure TRemito.Set_ENTREGA_DOMICILIO_ORIGEN(const Value: WideString);
  { Warning: The property ENTREGA_DOMICILIO_ORIGEN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ENTREGA_DOMICILIO_ORIGEN := Value;
end;

function TRemito.Get_ORIGEN_CUIT: Double;
begin
    Result := DefaultInterface.ORIGEN_CUIT;
end;

procedure TRemito.Set_ORIGEN_CUIT(Value: Double);
begin
  DefaultInterface.Set_ORIGEN_CUIT(Value);
end;

function TRemito.Get_ORIGEN_RAZON_SOCIAL: WideString;
begin
    Result := DefaultInterface.ORIGEN_RAZON_SOCIAL;
end;

procedure TRemito.Set_ORIGEN_RAZON_SOCIAL(const Value: WideString);
  { Warning: The property ORIGEN_RAZON_SOCIAL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_RAZON_SOCIAL := Value;
end;

function TRemito.Get_EMISOR_TENEDOR: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.EMISOR_TENEDOR;
end;

procedure TRemito.Set_EMISOR_TENEDOR(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_EMISOR_TENEDOR(Value);
end;

function TRemito.Get_ORIGEN_DOMICILIO_CALLE: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_CALLE;
end;

procedure TRemito.Set_ORIGEN_DOMICILIO_CALLE(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_CALLE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_CALLE := Value;
end;

function TRemito.Get_ORIGEN_DOMICILIO_NUMERO: Integer;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_NUMERO;
end;

procedure TRemito.Set_ORIGEN_DOMICILIO_NUMERO(Value: Integer);
begin
  DefaultInterface.Set_ORIGEN_DOMICILIO_NUMERO(Value);
end;

function TRemito.Get_ORIGEN_DOMICILIO_COMPLE: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_COMPLE;
end;

procedure TRemito.Set_ORIGEN_DOMICILIO_COMPLE(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_COMPLE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_COMPLE := Value;
end;

function TRemito.Get_ORIGEN_DOMICILIO_PISO: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_PISO;
end;

procedure TRemito.Set_ORIGEN_DOMICILIO_PISO(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_PISO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_PISO := Value;
end;

function TRemito.Get_ORIGEN_DOMICILIO_DTO: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_DTO;
end;

procedure TRemito.Set_ORIGEN_DOMICILIO_DTO(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_DTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_DTO := Value;
end;

function TRemito.Get_ORIGEN_DOMICILIO_BARRIO: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_BARRIO;
end;

procedure TRemito.Set_ORIGEN_DOMICILIO_BARRIO(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_BARRIO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_BARRIO := Value;
end;

function TRemito.Get_ORIGEN_DOMICILIO_CODIGO_POSTAL: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_CODIGO_POSTAL;
end;

procedure TRemito.Set_ORIGEN_DOMICILIO_CODIGO_POSTAL(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_CODIGO_POSTAL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_CODIGO_POSTAL := Value;
end;

function TRemito.Get_ORIGEN_DOMICILIO_LOCALIDAD: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_LOCALIDAD;
end;

procedure TRemito.Set_ORIGEN_DOMICILIO_LOCALIDAD(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_LOCALIDAD has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_LOCALIDAD := Value;
end;

function TRemito.Get_ORIGEN_DOMICILIO_PROVINCIA: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_PROVINCIA;
end;

procedure TRemito.Set_ORIGEN_DOMICILIO_PROVINCIA(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_PROVINCIA has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_PROVINCIA := Value;
end;

function TRemito.Get_TRANSPORTISTA_CUIT: Double;
begin
    Result := DefaultInterface.TRANSPORTISTA_CUIT;
end;

procedure TRemito.Set_TRANSPORTISTA_CUIT(Value: Double);
begin
  DefaultInterface.Set_TRANSPORTISTA_CUIT(Value);
end;

function TRemito.Get_TIPO_RECORRIDO: WideString;
begin
    Result := DefaultInterface.TIPO_RECORRIDO;
end;

procedure TRemito.Set_TIPO_RECORRIDO(const Value: WideString);
  { Warning: The property TIPO_RECORRIDO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TIPO_RECORRIDO := Value;
end;

function TRemito.Get_RECORRIDO_LOCALIDAD: WideString;
begin
    Result := DefaultInterface.RECORRIDO_LOCALIDAD;
end;

procedure TRemito.Set_RECORRIDO_LOCALIDAD(const Value: WideString);
  { Warning: The property RECORRIDO_LOCALIDAD has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RECORRIDO_LOCALIDAD := Value;
end;

function TRemito.Get_RECORRIDO_CALLE: WideString;
begin
    Result := DefaultInterface.RECORRIDO_CALLE;
end;

procedure TRemito.Set_RECORRIDO_CALLE(const Value: WideString);
  { Warning: The property RECORRIDO_CALLE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RECORRIDO_CALLE := Value;
end;

function TRemito.Get_RECORRIDO_RUTA: WideString;
begin
    Result := DefaultInterface.RECORRIDO_RUTA;
end;

procedure TRemito.Set_RECORRIDO_RUTA(const Value: WideString);
  { Warning: The property RECORRIDO_RUTA has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RECORRIDO_RUTA := Value;
end;

function TRemito.Get_PATENTE_VEHICULO: WideString;
begin
    Result := DefaultInterface.PATENTE_VEHICULO;
end;

procedure TRemito.Set_PATENTE_VEHICULO(const Value: WideString);
  { Warning: The property PATENTE_VEHICULO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PATENTE_VEHICULO := Value;
end;

function TRemito.Get_PATENTE_ACOPLADO: WideString;
begin
    Result := DefaultInterface.PATENTE_ACOPLADO;
end;

procedure TRemito.Set_PATENTE_ACOPLADO(const Value: WideString);
  { Warning: The property PATENTE_ACOPLADO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PATENTE_ACOPLADO := Value;
end;

function TRemito.Get_PRODUCTO_NO_TERM_DEV: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.PRODUCTO_NO_TERM_DEV;
end;

procedure TRemito.Set_PRODUCTO_NO_TERM_DEV(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_PRODUCTO_NO_TERM_DEV(Value);
end;

function TRemito.Get_IMPORTE: Double;
begin
    Result := DefaultInterface.IMPORTE;
end;

procedure TRemito.Set_IMPORTE(Value: Double);
begin
  DefaultInterface.Set_IMPORTE(Value);
end;

function TRemito.LineaTexto: WideString;
begin
  Result := DefaultInterface.LineaTexto;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRemitoProperties.Create(AServer: TRemito);
begin
  inherited Create;
  FServer := AServer;
end;

function TRemitoProperties.GetDefaultInterface: IRemito;
begin
  Result := FServer.DefaultInterface;
end;

function TRemitoProperties.Get_FECHA_EMISION: WideString;
begin
    Result := DefaultInterface.FECHA_EMISION;
end;

procedure TRemitoProperties.Set_FECHA_EMISION(const Value: WideString);
  { Warning: The property FECHA_EMISION has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FECHA_EMISION := Value;
end;

function TRemitoProperties.Get_CU_CODIGO_DGI: Integer;
begin
    Result := DefaultInterface.CU_CODIGO_DGI;
end;

procedure TRemitoProperties.Set_CU_CODIGO_DGI(Value: Integer);
begin
  DefaultInterface.Set_CU_CODIGO_DGI(Value);
end;

function TRemitoProperties.Get_CU_TIPO: WideString;
begin
    Result := DefaultInterface.CU_TIPO;
end;

procedure TRemitoProperties.Set_CU_TIPO(const Value: WideString);
  { Warning: The property CU_TIPO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CU_TIPO := Value;
end;

function TRemitoProperties.Get_CU_PREFIJO: Integer;
begin
    Result := DefaultInterface.CU_PREFIJO;
end;

procedure TRemitoProperties.Set_CU_PREFIJO(Value: Integer);
begin
  DefaultInterface.Set_CU_PREFIJO(Value);
end;

function TRemitoProperties.Get_CU_NUMERO: Integer;
begin
    Result := DefaultInterface.CU_NUMERO;
end;

procedure TRemitoProperties.Set_CU_NUMERO(Value: Integer);
begin
  DefaultInterface.Set_CU_NUMERO(Value);
end;

function TRemitoProperties.Get_FECHA_SALIDA_TRANSPORTE: WideString;
begin
    Result := DefaultInterface.FECHA_SALIDA_TRANSPORTE;
end;

procedure TRemitoProperties.Set_FECHA_SALIDA_TRANSPORTE(const Value: WideString);
  { Warning: The property FECHA_SALIDA_TRANSPORTE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FECHA_SALIDA_TRANSPORTE := Value;
end;

function TRemitoProperties.Get_HORA_SALIDA_TRANSPORTE: WideString;
begin
    Result := DefaultInterface.HORA_SALIDA_TRANSPORTE;
end;

procedure TRemitoProperties.Set_HORA_SALIDA_TRANSPORTE(const Value: WideString);
  { Warning: The property HORA_SALIDA_TRANSPORTE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.HORA_SALIDA_TRANSPORTE := Value;
end;

function TRemitoProperties.Get_SUJETO_GENERADOR: WideString;
begin
    Result := DefaultInterface.SUJETO_GENERADOR;
end;

procedure TRemitoProperties.Set_SUJETO_GENERADOR(const Value: WideString);
  { Warning: The property SUJETO_GENERADOR has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SUJETO_GENERADOR := Value;
end;

function TRemitoProperties.Get_DESTINATARIO_CONSUMIDOR_FINAL: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.DESTINATARIO_CONSUMIDOR_FINAL;
end;

procedure TRemitoProperties.Set_DESTINATARIO_CONSUMIDOR_FINAL(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_DESTINATARIO_CONSUMIDOR_FINAL(Value);
end;

function TRemitoProperties.Get_DESTINATARIO_TIPO_DOCUMENTO: WideString;
begin
    Result := DefaultInterface.DESTINATARIO_TIPO_DOCUMENTO;
end;

procedure TRemitoProperties.Set_DESTINATARIO_TIPO_DOCUMENTO(const Value: WideString);
  { Warning: The property DESTINATARIO_TIPO_DOCUMENTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINATARIO_TIPO_DOCUMENTO := Value;
end;

function TRemitoProperties.Get_DESTINATARIO_DOCUMENTO: WideString;
begin
    Result := DefaultInterface.DESTINATARIO_DOCUMENTO;
end;

procedure TRemitoProperties.Set_DESTINATARIO_DOCUMENTO(const Value: WideString);
  { Warning: The property DESTINATARIO_DOCUMENTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINATARIO_DOCUMENTO := Value;
end;

function TRemitoProperties.Get_DESTINATARIO_CUIT: Double;
begin
    Result := DefaultInterface.DESTINATARIO_CUIT;
end;

procedure TRemitoProperties.Set_DESTINATARIO_CUIT(Value: Double);
begin
  DefaultInterface.Set_DESTINATARIO_CUIT(Value);
end;

function TRemitoProperties.Get_DESTINATARIO_RAZON_SOCIAL: WideString;
begin
    Result := DefaultInterface.DESTINATARIO_RAZON_SOCIAL;
end;

procedure TRemitoProperties.Set_DESTINATARIO_RAZON_SOCIAL(const Value: WideString);
  { Warning: The property DESTINATARIO_RAZON_SOCIAL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINATARIO_RAZON_SOCIAL := Value;
end;

function TRemitoProperties.Get_DESTINATARIO_TENEDOR: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.DESTINATARIO_TENEDOR;
end;

procedure TRemitoProperties.Set_DESTINATARIO_TENEDOR(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_DESTINATARIO_TENEDOR(Value);
end;

function TRemitoProperties.Get_DESTINO_DOMICILIO_CALLE: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_CALLE;
end;

procedure TRemitoProperties.Set_DESTINO_DOMICILIO_CALLE(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_CALLE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_CALLE := Value;
end;

function TRemitoProperties.Get_DESTINO_DOMICILIO_NUMERO: Integer;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_NUMERO;
end;

procedure TRemitoProperties.Set_DESTINO_DOMICILIO_NUMERO(Value: Integer);
begin
  DefaultInterface.Set_DESTINO_DOMICILIO_NUMERO(Value);
end;

function TRemitoProperties.Get_DESTINO_DOMICILIO_COMPLE: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_COMPLE;
end;

procedure TRemitoProperties.Set_DESTINO_DOMICILIO_COMPLE(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_COMPLE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_COMPLE := Value;
end;

function TRemitoProperties.Get_DESTINO_DOMICILIO_PISO: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_PISO;
end;

procedure TRemitoProperties.Set_DESTINO_DOMICILIO_PISO(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_PISO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_PISO := Value;
end;

function TRemitoProperties.Get_DESTINO_DOMICILIO_DTO: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_DTO;
end;

procedure TRemitoProperties.Set_DESTINO_DOMICILIO_DTO(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_DTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_DTO := Value;
end;

function TRemitoProperties.Get_DESTINO_DOMICILIO_BARRIO: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_BARRIO;
end;

procedure TRemitoProperties.Set_DESTINO_DOMICILIO_BARRIO(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_BARRIO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_BARRIO := Value;
end;

function TRemitoProperties.Get_DESTINO_DOMICILIO_CODIGO_POSTAL: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_CODIGO_POSTAL;
end;

procedure TRemitoProperties.Set_DESTINO_DOMICILIO_CODIGO_POSTAL(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_CODIGO_POSTAL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_CODIGO_POSTAL := Value;
end;

function TRemitoProperties.Get_DESTINO_DOMICILIO_LOCALIDAD: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_LOCALIDAD;
end;

procedure TRemitoProperties.Set_DESTINO_DOMICILIO_LOCALIDAD(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_LOCALIDAD has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_LOCALIDAD := Value;
end;

function TRemitoProperties.Get_DESTINO_DOMICILIO_PROVINCIA: WideString;
begin
    Result := DefaultInterface.DESTINO_DOMICILIO_PROVINCIA;
end;

procedure TRemitoProperties.Set_DESTINO_DOMICILIO_PROVINCIA(const Value: WideString);
  { Warning: The property DESTINO_DOMICILIO_PROVINCIA has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DESTINO_DOMICILIO_PROVINCIA := Value;
end;

function TRemitoProperties.Get_PROPIO_DESTINO_DOMICILIO_CODIGO: WideString;
begin
    Result := DefaultInterface.PROPIO_DESTINO_DOMICILIO_CODIGO;
end;

procedure TRemitoProperties.Set_PROPIO_DESTINO_DOMICILIO_CODIGO(const Value: WideString);
  { Warning: The property PROPIO_DESTINO_DOMICILIO_CODIGO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PROPIO_DESTINO_DOMICILIO_CODIGO := Value;
end;

function TRemitoProperties.Get_ENTREGA_DOMICILIO_ORIGEN: WideString;
begin
    Result := DefaultInterface.ENTREGA_DOMICILIO_ORIGEN;
end;

procedure TRemitoProperties.Set_ENTREGA_DOMICILIO_ORIGEN(const Value: WideString);
  { Warning: The property ENTREGA_DOMICILIO_ORIGEN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ENTREGA_DOMICILIO_ORIGEN := Value;
end;

function TRemitoProperties.Get_ORIGEN_CUIT: Double;
begin
    Result := DefaultInterface.ORIGEN_CUIT;
end;

procedure TRemitoProperties.Set_ORIGEN_CUIT(Value: Double);
begin
  DefaultInterface.Set_ORIGEN_CUIT(Value);
end;

function TRemitoProperties.Get_ORIGEN_RAZON_SOCIAL: WideString;
begin
    Result := DefaultInterface.ORIGEN_RAZON_SOCIAL;
end;

procedure TRemitoProperties.Set_ORIGEN_RAZON_SOCIAL(const Value: WideString);
  { Warning: The property ORIGEN_RAZON_SOCIAL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_RAZON_SOCIAL := Value;
end;

function TRemitoProperties.Get_EMISOR_TENEDOR: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.EMISOR_TENEDOR;
end;

procedure TRemitoProperties.Set_EMISOR_TENEDOR(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_EMISOR_TENEDOR(Value);
end;

function TRemitoProperties.Get_ORIGEN_DOMICILIO_CALLE: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_CALLE;
end;

procedure TRemitoProperties.Set_ORIGEN_DOMICILIO_CALLE(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_CALLE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_CALLE := Value;
end;

function TRemitoProperties.Get_ORIGEN_DOMICILIO_NUMERO: Integer;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_NUMERO;
end;

procedure TRemitoProperties.Set_ORIGEN_DOMICILIO_NUMERO(Value: Integer);
begin
  DefaultInterface.Set_ORIGEN_DOMICILIO_NUMERO(Value);
end;

function TRemitoProperties.Get_ORIGEN_DOMICILIO_COMPLE: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_COMPLE;
end;

procedure TRemitoProperties.Set_ORIGEN_DOMICILIO_COMPLE(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_COMPLE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_COMPLE := Value;
end;

function TRemitoProperties.Get_ORIGEN_DOMICILIO_PISO: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_PISO;
end;

procedure TRemitoProperties.Set_ORIGEN_DOMICILIO_PISO(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_PISO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_PISO := Value;
end;

function TRemitoProperties.Get_ORIGEN_DOMICILIO_DTO: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_DTO;
end;

procedure TRemitoProperties.Set_ORIGEN_DOMICILIO_DTO(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_DTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_DTO := Value;
end;

function TRemitoProperties.Get_ORIGEN_DOMICILIO_BARRIO: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_BARRIO;
end;

procedure TRemitoProperties.Set_ORIGEN_DOMICILIO_BARRIO(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_BARRIO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_BARRIO := Value;
end;

function TRemitoProperties.Get_ORIGEN_DOMICILIO_CODIGO_POSTAL: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_CODIGO_POSTAL;
end;

procedure TRemitoProperties.Set_ORIGEN_DOMICILIO_CODIGO_POSTAL(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_CODIGO_POSTAL has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_CODIGO_POSTAL := Value;
end;

function TRemitoProperties.Get_ORIGEN_DOMICILIO_LOCALIDAD: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_LOCALIDAD;
end;

procedure TRemitoProperties.Set_ORIGEN_DOMICILIO_LOCALIDAD(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_LOCALIDAD has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_LOCALIDAD := Value;
end;

function TRemitoProperties.Get_ORIGEN_DOMICILIO_PROVINCIA: WideString;
begin
    Result := DefaultInterface.ORIGEN_DOMICILIO_PROVINCIA;
end;

procedure TRemitoProperties.Set_ORIGEN_DOMICILIO_PROVINCIA(const Value: WideString);
  { Warning: The property ORIGEN_DOMICILIO_PROVINCIA has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ORIGEN_DOMICILIO_PROVINCIA := Value;
end;

function TRemitoProperties.Get_TRANSPORTISTA_CUIT: Double;
begin
    Result := DefaultInterface.TRANSPORTISTA_CUIT;
end;

procedure TRemitoProperties.Set_TRANSPORTISTA_CUIT(Value: Double);
begin
  DefaultInterface.Set_TRANSPORTISTA_CUIT(Value);
end;

function TRemitoProperties.Get_TIPO_RECORRIDO: WideString;
begin
    Result := DefaultInterface.TIPO_RECORRIDO;
end;

procedure TRemitoProperties.Set_TIPO_RECORRIDO(const Value: WideString);
  { Warning: The property TIPO_RECORRIDO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.TIPO_RECORRIDO := Value;
end;

function TRemitoProperties.Get_RECORRIDO_LOCALIDAD: WideString;
begin
    Result := DefaultInterface.RECORRIDO_LOCALIDAD;
end;

procedure TRemitoProperties.Set_RECORRIDO_LOCALIDAD(const Value: WideString);
  { Warning: The property RECORRIDO_LOCALIDAD has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RECORRIDO_LOCALIDAD := Value;
end;

function TRemitoProperties.Get_RECORRIDO_CALLE: WideString;
begin
    Result := DefaultInterface.RECORRIDO_CALLE;
end;

procedure TRemitoProperties.Set_RECORRIDO_CALLE(const Value: WideString);
  { Warning: The property RECORRIDO_CALLE has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RECORRIDO_CALLE := Value;
end;

function TRemitoProperties.Get_RECORRIDO_RUTA: WideString;
begin
    Result := DefaultInterface.RECORRIDO_RUTA;
end;

procedure TRemitoProperties.Set_RECORRIDO_RUTA(const Value: WideString);
  { Warning: The property RECORRIDO_RUTA has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.RECORRIDO_RUTA := Value;
end;

function TRemitoProperties.Get_PATENTE_VEHICULO: WideString;
begin
    Result := DefaultInterface.PATENTE_VEHICULO;
end;

procedure TRemitoProperties.Set_PATENTE_VEHICULO(const Value: WideString);
  { Warning: The property PATENTE_VEHICULO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PATENTE_VEHICULO := Value;
end;

function TRemitoProperties.Get_PATENTE_ACOPLADO: WideString;
begin
    Result := DefaultInterface.PATENTE_ACOPLADO;
end;

procedure TRemitoProperties.Set_PATENTE_ACOPLADO(const Value: WideString);
  { Warning: The property PATENTE_ACOPLADO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PATENTE_ACOPLADO := Value;
end;

function TRemitoProperties.Get_PRODUCTO_NO_TERM_DEV: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.PRODUCTO_NO_TERM_DEV;
end;

procedure TRemitoProperties.Set_PRODUCTO_NO_TERM_DEV(Value: OLE_CANCELBOOL);
begin
  DefaultInterface.Set_PRODUCTO_NO_TERM_DEV(Value);
end;

function TRemitoProperties.Get_IMPORTE: Double;
begin
    Result := DefaultInterface.IMPORTE;
end;

procedure TRemitoProperties.Set_IMPORTE(Value: Double);
begin
  DefaultInterface.Set_IMPORTE(Value);
end;

{$ENDIF}

class function CoProducto.Create: IProducto;
begin
  Result := CreateComObject(CLASS_Producto) as IProducto;
end;

class function CoProducto.CreateRemote(const MachineName: string): IProducto;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Producto) as IProducto;
end;

procedure TProducto.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3E5EAD2A-FF3C-43B5-931E-4BCA016AED95}';
    IntfIID:   '{64B5FDC0-3C74-44DB-A7A5-23F0F3568990}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TProducto.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IProducto;
  end;
end;

procedure TProducto.ConnectTo(svrIntf: IProducto);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TProducto.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TProducto.GetDefaultInterface: IProducto;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TProducto.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TProductoProperties.Create(Self);
{$ENDIF}
end;

destructor TProducto.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TProducto.GetServerProperties: TProductoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TProducto.Get_CODIGO_UNICO_PRODUCTO: WideString;
begin
    Result := DefaultInterface.CODIGO_UNICO_PRODUCTO;
end;

procedure TProducto.Set_CODIGO_UNICO_PRODUCTO(const Value: WideString);
  { Warning: The property CODIGO_UNICO_PRODUCTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CODIGO_UNICO_PRODUCTO := Value;
end;

function TProducto.Get_RENTAS_CODIGO_UNIDAD_MEDIDA: Integer;
begin
    Result := DefaultInterface.RENTAS_CODIGO_UNIDAD_MEDIDA;
end;

procedure TProducto.Set_RENTAS_CODIGO_UNIDAD_MEDIDA(Value: Integer);
begin
  DefaultInterface.Set_RENTAS_CODIGO_UNIDAD_MEDIDA(Value);
end;

function TProducto.Get_CANTIDAD: Double;
begin
    Result := DefaultInterface.CANTIDAD;
end;

procedure TProducto.Set_CANTIDAD(Value: Double);
begin
  DefaultInterface.Set_CANTIDAD(Value);
end;

function TProducto.Get_PROPIO_CODIGO_PRODUCTO: WideString;
begin
    Result := DefaultInterface.PROPIO_CODIGO_PRODUCTO;
end;

procedure TProducto.Set_PROPIO_CODIGO_PRODUCTO(const Value: WideString);
  { Warning: The property PROPIO_CODIGO_PRODUCTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PROPIO_CODIGO_PRODUCTO := Value;
end;

function TProducto.Get_PROPIO_DESCRIPCION_PRODUCTO: WideString;
begin
    Result := DefaultInterface.PROPIO_DESCRIPCION_PRODUCTO;
end;

procedure TProducto.Set_PROPIO_DESCRIPCION_PRODUCTO(const Value: WideString);
  { Warning: The property PROPIO_DESCRIPCION_PRODUCTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PROPIO_DESCRIPCION_PRODUCTO := Value;
end;

function TProducto.Get_PROPIO_DESCRIPCION_UNIDAD_MEDIDA: WideString;
begin
    Result := DefaultInterface.PROPIO_DESCRIPCION_UNIDAD_MEDIDA;
end;

procedure TProducto.Set_PROPIO_DESCRIPCION_UNIDAD_MEDIDA(const Value: WideString);
  { Warning: The property PROPIO_DESCRIPCION_UNIDAD_MEDIDA has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PROPIO_DESCRIPCION_UNIDAD_MEDIDA := Value;
end;

function TProducto.Get_CANTIDAD_AJUSTADA: Double;
begin
    Result := DefaultInterface.CANTIDAD_AJUSTADA;
end;

procedure TProducto.Set_CANTIDAD_AJUSTADA(Value: Double);
begin
  DefaultInterface.Set_CANTIDAD_AJUSTADA(Value);
end;

function TProducto.LineaTexto: WideString;
begin
  Result := DefaultInterface.LineaTexto;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TProductoProperties.Create(AServer: TProducto);
begin
  inherited Create;
  FServer := AServer;
end;

function TProductoProperties.GetDefaultInterface: IProducto;
begin
  Result := FServer.DefaultInterface;
end;

function TProductoProperties.Get_CODIGO_UNICO_PRODUCTO: WideString;
begin
    Result := DefaultInterface.CODIGO_UNICO_PRODUCTO;
end;

procedure TProductoProperties.Set_CODIGO_UNICO_PRODUCTO(const Value: WideString);
  { Warning: The property CODIGO_UNICO_PRODUCTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CODIGO_UNICO_PRODUCTO := Value;
end;

function TProductoProperties.Get_RENTAS_CODIGO_UNIDAD_MEDIDA: Integer;
begin
    Result := DefaultInterface.RENTAS_CODIGO_UNIDAD_MEDIDA;
end;

procedure TProductoProperties.Set_RENTAS_CODIGO_UNIDAD_MEDIDA(Value: Integer);
begin
  DefaultInterface.Set_RENTAS_CODIGO_UNIDAD_MEDIDA(Value);
end;

function TProductoProperties.Get_CANTIDAD: Double;
begin
    Result := DefaultInterface.CANTIDAD;
end;

procedure TProductoProperties.Set_CANTIDAD(Value: Double);
begin
  DefaultInterface.Set_CANTIDAD(Value);
end;

function TProductoProperties.Get_PROPIO_CODIGO_PRODUCTO: WideString;
begin
    Result := DefaultInterface.PROPIO_CODIGO_PRODUCTO;
end;

procedure TProductoProperties.Set_PROPIO_CODIGO_PRODUCTO(const Value: WideString);
  { Warning: The property PROPIO_CODIGO_PRODUCTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PROPIO_CODIGO_PRODUCTO := Value;
end;

function TProductoProperties.Get_PROPIO_DESCRIPCION_PRODUCTO: WideString;
begin
    Result := DefaultInterface.PROPIO_DESCRIPCION_PRODUCTO;
end;

procedure TProductoProperties.Set_PROPIO_DESCRIPCION_PRODUCTO(const Value: WideString);
  { Warning: The property PROPIO_DESCRIPCION_PRODUCTO has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PROPIO_DESCRIPCION_PRODUCTO := Value;
end;

function TProductoProperties.Get_PROPIO_DESCRIPCION_UNIDAD_MEDIDA: WideString;
begin
    Result := DefaultInterface.PROPIO_DESCRIPCION_UNIDAD_MEDIDA;
end;

procedure TProductoProperties.Set_PROPIO_DESCRIPCION_UNIDAD_MEDIDA(const Value: WideString);
  { Warning: The property PROPIO_DESCRIPCION_UNIDAD_MEDIDA has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PROPIO_DESCRIPCION_UNIDAD_MEDIDA := Value;
end;

function TProductoProperties.Get_CANTIDAD_AJUSTADA: Double;
begin
    Result := DefaultInterface.CANTIDAD_AJUSTADA;
end;

procedure TProductoProperties.Set_CANTIDAD_AJUSTADA(Value: Double);
begin
  DefaultInterface.Set_CANTIDAD_AJUSTADA(Value);
end;

{$ENDIF}

class function CoResultado.Create: IResultado;
begin
  Result := CreateComObject(CLASS_Resultado) as IResultado;
end;

class function CoResultado.CreateRemote(const MachineName: string): IResultado;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Resultado) as IResultado;
end;

procedure TResultado.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C7F51EE5-245E-4837-A375-63F47D290A60}';
    IntfIID:   '{40C4AF11-AA56-4A59-8C39-4E2786590D4D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TResultado.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IResultado;
  end;
end;

procedure TResultado.ConnectTo(svrIntf: IResultado);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TResultado.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TResultado.GetDefaultInterface: IResultado;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TResultado.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TResultadoProperties.Create(Self);
{$ENDIF}
end;

destructor TResultado.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TResultado.GetServerProperties: TResultadoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TResultado.Get_TransactionOk: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.TransactionOk;
end;

function TResultado.Get_numeroComprobante: Integer;
begin
    Result := DefaultInterface.numeroComprobante;
end;

function TResultado.Get_ErrorCount: Integer;
begin
    Result := DefaultInterface.ErrorCount;
end;

function TResultado.Get_ErrorCodigo(index: Integer): Integer;
begin
    Result := DefaultInterface.ErrorCodigo[index];
end;

function TResultado.Get_ErrorDesc(index: Integer): WideString;
begin
    Result := DefaultInterface.ErrorDesc[index];
end;

function TResultado.Get_Errores: WideString;
begin
    Result := DefaultInterface.Errores;
end;

function TResultado.Get_COT: Integer;
begin
    Result := DefaultInterface.COT;
end;

function TResultado.Get_ErrorRemito(index: Integer): WideString;
begin
    Result := DefaultInterface.ErrorRemito[index];
end;

procedure TResultado.Parsear(const XML: WideString);
begin
  DefaultInterface.Parsear(XML);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TResultadoProperties.Create(AServer: TResultado);
begin
  inherited Create;
  FServer := AServer;
end;

function TResultadoProperties.GetDefaultInterface: IResultado;
begin
  Result := FServer.DefaultInterface;
end;

function TResultadoProperties.Get_TransactionOk: OLE_CANCELBOOL;
begin
    Result := DefaultInterface.TransactionOk;
end;

function TResultadoProperties.Get_numeroComprobante: Integer;
begin
    Result := DefaultInterface.numeroComprobante;
end;

function TResultadoProperties.Get_ErrorCount: Integer;
begin
    Result := DefaultInterface.ErrorCount;
end;

function TResultadoProperties.Get_ErrorCodigo(index: Integer): Integer;
begin
    Result := DefaultInterface.ErrorCodigo[index];
end;

function TResultadoProperties.Get_ErrorDesc(index: Integer): WideString;
begin
    Result := DefaultInterface.ErrorDesc[index];
end;

function TResultadoProperties.Get_Errores: WideString;
begin
    Result := DefaultInterface.Errores;
end;

function TResultadoProperties.Get_COT: Integer;
begin
    Result := DefaultInterface.COT;
end;

function TResultadoProperties.Get_ErrorRemito(index: Integer): WideString;
begin
    Result := DefaultInterface.ErrorRemito[index];
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TClienteRE, TRemito, TProducto, TResultado]);
end;

end.
