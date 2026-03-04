unit URemitarPedidosAgrupados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvExControls, JvLabel,
  JvDBControls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, JvDBLookup, Vcl.DBCtrls;

type
  TFormPedidosAProcesar = class(TFormABMBase)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    dbgPedidos: TDBGrid;
    QPedidos: TFDQuery;
    DSPedidos: TDataSource;
    QPedidosID: TIntegerField;
    QPedidosFECHA: TSQLTimeStampField;
    QPedidosCLIENTE: TStringField;
    QPedidosNOMBRE: TStringField;
    QPedidosRAZON_SOCIAL: TStringField;
    QPedidosID_SECTOR: TIntegerField;
    QPedidosNOMBRESECTOR: TStringField;
    btRemitar: TBitBtn;
    QPedidosDet: TFDQuery;
    DSPedidosDet: TDataSource;
    QPedidosDetID: TIntegerField;
    QPedidosDetIDCAB: TIntegerField;
    QPedidosDetCODIGO: TStringField;
    QPedidosDetCANTIDAD_PEDIDA: TFloatField;
    QPedidosDetCANTIDAD_UNID_PED: TFloatField;
    QPedidosDetCANTIDAD_UNID_ENTR: TFloatField;
    QPedidosDetCANTIDAD_PRESENTACION: TFloatField;
    QPedidosDetCANTIDAD_UNID_PENDIENTE: TFloatField;
    QPedidosDetPRECIO_UNITARIO: TFloatField;
    QStock: TFDQuery;
    QStockDESCUENTO: TFloatField;
    QStockCOSTO_TOTAL: TFloatField;
    QStockPRECIO: TFloatField;
    QStockCOSTO_EXENTO: TFloatField;
    QStockCOSTO_GRAVADO: TFloatField;
    QClientesPedidos: TFDQuery;
    QClientesPedidosCLIENTE: TStringField;
    QClientesPedidosNOMBRE: TStringField;
    QClientesPedidosRAZON_SOCIAL: TStringField;
    DSClientesPedidos: TDataSource;
    cbClientes: TJvDBLookupCombo;
    Label1: TLabel;
    mtPedidos: TFDMemTable;
    mtPedidosFecha: TDateField;
    mtPedidosCLIENTE: TStringField;
    mtPedidosID: TIntegerField;
    Label2: TLabel;
    Remitar: TAction;
    Facturar: TAction;
    btFacturar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RemitarExecute(Sender: TObject);
    procedure cbClientesClick(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    function HayCodigosDiferentes: boolean;
    procedure AgregaCabecera;
    procedure AgregaDetalle;
    procedure AgregaCabeceraFC;
    procedure AgregaDetalleFC;
    { Private declarations }
  public
    { Public declarations }
    Renglones,
    SucursalComprobante,
    IdComprobante,
    Deposito           :Integer;
  end;

var
  FormPedidosAProcesar: TFormPedidosAProcesar;

implementation

uses UDMain_FD, DMRemitos, URemitos, UBuscadorTipoCpbte, UBuscadorDepositos,
  UFactura_2, DMVenta;

{$R *.dfm}


procedure TFormPedidosAProcesar.AgregaCabecera;
begin
  with DatosRemitos DO
  begin
    CDSRtoCabLISTAPRECIO.Value       := DMMain_FD.ListaPorDefecto(SucursalComprobante);
    CDSRtoCabCODIGOSetText(CDSRtoCabCODIGO,QPedidosCLIENTE.AsString);
    CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,IntToStr(IdComprobante));
    CDSRtoCabIMPRESO.Value           := 'N';
    CDSRtoCabOBSERVACION1.Value      := '';
    CDSRtoCabOBSERVACION2.Value      := '';
    CDSRtoCabNROENTREGA.Value        := 1;
    CDSRtoCabOBSERVACION1.Value      := 'Nota de Pedido.:'+QPedidosID.AsString;
    CDSRtoCabOBSERVACION2.Value      := '';
    CDSRtoCabFECHA_HORA.AsDateTime   := Now;
    CDSRtoCabUSUARIO.Value           := DMMain_FD.UsuarioActivo;
  end;
end;

procedure TFormPedidosAProcesar.AgregaCabeceraFC;
begin
  with DatosVentas DO
  begin
    CDSVentaCabLISTAPRECIO.Value       :=  DMMain_FD.ListaPorDefecto(SucursalComprobante);
    CDSVentaCabCODIGOSetText(CDSVentaCabCODIGO,QPedidosCLIENTE.AsString);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IdComprobante));
    CDSVentaCabIMPRESO.Value           := 'N';
    CDSVentaCabOBSERVACION1.Value      := '';
    CDSVentaCabOBSERVACION2.Value      := '';
    CDSVentaCabNROENTREGA.Value        := 1;
    CDSVentaCabOBSERVACION1.Value      := 'Nota de Pedido.:'+QPedidosID.AsString;
    CDSVentaCabOBSERVACION2.Value      := '';

    CDSVentaCabFECHA_HORA.AsDateTime   := Now;
    CDSVentaCabUSUARIO.Value           := DMMain_FD.UsuarioActivo;
  end;
end;


procedure TFormPedidosAProcesar.AgregaDetalle;
Var UnitarioTotal,Precio,PrecioRto:Extended;
    Gravado,Exento,Iva,Total,Margen,Dscto,Can,Can_Unid,PFinal:Extended;
    Encontrado:Boolean;
begin
  inherited;
  with DatosRemitos DO
    begin
      Encontrado:= CDSRtoDet.Locate('CODIGOARTICULO',QPedidosDetCODIGO.Value,[]);
      if Encontrado=False then
        begin
          CDSRtoDet.Append;
          QStock.Close;
          QStock.ParamByName('Codigo').Value  := QPedidosDetCODIGO.Value;
          QStock.ParamByName('deposito').Value:= CDSRtoCabSUCURSAL.Value;
          QStock.ParamByName('Lista').Value   := CDSRtoCabLISTAPRECIO.Value;
          QStock.ParamByName('Sucursal').Value:= CDSRtoCabSUCURSAL.Value;
          QStock.Open;
         //aca asigno los numeros de remitos que voy haciendo

          CDSRtoDetCodigoArticuloSetText(CDSRtoDetCODIGOARTICULO,QPedidosDetCODIGO.AsString);
          CDSRtoDetCantidadSetText(CDSRtoDetCANTIDAD,QPedidosDetCANTIDAD_PEDIDA.AsString);
          CDSRtoDetDESGLOZAIVA.Value      := CDSRtoCabDESGLOZAIVA.Value;
          CDSRtoDetDEPOSITO.Value         := CDSRtoCabDEPOSITO.Value;
          CDSRtoDetCLASECPBTE.Value       := CDSRtoCabCLASECPBTE.Value;

          Precio                          := QStockPRECIO.AsFloat;

          CDSRtoDetCOSTO_GRAVADO.AsFloat  := QStockCOSTO_GRAVADO.AsFloat;
          CDSRtoDetCOSTO_EXENTO.AsFloat   := QStockCOSTO_EXENTO.AsFloat;
          CDSRtoDetCOSTO_TOTAL.AsFloat    := QStockCOSTO_TOTAL.AsFloat;

          DMMain_FD.CalculaPrecioVta_FD('N',-1, CDSRtoCabLISTAPRECIO.Value,CDSRtoCabSUCURSAL.Value,CDSRtoCabDEPOSITO.Value,
                                        CDSRtoDetCODIGOARTICULO.AsString,CDSRtoCabCODIGO.AsString,CDSRtoCabTIPOCPBTE.Value,
                                        CDSRtoDetCOTIZACION.AsFloat,
                                        1,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);

       // Verifico si el Comprobante calcual el Iva en los items
          if (FormRemitos.Calcula_iva_articulo=False) then
              Iva:=0;

          CDSRtoDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          CDSRtoDetUNITARIO_EXENTO.AsFloat :=Exento;
          CDSRtoDetUNITARIO_TOTAL.AsFloat  :=Total;
          CDSRtoDetIVA_UNITARIO.AsFloat    :=Iva;
          CDSRtoDetMARGEN.ASFloat          :=Margen;
          CDSRtoDetDESCUENTO.ASFloat       :=Dscto;

          UnitarioTotal := CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;

          if CDSRtoCabDESGLOZAIVA.Value='N' Then
            UnitarioTotal:=CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;

          CDSRtoDetUnitario_TotalSetText(CDSRtoDetUnitario_Total,FloatToStr(UnitarioTotal));

          QStock.Close;

          CDSRtoDet.Post;
        end;
    end;
end;

procedure TFormPedidosAProcesar.AgregaDetalleFC;
Var UnitarioTotal,Precio,PrecioRto:Extended;
    Gravado,Exento,Iva,Total,Margen,Dscto,Can,Can_Unid,PFinal:Extended;
    Encontrado:Boolean;
begin
  inherited;
  with DatosVentas DO
    begin
      Encontrado :=  CDSVentaDet.Locate('CODIGOARTICULO',QPedidosDetCODIGO.Value,[]);
      if Encontrado=False then
        begin
          CDSVentaDet.Append;
          QStock.Close;
          QStock.ParamByName('Codigo').Value  := QPedidosDetCODIGO.Value;
          QStock.ParamByName('deposito').Value:= CDSVentaCabDEPOSITO.Value;
          QStock.ParamByName('Lista').Value   := DMMain_FD.ListaPorDefecto(CDSVentaCabSUCURSAL.value);
          QStock.ParamByName('Sucursal').Value:= CDSVentaCabSUCURSAL.Value;
          QStock.Open;
         //aca asigno los numeros de remitos que voy haciendo

          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCODIGOARTICULO,QPedidosDetCODIGO.AsString);
          CDSVentaDetCantidadSetText(CDSVentaDetCANTIDAD,QPedidosDetCANTIDAD_PEDIDA.AsString);
          CDSVentaDetDESGLOZAIVA.Value      := CDSVentaCabDESGLOZAIVA.Value;
          CDSVentaDetDEPOSITO.Value         := CDSVentaCabDEPOSITO.Value;
          CDSVentaDetCLASECPBTE.Value       := CDSVentaCabCLASECPBTE.Value;

          Precio       := QStockPRECIO.AsFloat;


          CDSVentaDetCOSTO_GRAVADO.AsFloat     := QStockCOSTO_GRAVADO.AsFloat;
          CDSVentaDetCOSTO_EXENTO.AsFloat      := QStockCOSTO_EXENTO.AsFloat;
          CDSVentaDetCOSTO_TOTAL.AsFloat       := QStockCOSTO_TOTAL.AsFloat;

          DMMain_FD.CalculaPrecioVta_FD('N', -1, CDSVentaCabLISTAPRECIO.Value,CDSVentaCabSUCURSAL.Value,CDSVentaCabDEPOSITO.Value,
                                        CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.Value,
                                        CDSVentaDetCOTIZACION.AsFloat,
                                        1,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);

       // Verifico si el Comprobante calcual el Iva en los items
          if (FormCpbte_2.Calcula_iva_articulo=False) then
              Iva:=0;

          CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          CDSVentaDetUNITARIO_EXENTO.AsFloat :=Exento;
          CDSVentaDetUNITARIO_TOTAL.AsFloat  :=Total;
          CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
          CDSVentaDetMARGEN.ASFloat          :=Margen;
          CDSVentaDetDESCUENTO.ASFloat       :=Dscto;

          UnitarioTotal := CDSVentaDetUNITARIO_GRAVADO.AsFloat + CDSVentaDetUNITARIO_EXENTO.AsFloat;

          if CDSVentaCabDESGLOZAIVA.Value='N' Then
            UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUNITARIO_EXENTO.AsFloat;

          CDSVentaDetUnitario_TotalSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

          QStock.Close;

          CDSVentaDet.Post;
        end;
    end;
end;




function TFormPedidosAProcesar.HayCodigosDiferentes:boolean;
var
  I: Integer;
codigo:String;
begin
  codigo:='*';Result:=False;
  for I := 0 to dbgPedidos.SelectedRows.Count - 1 do
    begin
      {$IF CompilerVersion < 24}
        dbgPedidos.DataSource.DataSet.GotoBookmark(Pointer(dbgPedidos.SelectedRows.Items[i]));
      {$ELSE}
        dbgPedidos.DataSource.DataSet.GotoBookmark((dbgPedidos.SelectedRows.Items[i]));
      {$ENDIF}


      if codigo='*' then
        codigo:=dbgPedidos.DataSource.DataSet.FieldByName('Codigo').Value;
      if codigo<>dbgPedidos.DataSource.DataSet.FieldByName('Codigo').Value then
        Result:=True;
    end;
end;

procedure TFormPedidosAProcesar.RemitarExecute(Sender: TObject);
var i:Integer;
codigo:String;
Iniciado:Boolean;
ListaPedidos:string;
begin
  inherited;
  ListaPedidos:='';
  if dbgPedidos.SelectedRows.Count>0  then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
      FormBuscadorTipoCpbte.TipoCpbte1 := 'RE';
      FormBuscadorTipoCpbte.TipoCpbte2 := '';
      FormBuscadorTipoCpbte.TipoCpbte3 := '';
      FormBuscadorTipoCpbte.CV         := 'V';
      FormBuscadorTipoCpbte.Sucursal   := DMMain_FD.SucursalPorDef;
      FormBuscadorTipoCpbte.ShowModal;
      Renglones           := FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
      SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
        begin
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos       := TFormBuscadorDepositos.Create(Application);
          FormBuscadorDepositos.Deposito:= DMMain_FD.DepositoPorSucursal(sucursalComprobante);
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              Deposito    :=FormBuscadorDepositos.Deposito;

              if Not(Assigned(FormRemitos)) Then
                FormRemitos:=TFormRemitos.Create(self);

              FormRemitos.SucursalPorDefecto:=SucursalComprobante;
              FormRemitos.DepositoPorDefecto:=Deposito;

              Iniciado:=False;
              mtPedidos.Close;
              mtPedidos.Open;
              mtPedidos.EmptyDataSet;
             // FormRemitos.Visible:=False;
              for I := 0 to dbgPedidos.SelectedRows.Count - 1 do
                begin
                  {$IF CompilerVersion < 24}
                    dbgPedidos.DataSource.DataSet.GotoBookmark(Pointer(dbgPedidos.SelectedRows.Items[i]));
                  {$ELSE}
                    dbgPedidos.DataSource.DataSet.GotoBookmark((dbgPedidos.SelectedRows.Items[i]));
                  {$ENDIF}

                   if Iniciado=False Then
                     begin
                       Codigo   := QPedidosCLIENTE.AsString;
                       FormRemitos.Agregar.Execute;
                       AgregaCabecera;
                       Iniciado  :=True;
                    end;

                   //************  Acumuluo en una Memory Table los remitos ....***
                   // Rtos           := TRtos.Create;
                   mtPedidos.Append;
                   mtPedidosID.Value         := QPedidosID.Value;//Rtos.Id_Rto
                   mtPedidosCLIENTE.AsString := QPedidosCLIENTE.AsString;//Rtos.Id_Fac
                   mtPedidosFecha.AsDateTime := QPedidosFECHA.AsDateTime;//Rtos.NroFact
                   mtPedidos.Post;

                   if ListaPedidos='' then
                     ListaPedidos:=QPedidosID.AsString
                   else
                     ListaPedidos:=ListaPedidos+'/'+QPedidosID.AsString;

                   if (Codigo<>QPedidosCLIENTE.AsString) and (Iniciado=True) Then
                     begin
                       FormRemitos.Cancelar.Execute;
                       FormRemitos.Close;
                       ShowMessage(' Hay remitos, de clientes diferentes selecionados...');
                       Exit;
                     end;
                   QPedidosDet.Close;
                   QPedidosDet.ParamByName('id').Value:=QPedidosID.Value;
                   QPedidosDet.Open;
                   QPedidosDet.First;
                   while Not(QPedidosDet.Eof) Do // Ingreso el detalle
                     begin
                       if (QPedidosDetCANTIDAD_PEDIDA.AsFloat>0)   then
                         begin
                           AgregaDetalle;
                         end;
                       QPedidosDet.Next;
                     end;
                end;
              DatosRemitos.CDSRtoCabOBSERVACION1.Value:=ListaPedidos;
            end;
          mtPedidos.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\PedidosRemitados.xml');
          mtPedidos.Close;
          if FormRemitos<>nil then
            FormRemitos.Show;
        end;
    end;
end;

procedure TFormPedidosAProcesar.BuscarExecute(Sender: TObject);
begin
  inherited;
  QPedidos.Close;
  QPedidos.Open;
  QClientesPedidos.Close;
  QClientesPedidos.Open;
end;

procedure TFormPedidosAProcesar.cbClientesClick(Sender: TObject);
begin
  inherited;
  QPedidos.Filtered:=False;
  if cbClientes.KeyValue<>'******' then
    begin
      QPedidos.Filter  := 'CLIENTE='+QuotedStr(cbClientes.KeyValue);
      QPedidos.Filtered:= True;
    end;

end;

procedure TFormPedidosAProcesar.FacturarExecute(Sender: TObject);
var i :Integer;
codigo  :String;
Iniciado:Boolean;
ListaPedidos:String;
begin
  inherited;
  ListaPedidos:='';
  if dbgPedidos.SelectedRows.Count>0  then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
      FormBuscadorTipoCpbte.TipoCpbte1 := 'FC';
      FormBuscadorTipoCpbte.TipoCpbte2 := '';
      FormBuscadorTipoCpbte.TipoCpbte3 := '';
      FormBuscadorTipoCpbte.CV         := 'V';
      FormBuscadorTipoCpbte.Sucursal   := DMMain_FD.SucursalPorDef;
      FormBuscadorTipoCpbte.ShowModal;
      Renglones           := FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
      SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
        begin
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos       := TFormBuscadorDepositos.Create(Application);
          FormBuscadorDepositos.Deposito:= DMMain_FD.DepositoPorSucursal(sucursalComprobante);
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              Deposito    :=FormBuscadorDepositos.Deposito;

              if Not(Assigned(FormCpbte_2)) Then
                FormCpbte_2:=TFormCpbte_2.Create(self);

              FormCpbte_2.SucursalPorDefecto:=SucursalComprobante;
              FormCpbte_2.DepositoPorDefecto:=Deposito;

              Iniciado:=False;
              mtPedidos.Close;
              mtPedidos.Open;
              mtPedidos.EmptyDataSet;
             // FormRemitos.Visible:=False;
              for I := 0 to dbgPedidos.SelectedRows.Count - 1 do
                begin
                  {$IF CompilerVersion < 24}
                    dbgPedidos.DataSource.DataSet.GotoBookmark(Pointer(dbgPedidos.SelectedRows.Items[i]));
                  {$ELSE}
                    dbgPedidos.DataSource.DataSet.GotoBookmark((dbgPedidos.SelectedRows.Items[i]));
                  {$ENDIF}

                   if Iniciado=False Then
                     begin
                       Codigo   := QPedidosCLIENTE.AsString;
                       FormCpbte_2.Agregar.Execute;
                       AgregaCabeceraFC;
                       Iniciado  :=True;
                    end;
                   if ListaPedidos='' then
                     ListaPedidos:=QPedidosID.AsString
                   else
                     ListaPedidos:=ListaPedidos+'/'+QPedidosID.AsString;
                   //************  Acumuluo en una Memory Table los remitos ....***
                   // Rtos           := TRtos.Create;
                   mtPedidos.Append;
                   mtPedidosID.Value         := QPedidosID.Value;//Rtos.Id_Rto
                   mtPedidosCLIENTE.AsString := QPedidosCLIENTE.AsString;//Rtos.Id_Fac
                   mtPedidosFecha.AsDateTime := QPedidosFECHA.AsDateTime;//Rtos.NroFact
                   mtPedidos.Post;

                   if (Codigo<>QPedidosCLIENTE.AsString) and (Iniciado=True) Then
                     begin
                       FormCpbte_2.Cancelar.Execute;
                       FormCpbte_2.Close;
                       ShowMessage(' Hay remitos, de clientes diferentes selecionados...');
                       Exit;
                     end;
                   QPedidosDet.Close;
                   QPedidosDet.ParamByName('id').Value:=QPedidosID.Value;
                   QPedidosDet.Open;
                   QPedidosDet.First;
                   while Not(QPedidosDet.Eof) Do // Ingreso el detalle
                     begin
                       if (QPedidosDetCANTIDAD_PEDIDA.AsFloat>0)   then
                         begin
                           AgregaDetalleFC;
                         end;
                       QPedidosDet.Next;
                     end;
                end;
              DatosVentas.CDSVentaCabOBSERVACION1.Value      := 'N.de Pedido.:'+ListaPedidos;
            end;
          mtPedidos.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\PedidosRemitados.xml');
          mtPedidos.Close;
          if FormCpbte_2<>nil then
            FormCpbte_2.Show;
        end;
    end;
end;


procedure TFormPedidosAProcesar.FormActivate(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormPedidosAProcesar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormPedidosAProcesar.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPedidosAProcesar:=nil;
end;

procedure TFormPedidosAProcesar.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.
