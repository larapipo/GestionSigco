unit UOpenAILeerPDF;

interface

uses
  System.SysUtils, System.Classes, System.JSON, System.IOUtils,
  System.NetEncoding, System.Net.URLClient, System.Net.HttpClient;

type
  TOpenAILeerPDF = class
  private
    FApiKey: string;

    // === Helpers para mitigar timeouts ===
    function NewHTTPClient: THTTPClient;
    function SafePostWithRetry(const Url, BodyJSON, ApiKey: string; Retries: Integer = 2): string;

    function PromptJSONItems: string;
    function HTTPUploadFile_Multipart(const Url, FilePath, FieldName, Purpose: string): string; overload;
    function HTTPUploadFile_Multipart(const Url, FilePath, FieldName, Purpose, MimeType: string): string; overload;
    function JSONGetString(const JSONText, Path: string): string;

    function HTTPPostJSON(const Url, BodyJSON: string): string; // usa retry + timeouts

    function BuildVisionBodyJSON(const ApiKey, Model, Prompt, DataUrl: string): string;
  public
    constructor Create(const ApiKey: string);
    function UploadPDF_GetFileId(const PdfPath: string): string;
    function UploadImage_GetFileId(const ImagePath: string): string;

    function ImageToInvoiceJSON(const ImagePath: string; const Model: string = 'gpt-4o'): string;
    function ImageToInvoiceJSON_Vision(const ImagePath: string; const Model: string = 'gpt-4o'): string;

    function ExtractInvoiceJSON(const FileId: string; const Model: string = 'gpt-4o'): string;

    function ExtractJSONFromChatResponse(const RespJSON: string): string;
    function FileToDataURL_Image(const ImagePath: string): string;

    function PostChatCompletions(const ApiKey, BodyJSON: string): string; // usa retry + timeouts

    // === NUEVO: método universal (PDF escaneado o imagen) ===
    function ProcessInvoiceToJSON(const FilePath: string; const Model: string = 'gpt-4o'): string;
  end;

implementation

const
  URL_FILES      = 'https://api.openai.com/v1/files';
  URL_RESPONSES  = 'https://api.openai.com/v1/responses';
  URL_CHAT       = 'https://api.openai.com/v1/chat/completions';

{==================== cliente HTTP robusto (timeouts + tls + sin proxy) ====================}

function TOpenAILeerPDF.NewHTTPClient: THTTPClient;
var
  PS: TProxySettings; // record local
begin
  Result := THTTPClient.Create;

  // Timeouts (ms)
  Result.ConnectionTimeout := 60000;   // 60s conectar
  Result.ResponseTimeout   := 600000;  // 10 min recibir

  // Network hygiene
  Result.AutomaticDecompression := [];
  Result.HandleRedirects := True;
  Result.CustomHeaders['Expect'] := ''; // evita 100-Continue

  // TLS
  try
    Result.SecureProtocols := [THTTPSecureProtocol.TLS12, THTTPSecureProtocol.TLS13];
  except
    Result.SecureProtocols := [THTTPSecureProtocol.TLS12];
  end;

  // Proxy OFF (asignar record completo)
  PS := Result.ProxySettings;
  PS.Host := '';
  PS.Port := 0;
  PS.UserName := '';
  PS.Password := '';
  {$IF DECLARED(TProxyType)}
  // PS.ProxyType := TProxyType.ptDefault; // opcional según versión
  {$IFEND}
  Result.ProxySettings := PS;

  Result.UserAgent := 'Delphi-NetHTTPClient/OpenAI-Invoice';
end;

function TOpenAILeerPDF.SafePostWithRetry(const Url, BodyJSON, ApiKey: string; Retries: Integer): string;
var
  I, WaitMs: Integer;
  Http: THTTPClient;
  Resp: IHTTPResponse;
  Body: TStringStream;
begin
  for I := 0 to Retries do
  try
    Http := NewHTTPClient;
    try
      Http.ContentType := 'application/json';
      Http.CustomHeaders['Authorization'] := 'Bearer ' + ApiKey;

      Body := TStringStream.Create(BodyJSON, TEncoding.UTF8, False);
      try
        Resp := Http.Post(Url, Body);
        if Resp = nil then
          raise Exception.Create('Sin respuesta del servidor');

        if (Resp.StatusCode < 200) or (Resp.StatusCode >= 300) then
          raise Exception.CreateFmt('HTTP %d: %s'#13#10'%s',
            [Resp.StatusCode, Resp.StatusText, Resp.ContentAsString(TEncoding.UTF8)]);

        Exit(Resp.ContentAsString(TEncoding.UTF8));
      finally
        Body.Free;
      end;
    finally
      Http.Free;
    end;
  except
    on E: ENetHTTPClientException do
    begin
      if I = Retries then
        raise;
      WaitMs := 1500 * (I + 1);
      Sleep(WaitMs);
    end;
    on E: Exception do
    begin
      if I = Retries then
        raise;
      Sleep(1000);
    end;
  end;
end;

{===============================================================================================}

function TOpenAILeerPDF.FileToDataURL_Image(const ImagePath: string): string;
var
  Ext, Mime: string;
  Bytes: TBytes;
  B64: string;
begin
  Ext := LowerCase(ExtractFileExt(ImagePath));
  if (Ext = '.jpg') or (Ext = '.jpeg') then Mime := 'image/jpeg'
  else if (Ext = '.png') then Mime := 'image/png'
  else if (Ext = '.webp') then Mime := 'image/webp'
  else
    raise Exception.Create('Formato no soportado por Vision. Use JPG/PNG/WEBP.');

  Bytes := TFile.ReadAllBytes(ImagePath);
  B64 := TNetEncoding.Base64.EncodeBytesToString(Bytes);
  Result := 'data:' + Mime + ';base64,' + B64;
end;

function TOpenAILeerPDF.BuildVisionBodyJSON(const ApiKey, Model, Prompt, DataUrl: string): string;
var
  Root, MsgUser, MsgSys, ObjText, ObjImage, ImgURL: TJSONObject;
  Messages, UserContent, SysContent: TJSONArray;
begin
  Root := TJSONObject.Create;
  try
    Root.AddPair('model', Model);
    Root.AddPair('temperature', TJSONNumber.Create(0));
    Root.AddPair('max_tokens', TJSONNumber.Create(2048));

    Messages := TJSONArray.Create;
    Root.AddPair('messages', Messages);

    // system
    MsgSys := TJSONObject.Create;
    MsgSys.AddPair('role', 'system');
    SysContent := TJSONArray.Create;
    SysContent.AddElement(
      TJSONObject.Create
        .AddPair('type','text')
        .AddPair('text','Sos un extractor de datos de facturas. Devolvés EXCLUSIVAMENTE JSON válido, sin texto adicional ni markdown.')
    );
    MsgSys.AddPair('content', SysContent);
    Messages.AddElement(MsgSys);

    // user
    MsgUser := TJSONObject.Create;
    MsgUser.AddPair('role', 'user');
    UserContent := TJSONArray.Create;

    ObjText := TJSONObject.Create;
    ObjText.AddPair('type','text');
    ObjText.AddPair('text', Prompt);
    UserContent.AddElement(ObjText);

    ObjImage := TJSONObject.Create;
    ObjImage.AddPair('type', 'image_url');
    ImgURL := TJSONObject.Create;
    ImgURL.AddPair('url', DataUrl); // data:image/...;base64,...
    ObjImage.AddPair('image_url', ImgURL);
    UserContent.AddElement(ObjImage);

    MsgUser.AddPair('content', UserContent);
    Messages.AddElement(MsgUser);

    Result := Root.ToJSON;
  finally
    Root.Free;
  end;
end;

function TOpenAILeerPDF.ImageToInvoiceJSON_Vision(const ImagePath: string; const Model: string = 'gpt-4o'): string;
var
  DataUrl, Body, Resp: string;
begin
  if not FileExists(ImagePath) then
    raise Exception.Create('No se encuentra la imagen: ' + ImagePath);

  DataUrl := FileToDataURL_Image(ImagePath);
  Body    := BuildVisionBodyJSON(FApiKey, Model, PromptJSONItems, DataUrl);
  Resp    := PostChatCompletions(FApiKey, Body);
  Result  := ExtractJSONFromChatResponse(Resp);
end;

function TOpenAILeerPDF.PostChatCompletions(const ApiKey, BodyJSON: string): string;
begin
  Result := SafePostWithRetry(URL_CHAT, BodyJSON, ApiKey, 2);
end;

function TOpenAILeerPDF.ExtractJSONFromChatResponse(const RespJSON: string): string;
var
  Root, Choice0, Msg: TJSONObject;
  Choices: TJSONArray;
  Content: string;
begin
  Result := '';
  Root := TJSONObject(TJSONObject.ParseJSONValue(RespJSON));
  try
    if not Assigned(Root) then
      raise Exception.Create('Respuesta Vision no es JSON.');

    Choices := Root.GetValue<TJSONArray>('choices');
    if (not Assigned(Choices)) or (Choices.Count=0) then
      raise Exception.Create('Vision: sin choices en la respuesta.');

    if not (Choices.Items[0] is TJSONObject) then
      raise Exception.Create('Vision: choice[0] no es objeto.');

    Choice0 := TJSONObject(Choices.Items[0]);
    Msg := Choice0.GetValue<TJSONObject>('message');
    if not Assigned(Msg) then
      raise Exception.Create('Vision: falta message en choice[0].');

    if not Msg.TryGetValue<string>('content', Content) then
      raise Exception.Create('Vision: falta content en message.');

    Result := Content.Trim;
  finally
    Root.Free;
  end;
end;

{ ===== Helpers ===== }
function GetMimeTypeFromExt(const FilePath: string): string;
var
  Ext: string;
begin
  Ext := LowerCase(ExtractFileExt(FilePath));
  if Ext = '.jpg'  then Exit('image/jpeg');
  if Ext = '.jpeg' then Exit('image/jpeg');
  if Ext = '.png'  then Exit('image/png');
  if Ext = '.webp' then Exit('image/webp');
  if Ext = '.pdf'  then Exit('application/pdf');
  Result := 'application/octet-stream';
end;

{ ===== TOpenAILeerPDF ===== }
constructor TOpenAILeerPDF.Create(const ApiKey: string);
begin
  FApiKey := ApiKey;
end;

function TOpenAILeerPDF.PromptJSONItems: string;
var PromptV2:string;
begin
  Result  :='''
            Extraer la informacion pdf y retornar archivo JSON.
            Extarer los datos del emisor como nombre o razon social y numero de cuit, Identificar estos datos como Nombre emisor y Cuit emisor.
            Si hay dos CUIT visibles, el CUIT del EMISOR es el que está en la cabecera (cerca de Letra/código/razón social/condición IVA del emisor).
            La cabecera es el bloque superior del documento, donde estan los datos de tipo de comprobante.
            Si hay logo y razón social en cabecera, tomar ese nombre como "Nombre del Emisor".
            Ignorar Bloques rotulado "Cliente","Señor(es)","Destinatario".
            El "Nombre del Emisor" suele estar en la parte Izquierda Superior de la Cabecera, entre el primer renglon y el octavo renglon, puede figurar como Razon Social.
            Los datos de "Fecha", "Letra", "Sucursal", "Numero", "Tipo Comprobante",
            "codigo comprobante" (no poner la letra solo el codigo), "Nombre del Emisor" es el dato que esta en la parte Superior,
            "Cuit del Emisor","Condicion IVA". Estos estan en la Cabecera
            y arreglo de items compuestos por :
            "codigo","Descripcion","Cantidad","Precio Unitario", "Unitarios Gravado","Impuestos Internos" o "Imp.Inte", "Descuento" o "Bonificacion" o similar,"Total", debe ser un arreglo sin la CLAVE  solo valores.
            Terminar con el "Neto Comprobante","Descuento General".
            Si Hay, detallar los "IVA al 21%" , "IVA al 10.5%","Percecpion de Ingresos Brutos" o "Percep" y "Otros impuetos",
            "Total del Comprobante"
            Si no hay Descuento por items poner 0.
            Si codigo no existe poner "********'.
            El formato de Fecha debe ser "DD/MM/YYYY".
            Extraé la información estructurada del siguiente comprobante PDF y devolvela en formato JSON.
            El PDF puede tener columnas con distintos nombres, por ejemplo "BULT/UNID", "CANTIDAD", "CANT.",
            "UNIDADES", etc. Interpretá todas estas variantes como "cantidad".

            Reglas de interpretación:
            1. Si la columna se llama "BULT/UNID" o similar, asumí que el número corresponde a
               BULTOS (cajas) y que la DESCRIPCIÓN puede indicar cuántas unidades contiene cada bulto
               (ejemplo: "8 MINI OREO x 150 GRS" significa que cada bulto tiene 8 paquetes de 150gr).
               - En este caso, calculá:
                 - cantidad_bultos
                 - unidades_por_bulto (si aparece en la descripción, ej. "8", "tripack", "pack x12")
                 - cantidad_total_unidades = cantidad_bultos * unidades_por_bulto
               - Si no se puede determinar las unidades por bulto, dejar el valor en NULL.

            2. Si la columna se llama "CANTIDAD", "UNIDADES" o similar, asumí que son unidades
               finales y no bultos.

            3. El campo "PCIO.UNIT" debe interpretarse como precio por bulto cuando la columna
               sea "BULT/UNID". Para obtener precio_unitario, dividir PCIO.UNIT entre unidades_por_bulto.
               Si es "CANTIDAD", entonces PCIO.UNIT ya es el precio por unidad.

            Responer solo con el Json Pedido sin leyendas adicionales.
            en Los importes, tomar como separado de decimal el punto, ignorar el separador de miles
            usa el siguiente como ejemplo de estructura:
            "Fecha": "28/02/2017",
            "Letra": "A",esta  esta en la parte central del pdf parte superior
            "Sucursal": "0001", es el numero que esta del lado izquiero del numero de comprobante el cual es formado por tres partes (letra-sucursal-numero),
            "Numero": "00000014",es el numero que esta del lado derecho del numero de comprobante el cual es formado por tres partes (letra-sucursal-numero)
            "Tipo Comprobante": "FACTURA",
            "codigo comprobante": "001", es el codigo que figura debajo de la Letra.
            "Nombre del Emisor": "#########",este nombre esta en la cabecera del comprobante.
            "Cuit del Emisor": "00-00000000-0",
            "items": [
              ["70", "SFOGLIATELLAS", 12.00, 16.909, 0.00, 202.91],
              ["524", "MANGA PASTELERA", 1.00, 102.157, 0.00, 102.16],
              ["8060", "MIGA NEGRO JAMON/QUESO", 6.00, 14.017, 0.00, 84.10],
              ["836", "BAGUETTE DE GRUYERE Y COCIDO", 1.00, 46.000, 0.00, 46.00],
              ["138", "CUADRADO DE APPLE CRUMBLE", 15.00, 30.372, 0.00, 455.58],
              ["328", "LINGOTE ESPEJO CHOCOLATE", 10.00, 38.785, 0.00, 387.85],
              ["3010", "LINGOTE DE LEMON CURD", 4.00, 28.116, 0.00, 112.46],
              ["81", "TARTA DE RICOTA (PORCION)", 8.00, 30.190, 0.00, 241.52],
              ["7450", "TIRAMISU PARA LLEVAR", 1.00, 138.702, 0.00, 138.70],
              ["602", "OREO:OREO/DDL/CREMA CHANTILLY", 20.00, 33.091, 0.00, 661.82],
              ["359", "SQUARE SIX-ESPEJO DE CHOCOLATE", 1.00, 185.500, 0.00, 185.50],
              ["2710", "SALSA DE PUERRO X 750GRS", 2.00, 134.000, 0.00, 268.00],
              ["1439", "ADEREZO CAESAR MANGA", 1.00, 133.446, 0.00, 133.45],
              ["822", "PAN DE CAMPO (UNIDAD)", 18.00, 37.937, 0.00, 682.87],
              ["824", "PAN MULTISEMILLADO REB XUNIDAD", 6.00, 48.835, 0.00, 293.01],
              ["914", "TOSTADO J/Q", 40.00, 30.504, 0.00, 1220.16],
              ["2709", "TOSTADOS NEGROS", 2.00, 25.636, 0.00, 51.27],
              ["3187", "MIX H. VERDES (SOBRE 1/2 KG)", 4.00, 33.500, 0.00, 134.00]
            ],
            "Neto Comprobante": 5401.36,
            "Descuento General": 0.00,
            "IVA al 21%": 990.88,
            "IVA al 10.5%": 71.70,
            "Percep Ingresos Brutos": 270.07,
            "Otros impuestos": 0.00,
            "Total del Comprobante": 6734.01
            ''';
  PromptV2:= '''
              Analizá la factura adjunta (PDF o imagen) y devolvé UN ÚNICO JSON válido, sin texto adicional.
                Debe funcionar con cualquier proveedor y layout. Aplicá OCR si hace falta.

              El PDF puede tener múltiples páginas. Analizá todas las hojas para reconstruir la factura completa
               (totales, ítems continuados, CAE y vencimiento, percepciones, etc.).

             - Normalización global
               Strings faltantes → ""
               Numéricos faltantes → 0
               iva_tasa por ítem no determinable → -1
               Código/sku inexistente → "********" (8 asteriscos)
               Fechas en formato DD/MM/YYYY
               Items: arreglo de arrays (continuado), 13 columnas fijas:
               [codigo/sku, descripcion, cantidad_bultos, unidades_por_bulto, cantidad_total_unidades, precio_bulto,
                descuento_total,porcentaje_descuento, neto_linea, impuesto_internos, iva_tasa, iva, subtotal]

             - Reglas de formato numérico (CRÍTICO)

              Usar punto (.) como único separador decimal. No usar separador de miles.
              Si el documento trae comas decimales o miles, normalizar:

              20.676,86 → 20676.86
              20,676.86 → 20676.86
              2.067.686,00 → 2067686.00

              No usar notación científica ni escalas (no mover la coma, no dividir por 100).
              Conservar la magnitud exacta (ej.: 20676.86 es correcto; incorrecto: 20.67686).
              iva_tasa debe ser fracción: 21.0, 10.5, 27.0, 0 .

             - Detección y mapeo (Argentina/AFIP)

              codigo_afip: debajo de la letra (A/B/C/M). Devolver "001", "006", "011", etc. Si aparece 01/001, devolver "001". Si no, "".
              Tipo: FACTURA/NOTA DE CRÉDITO/NOTA DE DÉBITO + A/B/C/M. Si no se puede, "DESCONOCIDO".

             - Si el Tipo de Comprobante es Factura A entonces codigo_afip="001".
             - Si el Tipo de Comprobante es Factura B entonces codigo_afip="006".

              Si en Emisor la condicion de iva no se puede determinar, considerar:
                si Codigo_afip="001"
                  Condion_iva es "INSCRIPTO" si EN emisor.
                si Codigo_afip="006"
                  Condion_iva es "Consumidor Final" si EN emisor.
                si no se puede determinar asumir
                  Condicion_Iva = "Inscripto".

             - Cantidades y precios por ítem:

               Encabezados equivalentes:

              Bultos : ["BULT/UNID","BULTO","BULTOS","PACK","CAJA","CJA"]
              Cantidad/Unidades : ["CANT","CANTIDAD","UNID","UNIDADES"]
              Precio : ["PRECIO UNIT","Precio Unitario","PCIO.UNIT","PRECIO/U","P.UNIT","BASE","VALOR UNIT"]
              Descuento : ["%BONIF","DESC","DESCUENTO","% DESC"]


              Imp. Internos: ["IMPUESTOS INTERNOS","INT.","I. INTERNOS"]

              IVA ítem: ["IVA","ALIC.","ALÍCUOTA"]
              Multipack en descripción: detectar xN (regex (?i)(x|\*)\s*(\d{1,3})) o duopack=2, tripack=3.

              Si hay bultos: el precio mostrado es precio_bulto.

              Si no hay bultos y solo CANTIDAD/UNIDADES: el precio mostrado es unitario,
               pero cargarlo en precio_bulto (columna fija 6).

              unidades_por_bulto: si aparece xN → N; si no, es igual a 1.

              cantidad_total_unidades: bultos * unidades_por_bulto; si no aplica, usar columna CANTIDAD; si no hay info, 0.

              Si cantidad_bultos es 0(cero) entonces cantidad_bultos = cantidad_total_unidades.

              Las cantidades pueden ser flotantes.

              El campo "descuento_total" puede representar un porcentaje o un importe.
              Debe tomarse como valor absoluto.
               Si es negativo ponerlo positivo.
               Si aparece con el símbolo % o valores típicos de porcentaje (<100), tratálo como porcentaje.
               Si aparece en valores absolutos (ej. "6203.06"), tratálo como importe.
               Si el Valor del descuento_total es <100 entonces porcentaje_descuento es igual a descuento_total.
               Usar punto (.) como único separador decimal. No usar separador de miles.
               Si el documento trae comas decimales o miles, normalizar:

               Si es un importe, calculá el porcentaje equivalente sobre el valor bruto del ítem:
                porcentaje_descuento =  (descuento_total / (precio_bulto*cantidad_bultos)) * 100

              -Descuento (forzar %):
                 El campo "descuento_total" en items debe representarse SIEMPRE como porcentaje (0–100, con punto decimal).
                 Si en el documento el descuento aparece como importe (p. ej. 6203.06) o si el valor detectado es > 100,
                 convertirlo a porcentaje usando:
                   porcentaje_descuento = ( descuento_total / (precio_bulto*cantidad_bultos)) * 100
                 Si el documento ya trae porcentaje (tiene "%" o es un valor razonable ≤ 100 sin símbolo),
                   conservarlo como porcentaje (no fracción).
                 Validaciones:
                   Redondear a 2 decimales.
                   Acotar rango a 0–100.
                 Si no se puede determinar con certeza, dejar 0.

              Iva_tasa por ítem: 21.0 / 10.5 / 27.0 / 0; si no determinable, -1.
              Totales (completar SIEMPRE todas las claves):

              percepcion_iibb: Percepción o Retención de Ingresos Brutos (IIBB).
              percepcion_municipal: solo si aparece una tasa/percepción municipal explícita (ej.: "Percep. Mun.", "Tasa Municipal", "DReI", "Seguridad e Higiene"). Si no existe, 0.

              res_2126 y res_3337: incluir solo si aparecen rotuladas como "RG/Res./Resolución".
              No confundir "Percep. IIBB" con tasas municipales: las percepciones de IIBB van solo en percepcion_iibb.

             - Entrega

              Devolver solo el JSON final (sin texto adicional), con este esquema exacto


              [ESQUEMA DE SALIDA]

              {
                "comprobante": {
                  "tipo": "",
                  "codigo_afip": "",
                  "punto_venta": "",
                  "numero": "",
                  "fecha_emision": "",
                  "condicion_venta": "",
                  "fecha_vto_pago": "",
                  "cae": "",
                  "cae_vencimiento": ""
                },

                "emisor": {
                  "razon_social": "",
                  "cuit": "",
                  "domicilio": "",
                  "condicion_iva": "",
                  "ingresos_brutos": "",
                  "inicio_actividad": ""
                },

                "receptor": {
                  "codigo_cliente": "",
                  "razon_social": "",
                  "cuit": "",
                  "domicilio": "",
                  "condicion_iva": ""
                },

                "transporte": {
                  "empresa": "",
                  "cuit": "",
                  "viaje": "",
                  "transaccion": ""
                },

                "items": [
                  ["**********","",0,0,0,0,0,0,0,-1,0,0]
                ],

                "totales": {
                  "neto_gravado": 0,
                  "iva_21": 0,
                  "iva_10_5": 0,
                  "iva_27": 0,
                  "impuestos_internos": 0,
                  "percepcion_iibb": 0,
                  "percepcion_municipal": 0,
                  "res_2126": 0,
                  "res_3337": 0,
                  "subtotal": 0,
                  "total_factura": 0
                },

                "observaciones": [],
                "control": {
                  "unit_source": "",
                  "vat_mapping": "",
                  "needs_review": false,
                  "notes": ""
                }
              }

              [REGLAS DE DETECCIÓN Y MAPEOS]
              1) "codigo_afip": buscar debajo de la letra; devolver "001","006","011"... si no aparece, "".
              2) Tipo: FACTURA/NC/ND A/B/C/M o "DESCONOCIDO".
              3) Cantidades/precios: mapear variantes; bultos/unidades; iva_tasa -1 si no determinable.
              4) Totales: completar siempre; percep_municipal solo si aparece explícita; res_2126/3337 si figuran.
              5) Los formatos de imporetes debes ser sin separador de miles y con punto decimal.
              6) percepcion_iibb: importe de Percepción o Retención de Ingresos Brutos (IIBB).
                 percepcion_municipal: solo si aparece explícitamente alguna tasa o percepción municipal (ej. "Tasa Municipal", "DReI", "Seguridad e Higiene").
                 Si no existe, dejar en 0.
                 res_3337 y res_2126: incluir solo si aparecen rotuladas como “RG/Res./Resolución”.
                 No confundir "Percep. IIBB" con impuestos municipales: las percepciones de Ingresos Brutos siempre van en percepcion_iibb.
              [ENTREGA] Devolver SOLO el JSON final (sin texto).
            ''';
  Result:=PromptV2;
end;

// ====== OVERLOAD (MIME configurable) ======
function TOpenAILeerPDF.HTTPUploadFile_Multipart(const Url, FilePath, FieldName, Purpose, MimeType: string): string;
var
  Http   : THTTPClient;
  Resp   : IHTTPResponse;
  Boundary, CRLF, Head, Tail: string;
  MS    : TMemoryStream;
  HeaderStream, TailStream: TStringStream;
  FileBytes : TBytes;
  Status: Integer;
begin
  if not FileExists(FilePath) then
    raise Exception.Create('Archivo no encontrado: ' + FilePath);

  Http := NewHTTPClient;
  try
    Boundary := '----DelphiBoundary' + IntToHex(Random(MaxInt), 8);
    CRLF     := #13#10;

    Head :=
      '--' + Boundary + CRLF +
      'Content-Disposition: form-data; name="purpose"' + CRLF + CRLF +
      Purpose + CRLF +
      '--' + Boundary + CRLF +
      'Content-Disposition: form-data; name="' + FieldName + '"; filename="' + ExtractFileName(FilePath) + '"' + CRLF +
      'Content-Type: ' + MimeType + CRLF + CRLF;

    Tail := CRLF + '--' + Boundary + '--' + CRLF;

    FileBytes := TFile.ReadAllBytes(FilePath);

    MS := TMemoryStream.Create;
    try
      HeaderStream := TStringStream.Create(Head, TEncoding.UTF8, False);
      try
        MS.CopyFrom(HeaderStream, HeaderStream.Size);
      finally
        HeaderStream.Free;
      end;

      MS.WriteBuffer(FileBytes, Length(FileBytes));

      TailStream := TStringStream.Create(Tail, TEncoding.UTF8, False);
      try
        MS.CopyFrom(TailStream, TailStream.Size);
      finally
        TailStream.Free;
      end;

      MS.Position := 0;

      Http.CustomHeaders['Authorization'] := 'Bearer ' + FApiKey;
      Http.CustomHeaders['Content-Type']  := 'multipart/form-data; boundary=' + Boundary;

      Resp := Http.Post(Url, MS);
      Status := Resp.StatusCode;
      Result := Resp.ContentAsString(TEncoding.UTF8);

      if (Status <> 200) and (Status <> 201) then
        raise Exception.CreateFmt('Upload falló. HTTP %d. Respuesta: %s', [Status, Result]);
    finally
      MS.Free;
    end;
  finally
    Http.Free;
  end;
end;

// ====== Overload original preservado ======
function TOpenAILeerPDF.HTTPUploadFile_Multipart( const Url, FilePath, FieldName, Purpose: string): string;
begin
  Result := HTTPUploadFile_Multipart(Url, FilePath, FieldName, Purpose, 'application/pdf');
end;

function TOpenAILeerPDF.JSONGetString(const JSONText, Path: string): string;
var
  Root, ErrObj: TJSONObject;
  ErrMsg: string;
begin
  Result := '';
  Root := TJSONObject(TJSONObject.ParseJSONValue(JSONText));
  try
    if Root = nil then
      raise Exception.Create('Respuesta no es JSON válido: ' + JSONText);

    if Root.TryGetValue<string>(Path, Result) then
      Exit;

    if Root.TryGetValue<TJSONObject>('error', ErrObj) then
    begin
      if ErrObj.TryGetValue<string>('message', ErrMsg) then
        raise Exception.Create('OpenAI error: ' + ErrMsg + ' | Respuesta: ' + JSONText)
      else
        raise Exception.Create('OpenAI error. Respuesta: ' + JSONText);
    end;

    raise Exception.Create(Format('Value "%s" not found. Respuesta: %s', [Path, JSONText]));
  finally
    Root.Free;
  end;
end;

// ====== usa retry + cliente con timeouts ======
function TOpenAILeerPDF.HTTPPostJSON(const Url, BodyJSON: string): string;
begin
  Result := SafePostWithRetry(Url, BodyJSON, FApiKey, 2);
end;

function TOpenAILeerPDF.UploadPDF_GetFileId(const PdfPath: string): string;
var
  RespJSON: string;
begin
  RespJSON := HTTPUploadFile_Multipart(URL_FILES, PdfPath, 'file', 'assistants');
  Result := JSONGetString(RespJSON, 'id');
  if Result = '' then
    raise Exception.Create('No se obtuvo file_id. Respuesta: ' + RespJSON);
end;

function TOpenAILeerPDF.UploadImage_GetFileId(const ImagePath: string): string;
var
  RespJSON, Purpose: string;
begin
  Purpose := 'vision';
  try
    RespJSON := HTTPUploadFile_Multipart(URL_FILES, ImagePath, 'file', Purpose);
  except
    on E: Exception do
    begin
      if Pos('purpose', E.Message.ToLower) > 0 then
      begin
        Purpose := 'assistants';
        RespJSON := HTTPUploadFile_Multipart(URL_FILES, ImagePath, 'file', Purpose);
      end
      else
        raise;
    end;
  end;

  Result := JSONGetString(RespJSON, 'id');
  if Result = '' then
    raise Exception.Create(Format('No se obtuvo file_id (imagen). Purpose=%s. Respuesta: %s', [Purpose, RespJSON]));
end;

function TOpenAILeerPDF.ImageToInvoiceJSON(const ImagePath: string; const Model: string): string;
var
  DataUrl, Body, Resp: string;
begin
  if not FileExists(ImagePath) then
    raise Exception.Create('No se encuentra la imagen: ' + ImagePath);

  DataUrl := FileToDataURL_Image(ImagePath);      // base64 data URL
  Body    := BuildVisionBodyJSON(FApiKey, Model, PromptJSONItems, DataUrl);
  Resp    := PostChatCompletions(FApiKey, Body);  // retry/timeout
  Result  := ExtractJSONFromChatResponse(Resp);   // SOLO el JSON
end;

function TOpenAILeerPDF.ExtractInvoiceJSON(const FileId: string; const Model: string): string;
var
  Body: TJSONObject;
  InputArr, UserContent: TJSONArray;
  UserMsg: TJSONObject;
  Prompt: string;
  RespJSON, OutputText: string;
  RespVal: TJSONValue;
  RespObj, FirstObj, ContentObj: TJSONObject;
  OutputArr, ContentArr: TJSONArray;
begin
  Prompt := PromptJSONItems;
  Body := TJSONObject.Create;
  try
    Body.AddPair('model', Model);
    Body.AddPair('temperature', TJSONNumber.Create(0));
    // Body.AddPair('max_output_tokens', TJSONNumber.Create(4096)); // opcional si hay muchos ítems

    // input: [ { role: "user", content: [ {type:"input_text"}, {type:"input_file"} ] } ]
    InputArr := TJSONArray.Create;
    Body.AddPair('input', InputArr);

    UserMsg := TJSONObject.Create;
    UserMsg.AddPair('role', 'user');
    UserContent := TJSONArray.Create;
    UserMsg.AddPair('content', UserContent);

    UserContent.AddElement(
      TJSONObject.Create
        .AddPair('type', 'input_text')
        .AddPair('text', Prompt)
    );

    UserContent.AddElement(
      TJSONObject.Create
        .AddPair('type', 'input_file')
        .AddPair('file_id', FileId)
    );

    InputArr.AddElement(UserMsg);

    // POST a OpenAI
    RespJSON := HTTPPostJSON(URL_RESPONSES, Body.ToJSON);

    // ---------- Extraer SOLO el JSON de salida ----------
    Result := ''; // default

    RespVal := TJSONObject.ParseJSONValue(RespJSON);
    try
      if not Assigned(RespVal) then
        raise Exception.Create('Respuesta no es JSON válido: ' + RespJSON);

      if RespVal is TJSONObject then
      begin
        RespObj := TJSONObject(RespVal);

        // 1) "output_text" directo
        if RespObj.TryGetValue<string>('output_text', OutputText) then
          Exit(OutputText);

        // 2) "output"[0].content[0].text (variante)
        if RespObj.TryGetValue<TJSONArray>('output', OutputArr) then
        begin
          if (OutputArr.Count > 0) and (OutputArr.Items[0] is TJSONObject) then
          begin
            FirstObj := TJSONObject(OutputArr.Items[0]);
            if FirstObj.TryGetValue<TJSONArray>('content', ContentArr) then
            begin
              if (ContentArr.Count > 0) and (ContentArr.Items[0] is TJSONObject) then
              begin
                ContentObj := TJSONObject(ContentArr.Items[0]);

                if ContentObj.TryGetValue<string>('text', OutputText) then
                  Exit(OutputText);

                if ContentObj.TryGetValue<string>('output_text', OutputText) then
                  Exit(OutputText);
              end;
            end;
          end;
        end;

        // 3) Fallback: devolver crudo para inspección
        Result := RespJSON;
      end
      else
        Result := RespJSON; // no era objeto, devolver crudo
    finally
      RespVal.Free;
    end;

  finally
    Body.Free;
  end;
end;

// ====== NUEVO: método universal PDF/imagen ======
function TOpenAILeerPDF.ProcessInvoiceToJSON(const FilePath: string; const Model: string): string;
var
  Ext, FileId: string;
begin
  if not FileExists(FilePath) then
    raise Exception.Create('Archivo no encontrado: ' + FilePath);

  Ext := LowerCase(ExtractFileExt(FilePath));

  if Ext = '.pdf' then
  begin
    // PDF → subir y usar /v1/responses (OCR + multipágina)
    FileId := UploadPDF_GetFileId(FilePath);
    Result := ExtractInvoiceJSON(FileId, Model);
    Exit;
  end;

  if (Ext = '.jpg') or (Ext = '.jpeg') or (Ext = '.png') or (Ext = '.webp') then
  begin
    // Imagen → Vision (chat/completions multi-modal)
    Result := ImageToInvoiceJSON_Vision(FilePath, Model);
    Exit;
  end;

  raise Exception.Create('Formato no soportado. Usa PDF, JPG, JPEG, PNG o WEBP.');
end;

end.

