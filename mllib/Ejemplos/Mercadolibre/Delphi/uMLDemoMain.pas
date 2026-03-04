unit uMLDemoMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ComCtrls, DB,
  mllib_TLB, Menus;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    btListarArticulos: TButton;
    btOrdenesRecientes: TButton;
    Memo1: TMemo;
    btCargarFactura: TButton;
    btIdFactura: TButton;
    btObtenerFactura: TButton;
    btActualizaStock: TButton;
    btObtenerInfFactura: TButton;
    btInfoUsuario: TButton;
    Memo2: TMemo;
    btCerrarSesion: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btListarArticulosClick(Sender: TObject);
    procedure btOrdenesRecientesClick(Sender: TObject);
    procedure btCargarFacturaClick(Sender: TObject);
    procedure btIdFacturaClick(Sender: TObject);
    procedure btObtenerFacturaClick(Sender: TObject);
    procedure btActualizaStockClick(Sender: TObject);
    procedure btObtenerInfFacturaClick(Sender: TObject);
    procedure btInfoUsuarioClick(Sender: TObject);
    procedure btCerrarSesionClick(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;
  ml: IMLService;



implementation

{$R *.dfm}

procedure TForm1.btOrdenesRecientesClick(Sender: TObject);
var
  Filter: IJsonObject;
  Orders: IJsonArray;
  I: Integer;
  Order: IJsonObject;
begin
  ml := CoMLService.Create;
  Filter := ml.CreateFilter;
  Filter.Str['sort'] := 'date_desc'; // Ordenamiento de las mismas de manera descenciente por fecha
  Filter.Str['tags'] := 'not_delivered';
  Filter.Str['seller'] := ml.UserId;
  Filter.Int['offset'] := 0;  // Posicion del primer registro a traer de la lista.
  if ml.GetRecentOrders(Filter) then
  begin
    Memo1.Lines.Clear;
    Orders := ml.GetRecentOrdersResponse.Arr['results'];
    for I := 0 to Orders.Count - 1 do
    begin
      if ml.GetOrders(Orders.Obj[I].Str['id']) then
      begin
        Order := ml.GetOrdersResponse;
        // Datos de cada orden
        Memo1.Lines.Add('Articulo=' + Order.Arr['order_items'].Obj[0].Obj['item'].Str['title']);
        Memo1.Text := Memo1.Text + ';Cantidad=' + Order.Arr['order_items'].Obj[0].Str['quantity'];
        Memo1.Text := Memo1.Text + ';Precio=' + Order.Arr['order_items'].Obj[0].Str['unit_price'];
        Memo1.Text := Memo1.Text + ';Monto=' + Order.Arr['order_items'].Obj[0].Str['full_unit_price'];
        Memo1.Text := Memo1.Text + ';Comision=' + Order.Arr['order_items'].Obj[0].Str['sale_fee'];
        Memo1.Text := Memo1.Text + ';Vendedor=' + Order.Obj['seller'].Str['first_name'];
        Memo1.Text := Memo1.Text + ';nombre del comprador=' + Order.Obj['buyer'].Str['first_name'];
        Memo1.Text := Memo1.Text + ';apellido del comprador=' + Order.Obj['buyer'].Str['last_name'];
        Memo1.Text := Memo1.Text + ';mail del comprador=' + Order.Obj['buyer'].Str['email'];
        Memo1.Text := Memo1.Text + ';tipo de documento del comprador=' + Order.Obj['buyer'].Obj['billing_info'].Str['doc_number'];
        Memo1.Text := Memo1.Text + ';tipo de documento del comprador=' + Order.Obj['buyer'].Obj['billing_info'].Str['doc_number'];
      end
      else
      begin
        ShowMessage(ml.ErrorDesc);
        Break;
      end;
    end;
  end
  else
    ShowMessage(ml.ErrorDesc);
end;

procedure TForm1.btCargarFacturaClick(Sender: TObject);
var
  FileID: WideString;
  PackId: string;
begin
  // https://developers.mercadolibre.com.ar/es_ar/cargar-factura
  ml := CoMLService.Create;
  PackId := '4475227777'; // Pack ID y si este es null entonces Order ID
  if ml.PostPacksFiscalDocuments(PackId, 'c:\Datos\factura.pdf') then
  begin
    // Este ID de factura se debe guardar en el sistema por si se necesita eliminar en mercadolibre
    FileID := ml.PostPacksFiscalDocumentsResponse.Arr['ids'].Str[0];
    ShowMessage('Factura cargada con éxito');
  end
  else
    ShowMessage(ml.ErrorDesc);
end;

procedure TForm1.btIdFacturaClick(Sender: TObject);
var
  PackId: string;
  I: Integer;
begin
  ml := CoMLService.Create;
  PackId := '4475227777'; // Pack ID y si este es null entonces Order ID
  if ml.GetPacksFiscalDocumentsId(PackId) then
  begin
    for I := 0 to ml.GetPacksFiscalDocumentsIdResponse.Arr['fiscal_documents'].Count - 1 do
    begin
      if ml.GetPacksFiscalDocumentsIdResponse.Arr['fiscal_documents'].Obj[I].Str['file_type'] = 'application/pdf' then
        Memo1.Text := ml.GetPacksFiscalDocumentsIdResponse.Arr['fiscal_documents'].Obj[I].Str['id'];
    end;
  end
  else
    ShowMessage(ml.ErrorDesc);
end;

procedure TForm1.btObtenerFacturaClick(Sender: TObject);
var
  PackId: string;
  FiscalDocumentId: string;
begin
  ml := CoMLService.Create;
  PackId := '4475227777'; // Pack ID y si este es null entonces Order ID
  FiscalDocumentId := '488d6f69-ec94-4f62-8576-1a639f2d2d87';
  if ml.GetPacksFiscalDocument(PackId, FiscalDocumentId, 'C:\Datos\factura.pdf') then
  begin
    ShowMessage('Archivo descargado con éxito.');
  end
  else
    ShowMessage(ml.ErrorDesc);
end;

procedure TForm1.btActualizaStockClick(Sender: TObject);
var
  ItemID: WideString;
  Filter: IJsonObject;
begin
  // https://developers.mercadolibre.com.ar/es_ar/producto-sincroniza-modifica-publicaciones#Actualiza-tu-art%C3%ADculo
  ml := CoMLService.Create;
  ItemId := 'MLA914228251';
  Filter := ml.CreateFilter;
  Filter.Int['available_quantity'] := 1;
  if ml.PutItems(ItemId, Filter) then
  begin
    ShowMessage('Cantidad actualizada con éxito');
  end
  else
    ShowMessage(ml.ErrorDesc);
end;

procedure TForm1.btObtenerInfFacturaClick(Sender: TObject);
var
  OrderID: WideString;
  BillingInfo: IJsonObject;
begin
  ml := CoMLService.Create;
  OrderId := '4565755501';
  if ml.GetBillingInfo(OrderId) then
  begin
    BillingInfo := ml.GetBillingInfoResponse;
    ShowMessage(BillingInfo.AsJson);
  end
  else
    ShowMessage(ml.ErrorDesc);
end;

procedure TForm1.btInfoUsuarioClick(Sender: TObject);
begin
  ml := CoMLService.Create;
  if ml.GetUsersMe then
  begin
    Memo1.Text := ml.GetUsersMeResponse.AsJson;
  end
  else
    Showmessage(ml.ErrorDesc);
end;

procedure TForm1.btCerrarSesionClick(Sender: TObject);
begin
  ml := CoMLService.Create;
  ml.Logout;
end;

procedure TForm1.btListarArticulosClick(Sender: TObject);
var
  Filter: IJsonObject;
  I: Integer;
  Item: IJsonObject;
begin
  Memo1.Clear;
  ml := coMLService.Create;
  if ml.GetUserItems(nil) then
  begin
    if ml.GetItemsResponse.Arr['results'].Count > 0 then
    begin
      Filter := ml.CreateFilter;
      Filter.Str['ids'] := ml.GetItemsResponse.Arr['results'].AsCommaDelimited;
      if ml.GetItems(Filter) then
      begin
        Memo1.Lines.Text := ml.GetItemsResponse.AsJson;

        Memo2.Lines.Text := '';
        for I := 0 to ml.GetItemsResponse.Arr['results'].Count - 1 do
        begin
          Item := ml.GetItemsResponse.Arr['results'].Obj[I].Obj['body'];
          Memo2.Lines.Add('Titulo=' + Item.Str['title'] + ', Precio=' + Item.Str['price'] + ', Stock=' + Item.Str['available_quantity'] + ', Vendido=' + Item.Str['sold_quantity']);
        end;
      end
      else
        ShowMessage(ml.ErrorDesc);
    end
    else
      ShowMessage('No se encontraron articulos publicados');
  end
  else
    ShowMessage(ml.ErrorDesc);
end;

end.
