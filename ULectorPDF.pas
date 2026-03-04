unit ULectorPDF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvCustomControl,
  AdvCustomScrollControl, AdvPDFViewer, Vcl.ExtCtrls,
  Data.DB, Datasnap.DBClient,System.JSON,
  IdHTTP, IdSSL, IdSSLOpenSSL, IdMultipartFormData,UOpenAILeerPDF,
  AdvCircularProgress, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormLeerPDF = class(TForm)
    pnPie: TPanel;
    pnPDF: TPanel;
    pnResult: TPanel;
    Splitter1: TSplitter;
    AdvPDFViewer1: TAdvPDFViewer;
    Panel1: TPanel;
    mResult: TMemo;
    OpenDialog1: TOpenDialog;
    btOpenPDF: TButton;
    Memo1: TMemo;
    btnExtract: TButton;
    Enviar: TButton;
    CDSCab: TClientDataSet;
    CDSDet: TClientDataSet;
    btLeerImagen: TButton;
    acProgress: TAdvCircularProgress;
    mtComprobante: TFDMemTable;
    mtEmisor: TFDMemTable;
    mtReceptor: TFDMemTable;
    mtTransporte: TFDMemTable;
    mtItems: TFDMemTable;
    mtTotales: TFDMemTable;
    mtObservaciones: TFDMemTable;
    mtControl: TFDMemTable;
    procedure btOpenPDFClick(Sender: TObject);
    procedure btnExtractClick(Sender: TObject);

    procedure EnviarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btLeerImagenClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    FReulsString:TStringList;
    FCDSCab:TClientDataSet;
    FCDSDet:TClientDataSet;
    function ExtraerFileID(const JSONStr: string): string;
    procedure ThreadFin(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    PDFFileName : string;
    ThExtract: TThread;
    procedure GenerarDatSet;
    procedure GenerarDataSet_2(const AJSON: string);
  published
    property ListaString:TStringList read FReulsString write FReulsString;
    property CDSCab_:TClientDataSet read FCDSCab write FCDSCab;
    property CDSDet_:TClientDataSet read FCDSDet write FCDSDet;

  end;

var
  FormLeerPDF: TFormLeerPDF;

implementation

{$R *.dfm}

uses UDMain_FD;

//*****************************************************************************
{==================== Creación explícita de campos ====================}

procedure CreateComprobanteFields(ATable: TFDMemTable);
begin
  ATable.FieldDefs.Add('tipo',             ftString, 30);
  ATable.FieldDefs.Add('codigo_afip',      ftString, 10);
  ATable.FieldDefs.Add('punto_venta',      ftString, 8);
  ATable.FieldDefs.Add('numero',           ftString, 16);
  ATable.FieldDefs.Add('fecha_emision',    ftString, 10);
  ATable.FieldDefs.Add('condicion_venta',  ftString, 50);
  ATable.FieldDefs.Add('fecha_vto_pago',   ftString, 10);
  ATable.FieldDefs.Add('cae',              ftString, 32);
  ATable.FieldDefs.Add('cae_vencimiento',  ftString, 10);
end;

procedure CreateEmisorFields(ATable: TFDMemTable);
begin
  ATable.FieldDefs.Add('razon_social',     ftString, 120);
  ATable.FieldDefs.Add('cuit',             ftString, 20);
  ATable.FieldDefs.Add('domicilio',        ftString, 180);
  ATable.FieldDefs.Add('condicion_iva',    ftString, 40);
  ATable.FieldDefs.Add('ingresos_brutos',  ftString, 40);
  ATable.FieldDefs.Add('inicio_actividad', ftString, 10);
end;

procedure CreateReceptorFields(ATable: TFDMemTable);
begin
  ATable.FieldDefs.Add('codigo_cliente',   ftString, 40);
  ATable.FieldDefs.Add('razon_social',     ftString, 120);
  ATable.FieldDefs.Add('cuit',             ftString, 20);
  ATable.FieldDefs.Add('domicilio',        ftString, 180);
  ATable.FieldDefs.Add('condicion_iva',    ftString, 40);
end;

procedure CreateTransporteFields(ATable: TFDMemTable);
begin
  ATable.FieldDefs.Add('empresa',      ftString, 120);
  ATable.FieldDefs.Add('cuit',         ftString, 20);
  ATable.FieldDefs.Add('viaje',        ftString, 30);
  ATable.FieldDefs.Add('transaccion',  ftString, 40);
end;

procedure CreateTotalesFields(ATable: TFDMemTable);
begin
  ATable.FieldDefs.Add('neto_gravado',         ftFloat);
  ATable.FieldDefs.Add('iva_21',               ftFloat);
  ATable.FieldDefs.Add('iva_10_5',             ftFloat);
  ATable.FieldDefs.Add('iva_27',               ftFloat);
  ATable.FieldDefs.Add('impuestos_internos',   ftFloat);
  ATable.FieldDefs.Add('percepcion_iibb',      ftFloat);
  ATable.FieldDefs.Add('percepcion_municipal', ftFloat);
  ATable.FieldDefs.Add('res_2126',             ftFloat);
  ATable.FieldDefs.Add('res_3337',             ftFloat);
  ATable.FieldDefs.Add('subtotal',             ftFloat);
  ATable.FieldDefs.Add('total_factura',        ftFloat);
end;

procedure CreateItemsFields(ATable: TFDMemTable);
begin
  // Ítems = arreglo de arrays de 12 posiciones fijas:
  // [codigo, descripcion, cantidad_bultos, unidades_por_bulto, cantidad_total,
  //  precio_bulto, descuento_total, neto_linea, impuesto_internos, iva_tasa, iva, subtotal]
  ATable.FieldDefs.Add('codigo',              ftString, 50);
  ATable.FieldDefs.Add('descripcion',         ftString, 255);
  ATable.FieldDefs.Add('cantidad_bultos',     ftFloat); // cantidades pueden ser flotantes
  ATable.FieldDefs.Add('unidades_por_bulto',  ftFloat); // idem
  ATable.FieldDefs.Add('cantidad_total',      ftFloat); // idem
  ATable.FieldDefs.Add('precio_unitario',     ftFloat);
  ATable.FieldDefs.Add('descuento_total',     ftFloat);
  ATable.FieldDefs.Add('porcentaje_descuento',ftFloat);
  ATable.FieldDefs.Add('neto_linea',          ftFloat);
  ATable.FieldDefs.Add('impuesto_internos',   ftFloat);
  ATable.FieldDefs.Add('iva_tasa',            ftFloat); // puede venir -1
  ATable.FieldDefs.Add('iva',                 ftFloat);
  ATable.FieldDefs.Add('subtotal',            ftFloat);
end;

procedure CreateObservacionesFields(ATable: TFDMemTable);
begin
  ATable.FieldDefs.Add('texto', ftString, 500);
end;

procedure CreateControlFields(ATable: TFDMemTable);
begin
  ATable.FieldDefs.Add('unit_source',  ftString, 16);
  ATable.FieldDefs.Add('vat_mapping',  ftString, 16);
  ATable.FieldDefs.Add('needs_review', ftBoolean);
  ATable.FieldDefs.Add('notes',        ftString, 255);
end;

procedure ResetAndCreate(ATable: TFDMemTable; ACreate: TProc<TFDMemTable>);
begin
  ATable.DisableControls;
  try
    if ATable.Active then ATable.Close;
    ATable.FieldDefs.Clear;
    ACreate(ATable);
    ATable.CreateDataSet;
  finally
    ATable.EnableControls;
  end;
end;

{==================== Helpers JSON simples ====================}

function JGetObj(const O: TJSONObject; const Name: string): TJSONObject;
var V: TJSONValue;
begin
  Result := nil;
  if not Assigned(O) then Exit;
  V := O.Values[Name];
  if (V is TJSONObject) then
    Result := TJSONObject(V);
end;

function JGetArr(const O: TJSONObject; const Name: string): TJSONArray;
var V: TJSONValue;
begin
  Result := nil;
  if not Assigned(O) then Exit;
  V := O.Values[Name];
  if (V is TJSONArray) then
    Result := TJSONArray(V);
end;

function JGetStr(const O: TJSONObject; const Name: string): string;
var V: TJSONValue;
begin
  Result := '';
  if not Assigned(O) then Exit;
  V := O.Values[Name];
  if Assigned(V) then
    Result := V.Value
  else
    Result := '';
end;

function JGetNum(const O: TJSONObject; const Name: string): Double;
var V: TJSONValue;
    FS: TFormatSettings;
begin
  Result := 0;
  if not Assigned(O) then Exit;
  V := O.Values[Name];
  if not Assigned(V) then Exit;

  FS := TFormatSettings.Create('en-US'); // punto decimal
  if V is TJSONNumber then
    Result := TJSONNumber(V).AsDouble
  else
    Result := StrToFloatDef(V.Value, 0, FS);
end;

{==================== Loader principal ====================}

//*****************************************************************************

function TFormLeerPDF.ExtraerFileID(const JSONStr: string): string;
var
  JSONObj: TJSONObject;
begin
  Result := '';
  JSONObj := TJSONObject.ParseJSONValue(JSONStr) as TJSONObject;
  try
    if Assigned(JSONObj) and (JSONObj.GetValue('id') <> nil) then
      Result := JSONObj.GetValue<string>('id');
  finally
    JSONObj.Free;
  end;
end;

procedure TFormLeerPDF.FormDestroy(Sender: TObject);
begin
  FormLeerPDF:=nil;
end;

procedure TFormLeerPDF.btLeerImagenClick(Sender: TObject);
var
  OA: TOpenAILeerPDF;
  JsonFactura: string;
begin
  if OpenDialog1.Execute then
  begin
    OA := TOpenAILeerPDF.Create(DMMain_FD.GetApiKeyOpenAI);
    try
      JsonFactura        := OA.ImageToInvoiceJSON_Vision(OpenDialog1.FileName, 'gpt-4o'); // o 'gpt-4o'
      mResult.Lines.Text := JsonFactura;
    finally
      OA.Free;
    end;
  end;
end;

procedure TFormLeerPDF.ThreadFin(Sender: TObject);
begin
  acProgress.Visible:= False;
  pnResult.Enabled  := True;
  pnPie.Enabled     := True;
end;


procedure TFormLeerPDF.btnExtractClick(Sender: TObject);
var
  OA: TOpenAILeerPDF;
  FileId, Respuesta: string;
begin
  acProgress.Visible:=True;
  Application.ProcessMessages;
  pnResult.Enabled:=False;
  pnPie.Enabled   :=False;
  ThExtract       := TThread.CreateAnonymousThread(
    procedure
      begin
        OA := TOpenAILeerPDF.Create(DMMain_FD.GetApiKeyOpenAI);
        try
          FileId             := OA.UploadPDF_GetFileId(PDFFileName);
          Respuesta          := OA.ExtractInvoiceJSON(FileId,'gpt-4o');
          mResult.Lines.Text := Respuesta; // Aquí recibís el JSON crudo
          mResult.Lines.Delete(0);
          mResult.Lines.Delete(mResult.Lines.Count-1);
        finally
          OA.Free;
        end;
      end);
  ThExtract.OnTerminate:= ThreadFin;
  ThExtract.Start;
end;

procedure TFormLeerPDF.btOpenPDFClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    begin
      PDFFileName        := OpenDialog1.FileName;
      btnExtract.Enabled := FileExists(PDFFileName);
      if btnExtract.Enabled then
        AdvPDFViewer1.FileName := PDFFileName;
    end;
end;

procedure TFormLeerPDF.Button1Click(Sender: TObject);
var
  OA: TOpenAILeerPDF;
  FileId, Respuesta: string;
begin
  //if OpenDialog1.Execute then
  begin
    OA := TOpenAILeerPDF.Create(DMMain_FD.GetApiKeyOpenAI);
    try
      FileId             := OA.UploadPDF_GetFileId(PDFFileName);
      Respuesta          := OA.ExtractInvoiceJSON(FileId);
      mResult.Lines.Text := Respuesta; // Aquí recibís el JSON crudo
    finally
      OA.Free;
    end;
  end;
end;

procedure TFormLeerPDF.EnviarClick(Sender: TObject);
begin
  if Trim(mResult.Lines.Text)<>'' then
    //GenerarDatSet;
    GenerarDataSet_2(mResult.Lines.Text);
end;


procedure TFormLeerPDF.GenerarDataSet_2(const AJSON: string);
var
  Root, Comprobante, Emisor, Receptor, Transporte, Totales, Control: TJSONObject;
  Items, Obs: TJSONArray;
  I: Integer;
  Arr: TJSONArray;
  FS: TFormatSettings;
begin
  FS := TFormatSettings.Create('en-US'); // punto decimal
  // (Re)crear estructuras explícitas
  ResetAndCreate(mtComprobante,   CreateComprobanteFields);
  ResetAndCreate(mtEmisor,        CreateEmisorFields);
  ResetAndCreate(mtReceptor,      CreateReceptorFields);
  ResetAndCreate(mtTransporte,    CreateTransporteFields);
  ResetAndCreate(mtTotales,       CreateTotalesFields);
  ResetAndCreate(mtItems,         CreateItemsFields);
  ResetAndCreate(mtObservaciones, CreateObservacionesFields);
  ResetAndCreate(mtControl,       CreateControlFields);

  // Parsear raíz
  Root := TJSONObject(TJSONObject.ParseJSONValue(AJSON));
  try
    if not Assigned(Root) then
      raise Exception.Create('JSON inválido o vacío.');

    // COMPROBANTE
    Comprobante := JGetObj(Root, 'comprobante');
    mtComprobante.Append;
    mtComprobante.FieldByName('tipo').AsString            := JGetStr(Comprobante, 'tipo');
    mtComprobante.FieldByName('codigo_afip').AsString     := JGetStr(Comprobante, 'codigo_afip');
    mtComprobante.FieldByName('punto_venta').AsString     := JGetStr(Comprobante, 'punto_venta');
    mtComprobante.FieldByName('numero').AsString          := JGetStr(Comprobante, 'numero');
    mtComprobante.FieldByName('fecha_emision').AsString   := JGetStr(Comprobante, 'fecha_emision');
    mtComprobante.FieldByName('condicion_venta').AsString := JGetStr(Comprobante, 'condicion_venta');
    mtComprobante.FieldByName('fecha_vto_pago').AsString  := JGetStr(Comprobante, 'fecha_vto_pago');
    mtComprobante.FieldByName('cae').AsString             := JGetStr(Comprobante, 'cae');
    mtComprobante.FieldByName('cae_vencimiento').AsString := JGetStr(Comprobante, 'cae_vencimiento');
    mtComprobante.Post;

    // EMISOR
    Emisor := JGetObj(Root, 'emisor');
    mtEmisor.Append;
    mtEmisor.FieldByName('razon_social').AsString     := JGetStr(Emisor, 'razon_social');
    mtEmisor.FieldByName('cuit').AsString             := JGetStr(Emisor, 'cuit');
    mtEmisor.FieldByName('domicilio').AsString        := JGetStr(Emisor, 'domicilio');
    mtEmisor.FieldByName('condicion_iva').AsString    := JGetStr(Emisor, 'condicion_iva');
    mtEmisor.FieldByName('ingresos_brutos').AsString  := JGetStr(Emisor, 'ingresos_brutos');
    mtEmisor.FieldByName('inicio_actividad').AsString := JGetStr(Emisor, 'inicio_actividad');
    mtEmisor.Post;

    // RECEPTOR
    Receptor := JGetObj(Root, 'receptor');
    mtReceptor.Append;
    mtReceptor.FieldByName('codigo_cliente').AsString := JGetStr(Receptor, 'codigo_cliente');
    mtReceptor.FieldByName('razon_social').AsString   := JGetStr(Receptor, 'razon_social');
    mtReceptor.FieldByName('cuit').AsString           := JGetStr(Receptor, 'cuit');
    mtReceptor.FieldByName('domicilio').AsString      := JGetStr(Receptor, 'domicilio');
    mtReceptor.FieldByName('condicion_iva').AsString  := JGetStr(Receptor, 'condicion_iva');
    mtReceptor.Post;

    // TRANSPORTE
    Transporte := JGetObj(Root, 'transporte');
    mtTransporte.Append;
    mtTransporte.FieldByName('empresa').AsString     := JGetStr(Transporte, 'empresa');
    mtTransporte.FieldByName('cuit').AsString        := JGetStr(Transporte, 'cuit');
    mtTransporte.FieldByName('viaje').AsString       := JGetStr(Transporte, 'viaje');
    mtTransporte.FieldByName('transaccion').AsString := JGetStr(Transporte, 'transaccion');
    mtTransporte.Post;

    // TOTALES
    Totales := JGetObj(Root, 'totales');
    mtTotales.Append;
    mtTotales.FieldByName('neto_gravado').AsFloat         := JGetNum(Totales, 'neto_gravado');
    mtTotales.FieldByName('iva_21').AsFloat               := JGetNum(Totales, 'iva_21');
    mtTotales.FieldByName('iva_10_5').AsFloat             := JGetNum(Totales, 'iva_10_5');
    mtTotales.FieldByName('iva_27').AsFloat               := JGetNum(Totales, 'iva_27');
    mtTotales.FieldByName('impuestos_internos').AsFloat   := JGetNum(Totales, 'impuestos_internos');
    mtTotales.FieldByName('percepcion_iibb').AsFloat      := JGetNum(Totales, 'percepcion_iibb');
    mtTotales.FieldByName('percepcion_municipal').AsFloat := JGetNum(Totales, 'percepcion_municipal');
    mtTotales.FieldByName('res_2126').AsFloat             := JGetNum(Totales, 'res_2126');
    mtTotales.FieldByName('res_3337').AsFloat             := JGetNum(Totales, 'res_3337');
    mtTotales.FieldByName('subtotal').AsFloat             := JGetNum(Totales, 'subtotal');
    mtTotales.FieldByName('total_factura').AsFloat        := JGetNum(Totales, 'total_factura');
    mtTotales.Post;

    // ITEMS (array de arrays con 12 posiciones)
    Items := JGetArr(Root, 'items');
    if Assigned(Items) then
    begin
      for I := 0 to Items.Count - 1 do
      begin
        Arr := TJSONArray(Items.Items[I]);
        if not Assigned(Arr) then Continue;

        // normalizar a 13 posiciones (si faltan, completar con 0/"")
        while Arr.Count < 13 do Arr.Add(0);
        mtItems.Append;
        mtItems.FieldByName('codigo').AsString              := Arr.Items[0].Value;
        mtItems.FieldByName('descripcion').AsString         := Arr.Items[1].Value;
        mtItems.FieldByName('cantidad_bultos').AsFloat      := StrToFloatDef(Arr.Items[2].Value, 0, FS);
        mtItems.FieldByName('unidades_por_bulto').AsFloat   := StrToFloatDef(Arr.Items[3].Value, 0, FS);
        mtItems.FieldByName('cantidad_total').AsFloat       := StrToFloatDef(Arr.Items[4].Value, 0, FS);
        mtItems.FieldByName('precio_unitario').AsFloat      := StrToFloatDef(Arr.Items[5].Value, 0, FS);
        mtItems.FieldByName('descuento_total').AsFloat      := StrToFloatDef(Arr.Items[6].Value, 0, FS);
        mtItems.FieldByName('porcentaje_descuento').AsFloat := StrToFloatDef(Arr.Items[7].Value, 0, FS);
        mtItems.FieldByName('neto_linea').AsFloat           := StrToFloatDef(Arr.Items[8].Value, 0, FS);
        mtItems.FieldByName('impuesto_internos').AsFloat    := StrToFloatDef(Arr.Items[9].Value, 0, FS);
        mtItems.FieldByName('iva_tasa').AsFloat             := StrToFloatDef(Arr.Items[10].Value, 0, FS); // -1 si vino así
        mtItems.FieldByName('iva').AsFloat                  := StrToFloatDef(Arr.Items[11].Value, 0, FS);
        mtItems.FieldByName('subtotal').AsFloat             := StrToFloatDef(Arr.Items[12].Value, 0, FS);

        if mtItems.FieldByName('porcentaje_descuento').AsFloat>100 then
          mtItems.FieldByName('porcentaje_descuento').AsFloat:=(mtItems.FieldByName('descuento_total').AsFloat / mtItems.FieldByName('precio_unitario').AsFloat)*100;

        if mtItems.FieldByName('cantidad_bultos').AsFloat=0 then
          mtItems.FieldByName('cantidad_bultos').AsFloat:= mtItems.FieldByName('cantidad_total').AsFloat;

        mtItems.Post;
// ["110", "COCA COLA 350CC VIDRIOX24", 3.0, 24, 72.0, 20676.86, 29.99, 55827.52, 4854.59, 21.0, 11723.78, 72405.89],
//       "110",
//        "COCA COLA 350CC VIDRIOX24",
//        3.0,
//        24,
//        72.0,
//        20676.86,
//        29.99,
//        55827.52,
//        4854.59,
//        21.0,
//        11723.78,
//        72405.89
      end;
    end;

    // OBSERVACIONES
    Obs := JGetArr(Root, 'observaciones');
    if Assigned(Obs) then
      for I := 0 to Obs.Count - 1 do
      begin
        mtObservaciones.Append;
        mtObservaciones.FieldByName('texto').AsString := Obs.Items[I].Value;
        mtObservaciones.Post;
      end;

    // CONTROL
    Control := JGetObj(Root, 'control');
    mtControl.Append;
    mtControl.FieldByName('unit_source').AsString  := JGetStr(Control, 'unit_source');
    mtControl.FieldByName('vat_mapping').AsString  := JGetStr(Control, 'vat_mapping');
    // puede venir como "true"/"false" string → interpretamos rápido:
    mtControl.FieldByName('needs_review').AsBoolean:= SameText(JGetStr(Control, 'needs_review'), 'true');
    mtControl.FieldByName('notes').AsString        := JGetStr(Control, 'notes');
    mtControl.Post;

  finally
    Root.Free;
  end;
end;



procedure TFormLeerPDF.GenerarDatSet;
var
  Root: TJSONObject;
  Items, ItemObj: TJSONArray;
  i: Integer;
begin
  Root := TJSONObject.ParseJSONValue(mResult.Lines.Text) as TJSONObject;
  try
    // ==== CABECERA ====
    CDSCab.Close;
    CDSCab.FieldDefs.Clear;
    CDSCab.FieldDefs.Add('Fecha', ftString, 10);
    CDSCab.FieldDefs.Add('CodigoComprobante', ftString, 3);
    CDSCab.FieldDefs.Add('Letra', ftString, 1);
    CDSCab.FieldDefs.Add('Suc', ftString, 10);
    CDSCab.FieldDefs.Add('Numero', ftString, 20);
    CDSCab.FieldDefs.Add('Tipo', ftString, 5);
    CDSCab.FieldDefs.Add('Codigo', ftString, 10);
    CDSCab.FieldDefs.Add('NombreEmisor', ftString, 100);
    CDSCab.FieldDefs.Add('CUITEmisor', ftString, 20);
    CDSCab.FieldDefs.Add('CondicionIVA', ftString, 100);
    CDSCab.FieldDefs.Add('Neto', ftFloat);
    CDSCab.FieldDefs.Add('DescuentoGral', ftFloat);
    CDSCab.FieldDefs.Add('IVA_21%', ftFloat);
    CDSCab.FieldDefs.Add('IVA_10.5%', ftFloat);
    CDSCab.FieldDefs.Add('Percepciones', ftFloat);
    CDSCab.FieldDefs.Add('Total', ftFloat);
    CDSCab.CreateDataSet;
    CDSCab.Append;
    CDSCab.FieldByName('Fecha').AsString             := Root.GetValue<string>('Fecha');
    CDSCab.FieldByName('CodigoComprobante').AsString := Root.GetValue<string>('codigo comprobante');
    CDSCab.FieldByName('Letra').AsString             := Root.GetValue<string>('Letra');
    CDSCab.FieldByName('Suc').AsString               := Root.GetValue<string>('Sucursal');
    CDSCab.FieldByName('Numero').AsString            := Root.GetValue<string>('Numero');
    CDSCab.FieldByName('Tipo').AsString              := Root.GetValue<string>('Tipo Comprobante');
    CDSCab.FieldByName('Codigo').AsString            := Root.GetValue<string>('codigo comprobante');
    CDSCab.FieldByName('NombreEmisor').AsString      := Root.GetValue<string>('Nombre del Emisor');
    CDSCab.FieldByName('CUITEmisor').AsString        := Root.GetValue<string>('Cuit del Emisor');
    CDSCab.FieldByName('CondicionIVA').AsString      := Root.GetValue<string>('Condicion IVA');
    CDSCab.FieldByName('Neto').AsFloat               := Root.GetValue<Double>('Neto Comprobante');
    CDSCab.FieldByName('DescuentoGral').AsFloat      := Root.GetValue<Double>('Descuento General');

//    CDSCab.FieldByName('IVA_21%').AsFloat            := Root.GetValue<Double>('IVA al 21%');

    var valor1:string;
    if (Root.TryGetValue<string>('IVA al 21%',valor1) and (valor1<>'')) then
      begin
        if FloatToStr(Root.GetValue<Double>('IVA al 21%'))<>'' then
          CDSCab.FieldByName('IVA_21%').AsFloat      := Root.GetValue<Double>('IVA al 21%')
        else
          CDSCab.FieldByName('IVA_21%').AsFloat      := 0;
      end
    else
      CDSCab.FieldByName('IVA_21%').AsFloat      := 0;


    var valor:string;
    if (Root.TryGetValue<string>('IVA al 10.5%',valor) and (valor<>'')) then
      begin
        if FloatToStr(Root.GetValue<Double>('IVA al 10.5%'))<>'' then
          CDSCab.FieldByName('IVA_10.5%').AsFloat      := Root.GetValue<Double>('IVA al 10.5%')
        else
          CDSCab.FieldByName('IVA_10.5%').AsFloat      := 0;
      end
    else
      CDSCab.FieldByName('IVA_10.5%').AsFloat      := 0;

    if (Root.GetValue('Percepciones de Ingresos Brutos')<>nil) then
    CDSCab.FieldByName('Percepciones').AsFloat   := Root.GetValue<Double>('Percepciones de Ingresos Brutos');

    CDSCab.FieldByName('Total').AsFloat          := Root.GetValue<Double>('Total del Comprobante');
    CDSCab.Post;

    // ==== DETALLE ====
    CDSDet.Close;
    CDSDet.FieldDefs.Clear;
    CDSDet.FieldDefs.Add('Codigo', ftString, 20);
    CDSDet.FieldDefs.Add('Descripcion', ftString, 100);
    CDSDet.FieldDefs.Add('Cantidad', ftFloat);
    CDSDet.FieldDefs.Add('PrecioUnitario', ftFloat);
    CDSDet.FieldDefs.Add('Descuento', ftFloat);
    CDSDet.FieldDefs.Add('Total', ftFloat);
    CDSDet.CreateDataSet;

    Items := Root.GetValue<TJSONArray>('items');
    for i := 0 to Items.Count - 1 do
    begin
      ItemObj := Items.Items[i] as TJSONArray;
      CDSDet.Append;


      CDSDet.FieldByName('Codigo').AsString        := ItemObj.items[0].Value;//GetValue<string>('codigo');
      CDSDet.FieldByName('Descripcion').AsString   := ItemObj.items[1].Value;//ItemObj.GetValue<string>('Descripcion');
      CDSDet.FieldByName('Cantidad').AsFloat       := JsonToFloat(ItemObj.items[2].Value);//ItemObj.GetValue<Double>('Cantidad');
      CDSDet.FieldByName('PrecioUnitario').AsFloat := JsonToFloat(ItemObj.items[3].Value);//ItemObj.GetValue<Double>('Precio Unitario');
      CDSDet.FieldByName('Descuento').AsFloat      := JsonToFloat(ItemObj.items[4].Value);//ItemObj.GetValue<Double>('Descuento');
      CDSDet.FieldByName('Total').AsFloat          := JsonToFloat(ItemObj.items[5].Value);//ItemObj.GetValue<Double>('Total');

      CDSDet.Post;
    end;
  finally
    Root.Free;
  end;

end;



end.


