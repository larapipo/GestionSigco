unit ULectorPDF_Copia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvCustomControl,
  AdvCustomScrollControl, AdvPDFViewer, Vcl.ExtCtrls, TMS.MCP.CustomComponent,
  TMS.MCP.CloudBase, TMS.MCP.CloudAI, Data.DB, Datasnap.DBClient,System.JSON,
  IdHTTP, IdSSL, IdSSLOpenSSL, IdMultipartFormData;

type
  TFormLeerPDF = class(TForm)
    pnPie: TPanel;
    pnPDF: TPanel;
    pnResult: TPanel;
    Splitter1: TSplitter;
    AdvPDFViewer1: TAdvPDFViewer;
    Panel1: TPanel;
    mResult: TMemo;
    TMSMCPCloudAI1: TTMSMCPCloudAI;
    OpenDialog1: TOpenDialog;
    btOpenPDF: TButton;
    Memo1: TMemo;
    btnExtract: TButton;
    Enviar: TButton;
    CDSCab: TClientDataSet;
    CDSDet: TClientDataSet;
    procedure FormCreate(Sender: TObject);
    procedure btOpenPDFClick(Sender: TObject);
    procedure btnExtractClick(Sender: TObject);
    procedure TMSMCPCloudAI1Executed(Sender: TObject;
      AResponse: TTMSMCPCloudAIResponse; AHttpStatusCode: Integer;
      AHttpResult: string);
    procedure TMSMCPCloudAI1FileUpload(Sender: TObject; HttpStatusCode: Integer;
      HttpResult: string; Index: Integer);
    procedure EnviarClick(Sender: TObject);
    procedure TMSMCPCloudAI1RequestsComplete(Sender: TObject);

  private
    FReulsString:TStringList;
    FCDSCab:TClientDataSet;
    FCDSDet:TClientDataSet;
    function ExtraerFileID(const JSONStr: string): string;
    { Private declarations }
  public
    { Public declarations }
    PDFFileName: string;
    procedure GenerarDatSet;
    function SubirPDFaOpenAI(const RutaPDF, APIKey: string): string;
    function ProcesarPDFConOpenAI(const FileID, APIKey: string): string;
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

function TFormLeerPDF.SubirPDFaOpenAI(const RutaPDF, APIKey: string): string;
var
  HTTP    : TIdHTTP;
  SSL     : TIdSSLIOHandlerSocketOpenSSL;
  FormData: TIdMultipartFormDataStream;
  Response: TStringStream;
begin
  Result   := '';
  HTTP     := TIdHTTP.Create(nil);
  SSL      := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  FormData := TIdMultipartFormDataStream.Create;
  Response := TStringStream.Create('', TEncoding.UTF8);
  try
    SSL.SSLOptions.Method      := sslvTLSv1_2;
    SSL.SSLOptions.SSLVersions := [sslvTLSv1_2];
    HTTP.IOHandler             := SSL;
    HTTP.Request.CustomHeaders.Values['Authorization'] := 'Bearer ' + APIKey;

    FormData.AddFile('file', RutaPDF, 'application/pdf');
    FormData.AddFormField('purpose', 'assistants');

    HTTP.Post('https://api.openai.com/v1/files', FormData, Response);

    Result := Response.DataString; // Contiene el JSON con file_id
  finally
    FormData.Free;
    Response.Free;
    HTTP.Free;
    SSL.Free;
  end;
end;

function TFormLeerPDF.ProcesarPDFConOpenAI(const FileID, APIKey: string): string;
var
  HTTP: TIdHTTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  Body, Response: TStringStream;
  Prompt: string;
begin
  Result   := '';
  HTTP     := TIdHTTP.Create(nil);
  SSL      := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  Body     := TStringStream.Create('', TEncoding.UTF8);
  Response := TStringStream.Create('', TEncoding.UTF8);
  try
    SSL.SSLOptions.Method      := sslvTLSv1_2;
    SSL.SSLOptions.SSLVersions := [sslvTLSv1_2];
    HTTP.IOHandler             := SSL;
    HTTP.Request.CustomHeaders.Values['Authorization'] := 'Bearer ' + APIKey;
    HTTP.Request.ContentType := 'application/json';

    Prompt :=
      'Extraer la información del PDF y devolver un JSON con: ' +
      '"Fecha", "Nro Comprobante", "Tipo Comprobante", "Codigo Comprobante", "Nombre del Emisor", "Cuit del Emisor", ' +
      'arreglo de "Items" con "codigo", "Descripcion", "Cantidad", "Precio Unitario", "Descuento", "Total", ' +
      '"Neto Comprobante", "Descuento General", "IVA al 21%", "IVA al 10.5%", "Percepcion de Ingresos Brutos", "Otros Impuestos", "Total del Comprobante". ' +
      'Si no hay descuento por ítems poner 0. Si código no existe poner "********". ' +
      'La salida debe ser exclusivamente el JSON sin texto adicional.';

    Body.WriteString(
      Format(
        '{"model":"gpt-4o-mini","input":[{"role":"user","content":[{"type":"input_text","text":"%s"},{"type":"input_file","file_id":"%s"}]}]}',
        [Prompt, FileID]
      )
    );

    HTTP.Post('https://api.openai.com/v1/responses', Body, Response);

    Result := Response.DataString;
  finally
    Body.Free;
    Response.Free;
    HTTP.Free;
    SSL.Free;
  end;
end;

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

procedure TFormLeerPDF.btnExtractClick(Sender: TObject);
var  FileID, Subida, JSONFinal: string;
begin
//  mResult.Lines.Clear;
//  begin
//    if TMSMCPCloudAI1.APIKeys.OpenAI = '' then
//      raise Exception.Create('No API Key specified for OpenAI');
//    TMSMCPCloudAI1.Service := aiOpenAI;
//    TMSMCPCloudAI1.UploadFile(PDFFileName, aiftPDF);
//  end;
//  Screen.Cursor := crHourGlass;
  //******* chatgpt
  Subida    := SubirPDFaOpenAI(PDFFileName, DMMain_FD.GetApiKeyOpenAI);
  FileID    := ExtraerFileID(Subida);
  JSONFinal :=ProcesarPDFConOpenAI(FileID,DMMain_FD.GetApiKeyOpenAI);
  mResult.Lines.Text := JSONFinal;

end;

procedure TFormLeerPDF.btOpenPDFClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    begin
      TMSMCPCloudAI1.Files.Clear;
      PDFFileName        := OpenDialog1.FileName;
      btnExtract.Enabled := FileExists(PDFFileName);
      if btnExtract.Enabled then
        AdvPDFViewer1.FileName := PDFFileName;
    end;
end;

procedure TFormLeerPDF.EnviarClick(Sender: TObject);
begin
  if Trim(mResult.Lines.Text)<>'' then
    GenerarDatSet;
end;

procedure TFormLeerPDF.FormCreate(Sender: TObject);
begin
  // initialize API keys
  TMSMCPCloudAI1.APIKeys.OpenAI := DMMain_FD.GetApiKeyOpenAI;

  // setup logging
  TMSMCPCloudAI1.LogFileName := '.\pdf.log';
  TMSMCPCloudAI1.Logging     := true;

  // prompt for LLM to  extract requested info from invoice
// Memo1.lines.Text:='''
//                    Extraer la informacion pdf y retornar archivo JSON.
//                    Los datos de "Fecha","Nro Comprobante o nro.cpbte","Tipo Comprobante",
//                    "codigo comprobante" (no poner la letra solo el codigo), "Nombre del Emisor", "Cuit del Emisor",
//                    y el arreglo de items compuestos por :
//                    "codigo o id ","Descripcion o Detalle","Cantidad o cant","Precio Unitario","Descuento","Total".
//                    Terminar con el "Neto Comprobante","Descuento General",Total del Comprobante", sin agregado de carcaters especiales.
//                    Los items representarlos separado por punto y coma entre sus partes, si no hay Descuento por items poner 0.
//                    Si codigo no existe poner "********'.
//                    En el detalle poner los datos y no detallar la descripcion.
//                    ''';

  Memo1.lines.Text:='''
                    Extraer la informacion pdf y retornar archivo JSON.
                    Los datos de "Fecha","Nro Comprobante","Tipo Comprobante",
                    "codigo comprobante" (no poner la letra solo el codigo), "Nombre del Emisor", "Cuit del Emisor",
                    y el arreglo de items compuestos por :
                    "codigo","Descripcion","Cantidad","Precio Unitario","Descuento","Total".
                    Terminar con el "Neto Comprobante","Descuento General",Total del Comprobante".
                    Si no hay Descuento por items poner 0.
                    Si codigo no existe poner "********'.
                    ''';

Memo1.lines.Text  :='''
                    Extraer la informacion pdf y retornar archivo JSON.
                    Los datos de "Fecha","Letra","Sucursal","Numero","Tipo Comprobante",
                    "codigo comprobante" (no poner la letra solo el codigo), "Nombre del Emisor", "Cuit del Emisor",
                    y arreglo de items compuestos por :
                    "codigo","Descripcion","Cantidad","Precio Unitario","Descuento","Total".
                    Terminar con el "Neto Comprobante","Descuento General".
                    Si Hay, detallar los "IVA al 21%" , "IVA al 10.5%","Percecpion de Ingresos Brutos" y "Otros impuetos",
                    "Total del Comprobante"
                    Si no hay Descuento por items poner 0.
                    Si codigo no existe poner "********'.
                    ''';
end;


procedure TFormLeerPDF.GenerarDatSet;
var
  Root, ItemObj: TJSONObject;
  Items: TJSONArray;
  i: Integer;
begin
  Root := TJSONObject.ParseJSONValue(mResult.Lines.Text) as TJSONObject;
  try
    // ==== CABECERA ====
    CDSCab.Close;
    CDSCab.FieldDefs.Clear;
    CDSCab.FieldDefs.Add('Fecha', ftString, 10);
    CDSCab.FieldDefs.Add('Letra', ftString, 1);
    CDSCab.FieldDefs.Add('Suc', ftString, 10);
    CDSCab.FieldDefs.Add('Numero', ftString, 20);
    CDSCab.FieldDefs.Add('Tipo', ftString, 5);
    CDSCab.FieldDefs.Add('Codigo', ftString, 10);
    CDSCab.FieldDefs.Add('NombreEmisor', ftString, 100);
    CDSCab.FieldDefs.Add('CUITEmisor', ftString, 20);
    CDSCab.FieldDefs.Add('Neto', ftFloat);
    CDSCab.FieldDefs.Add('DescuentoGral', ftFloat);
    CDSCab.FieldDefs.Add('IVA_21%', ftFloat);
    CDSCab.FieldDefs.Add('IVA_10.5%', ftFloat);
    CDSCab.FieldDefs.Add('Percepciones', ftFloat);
    CDSCab.FieldDefs.Add('Total', ftFloat);
    CDSCab.CreateDataSet;
    CDSCab.Append;
    CDSCab.FieldByName('Fecha').AsString         := Root.GetValue<string>('Fecha');
    CDSCab.FieldByName('Letra').AsString         := Root.GetValue<string>('Letra');
    CDSCab.FieldByName('Suc').AsString           := Root.GetValue<string>('Sucursal');
    CDSCab.FieldByName('Numero').AsString        := Root.GetValue<string>('Numero');
    CDSCab.FieldByName('Tipo').AsString          := Root.GetValue<string>('Tipo Comprobante');
    CDSCab.FieldByName('Codigo').AsString        := Root.GetValue<string>('codigo comprobante');
    CDSCab.FieldByName('NombreEmisor').AsString  := Root.GetValue<string>('Nombre del Emisor');
    CDSCab.FieldByName('CUITEmisor').AsString    := Root.GetValue<string>('Cuit del Emisor');
    CDSCab.FieldByName('Neto').AsFloat           := Root.GetValue<Double>('Neto Comprobante');
    CDSCab.FieldByName('DescuentoGral').AsFloat  := Root.GetValue<Double>('Descuento General');
    CDSCab.FieldByName('IVA_21%').AsFloat        := Root.GetValue<Double>('IVA al 21%');
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
      ItemObj := Items.Items[i] as TJSONObject;
      CDSDet.Append;
      CDSDet.FieldByName('Codigo').AsString        := ItemObj.GetValue<string>('codigo');
      CDSDet.FieldByName('Descripcion').AsString   := ItemObj.GetValue<string>('Descripcion');
      CDSDet.FieldByName('Cantidad').AsFloat       := ItemObj.GetValue<Double>('Cantidad');
      CDSDet.FieldByName('PrecioUnitario').AsFloat := ItemObj.GetValue<Double>('Precio Unitario');
      CDSDet.FieldByName('Descuento').AsFloat      := ItemObj.GetValue<Double>('Descuento');
      CDSDet.FieldByName('Total').AsFloat          := ItemObj.GetValue<Double>('Total');
      CDSDet.Post;
    end;
  finally
    Root.Free;
  end;

end;

procedure TFormLeerPDF.TMSMCPCloudAI1Executed(Sender: TObject;
  AResponse: TTMSMCPCloudAIResponse; AHttpStatusCode: Integer;
  AHttpResult: string);
begin
  Screen.Cursor := crDefault;

  if AHttpStatusCode div 100 = 2 then
    mResult.Lines.Text := AResponse.Content.Text
  else
    ShowMessage('Error processing: '+ AHttpStatusCode.ToString+'#13#10'+ AHttpResult);
end;

procedure TFormLeerPDF.TMSMCPCloudAI1FileUpload(Sender: TObject;
  HttpStatusCode: Integer; HttpResult: string; Index: Integer);
begin
 if HttpStatusCode div 100 = 2 then
  begin
    TMSMCPCloudAI1.Context.Text := Trim(Memo1.Lines.Text);
    TMSMCPCloudAI1.Execute('invoice_extract');
    if mResult.Lines.Text<>'' then
      begin
        mResult.Lines.Delete(0);
        mResult.Lines.Delete(mResult.Lines.Count);
      end;
  end
  else
  begin
    Screen.Cursor := crDefault;
    ShowMessage('Error processing: '+ HttpStatusCode.ToString+'#13#10'+ HttpResult);
  end;
end;

procedure TFormLeerPDF.TMSMCPCloudAI1RequestsComplete(Sender: TObject);
begin
 if mResult.Lines.Text<>'' then
      begin
        mResult.Lines.Delete(0);
        mResult.Lines.Delete(mResult.Lines.Count-1);
      end;
end;

end.


