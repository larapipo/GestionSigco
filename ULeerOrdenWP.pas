unit ULeerOrdenWP;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.Graphics,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Data.DB, FireDAC.Comp.Client,
  REST.Client, REST.Types, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, Data.Bind.Components, Types,
  Data.Bind.ObjectScope, Vcl.DBCtrls, REST.Authenticator.Basic,Librerias,
  REST.Response.Adapter, Vcl.Buttons, System.Actions, Vcl.ActnList, Vcl.Menus;
  {$D+}

type
  TFormLeerOrdenWP = class(TForm)
    pnOrdenes: TPanel;
    Label1: TLabel;
    edtOrderID: TEdit;
    btnFetch: TButton;
    memTableHeader: TFDMemTable;
    memTableShipping: TFDMemTable;
    memTableLines: TFDMemTable;
    memTableOrders: TFDMemTable;
    dsHeader: TDataSource;
    dsShipping: TDataSource;
    dsLines: TDataSource;
    dsOrders: TDataSource;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    memTableHeaderid: TIntegerField;
    memTableHeaderstatus: TStringField;
    memTableHeadertotal: TFloatField;
    memTableHeaderpayment_method: TStringField;
    memTableLinesproduct_id: TIntegerField;
    memTableLinesname: TStringField;
    memTableLinesquantity: TFloatField;
    memTableLinessubtotal: TFloatField;
    memTableLinestotal: TFloatField;
    memTableShippingfirst_name: TStringField;
    memTableShippinglast_name: TStringField;
    memTableShippingaddress_1: TStringField;
    memTableShippingcity: TStringField;
    memTableShippingpostcode: TStringField;
    memTableOrdersid: TIntegerField;
    memTableOrdersstatus: TStringField;
    memTableOrderstotal: TFloatField;
    memTableOrdersdate_created: TStringField;
    memTableOrderscurrency: TStringField;
    memTableOrdersfirst_name: TStringField;
    memTableOrderslast_name: TStringField;
    memTableOrdersaddress_1: TStringField;
    memTableOrderscity: TStringField;
    dbgOrdenes: TDBGrid;
    pnPie: TPanel;
    pnDatosCab: TPanel;
    Label2: TLabel;
    edtPaymentMethod: TDBEdit;
    Label3: TLabel;
    edtBillingAddress: TDBEdit;
    Label5: TLabel;
    cxDBTextEdit1: TDBEdit;
    Label6: TLabel;
    cxDBTextEdit2: TDBEdit;
    Label8: TLabel;
    cxDBTextEdit4: TDBEdit;
    Label7: TLabel;
    cxDBTextEdit3: TDBEdit;
    Label9: TLabel;
    cxDBTextEdit5: TDBEdit;
    btBuscarPresupuestos: TBitBtn;
    dbgDetalles: TDBGrid;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    HTTPBasicAuthenticator1: THTTPBasicAuthenticator;
    pnDetalles: TPanel;
    ActionList1: TActionList;
    Consultar: TAction;
    GenerarRto: TAction;
    memTableLinessku: TStringField;
    PopupMenu1: TPopupMenu;
    GenerarRto1: TMenuItem;
    pnCabecera: TPanel;
    Label4: TLabel;
    GenerarFcContado: TAction;
    GenerarFcContado1: TMenuItem;
    procedure btnFetchClick(Sender: TObject);
    procedure dbgOrdenesCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConsultarExecute(Sender: TObject);
    procedure GenerarRtoExecute(Sender: TObject);
    procedure dbgOrdenesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GenerarFcContadoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure PopulateMemTablesFromJSON(const AJSON: TJSONValue);
    procedure EnsureMemTables;
    procedure PopulateOrderList(const AJSONArray: TJSONArray);
    procedure EnsureOrderMemTable;
    procedure FetchOrderDetails(const AOrderID: string);
    procedure AgregarCabRto;
    procedure AgregaDetalleRto;
    procedure AgregarCabFcCtdo;
    procedure AgregarDetFcCtdo;
  public
    { Public declarations }
    SucursalComprobante,
    Deposito ,DepositoDestino,Sucursal,
    IDComprobante,Renglones  :Integer;
    TipoCpbte:String;
  end;

var
  FormLeerOrdenWP: TFormLeerOrdenWP;

implementation

uses UDMain_FD, UBuscadorTipoCpbte, UBuscadorDepositos, UControlNroRto,
  DMRemitos, URemitos, UFacturaCtdo_2, DMStoreProcedureForm, DMVentaCtdo;
{$R *.dfm}

procedure TFormLeerOrdenWP.AgregarCabRto;
begin
  with DatosRemitos DO
    begin
      FormRemitos.SucursalPorDefecto:= SucursalComprobante;
      FormRemitos.DepositoPorDefecto:= Deposito;
      CDSRtoCabSucursalSetText(CDSRtoCabSucursal, IntToStr(SucursalComprobante));
      CDSRtoCabCodigoSetText(CDSRtoCabCodigo,DMMain_FD.ClientePorDefecto);
      CDSRtoCabLDRSetText(CDSRtoCabLDR,'0');
      CDSRtoCabFECHAVTA.AsDateTime   := Date;
      CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
      CDSRtoCabNOMBRE.Value          := UpperCase(Copy(memTableOrderslast_name.AsString+' '+memTableOrderslast_name.AsString,1,35));
      CDSRtoCabRAZONSOCIAL.Value     := CDSRtoCabNOMBRE.Value;
      CDSRtoCabDIRECCION.Value       := UpperCase(copy(memTableOrdersaddress_1.Value,1,35));
      CDSRtoCabLOCALIDAD.Value       := UpperCase(copy(memTableOrderscity.Value,1,15));

      CDSRtoCabPEDIDO_ID.AsInteger   := MemTableordersID.AsInteger;
      CDSRtoCabLISTAPRECIO.AsInteger := DMMain_FD.ListaPorDefecto(SucursalComprobante);
      CDSRtoCabANULADO.AsString      := 'N';

      CDSRtoCabIMPRESO.AsString      := 'N';
      CDSRtoCabOBSERVACION1.AsString := 'Pedido WoordPress Nro:'+memTableOrdersid.AsString;//CDSVentaCabOBSERVACION1.Value;
      CDSRtoCabOBSERVACION2.AsString := '';//CDSVentaCabOBSERVACION2.Value;
      CDSRtoCabCPTE_MANUAL.AsString  := 'N';
      CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
      CDSRtoCabUSUARIO.AsString        :=DMMain_FD.UsuarioActivo;
    end;
end;

procedure TFormLeerOrdenWP.AgregaDetalleRto;
Var UnitarioTotal,Precio,PrecioRto:Extended;
Descuento:Extended;
begin
  inherited;
  with DatosRemitos DO
    begin
      CDSRtoDet.Append;
      if (Trim(memTableLinessku.AsString)<>'') Then
        CDSRtoDetCodigoArticuloSetText(CDSRtoDetCodigoArticulo,memTableLinessku.AsString)
      else
        CDSRtoDetCodigoArticuloSetText(CDSRtoDetCodigoArticulo,'00000000');

      CDSRtoDetDetalle.AsString       := memTableLinesname.AsString;
      CDSRtoDetDescuento.AsFloat      := 0;
      CDSRtoDetCantidadSetText(CDSRtoDetCantidad,memTableLinesquantity.AsString);
      Descuento                       := 0;//(1 - (1 - QDetalleDESCUENTO.AsFloat*0.01)*(1-QDetalleDESCUENTO_ADICIONAL.AsFloat*0.01))*100;
      CDSRtoDetDescuentoSetText(CDSRtoDetDESCUENTO,FormatFloat('0.000',Descuento));
      Precio:=memTableLinessubtotal.Value;///1.21;
      CDSRtoDetUnitario_TotalSetText(CDSRtoDetUNITARIO_TOTAL,FloatToStr(Precio));
      CDSRtoDet.Post;
    end;
end;

procedure TFormLeerOrdenWP.AgregarCabFcCtdo;
begin
  with DatosVentasCtdo DO
  begin
    FormCpbteCtdo_2.SucursalPorDefecto :=SucursalComprobante;
    FormCpbteCtdo_2.DepositoPorDefecto :=Deposito;
    //CDSNotaPedidoCabSUCURSAL.Value           :=SucursalComprobante;
    CDSVentaCabCODIGOSetText(CDSVentaCabCODIGO,DMMain_FD.ClientePorDefecto);
    CDSVentaCabLDRSetText(CDSVentaCabLDR,'0');
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

    CDSVentaCabNOMBRE.Value       := UpperCase(copy( memTableShippinglast_name.AsString+' '+memTableShippingfirst_name.AsString,1,35));
    CDSVentaCabRAZONSOCIAL.Value  := CDSVentaCabNOMBRE.Value;
    CDSVentaCabDIRECCION.Value    := UpperCase(Copy(memTableShippingaddress_1.AsString,1,35));
    CDSVentaCabLOCALIDAD.Value    := UpperCase((copy(memTableShippingcity.AsString,1,15)));
    CDSVentaCabCPOSTAL.Value      := memTableShippingpostcode.Value;

    CDSVentaCabIMPRESO.Value      := 'N';
    CDSVentaCabOBSERVACION1.Value := 'Pedido WoordPress Nro:'+memTableOrdersid.AsString;
    CDSVentaCabOBSERVACION2.Value := '';
    CDSVentaCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;
    FormCpbteCtdo_2.DiscriminaIva:='S';
  end;
end;

procedure TFormLeerOrdenWP.AgregarDetFcCtdo;
Var UnitarioTotal,Precio,coef:Extended;
begin
  inherited;
  with DatosVentasCtdo DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetDESGLOZAIVA.Value   := CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value      := CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value    := CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetTIPOCPBTE.Value     := CDSVentaCabTIPOCPBTE.Value;
      CDSVentaDetCODIGOARTICULOSetText(CDSVentaDetCODIGOARTICULO,memTableLinessku.AsString);
      CDSVentaDetDETALLE.Value       := memTableLinesname.Value;
      CDSVentaDetCANTIDAD.AsFloat    := memTableLinesquantity.AsFloat;

      CDSVentaDetUNITARIO_GRAVADO.AsFloat := memTableLinessubtotal.AsFloat/(1+CDSVentaDetIVA_TASA.AsFloat*0.01);
      CDSVentaDetUNITARIO_EXENTO.AsFloat  := 0;
      CDSVentaDetUNITARIO_TOTAL.AsFloat   := memTableLinessubtotal.AsFloat;
      CDSVentaDetIVA_UNITARIO.AsFloat     := memTableLinessubtotal.AsFloat-CDSVentaDetUNITARIO_GRAVADO.Value;

      UnitarioTotal:= CDSVentaDetUNITARIO_TOTAL.AsFloat;

      if CDSVentaCabDESGLOZAIVA.Value='N' Then
        UnitarioTotal:= CDSVentaDetUNITARIO_GRAVADO.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

      CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,'0');
      CDSVentaDet.Post;
    end;
end;



////////////////////////////////////////////////////////////////////////////////////

procedure TFormLeerOrdenWP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormLeerOrdenWP.FormCreate(Sender: TObject);
begin
  RESTResponseDataSetAdapter1.Dataset := nil;
  RESTResponseDataSetAdapter1.Response := nil;
end;

procedure TFormLeerOrdenWP.FormDestroy(Sender: TObject);
begin
  FormLeerOrdenWP:=nil;
end;

procedure TFormLeerOrdenWP.FormResize(Sender: TObject);
begin
  if Width<=826 Then Width:=826
end;

procedure TFormLeerOrdenWP.GenerarFcContadoExecute(Sender: TObject);
var cont:integer;
begin
 //** aca se va a generar Factura..
  if Not( memTableOrders.IsEmpty) and
    ((memTableOrdersstatus.AsString='pending') OR (memTableOrdersstatus.AsString='on-hold'))  then
    begin
       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
       FormBuscadorTipoCpbte.TipoCpbte1   :='FO';
       FormBuscadorTipoCpbte.TipoCpbte2   :='';
       FormBuscadorTipoCpbte.TipoCpbte3   :='';
       FormBuscadorTipoCpbte.CV           :='V';
       FormBuscadorTipoCpbte.Sucursal     := DMMain_FD.SucursalPorDef;
       FormBuscadorTipoCpbte.DiscriminaIVA:= 'N';
       FormBuscadorTipoCpbte.ShowModal;
       Renglones            := FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
       SucursalComprobante  := FormBuscadorTipoCpbte.Sucursal;
       IDComprobante        := FormBuscadorTipoCpbte.Id_Cpbte;
       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos := TFormBuscadorDepositos.Create(Application);
           FormBuscadorDepositos.Deposito:=  DMMain_FD.DepositoPorSucursal(FormBuscadorTipoCpbte.Sucursal);
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               Deposito    := FormBuscadorDepositos.Deposito;
               if Not(Assigned(FormCpbteCtdo_2)) Then
                 FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
               FormCpbteCtdo_2.SucursalPorDefecto := SucursalComprobante;
               FormCpbteCtdo_2.DepositoPorDefecto := Deposito;
               memTableLines.First;
               cont:=0;
               while Not(memTableLines.Eof)  do
                 begin
                   FormCpbteCtdo_2.Agregar.Execute;
                   AgregarCabFcCtdo;
                   while Not(memTableLines.Eof) and (Cont<=Renglones)  Do // Ingreso el detalle
                     begin
                       if (memTableLinesquantity.AsFloat>0) Then
                         begin
                           if (DMMain_FD.VenderSinStock=False) Then
                             begin
                               DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
                               DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    := memTableLinessku.Value;
                               DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger := DatosVentasCtdo.CDSVentaCabDeposito.Value;
                               DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    :='V';
                               DMStoreProcedure.QExistenciaStockArticuloDepo.Open;

                               if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or
                                  (Moneda3D(' ','0.00',DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat)<
                                   Moneda3D(' ','0.00',memTableLinesquantity.AsFloat)) Then
                                  ShowMessage('Este item no Tiene Stock en este deposito, se ignora.....')
                               else
                                 begin
                                   AgregarDetFcCtdo;
                                   Cont := Cont+1;
                                 end;
                               DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
                             end
                           else
                             begin
                               AgregarDetFcCtdo;
                               Cont := Cont+1;
                             end;
                         end;
                       memTableLines.Next;
                     end;
                   Cont:=1;
                 end;
             end;
         end;
     end
   else
     ShowMessage('No hay cantidades de entrega para Generar la factura.....!!!');end;

procedure TFormLeerOrdenWP.GenerarRtoExecute(Sender: TObject);
begin
 //** aca se va a generar el Rto..
  if Not( memTableOrders.IsEmpty) then
    begin
      if (memTableOrdersstatus.AsString='pending') OR (memTableOrdersstatus.AsString='on-hold') then
         begin
           if not(memTableOrders.IsEmpty) then
             begin
               if Not(Assigned(FormBuscadorTipoCpbte)) then
                 FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
               FormBuscadorTipoCpbte.TipoCpbte1:='RE';
               FormBuscadorTipoCpbte.TipoCpbte2:='';
               FormBuscadorTipoCpbte.TipoCpbte3:='';
               FormBuscadorTipoCpbte.CV        :='V';
               FormBuscadorTipoCpbte.Sucursal  := DMMain_FD.SucursalPorDef;// Sucursal;
               FormBuscadorTipoCpbte.ShowModal;
               if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
                 begin
                   SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
                   IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
                   if Not(Assigned(FormBuscadorDepositos)) then
                     FormBuscadorDepositos :=TFormBuscadorDepositos.Create(Self);
                   FormBuscadorDepositos.Deposito :=  DMMain_FD.DepositoPorSucursal(Sucursal);
                   FormBuscadorDepositos.ShowModal;
                   if (FormBuscadorDepositos.ModalResult=mrok) Then
                     begin
                       Deposito:=FormBuscadorDepositos.Deposito;
                       if Not(Assigned(FormRemitos)) Then
                         FormRemitos:=TFormRemitos.Create(self);
                       FormRemitos.Agregar.Execute;
                       AgregarCabRto;
                       if Not(Assigned(FormControlNroRto)) then
                         FormControlNroRto:=TFormControlNroRto.Create(Application);
                       FormControlNroRto.Let:= DatosRemitos.CDSRtoCabLETRARTO.AsString;
                       FormControlNroRto.Suc:= DatosRemitos.CDSRtoCabSUCRTO.AsString;
                       FormControlNroRto.Num:= DatosRemitos.CDSRtoCabNUMERORTO.AsString;
                       FormControlNroRto.ShowMOdal;
                       if (FormControlNroRto.ModalResult=mrOk) then
                         begin
                           if (FormControlNroRto.Let<> DatosRemitos.CDSRtoCabLETRARTO.AsString) or
                              (FormControlNroRto.Suc<> DatosRemitos.CDSRtoCabSUCRTO.AsString) or
                              (FormControlNroRto.Num<> DatosRemitos.CDSRtoCabNUMERORTO.AsString) Then
                           DatosRemitos.CDSRtoCabCPTE_MANUAL.Value:='S';
                           DatosRemitos.CDSRtoCabLETRARTO.AsString:=FormControlNroRto.Let;
                           DatosRemitos.CDSRtoCabSUCRTOSetText(DatosRemitos.CDSRtoCabSUCRTO,FormControlNroRto.Suc);
                           DatosRemitos.CDSRtoCabNUMERORTOSetText(DatosRemitos.CDSRtoCabNUMERORTO,FormControlNroRto.Num);
                         end;
                       memTableLines.First;
                       while Not(memTableLines.Eof)  do
                         begin
                           while Not(memTableLines.Eof)  Do // Ingreso el detalle
                             begin
                               if (memTableLinesquantity.AsFloat > 0) then
                                 AgregaDetalleRto;
                               memTableLines.Next;
                             end;
                         end;
                       DatosRemitos.CDSRtoDet.AfterPost:=DatosRemitos.CDSRtoDetAfterPost;
                       DatosRemitos.CDSRtoDet.Edit;
                       DatosRemitos.CDSRtoDet.Post;
                       //FormRemitos.Confirma.Execute;
                       FormRemitos.Show;
                     end;
                 end;
             end;
         end
       else
         ShowMessage('Ya fue remitado....');
    end;
end;

procedure TFormLeerOrdenWP.btnFetchClick(Sender: TObject);
var
  LID: string;
begin
  LID := Trim(edtOrderID.Text);
  if LID = '' then begin
    TaskMessageDlg('Falta ID', 'Ingrese el ID de la orden', mtWarning, [mbOK], 0);
    Exit;
  end;
  FetchOrderDetails(LID);
end;

procedure TFormLeerOrdenWP.ConsultarExecute(Sender: TObject);
var
  LResponse: string;
  LJSON: TJSONValue;
  LOrdersArray: TJSONArray;
  LOrdersValue: TJSONValue;
  LObj: TJSONObject;
begin
  RESTClient1.BaseURL   := 'http://'+DMMain_FD.URlWoordPress+'/wp-json/wc/v3/orders';
  RESTRequest1.Resource := '';
  RESTRequest1.Method   := rmGET;
  try
    RESTRequest1.Execute;
  except
    on E: Exception do begin
      TaskMessageDlg('Error', 'Error al listar órdenes: ' + E.Message, mtError, [mbOK], 0);
      Exit;
    end;
  end;

  LResponse := RESTResponse1.Content;
  LJSON := nil;
  try
    try
      LJSON := TJSONObject.ParseJSONValue(LResponse);
    except
      on E: Exception do begin
        TaskMessageDlg('Error', 'No se pudo leer la respuesta JSON: ' + E.Message, mtError, [mbOK], 0);
        Exit;
      end;
    end;

    LOrdersArray := nil;
    if Assigned(LJSON) then begin
      if LJSON is TJSONArray then
        LOrdersArray := LJSON as TJSONArray
      else if LJSON is TJSONObject then begin
        LObj := LJSON as TJSONObject;
        if LObj.TryGetValue('orders', LOrdersValue) and (LOrdersValue is TJSONArray) then
          LOrdersArray := LOrdersValue as TJSONArray
        else if LObj.TryGetValue('data', LOrdersValue) and (LOrdersValue is TJSONArray) then
          LOrdersArray := LOrdersValue as TJSONArray;
      end;
    end;

    if Assigned(LOrdersArray) then
      PopulateOrderList(LOrdersArray)
    else
      TaskMessageDlg('Error', 'Respuesta inesperada al listar órdenes', mtError, [mbOK], 0);
  finally
    LJSON.Free;
  end;
end;

procedure TFormLeerOrdenWP.dbgOrdenesCellClick(Column: TColumn);
var
  OrderID: string;
begin
  if memTableOrders.IsEmpty then
    Exit;
  OrderID := memTableOrders.FieldByName('id').AsString;
  if OrderID = '' then
    Exit;
  FetchOrderDetails(OrderID);
end;


procedure TFormLeerOrdenWP.dbgOrdenesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  dbgOrdenes.Canvas.Font.Style:=[];

  if (memTableOrdersstatus.AsString='pending') then
    dbgOrdenes.Canvas.Font.Color:=clBlue;

  if (memTableOrdersstatus.AsString='on-hold') then
    dbgOrdenes.Canvas.Font.Color:=clGreen;

  if (memTableOrdersstatus.AsString='cancelled') then
    dbgOrdenes.Canvas.Font.Style:=[fsStrikeOut];

  if (gdFocused in State) then
    begin
      dbgOrdenes.canvas.brush.color := ClBlue;
      dbgOrdenes.canvas.Font.color  := clWhite;
    end;
    //Esta línea es nueva
  dbgOrdenes.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormLeerOrdenWP.EnsureMemTables;
begin
  if not memTableHeader.Active then
    memTableHeader.Open
  else
    memTableHeader.EmptyDataSet;

  if not memTableShipping.Active then
    memTableShipping.Open
  else
    memTableShipping.EmptyDataSet;

  if not memTableLines.Active then
    memTableLines.Open
  else
    memTableLines.EmptyDataSet;
end;

procedure TFormLeerOrdenWP.EnsureOrderMemTable;
begin
  if not memTableOrders.Active then
    memTableOrders.Open
  else
    memTableOrders.EmptyDataSet;
end;

procedure TFormLeerOrdenWP.FetchOrderDetails(const AOrderID: string);
var
  LResponse: string;
  LJSON: TJSONValue;
  LTrimmedID: string;
begin
  LTrimmedID := Trim(AOrderID);
  if LTrimmedID = '' then
    Exit;

  RESTClient1.BaseURL   := 'http://'+DMMain_FD.URlWoordPress+'/wp-json/wc/v3/orders';
  RESTRequest1.Method   := rmGET;
  RESTRequest1.Resource := LTrimmedID;
  try
    RESTRequest1.Execute;
  except
    on E: Exception do begin
      TaskMessageDlg('Error', 'Error al solicitar la orden: ' + E.Message, mtError, [mbOK], 0);
      Exit;
    end;
  end;

  LResponse := RESTResponse1.Content;
  LJSON := TJSONObject.ParseJSONValue(LResponse);
  try
    if Assigned(LJSON) then
      PopulateMemTablesFromJSON(LJSON)
    else
      TaskMessageDlg('Error', 'Respuesta JSON inválida', mtError, [mbOK], 0);
  finally
    LJSON.Free;
  end;
end;

procedure TFormLeerOrdenWP.PopulateMemTablesFromJSON(const AJSON: TJSONValue);
var
  LObj, LShipping: TJSONObject;
  LArr: TJSONArray;
  I: Integer;
begin
  if not (AJSON is TJSONObject) then begin
    TaskMessageDlg('Info', 'JSON no es un objeto de primer nivel', mtInformation, [mbOK], 0);
    Exit;
  end;

  LObj := AJSON as TJSONObject;
  EnsureMemTables;

  // Populate header (single record)
  memTableHeader.Append;
  if LObj.GetValue('id') <> nil then
    memTableHeader.FieldByName('id').AsInteger := (LObj.GetValue('id') as TJSONNumber).AsInt;
  if LObj.GetValue('status') <> nil then
    memTableHeader.FieldByName('status').AsString := LObj.GetValue('status').Value;
  if LObj.GetValue('total') <> nil then
    memTableHeader.FieldByName('total').AsCurrency := StrToCurrDef(LObj.GetValue('total').Value, 0);
  if LObj.GetValue('payment_method') <> nil then
    memTableHeader.FieldByName('payment_method').AsString := LObj.GetValue('payment_method').Value;
  memTableHeader.Post;

  // Populate shipping (single record inside 'shipping' object)
  if LObj.GetValue('shipping') is TJSONObject then begin
    LShipping := LObj.GetValue('shipping') as TJSONObject;
    memTableShipping.Append;
    if LShipping.GetValue('first_name') <> nil then
      memTableShipping.FieldByName('first_name').AsString := LShipping.GetValue('first_name').Value;
    if LShipping.GetValue('last_name') <> nil then
      memTableShipping.FieldByName('last_name').AsString := LShipping.GetValue('last_name').Value;
    if LShipping.GetValue('address_1') <> nil then
      memTableShipping.FieldByName('address_1').AsString := LShipping.GetValue('address_1').Value;
    if LShipping.GetValue('city') <> nil then
      memTableShipping.FieldByName('city').AsString := LShipping.GetValue('city').Value;
    if LShipping.GetValue('postcode') <> nil then
      memTableShipping.FieldByName('postcode').AsString := LShipping.GetValue('postcode').Value;
    memTableShipping.Post;
  end;

  // Populate line items (array 'line_items')
  if LObj.GetValue('line_items') is TJSONArray then begin
    LArr := LObj.GetValue('line_items') as TJSONArray;
    for I := 0 to LArr.Count - 1 do begin
      if LArr.Items[I] is TJSONObject then begin
        memTableLines.Append;
        if (LArr.Items[I] as TJSONObject).GetValue('product_id') <> nil then
          memTableLines.FieldByName('product_id').AsInteger := StrToIntDef((LArr.Items[I] as TJSONObject).GetValue('product_id').Value, 0);
        if (LArr.Items[I] as TJSONObject).GetValue('name') <> nil then
          memTableLines.FieldByName('name').AsString := (LArr.Items[I] as TJSONObject).GetValue('name').Value;
        if (LArr.Items[I] as TJSONObject).GetValue('quantity') <> nil then
          memTableLines.FieldByName('quantity').AsInteger := StrToIntDef((LArr.Items[I] as TJSONObject).GetValue('quantity').Value, 0);
        if (LArr.Items[I] as TJSONObject).GetValue('subtotal') <> nil then
          memTableLines.FieldByName('subtotal').AsCurrency := StrToCurrDef((LArr.Items[I] as TJSONObject).GetValue('subtotal').Value, 0);
        if (LArr.Items[I] as TJSONObject).GetValue('total') <> nil then
          memTableLines.FieldByName('total').AsCurrency := StrToCurrDef((LArr.Items[I] as TJSONObject).GetValue('total').Value, 0);
        if (LArr.Items[I] as TJSONObject).GetValue('sku') <> nil then
          memTableLines.FieldByName('sku').AsString := (LArr.Items[I] as TJSONObject).GetValue('sku').Value;;

        memTableLines.Post;
      end;
    end;
  end;
end;

procedure TFormLeerOrdenWP.PopulateOrderList(const AJSONArray: TJSONArray);
var
  LObj, LShipping: TJSONObject;
  I: Integer;
begin
  EnsureOrderMemTable;
  for I := 0 to AJSONArray.Count - 1 do begin
    if not (AJSONArray.Items[I] is TJSONObject) then
      Continue;
    LObj := AJSONArray.Items[I] as TJSONObject;
    memTableOrders.Append;
    if LObj.GetValue('id') <> nil then
      memTableOrdersid.AsInteger := (LObj.GetValue('id') as TJSONNumber).AsInt;
    if LObj.GetValue('status') <> nil then
      memTableOrdersstatus.AsString := LObj.GetValue('status').Value;
    if LObj.GetValue('total') <> nil then
      memTableOrderstotal.AsCurrency := StrToCurrDef(LObj.GetValue('total').Value, 0);
    if LObj.GetValue('currency') <> nil then
      memTableOrderscurrency.AsString := LObj.GetValue('currency').Value;
    if LObj.GetValue('date_created') <> nil then
      memTableOrdersdate_created.AsString := LObj.GetValue('date_created').Value;
    if LObj.GetValue('shipping') is TJSONObject then begin
      LShipping := LObj.GetValue('shipping') as TJSONObject;
      if LShipping.GetValue('first_name') <> nil then
        memTableOrdersfirst_name.AsString := LShipping.GetValue('first_name').Value;
      if LShipping.GetValue('last_name') <> nil then
        memTableOrderslast_name.AsString := LShipping.GetValue('last_name').Value;
      if LShipping.GetValue('address_1') <> nil then
        memTableOrdersaddress_1.AsString := LShipping.GetValue('address_1').Value;
      if LShipping.GetValue('city') <> nil then
        memTableOrderscity.AsString := LShipping.GetValue('city').Value;
    end;
    memTableOrders.Post;
  end;
end;

end.
