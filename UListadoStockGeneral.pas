unit UListadoStockGeneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, ImgList, DB, ActnList, ComCtrls, JvExControls, JvGradient, Buttons,StrUtils,
  StdCtrls, ToolWin, ExtCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, Provider, DBClient, JvDBLookup, DataExport,
  DataToXLS, JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, System.Actions, JvAppStorage, JvAppIniStorage,VirtualUI_SDK,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList,WooCommerceAPI,System.JSON, Vcl.Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBFindEdit, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
  VCL.TMSFNCProgressBar;

type
  TFormListadoStockGral = class(TFormABMBase)
    dbgStock: TJvDBGrid;
    DSStock: TDataSource;
    CDSStock: TClientDataSet;
    DSPstock: TDataSetProvider;
    DSListaPrecio: TDataSource;
    lb1: TLabel;
    dbcListas: TJvDBLookupCombo;
    img1: TImage;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    DataToXLS1: TDataToXLS;
    btExcel: TBitBtn;
    dlgSave1: TSaveDialog;
    btn1: TToolButton;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockPUBLICAR_WEB: TStringField;
    chFiltraWeb: TCheckBox;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    chbCodAlter: TCheckBox;
    chMonedaOrigen: TCheckBox;
    CDSStockSIGNO: TStringField;
    CDSStockMONEDA: TIntegerField;
    Label1: TLabel;
    RxCDepositos: TJvDBLookupCombo;
    DSDepositos: TDataSource;
    CDSStockPLU: TStringField;
    pnCabecera: TPanel;
    Label2: TLabel;
    QDepositos: TFDQuery;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QStock: TFDQuery;
    CDSStockCOSTO: TFloatField;
    CDSStockIVA: TFloatField;
    CDSStockCOTIZACION: TFloatField;
    CDSStockPRECIOCONIVAPESO: TFloatField;
    CDSStockPRECIOSINIVAPESO: TFloatField;
    CDSStockPRECIOSINIVA: TFloatField;
    CDSStockPRECIOCONIVA: TFloatField;
    CDSStockEXISTENCIA: TFloatField;
    CDSStockUNIDAD: TStringField;
    CDSStockTIPOVTA: TStringField;
    QListaPrecio: TFDQuery;
    QListaPrecioID: TIntegerField;
    QListaPrecioNOMBRE: TStringField;
    QListaPrecioRECARGOBASE: TFloatField;
    QListaPrecioFECHA: TSQLTimeStampField;
    QListaPrecioPORDEFECTO: TStringField;
    QListaPrecioF_PAGO: TIntegerField;
    QListaPrecioUSO_ADMINISTRADOR: TStringField;
    QListaPrecioCLONADA: TStringField;
    QListaPrecioID_LISTA_CLONADA: TIntegerField;
    QListaPrecioCOEFICIENTE: TFloatField;
    QListaPrecioEXCLUSIVO_EFECTIVO: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    chPLU: TCheckBox;
    JvDBStatusLabel1: TJvDBStatusLabel;
    Label3: TLabel;
    cbMarca: TJvDBLookupCombo;
    lb2: TLabel;
    cbRubro: TJvDBLookupCombo;
    lb3: TLabel;
    cbSubRubro: TJvDBLookupCombo;
    QMarca: TFDQuery;
    QMarcaMARCA_STK: TStringField;
    QMarcaDESCRIPCION_MARCA: TStringField;
    DSMarca: TDataSource;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    DSRubro: TDataSource;
    QSubRubro: TFDQuery;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QSubRubroCODIGO_RUBRO: TStringField;
    DSSubRubro: TDataSource;
    Label6: TLabel;
    edPrefijoCodAlt: TEdit;
    CDSStockCODIGO_ALTERNATIVO_MODIFICADO: TStringField;
    DataToXLS_Precios: TDataToXLS;
    btExcel_Precios: TBitBtn;
    ActualizarPrecioWeb: TAction;
    mtProducto: TFDMemTable;
    btActualizaWeb: TBitBtn;
    ToolButton1: TToolButton;
    edBuscador: TJvDBFindEdit;
    Novedades: TAction;
    Button1: TButton;
    lbActulizados: TLabel;
    Label4: TLabel;
    CDSStockARTICULO_VARIABLE: TStringField;
    CDSStockCODIGO_ART_VARIABLE: TStringField;
    pgActualizacion: TTMSFNCProgressBar;
    procedure dbgStockTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure chFiltraWebClick(Sender: TObject);
    procedure dbgStockDblClick(Sender: TObject);
    procedure CDSStockCODIGO_STKGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure chbCodAlterClick(Sender: TObject);
    procedure CDSStockPRECIOSINIVAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSStockPRECIOCONIVAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure chMonedaOrigenClick(Sender: TObject);
    procedure CDSStockCalcFields(DataSet: TDataSet);
    procedure chPLUClick(Sender: TObject);
    procedure cbRubroClick(Sender: TObject);
    procedure cbSubRubroClick(Sender: TObject);
    procedure cbMarcaClick(Sender: TObject);
    procedure btExcel_PreciosClick(Sender: TObject);
    procedure ActualizarPrecioWebExecute(Sender: TObject);
    procedure CDSStockSIGNOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure NovedadesExecute(Sender: TObject);
    procedure CDSStockARTICULO_VARIABLEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgStockDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FWooCommerceAPI: TWooCommerceAPI;
    procedure ThActualizacionFin(Sender: TObject);
    procedure ActualizarVariacionPorSKU(const ProductoSKU, VariacionSKU,
      NuevaDescripcion: string; const NuevoPrecio: Double;
      WooAPI: TWooCommerceAPI);
//    procedure ActualizarVariacionPorSKU(const ProductoSKU, VariacionSKU,
//      NuevaDescripcion: string; const NuevoPrecio: Double;
//      WooAPI: TWooCommerceAPI);
  public
    { Public declarations }
    ListaNovedades      : TStringList;
  end;

var
  FormListadoStockGral: TFormListadoStockGral;

implementation

uses UDMain_FD, UStock_2, UListCpbteNoImportados,DMWordPress;

{$R *.dfm}

procedure TFormListadoStockGral.ActualizarVariacionPorSKU(const ProductoSKU, VariacionSKU: string;
                                                 const NuevaDescripcion: string;
                                                 const NuevoPrecio: Double; WooAPI: TWooCommerceAPI);
var
  ProductoResponse,
  VariacionResponse : TWooCommerceResponse;
  VariacionObj,
  UpdatePayload     : TJSONObject;
  ProductID, VariationID: Integer;
  ProductoObj, JSonArr, VariacionesArray: TJSONArray;
  I: Integer;
begin
  try
    // Paso 1: Buscar el producto principal directamente por su SKU
    WooAPI.Adapter.DataSet := DatosWordPress.mtProducto;
    ProductoResponse       := WooAPI.Get('/products/?sku=' + ProductoSKU);
    if not ProductoResponse.Status=200 then
      raise Exception.Create('Error al buscar el producto padre: ' + ProductoResponse.Content);

    // Obtener el ID del producto padre
    ProductID := DatosWordPress.mtProducto.FieldByName('id').AsInteger;

    // Paso 2: Buscar las variaciones de ese producto
    VariacionResponse := WooAPI.Get('/products/'+IntToStr(ProductID)+'/variations/');
    if not VariacionResponse.status=200 then
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
      UpdatePayload.AddPair('stock_quantity', FormatFloat('0.00',DMMain_FD.GetStockWeb(Trim(CDSStockCODIGO_STK.AsString))));

      VariacionResponse := WooAPI.Put(Format('/products/%d/variations/%d', [ProductID, VariationID]),UpdatePayload.ToJSON);

      if VariacionResponse.Status<>200 then
        raise Exception.Create('Error al actualizar la variación: ' + VariacionResponse.Content);

  //    ShowMessage('Variación actualizada exitosamente.');
    finally
      UpdatePayload.Free;
    end;

  finally
    // Liberar recursos
 //   if Assigned(ProductoObj) then ProductoObj.Free;
    if Assigned(VariacionesArray) then VariacionesArray.Free;
  end;
end;



{
procedure TFormListadoStockGral.ActualizarVariacionPorSKU(const ProductoSKU, VariacionSKU: string;
                                                 const NuevaDescripcion: string;
                                                 const NuevoPrecio: Double; WooAPI: TWooCommerceAPI);
var
  ProductoResponse,
  VariacionResponse : TWooCommerceResponse;
  VariacionObj,
  UpdatePayload     : TJSONObject;
  ProductID, VariationID: Integer;
  ProductoObj, JSonArr, VariacionesArray: TJSONArray;
  I: Integer;
  ClaveValor : TJSONObject;
  ProductoArray: TJSONArray; // WooCommerce devuelve un array
begin
  try
    // Paso 1: Buscar el producto principal directamente por su SKU
    ProductoResponse := WooAPI.Get('/products/?sku=' + CDSStockCODIGO_STK.AsString);
    if ProductoResponse.Status<>200 then
      raise Exception.Create('Error al buscar el producto padre: ' + ProductoResponse.Content);

    // Obtener el ID del producto padre
    ProductoArray := TJSONObject.ParseJSONValue(ProductoResponse.Content) as TJSONArray;

    ClaveValor := ProductoArray.Items[0] as TJSONObject;

   // ClaveValor := TJSONObject.ParseJSONValue(ProductoResponse.Content) as TJSONObject;

    if not Assigned(ClaveValor) then
      raise Exception.Create('Error: Respuesta del servidor no es un JSON válido.');

    ProductID := ClaveValor.GetValue<Integer>('id');//mtProducto.FieldByName('id').AsInteger;

    // Paso 2: Buscar las variaciones de ese producto
    VariacionResponse := WooAPI.Get('/products/'+IntToStr(ProductID)+'/variations/');
    if not VariacionResponse.status=200 then
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
      UpdatePayload.AddPair('stock_quantity', FormatFloat('0.00',DMMain_FD.GetStockWeb(DSBase.DataSet.FieldByName('CODIGO_STK').Value)));

      VariacionResponse := WooAPI.Put(Format('/products/%d/variations/%d', [ProductID, VariationID]),UpdatePayload.ToJSON);

      if not VariacionResponse.Status=200 then
        raise Exception.Create('Error al actualizar la variación: ' + VariacionResponse.Content);

    finally
      UpdatePayload.Free;
    end;

  finally
    if Assigned(VariacionesArray) then VariacionesArray.Free;
  end;
end;
}

procedure TFormListadoStockGral.btExcel_PreciosClick(Sender: TObject);
begin
  inherited;
//  inherited;
  Screen.Cursor:=crHourGlass;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSStock.IsEmpty) THEN
    BEGIN
      dlgSave1.FileName   := 'Actualiza_PrecioCosto_Vta';
      dlgSave1.DefaultExt := 'XLS';
      if VirtualUI.Active then
        dlgSave1.FileName   := dlgSave1.FileName+'.'+dlgSave1.DefaultExt;
      if dlgSave1.Execute then
        if dlgsave1.FileName<>'' Then
          begin
            if VirtualUI.Active then
             if Not(AnsiEndsText( '.xls', dlgSave1.FileName )) Then
               dlgSave1.FileName := dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

            if VirtualUI.Active then
              DataToXLS_Precios.SaveToFile(dlgSave1.FileName)
            else
              DataToXLS_Precios.SaveToFile(dlgSave1.FileName);

            ShowMessage('Datos Exportados...'+dlgSave1.FileName);

           if VirtualUI.Active then
             begin
               Sleep(100);
               VirtualUI.StdDialogs:=False;
               VirtualUI.DownloadFile(dlgSave1.FileName);
             end;
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
  Screen.Cursor:=crDefault;
end;

////// Codigo Chat GPT
{
procedure TFormListadoStockGral.ActualizarVariacionPorSKU(const ProductoSKU, VariacionSKU: string;
                                                 const NuevaDescripcion: string;
                                                 const NuevoPrecio: Double; WooAPI: TWooCommerceAPI);
var
  ProductoResponse,
  VariacionResponse : TWooCommerceResponse;
  VariacionObj,
  UpdatePayload     : TJSONObject;
  ProductID, VariationID: Integer;
  ProductoObj, JSonArr, VariacionesArray: TJSONArray;
  I: Integer;
begin
  try
    // Paso 1: Buscar el producto principal directamente por su SKU
    WooAPI.Adapter.DataSet := DatosWordPress.mtProducto;
    ProductoResponse := WooAPI.Get('/products/?sku=' + ProductoSKU);
    if not ProductoResponse.Status=200 then
      raise Exception.Create('Error al buscar el producto padre: ' + ProductoResponse.Content);

    // Obtener el ID del producto padre
    ProductID := DatosWordPress.mtProducto.FieldByName('id').AsInteger;

    // Paso 2: Buscar las variaciones de ese producto
    VariacionResponse := WooAPI.Get('/products/'+IntToStr(ProductID)+'/variations/');
    if not VariacionResponse.status=200 then
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

      VariacionResponse := WooAPI.Put(Format('/products/%d/variations/%d', [ProductID, VariationID]),UpdatePayload.ToJSON);

      if not VariacionResponse.Status=200 then
        raise Exception.Create('Error al actualizar la variación: ' + VariacionResponse.Content);

    finally
      UpdatePayload.Free;
    end;

  finally
    if Assigned(VariacionesArray) then VariacionesArray.Free;
  end;
end;
 }



procedure TFormListadoStockGral.ThActualizacionFin(Sender: TObject);
begin
  FreeAndNil(FWooCommerceAPI);
  ShowMessage('Finalización de Actualización...');
  btBuscar.Enabled            := True;
  btSalir.Enabled             := True;
  btExcel.Enabled             := True;
  btExcel_Precios.Enabled     := True;
  btActualizaWeb.Enabled      := True;
  dbgStock.Enabled            := True;
  JvFormStorage.PreventResize := False;

end;

procedure TFormListadoStockGral.ActualizarPrecioWebExecute(Sender: TObject);
var
  Body           : String;
  Response       : TWooCommerceResponse;
  Precio,
  PrecioOferta   : String;
  objS1          : TJSONObject;
  Id             : Integer;
  ThActualizacion: TThread;
  Contador       : Integer;
begin
  if (FWooCommerceAPI = nil) then
    FWooCommerceAPI := TWooCommerceAPI.Create('https://' + DMMain_FD.URlWoordPress, DMMain_FD.UsuarioWoordPress, DMMain_fd.ClaveUsuarioWoordPress);

  pgActualizacion.Maximum     := CDSStock.RecordCount;
  pgActualizacion.Minimum     := 1;
  pgActualizacion.Value       := 1;
  ListaNovedades.Clear;
  btBuscar.Enabled            := False;
  btSalir.Enabled             := False;
  btExcel.Enabled             := False;
  btExcel_Precios.Enabled     := False;
  btActualizaWeb.Enabled      := False;
  dbgStock.Enabled            := False;
  ThActualizacion := TThread.CreateAnonymousThread(
    procedure
    begin
      if (chFiltraWeb.Checked) and (CDSStock.RecordCount > 0) then
      begin
        CDSStock.First;
        CDSStock.DisableControls;
        while not CDSStock.Eof do
        begin
          objS1 := TJSONObject.Create;
          try
            FWooCommerceAPI.Adapter.DataSet := mtProducto;
            Response := FWooCommerceAPI.Get('/products/?sku=' + Trim(CDSStockCODIGO_STK.AsString));
            if Response.Status = 200 then
              begin
                Id := -1;
                if not mtProducto.IsEmpty then
                  Id := mtProducto.FieldByName('id').AsInteger;
              end
            else
              Id := -1;

            Precio       := FormatFloat('0', CDSStockPRECIOCONIVAPESO.Value);
            PrecioOferta := FormatFloat('0', StrToFloat(Precio) * (1 - (DMMain_FD.GetBonificacionWoordPress * 0.01)));

            objS1.AddPair('price', TJSONString.Create(PrecioOferta));
            objS1.AddPair('sale_price', TJSONString.Create(PrecioOferta));
            objS1.AddPair('regular_price', TJSONString.Create(Precio));
            objS1.AddPair('stock_quantity', TJSONString.Create(FormatFloat('0;-0;0', DMMain_FD.GetStockWeb(Trim(CDSStockCODIGO_STK.AsString)))));

            if CDSStockARTICULO_VARIABLE.AsString = 'X' then
              objS1.AddPair('type', TJSONString.Create('simple'))
            else if CDSStockARTICULO_VARIABLE.AsString = 'V' then
              objS1.AddPair('type', TJSONString.Create('variable'));
            if CDSStockARTICULO_VARIABLE.AsString = 'T' then
              objS1.AddPair('type', TJSONString.Create('variation'));

            Body := objS1.ToString;

            TThread.Synchronize(nil,
              procedure
              begin
                if pgActualizacion.Value < pgActualizacion.Maximum then
                  pgActualizacion.Value := pgActualizacion.Value + 1;
                lbActulizados.Caption      := IntToStr(Contador);
                Application.ProcessMessages;
              end);

            if (CDSStockARTICULO_VARIABLE.AsString='N') or (CDSStockARTICULO_VARIABLE.AsString='V') then
              Response := FWooCommerceAPI.Put('/products/' + IntToStr(Id), Body)
            else
              if (CDSStockARTICULO_VARIABLE.AsString='T') then
                begin
                  ActualizarVariacionPorSKU(
                    CDSStockCODIGO_ART_VARIABLE.AsString, // SKU del producto padre
                    CDSStockCODIGO_STK.AsString,          // SKU de la variación a actualizar
                    CDSStockDETALLE_STK.AsString,         // Nueva descripción para la variación
                    StrToFloat(PrecioOferta),             // Nuevo precio para la variación
                    FWooCommerceAPI                       // Objeto de la API
                  );
                end;
            Sleep(10); // Considera ajustar este tiempo según las necesidades
            if Response.Status <> 200 then
              ListaNovedades.Add('Error Actualización Código:' + CDSStockCODIGO_STK.AsString + ' ' + CDSStockDETALLE_STK.AsString)
            else
              Contador:=Contador+1;

          except
            on E: Exception do
              ListaNovedades.Add('Excepción: ' + E.Message);
          end;

          CDSStock.Next;
         // mtProducto.EmptyDataSet;
          objS1.Free;
        end;

        CDSStock.First;
        CDSStock.EnableControls;
      end;
    end
  );

  ThActualizacion.OnTerminate := ThActualizacionFin;
  ThActualizacion.Start;
end;

//////


//procedure TFormListadoStockGral.ThActualizacionFin(Sender: TObject);
//begin
//  FreeAndNil(FWooCommerceAPI);
//  ShowMessage('Fianlizacion de Actualizacion...');
//end;
//
//procedure TFormListadoStockGral.ActualizarPrecioWebExecute(Sender: TObject);
//var
//  Body           : String;
//  Response       : TWooCommerceResponse;
//  Precio,
//  PrecioOferta   : String;
//  objS1          : TJSONObject;
//  Id             : Integer;
//  ThActualizacion: TThread;
//
//begin
//  if (FWooCommerceAPI=nil)  then
//    FWooCommerceAPI   := TWooCommerceAPI.Create('https://'+DMMain_FD.URlWoordPress, DMMain_FD.UsuarioWoordPress, DMMain_fd.ClaveUsuarioWoordPress);
//  pgActualizacion.Max      := CDSStock.RecordCount;
//  pgActualizacion.Min      := 1;
//  pgActualizacion.Position := 1;
//  ListaNovedades.Clear;
//  ThActualizacion          := TThread.CreateAnonymousThread(
//    procedure
//      begin
//        if ((chFiltraWeb.Checked) and (CDSStock.RecordCount>0)) then
//          begin
//            CDSStock.First;
//            CDSStock.DisableControls;
//            while not(CDSStock.Eof) do
//              begin
//                try
//                  FWooCommerceAPI.Adapter.DataSet := mtProducto;
//                  Response                        := FWooCommerceAPI.Get('/products/?sku='+Trim(CDSStockCODIGO_STK.AsString));
//                  if Response.Status=200 then
//                    begin
//                      id:= -1;
//                      if not(mtProducto.IsEmpty) then
//                        Id:= mtProducto.FieldByName('id').AsInteger;
//                    end
//                  else
//                    id:=-1;
//                  Precio      := FormatFloat('0', (CDSStockPRECIOCONIVAPESO.Value));
//                  PrecioOferta:= FormatFloat('0', StrToFloat(Precio)* (1-(DMMain_FD.GetBonificacionWoordPress*0.01)));
//                  objS1       := TJSONObject.Create;
//
//                  objS1.AddPair('price',             TJSONString.Create(PrecioOferta));
//                  objS1.AddPair('sale_price',        TJSONString.Create(PrecioOferta));
//                  objS1.AddPair('regular_price',     TJSONString.Create(Precio));
//                  objS1.AddPair('stock_quantity',    TJSONString.Create(FormatFLoat('0;-0;0',DMMain_FD.GetStockWeb(Trim(CDSStockCODIGO_STK.AsString)))));
//
//                  body := objS1.ToString;
//                  TThread.Synchronize(nil, procedure
//                    begin
//                      if pgActualizacion.Position<pgActualizacion.Max then
//                        pgActualizacion.Position:=pgActualizacion.Position+1;
//                    end);
//
//                finally
//                  objS1.Free;
//                end;
//                Response := FWooCommerceAPI.Put('/products/' + IntToStr(Id), body);
//                Sleep(10);
//                if Response.Status<>200 then
//                  begin
//                    ListaNovedades.Add('Error Actualizacion Codigo:'+CDSStockCODIGO_STK.AsString+' '+CDSStockDETALLE_STK.AsString);
//                  end;
//                CDSStock.Next;
//                mtProducto.EmptyDataSet;
//              end;
//            CDSStock.First;
//            CDSStock.EnableControls;
//          end;
//      end);
//   ThActualizacion.OnTerminate:=ThActualizacionFin;
//   ThActualizacion.Start;
//end;

procedure TFormListadoStockGral.btExcelClick(Sender: TObject);
begin
//  inherited;
  Screen.Cursor:=crHourGlass;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSStock.IsEmpty) THEN
    BEGIN
      dlgSave1.FileName   := 'Articulos';
      dlgSave1.DefaultExt := 'XLS';
      if VirtualUI.Active then
        dlgSave1.FileName   := dlgSave1.FileName+'.'+dlgSave1.DefaultExt;
      if dlgSave1.Execute then
        if dlgsave1.FileName<>'' Then
          begin
            if VirtualUI.Active then
             if Not(AnsiEndsText( '.xls', dlgSave1.FileName )) Then
               dlgSave1.FileName := dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

            if VirtualUI.Active then
              DataToXLS1.SaveToFile(dlgSave1.FileName)
            else
              DataToXLS1.SaveToFile(dlgSave1.FileName);

            ShowMessage('Datos Exportados...'+dlgSave1.FileName);

           if VirtualUI.Active then
             begin
               Sleep(100);
               VirtualUI.StdDialogs:=False;
               VirtualUI.DownloadFile(dlgSave1.FileName);
             end;
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
  Screen.Cursor:=crDefault;

end;

procedure TFormListadoStockGral.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSStock.Close;
  CDSStock.Params.ParamByName('lista').Value   :=dbcListas.KeyValue;
  CDSStock.Params.ParamByName('deposito').Value:=RxCDepositos.KeyValue;

  CDSStock.Params.ParamByName('rubro').Value    := cbRubro.KeyValue;
  CDSStock.Params.ParamByName('subrubro').Value := cbSubRubro.KeyValue;
  CDSStock.Params.ParamByName('marca').Value    := cbMarca.KeyValue;

  CDSStock.Open;
  dbgStock.Width:= dbgStock.Width+1;
  dbgStock.Width:= dbgStock.Width-1;

end;

procedure TFormListadoStockGral.CDSStockARTICULO_VARIABLEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.AsString='N' then Text:='Simple'
  else
    if sender.AsString='V' then Text:='Variable'
  else
    if sender.AsString='T' then Text:='Variante';


end;

procedure TFormListadoStockGral.CDSStockCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSStockTIPOVTA.Value:='PESO';
  if CDSStockUNIDAD.Value='UNI' then
    CDSStockTIPOVTA.Value:='UNIDAD';

  CDSStockCODIGO_ALTERNATIVO_MODIFICADO.AsString:=trim(edPrefijoCodAlt.Text)+CDSStockREEMPLAZO_STK.AsString;

end;

procedure TFormListadoStockGral.CDSStockCODIGO_STKGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if chbCodAlter.Checked then
    Text:=CDSStockREEMPLAZO_STK.Value
  else
    Text:=CDSStockCODIGO_STK.Value;
end;

procedure TFormListadoStockGral.CDSStockPRECIOCONIVAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=FormatFloat(',0.00', CDSStockPRECIOCONIVAPESO.AsFloat);
  if chMonedaOrigen.Checked then
    Text:=FormatFloat(',0.00',CDSStockPRECIOCONIVA.AsFloat);
end;

procedure TFormListadoStockGral.CDSStockPRECIOSINIVAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=FormatFloat(',0.00',CDSStockPRECIOSINIVAPESO.AsFloat);
  if chMonedaOrigen.Checked then
    Text:=FormatFloat(',0.00',CDSStockPRECIOSINIVA.AsFloat);

end;

procedure TFormListadoStockGral.CDSStockSIGNOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:='$';
  if chMonedaOrigen.Checked then
    Text:= CDSStockSIGNO.AsString;

end;

procedure TFormListadoStockGral.chbCodAlterClick(Sender: TObject);
begin
  inherited;
   dbgStock.Refresh;
end;

procedure TFormListadoStockGral.chFiltraWebClick(Sender: TObject);
begin
  inherited;
  CDSStock.Filtered := False;
  CDSStock.Filter   := 'PUBLICAR_WEB = ''S'' ';
  CDSStock.Filtered := chFiltraWeb.Checked;
end;

procedure TFormListadoStockGral.chMonedaOrigenClick(Sender: TObject);
begin
  inherited;
  dbgStock.Refresh;
end;

procedure TFormListadoStockGral.chPLUClick(Sender: TObject);
begin
  inherited;
  CDSStock.Filter  :='';
  CDSStock.Filtered:=False;
  CDSStock.Filter  :='PLU <> '''' ';
  CDSStock.Filtered:=chPLU.Checked;
end;

procedure TFormListadoStockGral.dbgStockDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TformStock_2.Create(Self);
  FormStock_2.DatoNew:=CDSStockCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
  
end;

procedure TFormListadoStockGral.dbgStockDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if Column.Index=5 then
    begin
      if CDSStockARTICULO_VARIABLE.Value='V' then
        dbgStock.Canvas.Brush.Color := clYellow
      else
        if CDSStockARTICULO_VARIABLE.Value='T' then
          dbgStock.Canvas.Brush.Color := clLime;
    end;
  dbgStock.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TFormListadoStockGral.dbgStockTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgStock.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoStockGral.DSBaseStateChange(Sender: TObject);
begin
//o  inherited;

end;

procedure TFormListadoStockGral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSStock.Close;
  QListaPrecio.Close;
  if (DatosWordPress<>Nil) then
    FreeAndNil(DatosWordPress);
  FreeAndNil(ListaNovedades);
  Action:=caFree;
end;

procedure TFormListadoStockGral.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  IF NOT (Assigned(DatosWordPress)) THEN
    DatosWOrdPress:=TDatosWordPress.Create(Self);

  QDepositos.Open; //DSListaPrecio.Close;
  QMarca.Open;
  QRubro.Open;
  QSubRubro.Open;
  ListaNovedades        := TStringList.Create;
  edBuscador.FindStyle  := fsFilter;
  edBuscador.FindMode   := fmAnyPos;
  //CDSListaPrecio.OPen;
end;

procedure TFormListadoStockGral.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoStockGral:=nil;
end;

procedure TFormListadoStockGral.FormShow(Sender: TObject);
begin
  inherited;
  QListaPrecio.Open;
  dbcListas.KeyValue:=DMMain_FD.ListaPorDefecto(-1);
  Buscar.Execute;
end;

procedure TFormListadoStockGral.NovedadesExecute(Sender: TObject);
begin
  inherited;
  if (ListaNovedades<>nil) and (ListaNovedades.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Self);
      FormListaNoImportados.mLista.Lines:=(ListaNovedades);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');

end;

procedure TFormListadoStockGral.cbMarcaClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoStockGral.cbRubroClick(Sender: TObject);
begin
  inherited;
  QSubRubro.Close;
  QSubRubro.ParamByName('rubro').Value:= cbRubro.KeyValue;
  QSubRubro.Open;
  Buscar.Execute;
end;

procedure TFormListadoStockGral.cbSubRubroClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.
