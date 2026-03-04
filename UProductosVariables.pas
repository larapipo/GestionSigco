unit UProductosVariables;

interface

uses
  System.SysUtils, System.Classes, WooCommerceAPI, System.JSON,Dialogs;

function ObtenerVariacionPorSKU(const WooAPI: TWooCommerceAPI; const VariationSKU: string; out ProductID: string; out VariationID: string): Boolean;
procedure ModificarVariacion(const WooAPI: TWooCommerceAPI; const ProductID: string; const VariationID: string; const NewPrice: string; const NewDescription: string);
//procedure ActualizarVariacionPorSKU(const WooAPI: TWooCommerceAPI; const VariationSKU: string; const NewPrice: string; const NewDescription: string);
procedure ActualizarVariacionPorSKU(const ProductoSKU, VariacionSKU: string;
                                    const NuevaDescripcion: string;
                                    const NuevoPrecio: Double; WooAPI: TWooCommerceAPI);



implementation


procedure ActualizarVariacionPorSKU(const ProductoSKU, VariacionSKU: string;
                                    const NuevaDescripcion: string;
                                    const NuevoPrecio: Double; WooAPI: TWooCommerceAPI);
var
  ProductoResponse, VariacionResponse: TWooCommerceResponse;
  VariacionObj, UpdatePayload: TJSONObject;
  ProductID, VariationID: Integer;
   ProductoObj, JSonArr, VariacionesArray: TJSONArray;
  I: Integer;
begin
  try
    // Paso 1: Buscar el producto principal directamente por su SKU
    ProductoResponse := WooAPI.Get('/products/?sku=' + ProductoSKU);
    if not ProductoResponse.Status<>200 then
      raise Exception.Create('Error al buscar el producto padre: ' + ProductoResponse.Content);

    // Parsear la respuesta del producto padre
    JSonArr:= TJSONObject.ParseJSONValue(ProductoResponse.Content) as TJSONArray;
    if (ProductoObj = nil) or (ProductoObj.Count = 0) then
      raise Exception.Create('No se encontró el producto padre con el SKU proporcionado.');

    // Obtener el ID del producto padre
    ProductID := (ProductoObj.Items[0] as TJSONObject).GetValue<Integer>('id');

    // Paso 2: Buscar las variaciones de ese producto
    VariacionResponse := WooAPI.Get(Format('/products/%d/variations', [ProductID]));
    if not VariacionResponse.status<>200 then
      raise Exception.Create('Error al buscar las variaciones: ' + VariacionResponse.Content);

    VariacionesArray := TJSONObject.ParseJSONValue(VariacionResponse.Content) as TJSONArray;
    if VariacionesArray = nil then
      raise Exception.Create('No se encontraron variaciones para el producto padre.');

    // Paso 3: Encontrar la variación por SKU
    VariationID := -1;
    for I := 0 to VariacionesArray.Count - 1 do
    begin
      VariacionObj := VariacionesArray.Items[I] as TJSONObject;
      if SameText(VariacionObj.GetValue<string>('sku'), VariacionSKU) then
      begin
        VariationID := VariacionObj.GetValue<Integer>('id');
        Break;
      end;
    end;

    if VariationID = -1 then
      raise Exception.Create('No se encontró la variación con el SKU proporcionado.');

    // Paso 4: Actualizar la variación con los nuevos datos
    UpdatePayload := TJSONObject.Create;
    try
      UpdatePayload.AddPair('description', NuevaDescripcion);
      UpdatePayload.AddPair('regular_price', FormatFloat('0.00', NuevoPrecio));

      VariacionResponse := WooAPI.Put(
        Format('/products/%d/variations/%d', [ProductID, VariationID]),
        UpdatePayload.ToJSON
      );

      if not VariacionResponse.Status<>200 then
        raise Exception.Create('Error al actualizar la variación: ' + VariacionResponse.Content);

      ShowMessage('Variación actualizada exitosamente.');
    finally
      UpdatePayload.Free;
    end;

  finally
    // Liberar recursos
    if Assigned(ProductoObj) then ProductoObj.Free;
    if Assigned(VariacionesArray) then VariacionesArray.Free;
  end;
end;



function ObtenerVariacionPorSKU(const WooAPI: TWooCommerceAPI; const VariationSKU: string; out ProductID: string; out VariationID: string): Boolean;
var
  Response: TWooCommerceResponse;
  JSONArr : TJSONArray;
  JSONObj : TJSONObject;
  I, J: Integer;
  VariationsResponse: TWooCommerceResponse;
  VariationsArr: TJSONArray;
  VariationsObj: TJSONObject;
begin
  Result      := False;
  ProductID   := '';
  VariationID := '';

  // Realizar la solicitud GET para obtener todos los productos
  //FWooCommerceAPI.Get('/products/' + edID.Text+'/variations');
//  Response := WooAPI.Get('/products/?sku=' + VariationSKU;

  Response := WooAPI.Get('/products/?sku=' + VariationSKU+'/variations');
  if Response.Status = 200 then
  begin
    JSONArr := TJSONObject.ParseJSONValue(Response.Content) as TJSONArray;
    for I := 0 to JSONArr.Count - 1 do
    begin
      JSONObj := JSONArr.Items[I] as TJSONObject;
      ProductID := JSONObj.GetValue<string>('id');

      // Obtener las variaciones del producto
      VariationsResponse := WooAPI.Get(Format('products/%s/variations', [ProductID]));
      if VariationsResponse.Status = 200 then
      begin
        VariationsArr := TJSONObject.ParseJSONValue(VariationsResponse.Content) as TJSONArray;
        for J := 0 to VariationsArr.Count - 1 do
        begin
          VariationsObj := VariationsArr.Items[J] as TJSONObject;
          if VariationsObj.GetValue<string>('sku') = VariationSKU then
          begin
            VariationID := VariationsObj.GetValue<string>('id');
            Result := True;
            Exit;
          end;
        end;
      end;
    end;
  end;
end;

procedure ModificarVariacion(const WooAPI: TWooCommerceAPI; const ProductID: string; const VariationID: string; const NewPrice: string; const NewDescription: string);
var
  Response: TWooCommerceResponse;
  JSONObj: TJSONObject;
begin
  // Crear el JSON con los datos que deseas actualizar
  JSONObj := TJSONObject.Create;
  try
    if NewPrice <> '' then
      JSONObj.AddPair('regular_price', NewPrice);
    if NewDescription <> '' then
      JSONObj.AddPair('description', NewDescription);

    // Realizar la solicitud PUT para modificar la variación
    Response := WooAPI.Put(Format('products/%s/variations/%s', [ProductID, VariationID]), JSONObj.ToString);
    if Response.Status = 200 then
    begin
      ShowMessage('Variación modificada exitosamente.');
    end
    else
    begin
      ShowMessage('Error al modificar la variación. Código de estado: ' + Response.Status.ToString);
    end;
  finally
    JSONObj.Free;
  end;
end;

//procedure ActualizarVariacionPorSKU(const WooAPI: TWooCommerceAPI; const VariationSKU: string; const NewPrice: string; const NewDescription: string);
//var
//  ProductID  : string;
//  VariationID: string;
//begin
//  // Obtener el ID de la variación por SKU
//  if ObtenerVariacionPorSKU(WooAPI, VariationSKU, ProductID, VariationID) then
//    begin
//      // Modificar la variación con el nuevo precio o descripción
//      ModificarVariacion(WooAPI, ProductID, VariationID, NewPrice, NewDescription);
//    end
//  else
//    begin
//      ShowMessage('No se encontró ninguna variación con ese SKU.');
//    end;
//end;

end.
