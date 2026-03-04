unit UMenu;
// Lar .....
{
  Una forma de cargar todos los campos como cadenas es usar la propiedad extendida IMEX en su cadena de conexión de la siguiente manera:

  Provider=Microsoft.ACE.OLEDB.12.0;Data Source=c:\myFolder\myExcel2007file.xlsx;
  Extended Properties="Excel 12.0 Xml;HDR=YES;IMEX=1";

  Establecer IMEX en 1 hace que ADO trate todas las columnas como texto, como se indica en el siguiente ConnectionStrings page:

  Use this one [IMEX=1] when you want to treat all data in the file as text,
  overriding Excels column type “General” to guess what type of data is
  in the column.

  Puede encontrar más información sobre la propiedad IMEX en este SO question.
}

{
procedure TForm1.SelectAllBtnClick(Sender: TObject);
var i: integer;
begin
  DBGrid1.SelectedRows.Clear;
  OrdersDataSource.DataSet.First;
  for i := 0 to OrdersDataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected := true;
    OrdersDataSource.DataSet.Next;
  end;
end;

}

{ TMS FNCDatGrdi
El estiramiento es diferente del ajuste de tamaño automático. Si habilita el estiramiento y
establece "stretchall" en "false", solo se ajustará el ancho de la columna según la propiedad "StretchColumn".
Al llamar a "AutoSizeColumns", esto no tendrá ningún efecto, ya que el estiramiento está habilitado.
El estiramiento toma el ancho disponible de la cuadrícula, lo divide por el número de columnas y
establece cada columna con el resultado de esa división. Si desea ajustar el tamaño
de la columna automáticamente, simplemente establezca "ColumnSize.Stretch" en "false"
y ejecute "AutoSizeColumns", que ajustará automáticamente el tamaño de todas las columnas según el contenido.
}

{ ***************************************************** }
// Util para guardar las preferencias del usuario de tu programa cuando cambia de tamaño las columnas de un DBGrid y no quieres que se pierdan esos valores al salir de tu aplicación.
// Los valores serán grabados en el Registro de Windows.
//
// Basta con usar estas dos funciones:
//
// Procedure TForm1.SaveColPos(Const DbGrid:TDBgrid);
// Var
// Registro :TRegistry;
// F        :Byte;
// Begin
//   Registro:=TRegistry.Create;
//   Registro.OpenKey('\Software\NombreDelPrograma\Grids',True);
//   For F:=0 To DbGrid.Columns.Count-1 Do
//   Registro.WriteInteger(DbGrid.Name+'['+IntToStr(F)+']',DbGrid.Columns[F].Width);
//   Registro.Free;
// End;
//
// Procedure TForm1.LoadColPos(Var DbGrid:TDBgrid);
// Var
// Registro :TRegistry;
// F        :Byte;
// Begin
//   Registro:=TRegistry.Create;
//   Registro.OpenKey('\Software\NombreDelPrograma\Grids',False);
//   If Registro.ValueExists(DbGrid.Name+'[0]') Then
//   For F:=0 To DbGrid.Columns.Count-1 Do
//     DbGrid.Columns[F].Width:=Registro.ReadInteger(DbGrid.Name+'['+IntToStr(F)+']');
//   Registro.Free;
// End;
//
// a las que sólo has de pasarle como parámetro el nombre del DBGrid que quieres grabar/cargar.
//
// Primero, añade Registry en el uses de tu form
// Luego, declara las dos funciones en tu form, en la parte private, por ejemplo:
//
//
// private
{ Private declarations }
// Procedure SaveColPos(Const DbGrid:TDBgrid);
// Procedure LoadColPos(Var DbGrid:TDBgrid);



// Y ahora, utiliza el evento OnCreate de la form para cargar el ancho de las columnas:


// procedure TForm1.FormCreate(Sender: TObject);
// begin
//   LoadColPos(DBGrid1);
// end;

// Y para grabar las columnas antes de salir de tu aplicacion, usa el evento OnDestroy de la Form:

// procedure TForm1.FormDestroy(Sender: TObject);
// begin
//   SaveColPos(DBGrid1);
// end;

// Como ultimo consejo, podrías cambiar las lineas:

// Registro.OpenKey('\Software\NombreDelPrograma\Grids',False);

// por éstas otras:


// Registro.OpenKey( '\Software\'+
// ExtractFileName(Application.Exename)+
// '\Grids',
// TRUE
// );
// ******************************************************************************
 { *** ajuste de ancho de columnas ****************
  **************************************************
 procedure SetGridColumnWidths(aDBGrid: TDBgrid);
const
  DEFBORDER = 10;
var
  temp, n: Integer;
  lmax: array [0..30] of Integer;
begin
  with aDBGrid do
  begin
    DataSource.DataSet.DisableControls;
    try
      Canvas.Font := Font;
      for n := 0 to Columns.Count - 1 do
        lmax[n] := Canvas.TextWidth(Fields[n].FieldName) + DEFBORDER;
      DataSource.DataSet.First;
      while not DataSource.DataSet.EOF do
      begin
        for n := 0 to Columns.Count - 1 do
        begin
          temp := Canvas.TextWidth(trim(Columns[n].Field.DisplayText)) + DEFBORDER;
          if temp > lmax[n] then lmax[n] := temp;
        end;
        DataSource.DataSet.Next;
      end;
      DataSource.DataSet.First;
      for n := 0 to Columns.Count - 1 do
        if lmax[n] > 0 then
          Columns[n].Width := lmax[n];
    finally
      DataSource.DataSet.EnableControls;
    end;
  end;
end;
 }

// para el uso en DBGrid, ordenar por columna
// try
//   Campo := Field.FieldName;
//   with dbgSaldos.DataSource.DataSet as TClientDataSet do
//   if IndexFieldNames <> Campo then
//     IndexFieldNames := Campo // Ascendente
//   else
//     begin
//       AddIndex(Campo, Campo, [], Campo); // Descendente
//       IndexName := Campo;
//     end;
// except // Para que no salte una excepción si la columna es un campo calculado.
// end;
// *******************************************************************************************************

// Exportar a Excel con cxPivotGrid
// en el uses : cxGridExportLink;
//
// if VirtualUI.Active then
//   VirtualUI.StdDialogs:=False;
//
// IF NOT (CDSPagos.IsEmpty) THEN
//   BEGIN
//     SaveDialog.FileName:='Pagos';
//     SaveDialog.DefaultExt:='XLS';
//     if SaveDialog.FileName<>'' then
//       begin
//         if VirtualUI.Active then
//           cxExportPivotGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxDBPivotGrid1)
//         else
//           cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
//
//         if VirtualUI.Active then
//           begin
//             VirtualUI.StdDialogs:=False;
//             VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
//           end;
//       end;
//   END
// ELSE
//   ShowMessage('No hay datos visibles');
// *******************************************************************************************************

// Exportar en cxGrid  usar :cxGridExportLink
//
// cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid1);

// cxGridDBTableView1.ViewData.Expand(True); <<<<<<<<  para expandir
//
{ Ordenar Grilla con Firedac
  procedure TfrmCatalogoAlmacen.dbgAlmacenTitleClick(Column: TColumn);
  begin
    if qryAlmacen.IndexFieldNames = Column.FieldName then
      qryAlmacen.IndexFieldNames := Column.FieldName + ':DN'
    Else
      qryAlmacen.IndexFieldNames := Column.FieldName;
  end;
}
// ************************** para cambiar en todo los form *********************
{
  Var
  formulario: Tform;
  f,c: integer; // Contadores de forms y sus componentes
  Begin
    For F := 0 To Application.ComponentCount -1 Do
      If Application.Components[F] Is TForm Then
        Begin
          Formulario := TForm(Application.Components[F]);
          For C := 0 To Formulario.ComponentCount -1 Do
            Begin
              If Formulario.Components[C] Is TRxDBLookupCombo Then
                Begin
                  TRxDBLookupCombo(Formulario.Components[C]).AutoSize := False;  // Cambiar dos propiedades en todos los componentes de la clase TRxDBLookupCombo
                  TRxDBLookupCombo(Formulario.Components[C]).Height := 21;
                End;
              If Formulario.Components[C] Is TPageControl Then
              TPageControl(Formulario.Components[C]).PageIndex := 0;            // Por defecto visualizar siempre la primer pestaña
            End;
        End;


  procedure TDMTT.DataModuleCreate(Sender: TObject);
  var i: integer;
  begin
    for i := 0 to ComponentCount-1 do
      if Components[i] is TDataSetProvider then
       (Components[i] as TDataSetProvider).Options := (Components[i] as TDataSetProvider).Options - [poUseQuoteChar];
  end;


  ////// Guarda estado de un cxGrid las Columnas
  cxGrid3DBTableView1.StoreToIniFile(ExtractFilePath(Application.ExeName) + '_grillaPresuIncidencias', true, [gsoUseFilter, gsoUseSummary]);
  cxGrid3DBTableView1.RestoreFromIniFile(ExtractFilePath(Application.ExeName) + '_grillaPresuIncidencias', true, false, [gsoUseFilter, gsoUseSummary]);
  ////////////
 }

/// /////////////////////////////
// Rutina para llenar TreeView desde Action List
{
  function TFMenu.EncontrarNo(const aNome: string): TTreeNode;
  var
    i: Integer;
  begin
    Result := nil;
    with TreeView1.Items do
    begin
      for i := 0 to Pred(Count) do
      if Item[i].Text=aNome then
        begin
          Result := Item[i];
          Break;
        end;
    end;
  end;

  procedure TFMenu.Button1Click(Sender: TObject);
  var
    i:  Integer;
    no: TTreeNode;
    ac: TAction;
    Orden:Integer;
  begin
    Orden:=1;
    for i := 0 to Acciones.ActionCount-1 do
      begin
        ac := TAction(Acciones.Actions[i]);
        with TreeView1.Items do
          begin
            no := EncontrarNo(ac.Category);
            if no=nil then
              begin
                no := Add(GetFirstNode, ac.Category);
                Orden:=1;
              end;
            AddChild(no,IntToStr(Orden)+'-'+ac.Caption);
            Orden:=Orden+1;
          end;
      end;
  end;
}
/// ////////////////////////////////////////////////////

interface

uses
  Windows, Db, Menus, SqlExpr, Forms,
  Dialogs, ExtDlgs, ImgList, Controls, StdActns,
  Classes, ActnList, ComCtrls, IniFiles, SysUtils, Graphics,
  Variants, sec_adm_central, users, dxSkinsCore, cxPC,
  Data.FMTBcd, tcDataset, tcDBXDriver,
  Datasnap.Provider, Datasnap.DBClient, Vcl.ExtCtrls, JvAppEvent,
  JvComponentBase,  JvDesktopAlert, cxClasses, dxDockControl,
  JvBaseDlg, JvCalc, JvBackgrounds, System.Actions, Vcl.StdCtrls, JvPanel,
  JvExExtCtrls, JvExtComponent, Vcl.DBCtrls, JvExComCtrls,
  JvMonthCalendar, JvButton, JvNavigationPane, JvPageList, dxDockPanel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan, JvGradientHeaderPanel, Vcl.ActnMenus, Vcl.Themes,
  JvExControls, JvGIF, Acceso, Vcl.AppEvnts,
  DateUtils, FEAFIPLib_TLB, System.UITypes,
  FireDAC.Stan.Param,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvMenuStylers,
  VaControls,System.StrUtils,
  AdvToolBar, AdvShapeButton, AdvGlowButton, AdvAppStyler, AdvToolBarStylers,
  AdvPreviewMenu, AdvPreviewMenuStylers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, JvLinkLabel,
  tcFireDACDriver, System.ImageList, AdvAlertWindow,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Phys,
  FireDAC.Moni.RemoteClient, FireDAC.Moni.Custom, FireDAC.Moni.FlatFile,
  Vcl.WinXPanels, AdvPanel, AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
  Vcl.RibbonLunaStyleActnCtrls, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCRibbon,
  VCL.TMSFNCPageControl, VCL.TMSFNCTabSet,
  VCL.TMSFNCToolBar, VCL.TMSFNCCustomControl, ToolPanels, AdvBadge,
  VCL.TMSFNCPDFLib, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  AdvSearchList, AdvSearchEdit, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, AdvMenus,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, VCL.TMSFNCHTMLText, VCL.TMSFNCPopupMenu,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCBitmapContainer, dxCore, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon ;

  type
    TFMenu = class(TForm)
    Acciones: TActionList;
    MenuPrincipal: TMainMenu;
    Proveedores: TAction;
    Clientes: TAction;
    ArticulosDatos: TAction;
    FacturasVtaCC: TAction;
    FacturasCtdo: TAction;
    Chequeras: TAction;
    TCredito: TAction;
    Bancos: TAction;
    CuentasCajaBanco: TAction;
    FacturaCompraCC: TAction;
    Presupuestos: TAction;
    ReciboCobranza: TAction;
    FacturaCompraContado: TAction;
    AplicacionesCtaCteVta: TAction;
    CtaCteClientes: TAction;
    FormaPago: TAction;
    OrdenPago: TAction;
    Marcas: TAction;
    Rubros: TAction;
    SubRubros: TAction;
    CtaCteProveedores: TAction;
    Cerrar: TAction;
    AplicacionesCtaCteCompra: TAction;
    SaldoDeudaClientes: TAction;
    VerificadorCtacte: TAction;
    SaldoDeudaProveedores: TAction;
    LibroIvaCompra: TAction;
    LibroIvaVenta: TAction;
    PlanilladeChe3: TAction;
    CajaConsulta: TAction;
    ActualizacionPrecios: TAction;
    ListaPrecioPersonalizada: TAction;
    AjustesCCProveedores: TAction;
    AjustesCCClientes: TAction;
    LstRetenciones: TAction;
    Depositos: TAction;
    Empresa: TAction;
    OpenPictureDialog1: TOpenPictureDialog;
    AlicuotaIva: TAction;
    Inscripcion: TAction;
    PercepcionIva: TAction;
    PercepcionIB: TAction;
    ConsultaStock: TAction;
    Comprobantes: TAction;
    EgresoCaja: TAction;
    RubroGastos: TAction;
    CuentasGastos: TAction;
    Localidades: TAction;
    WindowCascade1: TWindowCascade;
    WindowClose1: TWindowClose;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowCloseAll: TAction;
    WindowsRestaurar: TAction;
    PlanGastos: TAction;
    CajaApertura: TAction;
    OpercionesRealizadas: TAction;
    Sucursales: TAction;
    Transferencia: TAction;
    ControlNumeracion: TAction;
    ControladorFcVta: TAction;
    GraficoVentas: TAction;
    Rentabilidad: TAction;
    Vta_a_ClienteProducto: TAction;
    AnalisiCreditoClientes: TAction;
    AjustesStock: TAction;
    ControlPagoClientes: TAction;
    TRetenciones: TAction;
    ArticulosExentosVendidos: TAction;
    AcercaDe: TAction;
    Remitos: TAction;
    AcAgenda: TAction;
    Usuarios: TAction;
    Login: TAction;
    CondicionesPago: TAction;
    Provincias: TAction;
    Zonas: TAction;
    ConceptosBancarios: TAction;
    Ing_EgrBancarios: TAction;
    DepositosBancarios: TAction;
    TrasnfCheques: TAction;
    ConciliacionBco: TAction;
    TransfEfectivo: TAction;
    ControladorFcCompra: TAction;
    Cargo: TAction;
    Categoria: TAction;
    Personal: TAction;
    AdelantoSueldo: TAction;
    SaldosGastos: TAction;
    CobroChequesACaja: TAction;
    Monedas: TAction;
    Opciones: TAction;
    IngresoCaja: TAction;
    ChequesEmitidos: TAction;
    Existencias: TAction;
    CierresFiscales: TAction;
    CambiarPassword: TAction;
    ActualizacionPrecios_2: TAction;
    ComprobantesEmitidosPorCliente: TAction;
    FacturarRemitos: TAction;
    ConfiguraLocal: TAction;
    ListarPresupuestos: TAction;
    UnidadesStock: TAction;
    ControlCaja: TAction;
    ControlCpbteNoImpresos: TAction;
    CtaCtePersonal: TAction;
    IngresosPersonal: TAction;
    LiquidacionComisiones: TAction;
    ListaCheEmitidos: TAction;
    AsignarVendedores: TAction;
    FacPorVendedor: TAction;
    ControlAperturaCaja: TAction;
    SaldoClientesMensual: TAction;
    ManejaTriggers: TAction;
    FacturarRtosAgrupados: TAction;
    SaldoProveedoresMensual: TAction;
    ListadoArtGravIB: TAction;
    AnularChe: TAction;
    ListaPercepciones: TAction;
    ABMFacturaModelo: TAction;
    FacturarModelos: TAction;
    GruposModelo: TAction;
    OrdenDeCompra: TAction;
    AutorizaOrdenCompra: TAction;
    RecepcionOCompra: TAction;
    ImpresionOrdenCompra: TAction;
    PreciosEspecialesClientes: TAction;
    PonerStockCero: TAction;
    AnalisisIngresoEgreso: TAction;
    RemplazoCheques: TAction;
    ControlDepositosStk: TAction;
    RearmarMovimientosdeBanco: TAction;
    CorrectorCeroCtaCte: TAction;
    CorrigeFechaFcVtaDet: TAction;
    CorrigeFechaFcCompDet: TAction;
    RelacionCompraVenta: TAction;
    CostosFijos: TAction;
    ArticulosProduccion: TAction;
    OrdenProduccion: TAction;
    OProducionProceso: TAction;
    OProducionInicadas: TAction;
    CategoriaProductos: TAction;
    Productos: TAction;
    OrdenTrabajoSup: TAction;
    OrdenTrabajoPendientes: TAction;
    Transportes: TAction;
    OrdenCompraNuevas: TAction;
    OrdenCompraRealizadas: TAction;
    ListadoCpbtEmitidos: TAction;
    GraficoIntegrado: TAction;
    ListadoRecibos: TAction;
    GraficoAnalisisCobanza: TAction;
    ListadoCompraPorRubro: TAction;
    PlanRubo_Subrubro_stock: TAction;
    LstOrdenTrabajoPorPuntos: TAction;
    LstOrdenTrabajoArchivadas: TAction;
    LstDetalleOrdenTrabajoPorCliente: TAction;
    RubroProvee: TAction;
    ModificaPrecios: TMenuItem;
    PermisosHabiltados: TMenuItem;
    ModificarCaja: TMenuItem;
    ListadoMovIngCaja: TAction;
    ExportarFcCompra: TAction;
    ImportarFcCompra: TAction;
    AsignaCodigoBarra: TAction;
    AsignaCajaUsuario: TAction;
    ExportaStock: TAction;
    ImportarStock: TAction;
    ExportarFcVta: TAction;
    ImportarFcVta: TAction;
    ImportarClientes: TAction;
    ExportarClientes: TAction;
    ImportarProveedores: TAction;
    ExportarProveedores: TAction;
    NotaPedido: TAction;
    AsignarStockProveedor: TAction;
    DetallePedido: TAction;
    MovTransDeposito: TAction;
    CreacionListasDePrecios: TAction;
    VercostosenlaVta: TMenuItem;
    ListadoOPago: TAction;
    DetalleOTrabajoEmplados: TAction;
    ModificaLineaOTrabajo: TMenuItem;
    BorraLineaOTrabajo: TMenuItem;
    ControlUnidadesDeStock: TAction;
    ListadoDepositosBancarios: TAction;
    ComparativaPrecios: TAction;
    LogFile: TAction;
    ReemplazoChe3: TAction;
    ReArmarMovStock: TAction;
    ListadoMovStock: TAction;
    TomaInventario: TAction;
    OrdenarMovStock: TAction;
    ConsultaXSerie: TAction;
    ListadoPoliticaPrecios: TAction;
    Calculadora: TAction;
    SerieMayuscul: TAction;
    VerStockComprometido: TAction;
    ContorlFcDet_MovStock: TAction;
    PermutaSeries: TAction;
    CreacionPoliticaComisiones: TAction;
    LiquidacionComisionesPorArticulo: TAction;
    RecepcionMercaderia: TAction;
    ResumenMovStock: TAction;
    ListadoCostoVta: TAction;
    ListadoVtaRubroVendedor: TAction;
    ListadoSaldosEmpleados: TAction;
    SaldosIngresos: TAction;
    ControlMinMaxStock: TAction;
    JuridiccionesIIBB: TAction;
    RegimenesRetencionIva: TAction;
    ControlCodigosSeries: TAction;
    ReasignaCtasGastosIngreso: TAction;
    AsignaComprobantes: TAction;
    ModificaListaPrecio: TMenuItem;
    TasaRetGanancia: TAction;
    ListadoRetGan: TAction;
    ModificaVendedor: TMenuItem;
    AplicaDescuentos: TMenuItem;
    AnulacionOPago: TAction;
    MarcarCheReemplazado: TAction;
    ListadoTransBco: TAction;
    ListadoGastosBco: TAction;
    ListadoDebitos: TAction;
    AnuacionRecibo: TAction;
    ListadoArticulosVendidos: TAction;
    ListadoVtaClienteSucAsiganda: TAction;
    TasaRetIIBB: TAction;
    AjustesSeries: TAction;
    ListadoRetencioIB_pagos: TAction;
    ListadoMovTC: TAction;
    ListadoPercep_IB_FcVta: TAction;
    ListadoTxStockPendientes: TAction;
    ListadoFcCompraPorProveedor: TAction;
    AnulacionAdelantoSueldo: TAction;
    AnulacionDepBanco: TAction;
    ListadoOperacionesClientes: TAction;
    ControlIntegridadCtaCteVta: TAction;
    TarjetaCreditoCompra: TAction;
    ControlIntegridadCtaCteCompra: TAction;
    Obras: TAction;
    RemitosObra: TAction;
    PadronProveedoresRentas: TAction;
    DetalleObras: TAction;
    ListaPreciosProveedores: TAction;
    ImportarClientesExcel: TAction;
    ModificaDeposito: TMenuItem;
    ConsultaPreciosProveedores: TAction;
    TasaRet_Perc: TAction;
    ModificaSucursal: TMenuItem;
    TablaDePrecios: TAction;
    ABMTasasRet_Perc_IIBB: TAction;
    RMAEnvio: TAction;
    ModificaCreditoClientes: TMenuItem;
    VerCostosFichaStock: TMenuItem;
    ImportarStockExcel: TAction;
    Etiquetas: TAction;
    ListadoRMA: TAction;
    RMARecep: TAction;
    TicketFactura: TAction;
    NPedidoCliente: TAction;
    ListadoPendienteNP: TAction;
    LiquidacionTC: TAction;
    ConciliarCheuqes: TAction;
    ResumenTC: TAction;
    VtaRubroSubRubro: TAction;
    UsuarioAdministrador: TMenuItem;
    UsersReg1: TUsersReg;
    SecurityAdmCentral1: TSecurityAdmCentral;
    JvBackground: TJvBackground;
    ImportarProveeExcel: TAction;
    ListadoGastosTC: TAction;
    FiltroCpbte_CC: TAction;
    ActualizaCostoVta_excel: TAction;
    FiltroCpbte_cc_compra: TAction;
    IngAjusteCCExcel: TAction;
    Venderpordebajodecosto: TMenuItem;
    ListadoRelacionCompraVenta: TAction;
    ListadoVta_clienteRubroSub: TAction;
    ListadoCpbteGastosBanco: TAction;
    ABPreciosSombra: TAction;
    CambioPrecioSombra: TAction;
    AsignaRcCobrado: TAction;
    ListadoRecibosCobrador: TAction;
    PedidosSinfacturar: TAction;
    FlujoFondos: TAction;
    ListadoClientesCondVenta: TAction;
    ListadoFacVencida: TAction;
    ListadoVtaTotalPorVendedor: TAction;
    ComposicionRecibo: TAction;
    SaldoClientesMensual_AlDia: TAction;
    ABCClientes: TAction;
    Alias: TAction;
    ListadoCpbtePorTipo: TAction;
    Presentacion: TAction;
    ABMClientes: TMenuItem;
    ABMArticulos: TMenuItem;
    ListadoChe3DepositadosAntes: TAction;
    RtosPendientes: TAction;
    PersonalAcciones: TAction;
    ListadoConsumTC: TAction;
    TransInterbancarias: TAction;
    ReemplazoValoresIng: TAction;
    AsignaLoteTC: TAction;
    Plantilla: TAction;
    AbonadoGrupo: TAction;
    ListadoAjustesStock: TAction;
    AbonadoGrilla: TAction;
    AbonosGeneraCuopnes: TAction;
    DescuentosUsuarios: TAction;
    AsignarListaPrecioUsuario: TAction;
    PagosAbonos: TAction;
    AbonoCupon: TAction;
    JvCalculator: TJvCalculator;
    AdminTareas: TAction;
    PresupuestoOCDescuentos: TAction;
    PresupuestoOCRecargos: TAction;
    PresupuestoOC: TAction;
    BorrarRecibosdeCobro: TMenuItem;
    PermitirCargaFacVtaManual: TMenuItem;
    ListadoVtasvsCobros: TAction;
    ControlRetenciones: TAction;
    ControlTC: TAction;
    CorrigeNroRec_enMovCaja: TAction;
    DetallesNc_Rc: TAction;
    AnularFacturasdeVta: TMenuItem;
    ImportarMarcasExcel: TAction;
    BorrarComprobantesdeCompra: TMenuItem;
    AnularRemitos: TMenuItem;
    BorrarRemitos: TMenuItem;
    ListadoCpbteCompraPortipo: TAction;
    CategoriasClientes: TAction;
    BMIncidenciasClientes: TMenuItem;
    NotasVentas: TAction;
    BMdeNotasdePediodeClientes: TMenuItem;
    DepositoUsuario: TAction;
    ListadoConsumosObras: TAction;
    Notas: TAction;
    UsuariosAutorizan: TAction;
    ListadoTxdeCaja: TAction;
    ListadoNVPendientes: TAction;
    ListadoAcreditacionesTC: TAction;
    ModificaDetalleStock: TMenuItem;
    RtosAFiscal: TAction;
    ListadoStock: TAction;
    ControlErroresChe3: TAction;
    PlantillaGrilla: TAction;
    ListadoStockGeneral: TAction;
    ListadoNPedidosCompra: TAction;
    NotaTransferencia: TAction;
    GeoPosicionClientes: TAction;
    SaldoDeudaCliente_uno: TAction;
    NotaPedidoRevision: TAction;
    GoogleMap: TAction;
    VtaDiariaVendedor: TAction;
    ControlCheques3: TAction;
    CheEmitidosDetalle: TAction;
    UsuariosAdminNP: TAction;
    GruposDetalleVta: TAction;
    PlanillaArmadoProductos: TAction;
    FacturarPlantillas: TAction;
    RecepcionArticulosGtia: TAction;
    CorrigeDetalleFcComp: TAction;
    ListadoStockConsignacion: TAction;
    ListadoRecepcionGtia: TAction;
    JuridiccionesIIBBLocalidades: TAction;
    ConsultaPrecio: TAction;
    GtiasExtendidas: TAction;
    ListadoRecibosCobrador_conAplicaciones: TAction;
    AsignarJuridiccion: TAction;
    JuridiccionExcepciones: TAction;
    LstUltimaVtaClientes: TAction;
    ControlSaldosCtaCteVta: TAction;
    PanelControlOP: TAction;
    ListadoCheEmitidos_OPago: TAction;
    ServicioTecnico: TAction;
    ListadoArticulosenST: TAction;
    Acopio: TAction;
    EntregaAcopio: TAction;
    ListadoCompraArticulosProvee: TAction;
    ListadoTxStockAnuladas: TAction;
    LeerDatosCopola: TAction;
    ListadoComprativoArticulosCompra: TAction;
    RelacionCobranzaVencimiento: TAction;
    Listado_ArtRubSubr: TAction;
    LstGastosRefContable: TAction;
    AutorizaLineaCero: TMenuItem;
    EstadosArticulos: TAction;
    BorrarAplicacionesCtaCteVta: TMenuItem;
    BorrarAplicacionesCtaCteComp: TMenuItem;
    ImportarRubroExcel: TAction;
    ImportarSubRubrosExcel: TAction;
    RetirosEmpleadosPorLotes: TAction;
    Importarvtas_PtoVtaMorphi: TAction;
    Vencimientos: TAction;
    ABCCompras: TAction;
    CorrigeFechaTx: TAction;
    ControlCpbteRecibidos: TAction;
    ImpresionCupones: TAction;
    LstGralVentas: TAction;
    LstVtasRubrosAnual: TAction;
    LstVtasVendedoresAnuales: TAction;
    LstPagosAnualesPersonal: TAction;
    ValoresCompartidos: TAction;
    ListadoChRecibidos: TAction;
    CrearAccesoDirecto: TAction;
    edNombreAccDire: TEdit;
    CambioMercaderia: TAction;
    CotizacionCliente: TAction;
    LstPreciosEspecialesClientes: TAction;
    ControlDetallesCtaCteVta: TAction;
    LstAsinacionesEmpleados: TAction;
    ListadoFcVta: TAction;
    ListadoFcComp: TAction;
    DescuentosEspeciales: TAction;
    TimerPedido_Tx: TTimer;
    FiltrarCajaPorUsuarios: TMenuItem;
    ListaPorSucursal: TAction;
    ControlVtoCupones: TAction;
    IngresosPersonalLote: TAction;
    CpbteContabilizar: TAction;
    PreciosPlantillas: TAction;
    ControlDetalleVta: TAction;
    PanelImportacionVtas: TAction;
    PanelImportacionCompras: TAction;
    ModificaAbonoCliente: TMenuItem;
    IngresarLotePagoCupones: TAction;
    ListadoChe3Porcpbte: TAction;
    CtroCosto: TAction;
    LstGastosCtroCosto: TAction;
    InformeGeneral: TAction;
    CambiarArticulosFcCompra: TAction;
    CajaResumen: TAction;
    RevisionCuponAbono: TAction;
    DetalleMovimientoStockDiario: TAction;
    OPagosExcluidasGanancia: TAction;
    ListadoSeries: TAction;
    HojaDeCarga: TAction;
    SaldoIngresosEgresos: TAction;
    CopiarPrecios: TAction;
    TipoServicios: TAction;
    ListaStock_precio_fisico: TAction;
    ComposicionVta_Cobro: TAction;
    ListadoNovedadesStock: TAction;
    AsignactaGasto_stock: TAction;
    ControlRubrosStock: TAction;
    LstPagoPersonal: TAction;
    Control_mov_che3: TAction;
    AsignaVendedor_cliente: TAction;
    ControlPercepIIBBTC: TAction;
    ControlAsignacionRto_Fc: TAction;
    ImpresionVales: TAction;
    TrazabilidadStock: TAction;
    ControlPagoProveedores: TAction;
    RevisionMovCHe3: TAction;
    SaldoAFechaCompras: TAction;
    ListadoMovIng_Egr: TAction;
    ComposicionDeudaCpra: TAction;
    ComposicionDeudaVta: TAction;
    ControlRtoHuerfanos: TAction;
    CalcFianciera: TAction;
    FiscalizaLote: TAction;
    TimerTx_Stock: TTimer;
    PanelImportacionAjustesStock: TAction;
    ImportacionExistencias: TAction;
    ComposicionIngresos: TAction;
    AdministracionFcModelo: TAction;
    ArtiPendientesOC: TAction;
    Resolucion3886: TAction;
    ImportarPreventa: TAction;
    PanelOTrabajo: TAction;
    PanelAcopios: TAction;
    LstAcopios: TAction;
    PlanillaPedido: TAction;
    ImportarFacturaCompra: TAction;
    ListadoEntregasAcopios: TAction;
    Exportar_DebitosTC: TAction;
    BorradorPedido: TAction;
    Prestadores: TAction;
    RtosMarketing: TAction;
    ComprobantesAfip: TAction;
    PromoCuponesPago: TAction;
    ComisionPorPlan: TAction;
    ImportarDatosDiner: TAction;
    ImportacionComprasGeneral: TAction;
    AdicionalesClientes: TAction;
    ProyeccionAnuales: TAction;
    ImportacionVtaGeneral: TAction;
    LstPlantillas: TAction;
    Feriados: TAction;
    TrazabilidadCompra: TAction;
    AutorizadoReimprimir: TMenuItem;
    ImportarDesctosClientes: TAction;
    ConsolidacionAcopios: TAction;
    LstOTrabajo: TAction;
    ABMVencimientos: TAction;
    TimerVencimientos: TTimer;
    AdministradordeVencimientos1: TMenuItem;
    DSPCheAlCobro: TDataSetProvider;
    CDSCheAlCobro: TClientDataSet;
    CDSCheAlCobroORIGEN: TStringField;
    CDSCheAlCobroNUMERO: TIntegerField;
    ImportarCobroTC: TAction;
    ImagenStrecha: TAction;
    ImagenCuadricula: TAction;
    ImagenExpandida: TAction;
    ImageList: TImageList;
    CtaCtedePersonal1: TMenuItem;
    PedidosMorphi: TAction;
    DespachoImpo: TAction;
    ImagenClean: TAction;
    Ventanas: TAction;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaLOGO: TBlobField;
    ImportarRipsa: TAction;
    sbEstado: TStatusBar;
    ImpoConversionFcVta_Comp: TAction;
    ControlTxBanco: TAction;
    ReciboPorLote: TAction;
    Ventas_UnicoStock: TAction;
    ConsultaCuit: TAction;
    ModificarOperadorAsignadoOTRabajo1: TMenuItem;
    ListadoRemitosConDetalle2: TAction;
    MovOTrabajo: TAction;
    ControlChePropioDuplicado: TAction;
    RubroClientes: TAction;
    PlanerOTrabajo: TAction;
    AjusteLotesStock: TAction;
    CtaCteAcopio: TAction;
    AdminTransporte: TAction;
    PlanifVtoTransportes: TAction;
    DSPVtoTr: TDataSetProvider;
    CDSVtoTr: TClientDataSet;
    CDSVtoTrMOTIVO: TStringField;
    CDSVtoTrDESCRIPCION: TStringField;
    dskVtoTr: TJvDesktopAlert;
    UnidadesTr: TAction;
    UnidadesTrAnexos: TAction;
    EstacionProduccion: TAction;
    Planificacion: TAction;
    LstMovCajaGral: TAction;
    VerChequesDisponiblesdelaCateraaCobrar1: TMenuItem;
    ListadoControlOTrabajo: TAction;
    TipoMovCCCompra: TAction;
    MovCCAuxComp: TAction;
    ImportarVisaTxt: TAction;
    IngresoChequesAnulados: TAction;
    ExportarRtos: TAction;
    ImportarRemitos: TAction;
    Pedidos: TAction;
    PersonalMotivosVales: TAction;
    ImportacionPersonal: TAction;
    ListadoDetalleOC: TAction;
    DetallePedidosRealizados: TAction;
    MotivosAjustesCCVta: TAction;
    MotivosAjustesCompras: TAction;
    ListadoAjustesCtaCte: TAction;
    ListadoPresupuestosDetalle: TAction;
    MotivosAjustesStock: TAction;
    ListadoRetIvaEfectuadas: TAction;
    HistorialMovCaja: TAction;
    TimerFcElectronica: TTimer;
    ReciboExpress: TAction;
    LstTransferenciasInterbanc: TAction;
    QBorraTraceUser: TFDQuery;
    TimerMinimo: TTimer;
    IngresarFechaFiscalVta: TAction;
    QMoneda: TFDQuery;
    QMonedaID: TIntegerField;
    QMonedaMONEDA: TStringField;
    QMonedaCOTIZACION: TFloatField;
    QMonedaSIGNO: TStringField;
    QMonedaORDEN: TSmallintField;
    QMonedaCOTIZACION_COMPRA: TFloatField;
    spContadorTrial: TFDStoredProc;
    TimerPedido: TTimer;
    LiquidacionPrimariaGranos: TAction;
    Promo_Cant: TAction;
    ModificarFactura1: TMenuItem;
    ResumenGralCaja: TAction;
    QId_AccDirecto: TFDQuery;
    ListadoHistorialPrecios: TAction;
    AdminPLU: TAction;
    tbpMenuGeneral: TAdvToolBarPager;
    tbpInicio: TAdvPage;
    tbpVentas: TAdvPage;
    tbpCompras: TAdvPage;
    tbModo: TAdvToolBar;
    lbUsuario: TLabel;
    cbEstilo: TComboBox;
    lbDolar: TLabel;
    tbCaja: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    shbMenu: TAdvShapeButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    tbConsultasRapidas: TAdvToolBar;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    tbVencimientos: TAdvToolBar;
    tbVarios: TAdvToolBar;
    AdvGlowButton11: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    AdvGlowButton13: TAdvGlowButton;
    AdvGlowButton14: TAdvGlowButton;
    AdvGlowButton15: TAdvGlowButton;
    WindowCascade2: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowArrange1: TWindowArrange;
    tbFormVta: TAdvToolBar;
    AdvGlowButton16: TAdvGlowButton;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton18: TAdvGlowButton;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvGlowButton19: TAdvGlowButton;
    AdvGlowButton20: TAdvGlowButton;
    AdvGlowButton21: TAdvGlowButton;
    AdvGlowButton22: TAdvGlowButton;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    AdvToolBarMenuButton1: TAdvToolBarMenuButton;
    AdvToolBarMenuButton2: TAdvToolBarMenuButton;
    AdvToolBarMenuButton3: TAdvToolBarMenuButton;
    AdvToolBarMenuButton4: TAdvToolBarMenuButton;
    AdvToolBarMenuButton5: TAdvToolBarMenuButton;
    tbCtaCteVta: TAdvToolBar;
    AdvToolBarMenuButton6: TAdvToolBarMenuButton;
    AdvToolBarMenuButton7: TAdvToolBarMenuButton;
    tbListadosVtas: TAdvToolBar;
    AdvToolBarMenuButton8: TAdvToolBarMenuButton;
    AdvGlowMenuButton3: TAdvGlowMenuButton;
    AdvGlowMenuButton4: TAdvGlowMenuButton;
    AdvGlowMenuButton5: TAdvGlowMenuButton;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    pmOtrosRemitos: TAdvPopupMenu;
    FacturarRemitos2: TMenuItem;
    FacturarRtosAgrupados2: TMenuItem;
    N2: TMenuItem;
    RtosPendientesdeFacturacin2: TMenuItem;
    RtosAfacturacinFiscal2: TMenuItem;
    N3: TMenuItem;
    ControldeAsignaciondeRtoconFactura2: TMenuItem;
    ControlRtoHuerfanos2: TMenuItem;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    pmEscritorio: TAdvPopupMenu;
    LimpiarImagen1: TMenuItem;
    ImagenCuadricula1: TMenuItem;
    ImagenOriginal1: TMenuItem;
    ImagenAjustada1: TMenuItem;
    pmPrincipal: TAdvPopupMenu;
    CrearAccesoDirecto1: TMenuItem;
    Barra1: TMenuItem;
    pmOpcionAccesoDirecto: TAdvPopupMenu;
    BorrarAcc: TMenuItem;
    AsignarAccion: TMenuItem;
    AsiganrAcciondeManager1: TMenuItem;
    N94: TMenuItem;
    Renombrar: TMenuItem;
    CambiarIcono1: TMenuItem;
    pmVentanas: TAdvPopupMenu;
    Cascade1: TMenuItem;
    ileHorizontally1: TMenuItem;
    ileVertically1: TMenuItem;
    Arrange1: TMenuItem;
    pmOtrosListadosVta: TAdvPopupMenu;
    pmLstSaldos: TAdvPopupMenu;
    SaldosdeDeudaClientes1: TMenuItem;
    SaldosdeClientesMensual1: TMenuItem;
    SaldoClientesMensualAfecha1: TMenuItem;
    SaldosdeDeudaClientes2: TMenuItem;
    N1: TMenuItem;
    N4: TMenuItem;
    AdvGlowMenuButton1: TAdvGlowMenuButton;
    AdvGlowMenuButton2: TAdvGlowMenuButton;
    AdvGlowMenuButton7: TAdvGlowMenuButton;
    AdvGlowMenuButton8: TAdvGlowMenuButton;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    AdvGlowMenuButton6: TAdvGlowMenuButton;
    LibrodeIvaVenta1: TMenuItem;
    ListadodeRetencionesCobranzas1: TMenuItem;
    InformedeOperacionesrealizadas1: TMenuItem;
    AnlisideCrditoporClientes1: TMenuItem;
    ControldeFormadePagoClientes1: TMenuItem;
    ListadoPercepeciondeIIBBenFcdeVta1: TMenuItem;
    ListadodeOperacionesporClientes1: TMenuItem;
    ListadodeRecibosporCobrador1: TMenuItem;
    ListadodeClientesxCondVenta1: TMenuItem;
    ListadodeFacxFechadeVto1: TMenuItem;
    ListadoComposicionFormaPagodeRecibo1: TMenuItem;
    ListadoABCClientes1: TMenuItem;
    ListadodeVtasvsCobros1: TMenuItem;
    ListadodeUltimaVentasaClientes1: TMenuItem;
    ListadoGeneraldeOperacionesRealizadas1: TMenuItem;
    ListadodePreciosEspecialporCliente1: TMenuItem;
    ControlDetallesenCtaCteVta1: TMenuItem;
    ControlVtodeCupones1: TMenuItem;
    NotasdePedidodeCliente1: TMenuItem;
    ComposicionVentaCobranza1: TMenuItem;
    ComposiciondeDeudaVenta1: TMenuItem;
    ProyecciondeAbonosPlantillasAnualesSemestrales1: TMenuItem;
    ListadodeAjustesdeCtasCtes1: TMenuItem;
    tbOtrosVentas: TAdvToolBar;
    AdvGlowMenuButton9: TAdvGlowMenuButton;
    AdvGlowMenuButton10: TAdvGlowMenuButton;
    AdvGlowMenuButton11: TAdvGlowMenuButton;
    tbProveedores: TAdvToolBar;
    pmABMClientes: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    RubrosClientes1: TMenuItem;
    pmFacturaPlantilla: TAdvPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PreciosenPlantillasdeAbono1: TMenuItem;
    pmFacturarModelos: TAdvPopupMenu;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    pmFacturarAbonos: TAdvPopupMenu;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    N5: TMenuItem;
    ImpresiondeCupones1: TMenuItem;
    RevisionycontroldeCupondeAbono1: TMenuItem;
    AdicionalesdeAbonosClientes1: TMenuItem;
    ControlVtodeCupones2: TMenuItem;
    ListadoNVtaPendientes1: TMenuItem;
    pmPoliticaPrecios: TAdvPopupMenu;
    MenuItem23: TMenuItem;
    MenuItem45: TMenuItem;
    MenuItem46: TMenuItem;
    N6: TMenuItem;
    pmRelacionadoComp: TAdvPopupMenu;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    ListadodeRecibos1: TMenuItem;
    ListadodeCpbtedeVtaPorTipocdetalle1: TMenuItem;
    ListadoRecibosporCobradorconAplicaciones1: TMenuItem;
    ListadodefacturasdeVta1: TMenuItem;
    ListadodeRemitosConDetalle1: TMenuItem;
    VentasMovIngreEgresStockImportes1: TMenuItem;
    ListadodePresupuestosconDetalle1: TMenuItem;
    pmRelacionadoVentas: TAdvPopupMenu;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    pmOtrosDatos: TAdvPopupMenu;
    MenuItem39: TMenuItem;
    GruposparaDetallesenVta1: TMenuItem;
    AsignarJuridiccionenFacturas1: TMenuItem;
    ExcepcionesdeJuridccionesporSucursal1: TMenuItem;
    CodigosdeComprobantesAfip1: TMenuItem;
    PromoCuponesdePago1: TMenuItem;
    pmOtrasAcciones: TAdvPopupMenu;
    MenuItem40: TMenuItem;
    MotivosAjustesdeCCVenta1: TMenuItem;
    N7: TMenuItem;
    PreciosEspecialesClientes1: TMenuItem;
    AnulacindeRecibos1: TMenuItem;
    AsignarCobradorenRecibosdeClientes1: TMenuItem;
    AsignaVendedorxCliente1: TMenuItem;
    ImportarFacdeCompraPropio1: TMenuItem;
    N8: TMenuItem;
    LiquidacionPrimariadeGranos1: TMenuItem;
    AdvGlowButton23: TAdvGlowButton;
    AdvToolBarSeparator10: TAdvToolBarSeparator;
    AdvToolBar1: TAdvToolBar;
    AdvToolBar2: TAdvToolBar;
    AdvGlowButton24: TAdvGlowButton;
    pmABMProveedores: TAdvPopupMenu;
    MenuItem41: TMenuItem;
    MenuItem42: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem44: TMenuItem;
    MovdeCtaCteAuxCompra1: TMenuItem;
    MotivosAjustesCompras1: TMenuItem;
    AdvToolBarMenuButton11: TAdvToolBarMenuButton;
    AdvToolBarMenuButton12: TAdvToolBarMenuButton;
    AdvToolBarMenuButton13: TAdvToolBarMenuButton;
    AdvToolBar3: TAdvToolBar;
    AdvToolBar4: TAdvToolBar;
    AdvToolBar5: TAdvToolBar;
    AdvToolBar6: TAdvToolBar;
    AdvGlowButton25: TAdvGlowButton;
    AdvGlowButton26: TAdvGlowButton;
    AdvGlowButton27: TAdvGlowButton;
    AdvGlowButton28: TAdvGlowButton;
    AdvGlowButton29: TAdvGlowButton;
    AdvGlowButton30: TAdvGlowButton;
    AdvGlowButton31: TAdvGlowButton;
    AdvToolBar7: TAdvToolBar;
    AdvToolBarMenuButton14: TAdvToolBarMenuButton;
    AdvToolBarMenuButton15: TAdvToolBarMenuButton;
    AdvToolBarMenuButton16: TAdvToolBarMenuButton;
    pmOtrasOp_OCOMPRA: TAdvPopupMenu;
    MenuItem47: TMenuItem;
    RecepcindeOCompra1: TMenuItem;
    N9: TMenuItem;
    ImpresindeOrdenesAutorizadas1: TMenuItem;
    OrdenesdeCompraNuevas1: TMenuItem;
    N10: TMenuItem;
    ListadordeOCompraRealizadas1: TMenuItem;
    ArticulosPendientesdeentregaenOrdenesdeCompra1: TMenuItem;
    ListadodeDetallesOC1: TMenuItem;
    tbpStock: TAdvPage;
    AdvToolBar8: TAdvToolBar;
    AdvGlowButton32: TAdvGlowButton;
    AdvToolBarSeparator11: TAdvToolBarSeparator;
    AdvGlowButton33: TAdvGlowButton;
    AdvToolBarSeparator12: TAdvToolBarSeparator;
    AdvGlowButton34: TAdvGlowButton;
    AdvGlowButton35: TAdvGlowButton;
    AdvToolBarSeparator13: TAdvToolBarSeparator;
    AdvToolBarMenuButton17: TAdvToolBarMenuButton;
    AdvToolBarSeparator14: TAdvToolBarSeparator;
    AdvToolBarMenuButton18: TAdvToolBarMenuButton;
    AdvToolBarMenuButton20: TAdvToolBarMenuButton;
    AdvGlowMenuButton12: TAdvGlowMenuButton;
    pmOtrosDatosStock: TAdvPopupMenu;
    MenuItem48: TMenuItem;
    Rubros1: TMenuItem;
    SubRubros1: TMenuItem;
    N11: TMenuItem;
    DepositosMercaderias1: TMenuItem;
    PresentacindeArtculos1: TMenuItem;
    CopiarPrecios1: TMenuItem;
    MotivosAjustesStock1: TMenuItem;
    AdvGlowMenuButton13: TAdvGlowMenuButton;
    AdvGlowMenuButton14: TAdvGlowMenuButton;
    pmActualizaPrecios: TAdvPopupMenu;
    MenuItem49: TMenuItem;
    ActualizacinPreciosManual1: TMenuItem;
    ActualizacindePreciosSombra1: TMenuItem;
    AdministracindePreciosSombra1: TMenuItem;
    N12: TMenuItem;
    pmNotasPedido: TAdvPopupMenu;
    MenuItem56: TMenuItem;
    NotadePedidoRevisin1: TMenuItem;
    N13: TMenuItem;
    ResumenPedidos1: TMenuItem;
    Pedidos1: TMenuItem;
    DetallePedidosRealizados1: TMenuItem;
    AdvToolBar9: TAdvToolBar;
    AdvGlowButton36: TAdvGlowButton;
    AdvToolBarSeparator15: TAdvToolBarSeparator;
    AdvGlowButton37: TAdvGlowButton;
    AdvToolBar10: TAdvToolBar;
    AdvGlowButton38: TAdvGlowButton;
    AdvToolBar11: TAdvToolBar;
    pmListadoImpositivos: TAdvPopupMenu;
    LibrodeIvaCompra1: TMenuItem;
    CorrigeNroRecenMovCaja1: TMenuItem;
    ListadodeRetdeGananciaaProveedores1: TMenuItem;
    ListadodeRetdeIBrutosaProveedores1: TMenuItem;
    ListadoRetencionesdeIvaEfectuadas1: TMenuItem;
    pmListadoSaldoCompra: TAdvPopupMenu;
    MenuItem50: TMenuItem;
    SaldosdeProveedoresMensual1: TMenuItem;
    SaldodeudaComprasMensualaFecha1: TMenuItem;
    ComposiciondeDeudaCompras1: TMenuItem;
    pmOtrosListadosCompra: TAdvPopupMenu;
    MenuItem51: TMenuItem;
    ListadodeOrdenesdePago1: TMenuItem;
    ListadodeFcdeCompraPorProveedor1: TMenuItem;
    ListadoRelacionCompraVenta1: TMenuItem;
    ListadoCpbtedeCompraPortipoCDetalle1: TMenuItem;
    ListadodeCompradeArticulosporProveedor1: TMenuItem;
    ABCdeArticulosdeCompra1: TMenuItem;
    ListadoControldeComprobantesRecibidos1: TMenuItem;
    ListadodeComprobantesdedeCompra1: TMenuItem;
    razabiliaddeCompras1: TMenuItem;
    pmOtrasOperacionesStock: TAdvPopupMenu;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem58: TMenuItem;
    MenuItem59: TMenuItem;
    MenuItem60: TMenuItem;
    DescuentosEspecialesPromocionesdeStock1: TMenuItem;
    N14: TMenuItem;
    AsignarCtadeGastosenStock1: TMenuItem;
    N15: TMenuItem;
    AjustesLotes1: TMenuItem;
    AdministraEstadosdeArticulos1: TMenuItem;
    PromoxCant1: TMenuItem;
    AdministracionPLU1: TMenuItem;
    pmStockSeries: TAdvPopupMenu;
    MenuItem61: TMenuItem;
    LlevarCodigosdeSerieaMayuscula1: TMenuItem;
    PermutadeArticulosporNrodeSeries1: TMenuItem;
    ControldeCodigosdeSeries1: TMenuItem;
    AjustesdeNrodeSeries1: TMenuItem;
    ListadodeNrosdeSeries1: TMenuItem;
    AdvGlowButton39: TAdvGlowButton;
    AdvToolBarSeparator16: TAdvToolBarSeparator;
    pmRMA: TAdvPopupMenu;
    MenuItem62: TMenuItem;
    MenuItem63: TMenuItem;
    MenuItem64: TMenuItem;
    MenuItem65: TMenuItem;
    AdvGlowButton40: TAdvGlowButton;
    AdvToolBarSeparator17: TAdvToolBarSeparator;
    AdvToolBarMenuButton19: TAdvToolBarMenuButton;
    AdvToolBarMenuButton21: TAdvToolBarMenuButton;
    AdvToolBarMenuButton22: TAdvToolBarMenuButton;
    pmStockListados: TAdvPopupMenu;
    MenuItem66: TMenuItem;
    Rentabilidad1: TMenuItem;
    InformeDeArtculosExentosVendidos1: TMenuItem;
    ListadodeArticulosporCondicindeIIBB1: TMenuItem;
    ListadodeRuboSubrubrodeStock1: TMenuItem;
    ListadodeMovimientosdeTransfporDepsito1: TMenuItem;
    ListadoComparativodeprecios1: TMenuItem;
    ListadodeMovdeStock1: TMenuItem;
    VerStockComprometido1: TMenuItem;
    ResumenMovdeStock1: TMenuItem;
    ListadodeCostoVtadeMercaderia1: TMenuItem;
    ListadodeTxdeStockPendientes1: TMenuItem;
    ListadodeAjustesdeStock1: TMenuItem;
    ListadodeStock1: TMenuItem;
    N16: TMenuItem;
    ListadodeStockGeneral1: TMenuItem;
    ListadoStockenConsignacion1: TMenuItem;
    ListadoTxdeStockAnuladasRechazadas1: TMenuItem;
    ListadoComprativoArticulosxCompra1: TMenuItem;
    N17: TMenuItem;
    ListadoArticulosRubroSubrubro1: TMenuItem;
    DetalleMovimientoStockDiario1: TMenuItem;
    ListadodeArticulosPorListadePrecioStock1: TMenuItem;
    N18: TMenuItem;
    NovedadesdeStock1: TMenuItem;
    ControlRubrosStock1: TMenuItem;
    razabilidaddeMovimientosdeStock1: TMenuItem;
    ListadoHistorialPrecios1: TMenuItem;
    tbpAcopios: TAdvPage;
    AdvToolBar12: TAdvToolBar;
    AdvToolBar13: TAdvToolBar;
    AdvGlowButton41: TAdvGlowButton;
    AdvGlowButton42: TAdvGlowButton;
    AdvGlowButton43: TAdvGlowButton;
    AdvGlowButton44: TAdvGlowButton;
    AdvToolBarMenuButton23: TAdvToolBarMenuButton;
    AdvToolBarMenuButton24: TAdvToolBarMenuButton;
    AdvToolBarMenuButton25: TAdvToolBarMenuButton;
    tbpBancos: TAdvPage;
    tbOperaciones: TAdvToolBar;
    AdvGlowButton45: TAdvGlowButton;
    AdvToolBarMenuButton26: TAdvToolBarMenuButton;
    AdvToolBarMenuButton27: TAdvToolBarMenuButton;
    AdvToolBar15: TAdvToolBar;
    AdvToolBarMenuButton28: TAdvToolBarMenuButton;
    AdvToolBarMenuButton29: TAdvToolBarMenuButton;
    AdvToolBarMenuButton30: TAdvToolBarMenuButton;
    AdvToolBar16: TAdvToolBar;
    AdvToolBarMenuButton31: TAdvToolBarMenuButton;
    AdvToolBarMenuButton32: TAdvToolBarMenuButton;
    AdvToolBarMenuButton33: TAdvToolBarMenuButton;
    AdvGlowButton46: TAdvGlowButton;
    pmListadoBancos: TAdvPopupMenu;
    MenuItem95: TMenuItem;
    ListadodeTransfBancarias1: TMenuItem;
    ListadodeGastosBco1: TMenuItem;
    ListadoDebitosBancarios1: TMenuItem;
    ListadodeCpbteGastosBancarios1: TMenuItem;
    N19: TMenuItem;
    ListadodeTransfBancarias2: TMenuItem;
    AdvToolBar17: TAdvToolBar;
    AdvGlowButton47: TAdvGlowButton;
    AdvGlowButton48: TAdvGlowButton;
    AdvToolBar18: TAdvToolBar;
    AdvGlowButton49: TAdvGlowButton;
    AdvToolBarMenuButton34: TAdvToolBarMenuButton;
    AdvToolBarMenuButton35: TAdvToolBarMenuButton;
    AdvToolBarMenuButton36: TAdvToolBarMenuButton;
    WindowClose2: TWindowClose;
    Close1: TMenuItem;
    tbpFondos: TAdvPage;
    AdvToolBar19: TAdvToolBar;
    AdvToolBarSeparator18: TAdvToolBarSeparator;
    AdvToolBarSeparator19: TAdvToolBarSeparator;
    AdvGlowButton50: TAdvGlowButton;
    AdvGlowButton51: TAdvGlowButton;
    AdvToolBarMenuButton37: TAdvToolBarMenuButton;
    AdvToolBarMenuButton38: TAdvToolBarMenuButton;
    AdvToolBarMenuButton39: TAdvToolBarMenuButton;
    AdvToolBar20: TAdvToolBar;
    AdvGlowButton52: TAdvGlowButton;
    AdvToolBarMenuButton40: TAdvToolBarMenuButton;
    AdvToolBarMenuButton41: TAdvToolBarMenuButton;
    AdvToolBarMenuButton42: TAdvToolBarMenuButton;
    pmListadosFondos: TAdvPopupMenu;
    MenuItem67: TMenuItem;
    ListadoMovimientosdeCajaGeneral1: TMenuItem;
    ListadodeSaldosdeGastos1: TMenuItem;
    AnlisisdeIngresoEgreso1: TMenuItem;
    ListadodeComposicinIngyEgresos1: TMenuItem;
    ListadodeSaldosdeIngresos1: TMenuItem;
    ABMFacturasModelo1: TMenuItem;
    N20: TMenuItem;
    ListadodeMovimientosdeTC1: TMenuItem;
    N21: TMenuItem;
    ListadoChede3DepositadosAntes1: TMenuItem;
    ListadoConsumodeTarjetasdeCredito1: TMenuItem;
    ListadodeTxentreCajas1: TMenuItem;
    ListadoAcreditacionesTC1: TMenuItem;
    ListadodeCheEmitidosxOrdendePago1: TMenuItem;
    ListadodeGastosporRefContable1: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    ListadodeChde3Recibidos1: TMenuItem;
    ListadodeChede3roxCompdeIngreso1: TMenuItem;
    ListadodeGastosPorcentrodeCosto1: TMenuItem;
    ListadoConsolidadodeIngresosEgresos1: TMenuItem;
    ListadodeComposicinIngyEgresos2: TMenuItem;
    DetallesComposiciondeIngresosEgresos1: TMenuItem;
    N24: TMenuItem;
    HistorialMovdeCaja1: TMenuItem;
    ResumenGeneraldeCaja1: TMenuItem;
    AdvToolBar21: TAdvToolBar;
    AdvGlowButton53: TAdvGlowButton;
    AdvGlowButton54: TAdvGlowButton;
    AdvToolBarSeparator20: TAdvToolBarSeparator;
    AdvToolBarMenuButton43: TAdvToolBarMenuButton;
    AdvToolBarMenuButton44: TAdvToolBarMenuButton;
    AdvToolBarMenuButton45: TAdvToolBarMenuButton;
    AdvToolBar22: TAdvToolBar;
    AdvToolBarMenuButton46: TAdvToolBarMenuButton;
    AdvToolBarMenuButton47: TAdvToolBarMenuButton;
    AdvToolBarMenuButton48: TAdvToolBarMenuButton;
    AdvToolBar23: TAdvToolBar;
    AdvToolBarMenuButton49: TAdvToolBarMenuButton;
    AdvToolBarMenuButton50: TAdvToolBarMenuButton;
    pmOtrasOpcionesFondos: TAdvPopupMenu;
    MenuItem94: TMenuItem;
    Monedas1: TMenuItem;
    arjetasdeCredito1: TMenuItem;
    arjetasdeCreditoparaCompras1: TMenuItem;
    FormasdePago1: TMenuItem;
    N25: TMenuItem;
    RubrosGastos1: TMenuItem;
    CuentasdeGasto1: TMenuItem;
    CentrosdeCostos1: TMenuItem;
    tbpPersonal: TAdvPage;
    AdvToolBar24: TAdvToolBar;
    AdvGlowButton55: TAdvGlowButton;
    AdvGlowButton56: TAdvGlowButton;
    AdvGlowButton57: TAdvGlowButton;
    AdvToolBarSeparator21: TAdvToolBarSeparator;
    pmOtrosDatosPersonal: TAdvPopupMenu;
    MenuItem68: TMenuItem;
    Categorias1: TMenuItem;
    AsignarVendedoresalasFacturas1: TMenuItem;
    N26: TMenuItem;
    PolticadeComisionesVendedores1: TMenuItem;
    AnulacindeAdelantosValesdeSueldo1: TMenuItem;
    AccionesPersonal1: TMenuItem;
    PersonalMotivosVales1: TMenuItem;
    AdvToolBarMenuButton51: TAdvToolBarMenuButton;
    AdvToolBarSeparator22: TAdvToolBarSeparator;
    AdvToolBarMenuButton52: TAdvToolBarMenuButton;
    AdvToolBarMenuButton53: TAdvToolBarMenuButton;
    AdvToolBarMenuButton54: TAdvToolBarMenuButton;
    AdvToolBarMenuButton55: TAdvToolBarMenuButton;
    AdvToolBar25: TAdvToolBar;
    AdvToolBarMenuButton56: TAdvToolBarMenuButton;
    AdvToolBarMenuButton57: TAdvToolBarMenuButton;
    AdvToolBarMenuButton58: TAdvToolBarMenuButton;
    AdvToolBar26: TAdvToolBar;
    AdvGlowButton58: TAdvGlowButton;
    pmListadoPersonal: TAdvPopupMenu;
    MenuItem69: TMenuItem;
    ListadodeSaldosEmpleados1: TMenuItem;
    ListadodePagoPersonal1: TMenuItem;
    ListadoPagosAnualesPersonal1: TMenuItem;
    ListadoAsignacionesEmpleados1: TMenuItem;
    RelacionentrelaCobranzayVencimiento1: TMenuItem;
    tbpProducionObraTrabajo: TAdvPage;
    AdvToolBar27: TAdvToolBar;
    AdvGlowButton59: TAdvGlowButton;
    AdvGlowButton60: TAdvGlowButton;
    AdvGlowButton61: TAdvGlowButton;
    AdvToolBarSeparator23: TAdvToolBarSeparator;
    AdvGlowButton62: TAdvGlowButton;
    AdvToolBarMenuButton59: TAdvToolBarMenuButton;
    AdvToolBarMenuButton60: TAdvToolBarMenuButton;
    AdvGlowMenuButton15: TAdvGlowMenuButton;
    pmDatosProduccion: TAdvPopupMenu;
    MenuItem70: TMenuItem;
    EstaciondeProduccion1: TMenuItem;
    N27: TMenuItem;
    SectoresdeProduccion1: TMenuItem;
    N28: TMenuItem;
    MaterialesdeProduccion1: TMenuItem;
    AdvToolBar28: TAdvToolBar;
    AdvGlowButton63: TAdvGlowButton;
    AdvToolBarMenuButton61: TAdvToolBarMenuButton;
    AdvToolBarMenuButton62: TAdvToolBarMenuButton;
    AdvToolBarMenuButton63: TAdvToolBarMenuButton;
    AdvToolBar29: TAdvToolBar;
    AdvGlowButton64: TAdvGlowButton;
    AdvGlowButton65: TAdvGlowButton;
    AdvGlowButton66: TAdvGlowButton;
    AdvToolBarMenuButton64: TAdvToolBarMenuButton;
    AdvToolBarSeparator24: TAdvToolBarSeparator;
    AdvGlowMenuButton16: TAdvGlowMenuButton;
    pmListadosOTrabajo: TAdvPopupMenu;
    MenuItem77: TMenuItem;
    ListadodeOrdenesdeTrabajoporpuntos1: TMenuItem;
    ListadoOrdenesdeTrabajoArchivadas1: TMenuItem;
    ListadodeDetallesdeOrdenesdeTrabajoPorCliente1: TMenuItem;
    DetalledeOTrabajoporEmplados1: TMenuItem;
    ListadodeOrdenesdeTrabajo1: TMenuItem;
    ListadoControlOrdenesdeTrabajo1: TMenuItem;
    AdvToolBarMenuButton65: TAdvToolBarMenuButton;
    AdvToolBarMenuButton66: TAdvToolBarMenuButton;
    AdvToolBarMenuButton67: TAdvToolBarMenuButton;
    tbpParametros: TAdvPage;
    AdvToolBar30: TAdvToolBar;
    AdvGlowButton67: TAdvGlowButton;
    AdvGlowButton68: TAdvGlowButton;
    AdvToolBarSeparator25: TAdvToolBarSeparator;
    AdvGlowButton69: TAdvGlowButton;
    AdvGlowButton70: TAdvGlowButton;
    AdvGlowButton71: TAdvGlowButton;
    AdvToolBarSeparator26: TAdvToolBarSeparator;
    pmParametrosImpuestos: TAdvPopupMenu;
    MenuItem76: TMenuItem;
    Inscripcion1: TMenuItem;
    iposdePercepcionesdeIVA1: TMenuItem;
    iposdePercepcionesdeIngresosBrutos1: TMenuItem;
    iposdeRetenciones1: TMenuItem;
    JuridiccionesIngresosBrutos1: TMenuItem;
    RegimenesdeRetencioninIVA1: TMenuItem;
    asadeRetGanancias1: TMenuItem;
    asadeRetencionIngBrutos1: TMenuItem;
    JuridiccionesIIBBLocalidades1: TMenuItem;
    ConfiguracionResolucion38861: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    AdvToolBarSeparator27: TAdvToolBarSeparator;
    AdvToolBarMenuButton68: TAdvToolBarMenuButton;
    AdvToolBarMenuButton69: TAdvToolBarMenuButton;
    AdvToolBarMenuButton70: TAdvToolBarMenuButton;
    AdvToolBarMenuButton71: TAdvToolBarMenuButton;
    AdvToolBarMenuButton72: TAdvToolBarMenuButton;
    AdvGlowMenuButton17: TAdvGlowMenuButton;
    pmParametrosGeograficos: TAdvPopupMenu;
    Localidades1: TMenuItem;
    Provincias1: TMenuItem;
    Zonas1: TMenuItem;
    GeoPosicionarClientes1: TMenuItem;
    GoogleMap1: TMenuItem;
    AdvToolBar31: TAdvToolBar;
    AdvGlowButton72: TAdvGlowButton;
    AdvToolBarMenuButton73: TAdvToolBarMenuButton;
    AdvToolBarMenuButton74: TAdvToolBarMenuButton;
    AdvToolBarSeparator28: TAdvToolBarSeparator;
    tbpOtros: TAdvPage;
    AdvToolBar32: TAdvToolBar;
    AdvToolBar33: TAdvToolBar;
    AdvGlowButton73: TAdvGlowButton;
    AdvGlowMenuButton18: TAdvGlowMenuButton;
    AdvGlowMenuButton19: TAdvGlowMenuButton;
    pmOtrosOpcionesOtros: TAdvPopupMenu;
    MenuItem71: TMenuItem;
    PadronTasasdeRetencionyPercepciondeIIBB1: TMenuItem;
    ListadePreciosporTablasFijas1: TMenuItem;
    ABMTasasdeRetyPercIIBB1: TMenuItem;
    ComprobantesaContabilizar1: TMenuItem;
    IngresarLotedePagodeCupones1: TMenuItem;
    OdePagosExcluidasdeGanancia1: TMenuItem;
    abladeFeriados1: TMenuItem;
    LeerDatosColector1: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    AdvToolBarMenuButton75: TAdvToolBarMenuButton;
    AdvToolBarMenuButton76: TAdvToolBarMenuButton;
    AdvToolBarMenuButton78: TAdvToolBarMenuButton;
    AdvToolBarMenuButton79: TAdvToolBarMenuButton;
    AdvToolBarSeparator29: TAdvToolBarSeparator;
    AdvToolBar34: TAdvToolBar;
    AdvGlowButton74: TAdvGlowButton;
    pmOpcionesUsuario: TAdvPopupMenu;
    AsignaCajaaUsuario1: TMenuItem;
    AsignaComprobantesdeVtaaUsusarios1: TMenuItem;
    DescuentosMaximosporUsuario1: TMenuItem;
    N35: TMenuItem;
    AsignarListadePrecioaUsuario1: TMenuItem;
    DescuentosMaximosporUsuario2: TMenuItem;
    UsuariosqueAutorizanCambiosdePreciosyNdeVta1: TMenuItem;
    UsuariosAdmindeNPdeSuc1: TMenuItem;
    AdvToolBar35: TAdvToolBar;
    AdvGlowButton75: TAdvGlowButton;
    AdvGlowButton76: TAdvGlowButton;
    tbpMantenimiento: TAdvPage;
    AdvToolBar36: TAdvToolBar;
    AdvToolBarMenuButton80: TAdvToolBarMenuButton;
    AdvToolBarMenuButton81: TAdvToolBarMenuButton;
    AdvToolBarMenuButton82: TAdvToolBarMenuButton;
    AdvToolBar37: TAdvToolBar;
    AdvGlowButton77: TAdvGlowButton;
    AdvGlowButton78: TAdvGlowButton;
    AdvToolBarSeparator30: TAdvToolBarSeparator;
    AdvGlowButton79: TAdvGlowButton;
    AdvToolBar38: TAdvToolBar;
    AdvToolBarMenuButton83: TAdvToolBarMenuButton;
    AdvToolBarMenuButton84: TAdvToolBarMenuButton;
    AdvGlowMenuButton20: TAdvGlowMenuButton;
    pmMantemientoControles: TAdvPopupMenu;
    MenuItem89: TMenuItem;
    ControladorclculosdeFcdeVta1: TMenuItem;
    ControladorclculosdeFcdeCompra1: TMenuItem;
    N36: TMenuItem;
    ControlCaja1: TMenuItem;
    ControldeAperturadeCaja1: TMenuItem;
    N37: TMenuItem;
    ControldeDepsitosdeStock1: TMenuItem;
    ControldesdeFcDetaMovStock1: TMenuItem;
    ControldeRetenciones1: TMenuItem;
    ControldetarjetasdeCredito1: TMenuItem;
    ControldeChequesde31: TMenuItem;
    N38: TMenuItem;
    ControldeMovimientosdeChede31: TMenuItem;
    ControldeChequesde32: TMenuItem;
    N39: TMenuItem;
    CorrigeDetalleArticuloenFcComp1: TMenuItem;
    GrupoAbonados1: TMenuItem;
    CorrigeFechaDetalleTx1: TMenuItem;
    ControlPercepIIBBenTC1: TMenuItem;
    ControlPagoaProveedores1: TMenuItem;
    ControlDetallesenCtaCteVta2: TMenuItem;
    ControldeChequesPropiosDuplicados1: TMenuItem;
    ControlPagoaProveedores2: TMenuItem;
    ControldeFormadePagoClientes2: TMenuItem;
    IngresarFechaFiscalVta1: TMenuItem;
    pmHerramientasControles: TAdvPopupMenu;
    MenuItem102: TMenuItem;
    CorrectordeDecimales1: TMenuItem;
    ActivaDesactivaTriggers1: TMenuItem;
    CorrectordeCerosenCtaCte1: TMenuItem;
    CorrigeFechaFcVtaDet1: TMenuItem;
    CorrigeFechaFcCompDet1: TMenuItem;
    AnulacindeOdePago1: TMenuItem;
    MarcarCheReemplazados1: TMenuItem;
    CorrigeNroRecenMovCaja2: TMenuItem;
    CorrigeDetalleArticuloenFcdeVta1: TMenuItem;
    CambiarArticulosFcCompraporLote1: TMenuItem;
    RevisionMovCHe31: TMenuItem;
    ControldeTransferenciasTxBancaraias1: TMenuItem;
    AdvToolBar39: TAdvToolBar;
    AdvGlowButton80: TAdvGlowButton;
    AdvGlowButton81: TAdvGlowButton;
    pmImportacion: TAdvPopupMenu;
    MenuItem78: TMenuItem;
    ImportacionConversiondeFcVtaaCompra1: TMenuItem;
    ImportacionComprasGeneralGenerico1: TMenuItem;
    ImportarLoteFacturasdeCompraFonte1: TMenuItem;
    PaneldeImportaciondeComprasRemoto1: TMenuItem;
    ImportarFacturadeVta1: TMenuItem;
    ImportarClientes1: TMenuItem;
    ImportarClientesdesdeExcel1: TMenuItem;
    ImportarDsctosClientes1: TMenuItem;
    ImportarStockPropio1: TMenuItem;
    ImportarStockdesdeExcel1: TMenuItem;
    ImportarRubrosdesdeExcel1: TMenuItem;
    ImportarRubrosdesdeExcel2: TMenuItem;
    ImportarMarcasdesdeExcel1: TMenuItem;
    PaneldeImportaciondeAjustesStock1: TMenuItem;
    ImportaciondeExistencias1: TMenuItem;
    ImportarFacturadeVta2: TMenuItem;
    PaneldeImportacindeVtas1: TMenuItem;
    ImportarProveedoresdesdeExcel1: TMenuItem;
    ImportarProveedoresdesdeExcel2: TMenuItem;
    ImportarLoteFacturasdeCompraFonte2: TMenuItem;
    ImportarCobranzadeTarjetadeCredito1: TMenuItem;
    ImportarCobranzadesdeRipsa1: TMenuItem;
    ImportarCobroVisaTxt1: TMenuItem;
    ImportacionPersonaldesdeExcel1: TMenuItem;
    pmExportacion: TAdvPopupMenu;
    ExportarDebitos1: TMenuItem;
    ExportarClientes1: TMenuItem;
    ExportarFacdeCompraPropio1: TMenuItem;
    ExportarFacturasdeVta1: TMenuItem;
    ExportarProveedores1: TMenuItem;
    ExportarRtos1: TMenuItem;
    ExportarStockPropio1: TMenuItem;
    tbpGraficos: TAdvPage;
    AdvToolBar40: TAdvToolBar;
    AdvToolBarMenuButton85: TAdvToolBarMenuButton;
    AdvToolBarMenuButton86: TAdvToolBarMenuButton;
    AdvToolBarMenuButton87: TAdvToolBarMenuButton;
    tbpPedidoCliente: TAdvPage;
    AdvToolBar41: TAdvToolBar;
    AdvGlowButton82: TAdvGlowButton;
    AdvToolBarMenuButton88: TAdvToolBarMenuButton;
    AdvToolBarMenuButton89: TAdvToolBarMenuButton;
    AdvToolBarMenuButton90: TAdvToolBarMenuButton;
    AdvToolBarSeparator31: TAdvToolBarSeparator;
    AdvToolBarMenuButton91: TAdvToolBarMenuButton;
    AdvToolBarMenuButton92: TAdvToolBarMenuButton;
    AdvToolBarMenuButton93: TAdvToolBarMenuButton;
    AdvToolBarSeparator32: TAdvToolBarSeparator;
    CerrarTodas1: TMenuItem;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvToolBarButton1: TAdvToolBarButton;
    AdvToolBarButton2: TAdvToolBarButton;
    AdvToolBarButton3: TAdvToolBarButton;
    AdvToolBarButton4: TAdvToolBarButton;
    AdvToolBar42: TAdvToolBar;
    AdvGlowButton83: TAdvGlowButton;
    pvMenu: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvToolBarButton5: TAdvToolBarButton;
    AdvToolBarButton6: TAdvToolBarButton;
    UsuariosLstRubros: TAction;
    RubrosListadePrecios1: TMenuItem;
    N40: TMenuItem;
    ListadoProduccionPI: TAction;
    AdvToolBarMenuButton94: TAdvToolBarMenuButton;
    AdvToolBarButton7: TAdvToolBarButton;
    ListadoComprasCabDet: TAction;
    ListadodeComprasCabeceraDet1: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    AdvToolBarMenuButton95: TAdvToolBarMenuButton;
    AdvToolBarMenuButton10: TAdvToolBarMenuButton;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    ArqueoCaja: TAction;
    pmLstPreciosProveedores: TAdvPopupMenu;
    PreciosStockProveedor1: TMenuItem;
    ListadePreciosdeProveedores1: TMenuItem;
    ConsultaPreciosporProveedores1: TMenuItem;
    ActionManagerNew: TActionManager;
    AdvGlowButton85: TAdvGlowButton;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    OrdenacionRubros: TAction;
    N56: TMenuItem;
    OrdenacionRubrosparaListadePrecios1: TMenuItem;
    StockTipoAdicional: TAction;
    iposAdicionalStock1: TMenuItem;
    RecepcionRepartoGrilla: TAction;
    AdvToolBarMenuButton9: TAdvToolBarMenuButton;
    ListadoCheRemplazados: TAction;
    ListadoCheRemplazados1: TMenuItem;
    PlantillaRecepReparto: TAction;
    N57: TMenuItem;
    PlantillaRecepReparto1: TMenuItem;
    VideosTutoriales: TAction;
    AdvToolBarButton8: TAdvToolBarButton;
    ABCProveedores: TAction;
    ABCProveedores1: TMenuItem;
    ArmadoAdicionalPlantillaPedido: TAction;
    N58: TMenuItem;
    ArmadoAdicionalPlantillaPedido1: TMenuItem;
    DetallePrevision: TAction;
    N59: TMenuItem;
    DetallePrevision1: TMenuItem;
    Users1: TUsers;
    AutorizadoHacerNC: TMenuItem;
    ControlPermisos: TAction;
    ControlAsignacionPedidosPrevision: TAction;
    N60: TMenuItem;
    ControlAsignacionPedidosPrevision1: TMenuItem;
    FDTransaction: TFDTransaction;
    BorrarOrdendePago: TMenuItem;
    StockAlquiler: TAction;
    N61: TMenuItem;
    StockAlquiler1: TMenuItem;
    TimerTareas: TTimer;
    CDSCheAlCobroIMPORTE: TFloatField;
    ImportarMercadoPago: TAction;
    ImportarMercadoPago1: TMenuItem;
    N62: TMenuItem;
    Pacientes: TAction;
    Pacientes1: TMenuItem;
    ListadoVentaCabDet: TAction;
    ListadoVentaCabDet1: TMenuItem;
    Paises: TAction;
    Paises1: TMenuItem;
    ListadoArticulosProduccion: TAction;
    AdvToolBarMenuButton96: TAdvToolBarMenuButton;
    AdvGlowButton84: TAdvGlowButton;
    AltaCAEA: TAction;
    QCaeActivo: TFDQuery;
    QCaeActivoID: TIntegerField;
    QCaeActivoPERIODO: TStringField;
    QCaeActivoORDEN: TIntegerField;
    QCaeActivoVIGENCIADESDE: TStringField;
    QCaeActivoVIGENCIAHASTA: TStringField;
    QCaeActivoFECHATOPE: TStringField;
    QCaeActivoFECHAPROCESO: TStringField;
    QCaeActivoINFORMADO_AFIP: TStringField;
    QCaeActivoCAEA: TStringField;
    tcFireDACDriver1: TtcFireDACDriver;
    AdvAlertCheAlcobro: TAdvAlertWindow;
    AdvAlertRecpTx: TAdvAlertWindow;
    DskAlertMinimo: TJvDesktopAlert;
    DskAlertElectronica: TJvDesktopAlert;
    DskAlertVencimientos: TJvDesktopAlert;
    DskAlertTareas: TJvDesktopAlert;
    dskAlertPedido: TJvDesktopAlert;
    dskAlertPedidos_Tx: TJvDesktopAlert;
    AdvToolBarMenuButton97: TAdvToolBarMenuButton;
    N63: TMenuItem;
    AnulacindeOdePago2: TMenuItem;
    BuscarPorReferencia: TAction;
    CierreCajaExpress: TAction;
    AdvGlowButton86: TAdvGlowButton;
    Obra_Tipo: TAction;
    AdvToolBarMenuButton98: TAdvToolBarMenuButton;
    PersonalCategorias: TAction;
    AdvGlowButton87: TAdvGlowButton;
    AdvToolBarSeparator33: TAdvToolBarSeparator;
    Conceptos: TAction;
    AdvGlowButton88: TAdvGlowButton;
    LiquidacionHaberes: TAction;
    AdvGlowButton89: TAdvGlowButton;
    AdvToolBarSeparator34: TAdvToolBarSeparator;
    StockExpress: TAction;
    AdvGlowButton90: TAdvGlowButton;
    AdvToolBarSeparator35: TAdvToolBarSeparator;
    IngAjustedeCCdesdeExcel1: TMenuItem;
    DepositoVendedor: TAction;
    N64: TMenuItem;
    DepositoxVendedor1: TMenuItem;
    LimpiarLog: TAction;
    ListadoChequesCompartidos: TAction;
    ListadodeChquesCompartidos1: TMenuItem;
    N65: TMenuItem;
    ComposiciondeDeudaVenta2: TMenuItem;
    ControldeMinimosyMaximosdeStock1: TMenuItem;
    N66: TMenuItem;
    TipoLiquidacionSuelddo: TAction;
    ipoLiquidacion1: TMenuItem;
    dskAlertaTrial: TJvDesktopAlert;
    TimerTrial: TTimer;
    MovimientoSemanal: TAction;
    AdvGlowButton91: TAdvGlowButton;
    ImportarFcCompraAFIP: TAction;
    ImportarFcVentaAFIP: TAction;
    N67: TMenuItem;
    ImportarFcVentaAFIP1: TMenuItem;
    ImportarFcCompraAFIP1: TMenuItem;
    N68: TMenuItem;
    ImportarRemitos1: TMenuItem;
    LecturaReloj: TAction;
    AdvToolBarMenuButton99: TAdvToolBarMenuButton;
    ArchivosNextByn: TAction;
    AdvToolBarMenuButton100: TAdvToolBarMenuButton;
    IngresoCarnes: TAction;
    AdvToolBarMenuButton101: TAdvToolBarMenuButton;
    LecturaXMLHasar: TAction;
    AdvToolBarMenuButton102: TAdvToolBarMenuButton;
    N69: TMenuItem;
    ListadodeNPedidos1: TMenuItem;
    N70: TMenuItem;
    ListadoClientes_LDR: TAction;
    ListadodeClientesconLdr1: TMenuItem;
    Help: TAction;
    AdvToolBarButton9: TAdvToolBarButton;
    AdvToolBarSeparator36: TAdvToolBarSeparator;
    BorradorInventario: TAction;
    BorradorInventario1: TMenuItem;
    ListadoBorradorOC: TAction;
    AdvGlowButton92: TAdvGlowButton;
    ControlSaldosCtaCteVta1: TMenuItem;
    N71: TMenuItem;
    ListasActualizanPrecio: TAction;
    N72: TMenuItem;
    ListadoABCClientes2: TMenuItem;
    N73: TMenuItem;
    PreciosStockProveedor2: TMenuItem;
    TestGoogle: TAction;
    est1: TMenuItem;
    LstPercepcionIva_Vta: TAction;
    LstPercepcionIVAenVta1: TMenuItem;
    pnPedidos: TAdvPanel;
    sgPedidos: TAdvStringGrid;
    FDEventAlerter1: TFDEventAlerter;
    HistorialCostoProduccion: TAction;
    AdvToolBarMenuButton103: TAdvToolBarMenuButton;
    NovedadesPersonal: TAction;
    AdvGlowButton93: TAdvGlowButton;
    FlujodeFondos1: TMenuItem;
    ProyeccionPedidosProveedores: TAction;
    N74: TMenuItem;
    ProyecciondePedidosaProveedores1: TMenuItem;
    ImportarGastosRubros: TAction;
    ImportarGastosRubros1: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    VentasCtroCosto: TAction;
    VentasCentrodeCosto1: TMenuItem;
    TimerRecibos: TTimer;
    dskAlertRecibos: TJvDesktopAlert;
    ListadoAxum: TAction;
    AdvToolBarMenuButton104: TAdvToolBarMenuButton;
    N78: TMenuItem;
    N79: TMenuItem;
    ArticulosUsadosEnProduccion: TAction;
    AdvToolBarMenuButton105: TAdvToolBarMenuButton;
    ListadoValoresEnOrdenPago_Recibos: TAction;
    N80: TMenuItem;
    ImportarRelacionCodigoProveedor: TAction;
    ImpotarRelacionCodigoProveedor1: TMenuItem;
    N81: TMenuItem;
    CambioPreciosExpress: TAction;
    AdvGlowButton94: TAdvGlowButton;
    PedidosApp: TAction;
    AdvGlowButton95: TAdvGlowButton;
    AdvToolBarSeparator37: TAdvToolBarSeparator;
    RubrosListaPedidoMovil: TAction;
    N82: TMenuItem;
    RubrosListaPedioMovil1: TMenuItem;
    TimerPedidosMovil: TTimer;
    dskAlertPedidoMovil: TJvDesktopAlert;
    UsuariosMovil: TAction;
    AdvGlowButton96: TAdvGlowButton;
    AdvToolBarSeparator38: TAdvToolBarSeparator;
    AdvToolBarMenuButton77: TAdvToolBarMenuButton;
    ListadoGastosObra: TAction;
    ListadoRecepcionesMercaderia: TAction;
    N83: TMenuItem;
    ListadoRecepcionesdeMercaderia1: TMenuItem;
    VerificaChe_OPago: TAction;
    Verificadorchequesde3enOrdendePago1: TMenuItem;
    N84: TMenuItem;
    N85: TMenuItem;
    InformarCAEAS: TAction;
    ImageListLarge2: TImageList;
    ImageListDos: TImageList;
    AdvToolPanelTab1: TAdvToolPanelTab;
    AdvToolPanel1: TAdvToolPanel;
    AdvGlowButton97: TAdvGlowButton;
    AdvGlowButton98: TAdvGlowButton;
    AdvGlowButton99: TAdvGlowButton;
    AdvGlowButton100: TAdvGlowButton;
    AdvGlowButton101: TAdvGlowButton;
    AdvGlowButton102: TAdvGlowButton;
    AdvGlowButton103: TAdvGlowButton;
    Panel1: TPanel;
    AdvGlowButton104: TAdvGlowButton;
    AdvGlowButton105: TAdvGlowButton;
    PedidosSectores: TAction;
    PedidosSectores1: TMenuItem;
    ImpresionRotulos: TAction;
    AdvGlowButton106: TAdvGlowButton;
    PedidosAgrupados: TAction;
    RemitarPedidosAgrupados1: TMenuItem;
    AdvBadgeButton1: TAdvBadgeButton;
    TimerPresupuestoAlCobro: TTimer;
    AdvToolBarMenuButton106: TAdvToolBarMenuButton;
    RegistroPikeo: TAction;
    AdvGlowButton107: TAdvGlowButton;
    ListadoMateriasPrimasUsadas: TAction;
    ListadoMateriasPrimasUsadas1: TMenuItem;
    AdvToolBar14: TAdvToolBar;
    AdvGlowButton108: TAdvGlowButton;
    LecturaBascula: TAction;
    KanbanPresupuesto: TAction;
    AdvGlowButton109: TAdvGlowButton;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    AdvSearchEditAcciones: TAdvSearchEdit;
    AdvGlowButton110: TAdvGlowButton;
    AgenteIA: TAction;
    StockEceptuadosIVAVta: TAction;
    N86: TMenuItem;
    ArticulosEceptuadosdeIVAenlaVenta1: TMenuItem;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    AdministradorNPMovil: TAction;
    AdministradoresdeNotadePedidosMovil1: TMenuItem;
    N87: TMenuItem;
    RegistroProduccionDiaria: TAction;
    ControlTransacciones: TAction;
    N88: TMenuItem;
    ControlTransacciones1: TMenuItem;
    AdvGlowButton111: TAdvGlowButton;
    ReasignacionPartesDiariosProd: TAction;
    ReasignacionPartesDiariosProd1: TMenuItem;
    ReferenciasPlataformas: TAction;
    AdvToolBar43: TAdvToolBar;
    AdvGlowButton112: TAdvGlowButton;
    VtasPlataformas: TAction;
    AdvToolBar44: TAdvToolBar;
    AdvGlowButton113: TAdvGlowButton;
    TMSFNCPopupMenu1: TTMSFNCPopupMenu;
    TMSFNCRibbon1: TTMSFNCRibbon;
    TMSFNCRibbon1QAT: TTMSFNCRibbonQAT;
    TMSFNCRibbon1Caption: TTMSFNCRibbonCaption;
    TMSFNCRibbon1BottomContainer: TTMSFNCRibbonBottomContainer;
    TMSFNCRibbon1Icon: TTMSFNCRibbonIcon;
    TMSFNCRibbon1SystemMenu: TTMSFNCRibbonSystemMenu;
    TMSFNCRibbon1SystemMenuHelpButton: TTMSFNCRibbonSystemMenuToolBarButton;
    TMSFNCRibbon1SystemMenuMaximizeButton: TTMSFNCRibbonSystemMenuToolBarButton;
    TMSFNCRibbon1SystemMenuMinimizeButton: TTMSFNCRibbonSystemMenuToolBarButton;
    TMSFNCRibbon1SystemMenuCloseButton: TTMSFNCRibbonSystemMenuToolBarButton;
    TMSFNCRibbon1Wrapper: TTMSFNCRibbonToolBarWrapper;
    TMSFNCRibbon1PageControl: TTMSFNCRibbonPageControl;
    TMSFNCRibbon1PageControlFileButton: TTMSFNCRibbonFileButton;
    TMSFNCRibbon1PageControlContainer: TTMSFNCRibbonContainer;
    TMSFNCRibbon1PageControlPage0: TTMSFNCRibbonPageControlContainer;
    TMSFNCRibbon1PageControlPage1: TTMSFNCRibbonPageControlContainer;
    TMSFNCRibbon1PageControlPage2: TTMSFNCRibbonPageControlContainer;
    TMSFNCRibbon1PageControlPage1ToolBar0: TTMSFNCRibbonToolBar;
    TMSFNCRibbon1PageControlPage1ToolBar1: TTMSFNCRibbonToolBar;
    TMSFNCRibbon1PageControlPage1ToolBar2: TTMSFNCRibbonToolBar;
    TMSFNCRibbon1PageControlPage2ToolBar0: TTMSFNCRibbonToolBar;
    TMSFNCRibbon1PageControlPage2ToolBar1: TTMSFNCRibbonToolBar;
    TMSFNCRibbon1PageControlPage2ToolBar2: TTMSFNCRibbonToolBar;
    TMSFNCBitmapContainer1: TTMSFNCBitmapContainer;
    TMSFNCRibbonToolBar2: TTMSFNCRibbonToolBar;
    TMSFNCRibbonDefaultToolBarButton7: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton8: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton9: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton10: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton11: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton12: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton13: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton14: TTMSFNCRibbonDefaultToolBarButton;
    ConsultaCertificado: TAction;
    ListadoNovedadesFacturas: TAction;
    ListadoNovedadesdeFacturas1: TMenuItem;
    PeidosWeb: TAction;
    AdvToolBar45: TAdvToolBar;
    AdvGlowButton114: TAdvGlowButton;
    TMSFNCRibbonToolBar1: TTMSFNCRibbonToolBar;
    TMSFNCRibbonDefaultToolBarButton1: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton2: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton3: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton4: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton5: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton6: TTMSFNCRibbonDefaultToolBarButton;
    TMSFNCRibbonDefaultToolBarButton15: TTMSFNCRibbonDefaultToolBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ProveedoresExecute(Sender: TObject);
    procedure ClientesExecute(Sender: TObject);
    procedure ArticulosDatosExecute(Sender: TObject);
    procedure FacturasVtaCCExecute(Sender: TObject);
    procedure FacturasCtdoExecute(Sender: TObject);
    procedure ChequerasExecute(Sender: TObject);
    procedure TCreditoExecute(Sender: TObject);
    procedure BancosExecute(Sender: TObject);
    procedure CuentasCajaBancoExecute(Sender: TObject);
    procedure FacturaCompraCCExecute(Sender: TObject);
    procedure PresupuestosExecute(Sender: TObject);
    procedure ReciboCobranzaExecute(Sender: TObject);
    procedure FacturaCompraContadoExecute(Sender: TObject);
    procedure AplicacionesCtaCteVtaExecute(Sender: TObject);
    procedure CtaCteClientesExecute(Sender: TObject);
    procedure FormaPagoExecute(Sender: TObject);
    procedure OrdenPagoExecute(Sender: TObject);
    procedure CtaCteProveedoresExecute(Sender: TObject);
    procedure CerrarExecute(Sender: TObject);
    procedure AplicacionesCtaCteCompraExecute(Sender: TObject);
    procedure SaldoDeudaClientesExecute(Sender: TObject);
    procedure VerificadorCtacteExecute(Sender: TObject);
    procedure SaldoDeudaProveedoresExecute(Sender: TObject);
    procedure MarcasExecute(Sender: TObject);
    procedure RubrosExecute(Sender: TObject);
    procedure LibroIvaCompraExecute(Sender: TObject);
    procedure SubRubrosExecute(Sender: TObject);
    procedure LibroIvaVentaExecute(Sender: TObject);
    procedure PlanilladeChe3Execute(Sender: TObject);
    procedure CajaConsultaExecute(Sender: TObject);
    procedure ActualizacionPreciosExecute(Sender: TObject);
    procedure ListaPrecioPersonalizadaExecute(Sender: TObject);
    procedure AjustesCCProveedoresExecute(Sender: TObject);
    procedure AjustesCCClientesExecute(Sender: TObject);
    procedure LstRetencionesExecute(Sender: TObject);
    procedure DepositosExecute(Sender: TObject);
    procedure EmpresaExecute(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure AlicuotaIvaExecute(Sender: TObject);
    procedure InscripcionExecute(Sender: TObject);
    procedure PercepcionIvaExecute(Sender: TObject);
    procedure PercepcionIBExecute(Sender: TObject);
    procedure ConsultaStockExecute(Sender: TObject);
    procedure ComprobantesExecute(Sender: TObject);
    procedure EgresoCajaExecute(Sender: TObject);
    procedure RubroGastosExecute(Sender: TObject);
    procedure CuentasGastosExecute(Sender: TObject);
    procedure LocalidadesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WindowCloseAllExecute(Sender: TObject);
    procedure WindowsRestaurarExecute(Sender: TObject);
    procedure PlanGastosExecute(Sender: TObject);
    procedure CajaAperturaExecute(Sender: TObject);
    procedure OpercionesRealizadasExecute(Sender: TObject);
    procedure SucursalesExecute(Sender: TObject);
    procedure TransferenciaExecute(Sender: TObject);
    procedure ControlNumeracionExecute(Sender: TObject);
    procedure ControladorFcVtaExecute(Sender: TObject);
    procedure GraficoVentasExecute(Sender: TObject);
    procedure RentabilidadExecute(Sender: TObject);
    procedure Vta_a_ClienteProductoExecute(Sender: TObject);
    procedure AnalisiCreditoClientesExecute(Sender: TObject);
    procedure AjustesStockExecute(Sender: TObject);
    procedure ControlPagoClientesExecute(Sender: TObject);
    procedure TRetencionesExecute(Sender: TObject);
    procedure ArticulosExentosVendidosExecute(Sender: TObject);
    procedure AcercaDeExecute(Sender: TObject);
    procedure RemitosExecute(Sender: TObject);
    procedure AcAgendaExecute(Sender: TObject);
    procedure UsuariosExecute(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure CondicionesPagoExecute(Sender: TObject);
    procedure ProvinciasExecute(Sender: TObject);
    procedure ZonasExecute(Sender: TObject);
    procedure ConceptosBancariosExecute(Sender: TObject);
    procedure Ing_EgrBancariosExecute(Sender: TObject);
    procedure DepositosBancariosExecute(Sender: TObject);
    procedure TrasnfChequesExecute(Sender: TObject);
    procedure ConciliacionBcoExecute(Sender: TObject);
    procedure TransfEfectivoExecute(Sender: TObject);
    procedure ControladorFcCompraExecute(Sender: TObject);
    procedure CargoExecute(Sender: TObject);
    procedure PersonalExecute(Sender: TObject);
    procedure AdelantoSueldoExecute(Sender: TObject);
    procedure SaldosGastosExecute(Sender: TObject);
    procedure CobroChequesACajaExecute(Sender: TObject);
    procedure MonedasExecute(Sender: TObject);
    procedure OpcionesExecute(Sender: TObject);
    procedure IngresoCajaExecute(Sender: TObject);
    procedure ChequesEmitidosExecute(Sender: TObject);
    procedure ExistenciasExecute(Sender: TObject);
    procedure CierresFiscalesExecute(Sender: TObject);
    procedure CambiarPasswordExecute(Sender: TObject);
    procedure ActualizacionPrecios_2Execute(Sender: TObject);
    procedure ComprobantesEmitidosPorClienteExecute(Sender: TObject);
    procedure CompraCtaCteReducidaExecute(Sender: TObject);
    procedure FacturarRemitosExecute(Sender: TObject);
    procedure ConfiguraLocalExecute(Sender: TObject);
    procedure ListarPresupuestosExecute(Sender: TObject);
    procedure UnidadesStockExecute(Sender: TObject);
    procedure ControlCajaExecute(Sender: TObject);
    procedure ControlCpbteNoImpresosExecute(Sender: TObject);
    procedure CtaCtePersonalExecute(Sender: TObject);
    procedure IngresosPersonalExecute(Sender: TObject);
    procedure LiquidacionComisionesExecute(Sender: TObject);
    procedure ListaCheEmitidosExecute(Sender: TObject);
    procedure AsignarVendedoresExecute(Sender: TObject);
    procedure FacPorVendedorExecute(Sender: TObject);
    procedure ControlAperturaCajaExecute(Sender: TObject);
    procedure SaldoClientesMensualExecute(Sender: TObject);
    procedure CorrectorDecimalesExecute(Sender: TObject);
    procedure ManejaTriggersExecute(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure FacturarRtosAgrupadosExecute(Sender: TObject);
    procedure SaldoProveedoresMensualExecute(Sender: TObject);
    procedure ListadoArtGravIBExecute(Sender: TObject);
    procedure AnularCheExecute(Sender: TObject);
    procedure ListaPercepcionesExecute(Sender: TObject);
    procedure ABMFacturaModeloExecute(Sender: TObject);
    procedure FacturarModelosExecute(Sender: TObject);
    procedure GruposModeloExecute(Sender: TObject);
    procedure OrdenDeCompraExecute(Sender: TObject);
    procedure RecepcionOCompraExecute(Sender: TObject);
    procedure ImpresionOrdenCompraExecute(Sender: TObject);
    procedure PreciosEspecialesClientesExecute(Sender: TObject);
    procedure PonerStockCeroExecute(Sender: TObject);
    procedure AnalisisIngresoEgresoExecute(Sender: TObject);
    procedure RemplazoChequesExecute(Sender: TObject);
    procedure ControlDepositosStkExecute(Sender: TObject);
    procedure RearmarMovimientosdeBancoExecute(Sender: TObject);
    procedure CorrectorCeroCtaCteExecute(Sender: TObject);
    procedure CorrigeFechaFcVtaDetExecute(Sender: TObject);
    procedure CorrigeFechaFcCompDetExecute(Sender: TObject);
    procedure RelacionCompraVentaExecute(Sender: TObject);
    procedure CostosFijosExecute(Sender: TObject);
    procedure ArticulosProduccionExecute(Sender: TObject);
    procedure OrdenProduccionExecute(Sender: TObject);
    procedure OProducionProcesoExecute(Sender: TObject);
    procedure OProducionInicadasExecute(Sender: TObject);
    procedure AutorizaOrdenCompraExecute(Sender: TObject);
    procedure CategoriaProductosExecute(Sender: TObject);
    procedure ProductosExecute(Sender: TObject);
    procedure OrdenTrabajoSupExecute(Sender: TObject);
    procedure OrdenTrabajoPendientesExecute(Sender: TObject);
    procedure TransportesExecute(Sender: TObject);
    procedure OrdenCompraNuevasExecute(Sender: TObject);
    procedure OrdenCompraRealizadasExecute(Sender: TObject);
    procedure ListadoCpbtEmitidosExecute(Sender: TObject);
    procedure GraficoIntegradoExecute(Sender: TObject);
    procedure ListadoRecibosExecute(Sender: TObject);
    procedure GraficoAnalisisCobanzaExecute(Sender: TObject);
    procedure ListadoCompraPorRubroExecute(Sender: TObject);
    procedure PlanRubo_Subrubro_stockExecute(Sender: TObject);
    procedure LstOrdenTrabajoPorPuntosExecute(Sender: TObject);
    procedure LstOrdenTrabajoArchivadasExecute(Sender: TObject);
    procedure LstDetalleOrdenTrabajoPorClienteExecute(Sender: TObject);
    procedure RubroProveeExecute(Sender: TObject);
    procedure ListadoMovIngCajaExecute(Sender: TObject);
    procedure ExportarFcCompraExecute(Sender: TObject);
    procedure ImportarFcCompraExecute(Sender: TObject);
    procedure AsignaCodigoBarraExecute(Sender: TObject);
    procedure AsignaCajaUsuarioExecute(Sender: TObject);
    procedure ExportaStockExecute(Sender: TObject);
    procedure ImportarStockExecute(Sender: TObject);
    procedure ExportarFcVtaExecute(Sender: TObject);
    procedure ImportarFcVtaExecute(Sender: TObject);
    procedure ImportarClientesExecute(Sender: TObject);
    procedure ExportarClientesExecute(Sender: TObject);
    procedure ImportarProveedoresExecute(Sender: TObject);
    procedure ExportarProveedoresExecute(Sender: TObject);
    procedure NotaPedidoExecute(Sender: TObject);
    procedure AsignarStockProveedorExecute(Sender: TObject);
    procedure DetallePedidoExecute(Sender: TObject);
    procedure MovTransDepositoExecute(Sender: TObject);
    procedure CreacionListasDePreciosExecute(Sender: TObject);
    procedure ListadoOPagoExecute(Sender: TObject);
    procedure DetalleOTrabajoEmpladosExecute(Sender: TObject);
    procedure ControlUnidadesDeStockExecute(Sender: TObject);
    procedure ListadoDepositosBancariosExecute(Sender: TObject);
    procedure ComparativaPreciosExecute(Sender: TObject);
    procedure LogFileExecute(Sender: TObject);
    procedure ReemplazoChe3Execute(Sender: TObject);
    procedure ReArmarMovStockExecute(Sender: TObject);
    procedure ListadoMovStockExecute(Sender: TObject);
    procedure TomaInventarioExecute(Sender: TObject);
    procedure OrdenarMovStockExecute(Sender: TObject);
    procedure ConsultaXSerieExecute(Sender: TObject);
    procedure ListadoPoliticaPreciosExecute(Sender: TObject);
    procedure CalculadoraExecute(Sender: TObject);
    procedure SerieMayusculExecute(Sender: TObject);
    procedure VerStockComprometidoExecute(Sender: TObject);
    procedure ContorlFcDet_MovStockExecute(Sender: TObject);
    procedure PermutaSeriesExecute(Sender: TObject);
    procedure CreacionPoliticaComisionesExecute(Sender: TObject);
    procedure LiquidacionComisionesPorArticuloExecute(Sender: TObject);
    procedure RecepcionMercaderiaExecute(Sender: TObject);
    procedure ResumenMovStockExecute(Sender: TObject);
    procedure ListadoVtaRubroVendedorExecute(Sender: TObject);
    procedure ListadoSaldosEmpleadosExecute(Sender: TObject);
    procedure SaldosIngresosExecute(Sender: TObject);
    procedure ListadoCostoVtaExecute(Sender: TObject);
    procedure ControlMinMaxStockExecute(Sender: TObject);
    procedure JuridiccionesIIBBExecute(Sender: TObject);
    procedure RegimenesRetencionIvaExecute(Sender: TObject);
    procedure ControlCodigosSeriesExecute(Sender: TObject);
    procedure ReasignaCtasGastosIngresoExecute(Sender: TObject);
    procedure AsignaComprobantesExecute(Sender: TObject);
    procedure TasaRetGananciaExecute(Sender: TObject);
    procedure ListadoRetGanExecute(Sender: TObject);
    procedure AnulacionOPagoExecute(Sender: TObject);
    procedure MarcarCheReemplazadoExecute(Sender: TObject);
    procedure ListadoTransBcoExecute(Sender: TObject);
    procedure ListadoGastosBcoExecute(Sender: TObject);
    procedure ListadoDebitosExecute(Sender: TObject);
    procedure AnuacionReciboExecute(Sender: TObject);
    procedure ListadoArticulosVendidosExecute(Sender: TObject);
    procedure ListadoVtaClienteSucAsigandaExecute(Sender: TObject);
    procedure TasaRetIIBBExecute(Sender: TObject);
    procedure AjustesSeriesExecute(Sender: TObject);
    procedure ListadoRetencioIB_pagosExecute(Sender: TObject);
    procedure ListadoMovTCExecute(Sender: TObject);
    procedure ListadoPercep_IB_FcVtaExecute(Sender: TObject);
    procedure ListadoTxStockPendientesExecute(Sender: TObject);
    procedure ListadoFcCompraPorProveedorExecute(Sender: TObject);
    procedure AnulacionAdelantoSueldoExecute(Sender: TObject);
    procedure AnulacionDepBancoExecute(Sender: TObject);
    procedure ListadoOperacionesClientesExecute(Sender: TObject);
    procedure ControlIntegridadCtaCteVtaExecute(Sender: TObject);
    procedure TarjetaCreditoCompraExecute(Sender: TObject);
    procedure ControlIntegridadCtaCteCompraExecute(Sender: TObject);
    procedure ObrasExecute(Sender: TObject);
    procedure RemitosObraExecute(Sender: TObject);
    procedure PadronProveedoresRentasExecute(Sender: TObject);
    procedure DetalleObrasExecute(Sender: TObject);
    procedure ListaPreciosProveedoresExecute(Sender: TObject);
    procedure ImportarClientesExcelExecute(Sender: TObject);
    procedure ConsultaPreciosProveedoresExecute(Sender: TObject);
    procedure TasaRet_PercExecute(Sender: TObject);
    procedure TablaDePreciosExecute(Sender: TObject);
    procedure ABMTasasRet_Perc_IIBBExecute(Sender: TObject);
    procedure RMAEnvioExecute(Sender: TObject);
    procedure ImportarStockExcelExecute(Sender: TObject);
    procedure EtiquetasExecute(Sender: TObject);
    procedure ListadoRMAExecute(Sender: TObject);
    procedure RMARecepExecute(Sender: TObject);
    procedure TicketFacturaExecute(Sender: TObject);
    procedure NPedidoClienteExecute(Sender: TObject);
    procedure ListadoPendienteNPExecute(Sender: TObject);
    procedure LiquidacionTCExecute(Sender: TObject);
    procedure ConciliarCheuqesExecute(Sender: TObject);
    procedure ResumenTCExecute(Sender: TObject);
    procedure VtaRubroSubRubroExecute(Sender: TObject);
    procedure ImportarProveeExcelExecute(Sender: TObject);
    procedure ListadoGastosTCExecute(Sender: TObject);
    procedure FiltroCpbte_CCExecute(Sender: TObject);
    procedure ActualizaCostoVta_excelExecute(Sender: TObject);
    procedure FiltroCpbte_cc_compraExecute(Sender: TObject);
    procedure IngAjusteCCExcelExecute(Sender: TObject);
    procedure ListadoRelacionCompraVentaExecute(Sender: TObject);
    procedure ListadoVta_clienteRubroSubExecute(Sender: TObject);
    procedure ListadoCpbteGastosBancoExecute(Sender: TObject);
    procedure ABPreciosSombraExecute(Sender: TObject);
    procedure CambioPrecioSombraExecute(Sender: TObject);
    procedure AsignaRcCobradoExecute(Sender: TObject);
    procedure ListadoRecibosCobradorExecute(Sender: TObject);
    procedure Mosaico1Click(Sender: TObject);
    procedure PedidosSinfacturarExecute(Sender: TObject);
    procedure FlujoFondosExecute(Sender: TObject);
    procedure ListadoClientesCondVentaExecute(Sender: TObject);
    procedure ListadoFacVencidaExecute(Sender: TObject);
    procedure ListadoVtaTotalPorVendedorExecute(Sender: TObject);
    procedure ComposicionReciboExecute(Sender: TObject);
    procedure SaldoClientesMensual_AlDiaExecute(Sender: TObject);
    procedure ABCClientesExecute(Sender: TObject);
    procedure AliasExecute(Sender: TObject);
    procedure ListadoCpbtePorTipoExecute(Sender: TObject);
    procedure PresentacionExecute(Sender: TObject);
    procedure ListadoChe3DepositadosAntesExecute(Sender: TObject);
    procedure RtosPendientesExecute(Sender: TObject);
    procedure PersonalAccionesExecute(Sender: TObject);
    procedure ListadoConsumTCExecute(Sender: TObject);
    procedure TransInterbancariasExecute(Sender: TObject);
    procedure ReemplazoValoresIngExecute(Sender: TObject);
    procedure AsignaLoteTCExecute(Sender: TObject);
    procedure PlantillaExecute(Sender: TObject);
    procedure AbonadoGrupoExecute(Sender: TObject);
    procedure ListadoAjustesStockExecute(Sender: TObject);
    procedure AbonadoGrillaExecute(Sender: TObject);
    procedure AbonosGeneraCuopnesExecute(Sender: TObject);
    procedure DescuentosUsuariosExecute(Sender: TObject);
    procedure AsignarListaPrecioUsuarioExecute(Sender: TObject);
    procedure PagosAbonosExecute(Sender: TObject);
    procedure AbonoCuponExecute(Sender: TObject);
    procedure AdminTareasExecute(Sender: TObject);
    procedure AdministracionSeriesExecute(Sender: TObject);
    procedure PresupuestoOCDescuentosExecute(Sender: TObject);
    procedure PresupuestoOCRecargosExecute(Sender: TObject);
    procedure PresupuestoOCExecute(Sender: TObject);
    procedure ListadoVtasvsCobrosExecute(Sender: TObject);
    procedure ControlRetencionesExecute(Sender: TObject);
    procedure ControlTCExecute(Sender: TObject);
    procedure CorrigeNroRec_enMovCajaExecute(Sender: TObject);
    procedure DetallesNc_RcExecute(Sender: TObject);
    procedure ImportarMarcasExcelExecute(Sender: TObject);
    procedure ListadoCpbteCompraPortipoExecute(Sender: TObject);
    procedure CategoriasClientesExecute(Sender: TObject);
    procedure NotasVentasExecute(Sender: TObject);
    procedure DepositoUsuarioExecute(Sender: TObject);
    procedure ListadoConsumosObrasExecute(Sender: TObject);
    procedure NotasExecute(Sender: TObject);
    procedure UsuariosAutorizanExecute(Sender: TObject);
    procedure ListadoTxdeCajaExecute(Sender: TObject);
    procedure ListadoNVPendientesExecute(Sender: TObject);
    procedure ListadoAcreditacionesTCExecute(Sender: TObject);
    procedure RtosAFiscalExecute(Sender: TObject);
    procedure ListadoStockExecute(Sender: TObject);
    procedure ControlErroresChe3Execute(Sender: TObject);
    procedure PlantillaGrillaExecute(Sender: TObject);
    procedure ListadoStockGeneralExecute(Sender: TObject);
    procedure ListadoNPedidosCompraExecute(Sender: TObject);
    procedure NotaTransferenciaExecute(Sender: TObject);
    procedure GeoPosicionClientesExecute(Sender: TObject);
    procedure SaldoDeudaCliente_unoExecute(Sender: TObject);
    procedure NotaPedidoRevisionExecute(Sender: TObject);
    procedure GoogleMapExecute(Sender: TObject);
    procedure VtaDiariaVendedorExecute(Sender: TObject);
    procedure ControlCheques3Execute(Sender: TObject);
    procedure CheEmitidosDetalleExecute(Sender: TObject);
    procedure UsuariosAdminNPExecute(Sender: TObject);
    procedure pnCotizacionDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GruposDetalleVtaExecute(Sender: TObject);
    procedure PlanillaArmadoProductosExecute(Sender: TObject);
    procedure FacturarPlantillasExecute(Sender: TObject);
    procedure RecepcionArticulosGtiaExecute(Sender: TObject);
    procedure CorrigeDetalleFcCompExecute(Sender: TObject);
    procedure ListadoStockConsignacionExecute(Sender: TObject);
    procedure ListadoRecepcionGtiaExecute(Sender: TObject);
    procedure JuridiccionesIIBBLocalidadesExecute(Sender: TObject);
    procedure ConsultaPrecioExecute(Sender: TObject);
    procedure GtiasExtendidasExecute(Sender: TObject);
    procedure ListadoRecibosCobrador_conAplicacionesExecute(Sender: TObject);
    procedure AsignarJuridiccionExecute(Sender: TObject);
    procedure dskAlertaPedidosMessageClick(Sender: TObject);
    procedure JuridiccionExcepcionesExecute(Sender: TObject);
    procedure LstUltimaVtaClientesExecute(Sender: TObject);
    procedure ControlSaldosCtaCteVtaExecute(Sender: TObject);
    procedure PanelControlOPExecute(Sender: TObject);
    procedure ListadoCheEmitidos_OPagoExecute(Sender: TObject);
    procedure ServicioTecnicoExecute(Sender: TObject);
    procedure ListadoArticulosenSTExecute(Sender: TObject);
    procedure AcopioExecute(Sender: TObject);
    procedure EntregaAcopioExecute(Sender: TObject);
    procedure ListadoCompraArticulosProveeExecute(Sender: TObject);
    procedure ListadoTxStockAnuladasExecute(Sender: TObject);
    procedure LeerDatosCopolaExecute(Sender: TObject);
    procedure ListadoComprativoArticulosCompraExecute(Sender: TObject);
    procedure RelacionCobranzaVencimientoExecute(Sender: TObject);
    procedure Listado_ArtRubSubrExecute(Sender: TObject);
    procedure LstGastosRefContableExecute(Sender: TObject);
    procedure EstadosArticulosExecute(Sender: TObject);
    procedure ImportarRubroExcelExecute(Sender: TObject);
    procedure ImportarSubRubrosExcelExecute(Sender: TObject);
    procedure RetirosEmpleadosPorLotesExecute(Sender: TObject);
    procedure Importarvtas_PtoVtaMorphiExecute(Sender: TObject);
    procedure VencimientosExecute(Sender: TObject);
    procedure ABCComprasExecute(Sender: TObject);
    procedure CorrigeFechaTxExecute(Sender: TObject);
    procedure ControlCpbteRecibidosExecute(Sender: TObject);
    procedure ImpresionCuponesExecute(Sender: TObject);
    procedure LstGralVentasExecute(Sender: TObject);
    procedure LstVtasRubrosAnualExecute(Sender: TObject);
    procedure LstVtasVendedoresAnualesExecute(Sender: TObject);
    procedure LstPagosAnualesPersonalExecute(Sender: TObject);
    procedure ValoresCompartidosExecute(Sender: TObject);
    procedure ListadoChRecibidosExecute(Sender: TObject);
    // procedure CrearAccesoDirectoExecute(Sender: TObject);
    procedure CDSAccesosNewRecord(DataSet: TDataSet);
    procedure AccesoDirecto1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AccesoDirecto1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure AccesoDirecto1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    // procedure CargarAccesosDirectosExecute(Sender: TObject);
    procedure BorrarAccClick(Sender: TObject);
    // procedure AsignarAccionClick(Sender: TObject);
    procedure RenombrarClick(Sender: TObject);
    procedure edNombreAccDireExit(Sender: TObject);
    procedure edNombreAccDireKeyPress(Sender: TObject; var Key: Char);
    procedure CambioMercaderiaExecute(Sender: TObject);
    // procedure tvMenuDblClick(Sender: TObject);
    procedure btPanelTreeClick(Sender: TObject);
    procedure CotizacionClienteExecute(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LstPreciosEspecialesClientesExecute(Sender: TObject);
    procedure ControlDetallesCtaCteVtaExecute(Sender: TObject);
    procedure LstAsinacionesEmpleadosExecute(Sender: TObject);
    procedure ListadoFcVtaExecute(Sender: TObject);
    procedure ListadoFcCompExecute(Sender: TObject);
    procedure DescuentosEspecialesExecute(Sender: TObject);
    procedure TimerPedido_TxTimer(Sender: TObject);
    procedure ListaPorSucursalExecute(Sender: TObject);
    procedure ControlVtoCuponesExecute(Sender: TObject);
    procedure IngresosPersonalLoteExecute(Sender: TObject);
    procedure CpbteContabilizarExecute(Sender: TObject);
    procedure PreciosPlantillasExecute(Sender: TObject);
    procedure ControlDetalleVtaExecute(Sender: TObject);
    procedure PanelImportacionVtasExecute(Sender: TObject);
    procedure PanelImportacionComprasExecute(Sender: TObject);
    procedure IngresarLotePagoCuponesExecute(Sender: TObject);
    procedure ListadoChe3PorcpbteExecute(Sender: TObject);
    procedure CtroCostoExecute(Sender: TObject);
    procedure LstGastosCtroCostoExecute(Sender: TObject);
    procedure InformeGeneralExecute(Sender: TObject);
    procedure CambiarArticulosFcCompraExecute(Sender: TObject);
    procedure CajaResumenExecute(Sender: TObject);
    procedure RevisionCuponAbonoExecute(Sender: TObject);
    procedure DetalleMovimientoStockDiarioExecute(Sender: TObject);
    procedure OPagosExcluidasGananciaExecute(Sender: TObject);
    procedure ListadoSeriesExecute(Sender: TObject);
    procedure HojaDeCargaExecute(Sender: TObject);
    procedure SaldoIngresosEgresosExecute(Sender: TObject);
    procedure CopiarPreciosExecute(Sender: TObject);
    procedure TipoServiciosExecute(Sender: TObject);
    procedure ListaStock_precio_fisicoExecute(Sender: TObject);
    procedure ComposicionVta_CobroExecute(Sender: TObject);
    procedure ListadoNovedadesStockExecute(Sender: TObject);
    procedure AsignactaGasto_stockExecute(Sender: TObject);
    procedure ControlRubrosStockExecute(Sender: TObject);
    procedure LstPagoPersonalExecute(Sender: TObject);
    procedure Control_mov_che3Execute(Sender: TObject);
    procedure AsignaVendedor_clienteExecute(Sender: TObject);
    procedure ControlPercepIIBBTCExecute(Sender: TObject);
    procedure ControlAsignacionRto_FcExecute(Sender: TObject);
    procedure ImpresionValesExecute(Sender: TObject);
    procedure TrazabilidadStockExecute(Sender: TObject);
    procedure ControlPagoProveedoresExecute(Sender: TObject);
    procedure RevisionMovCHe3Execute(Sender: TObject);
    procedure SaldoAFechaComprasExecute(Sender: TObject);
    procedure ListadoMovIng_EgrExecute(Sender: TObject);
    procedure ComposicionDeudaCpraExecute(Sender: TObject);
    procedure ComposicionDeudaVtaExecute(Sender: TObject);
    procedure ControlRtoHuerfanosExecute(Sender: TObject);
    procedure CalcFiancieraExecute(Sender: TObject);
    procedure TimerTx_StockTimer(Sender: TObject);
    procedure PanelImportacionAjustesStockExecute(Sender: TObject);
    procedure ImportacionExistenciasExecute(Sender: TObject);
    procedure ComposicionIngresosExecute(Sender: TObject);
    procedure AdministracionFcModeloExecute(Sender: TObject);
    procedure ArtiPendientesOCExecute(Sender: TObject);
    procedure Resolucion3886Execute(Sender: TObject);
    procedure ImportarPreventaExecute(Sender: TObject);
    procedure PanelOTrabajoExecute(Sender: TObject);
    procedure PanelAcopiosExecute(Sender: TObject);
    procedure LstAcopiosExecute(Sender: TObject);
    procedure PlanillaPedidoExecute(Sender: TObject);
    procedure ListadoEntregasAcopiosExecute(Sender: TObject);
    procedure Exportar_DebitosTCExecute(Sender: TObject);
    procedure BorradorPedidoExecute(Sender: TObject);
    procedure PrestadoresExecute(Sender: TObject);
    procedure ComprobantesAfipExecute(Sender: TObject);
    procedure PromoCuponesPagoExecute(Sender: TObject);
    // procedure CambiarIcono1Click(Sender: TObject);
    procedure ComisionPorPlanExecute(Sender: TObject);
    procedure ImportacionComprasGeneralExecute(Sender: TObject);
    procedure AdicionalesClientesExecute(Sender: TObject);
    procedure ProyeccionAnualesExecute(Sender: TObject);
    procedure ImportacionVtaGeneralExecute(Sender: TObject);
    procedure LstPlantillasExecute(Sender: TObject);
    procedure FeriadosExecute(Sender: TObject);
    procedure TrazabilidadCompraExecute(Sender: TObject);
    procedure ImportarDesctosClientesExecute(Sender: TObject);
    procedure ConsolidacionAcopiosExecute(Sender: TObject);
    procedure LstOTrabajoExecute(Sender: TObject);
    procedure ABMVencimientosExecute(Sender: TObject);
    procedure dskVencimientosMessageClick(Sender: TObject);
    procedure ImportarCobroTCExecute(Sender: TObject);
    procedure cbEstilo_oldClick(Sender: TObject);
    procedure ImagenStrechaExecute(Sender: TObject);
    procedure ImagenCuadriculaExecute(Sender: TObject);
    procedure ImagenExpandidaExecute(Sender: TObject);
    procedure AsiganrAcciondeManager1Click(Sender: TObject);
    procedure PedidosMorphiExecute(Sender: TObject);
    procedure DespachoImpoExecute(Sender: TObject);
    procedure ImagenCleanExecute(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ImportarRipsaExecute(Sender: TObject);
    procedure ImpoConversionFcVta_CompExecute(Sender: TObject);
    procedure ControlTxBancoExecute(Sender: TObject);
    procedure ReciboPorLoteExecute(Sender: TObject);
    procedure Ventas_UnicoStockExecute(Sender: TObject);
    procedure ConsultaCuitExecute(Sender: TObject);
    procedure ListadoRemitosConDetalle2Execute(Sender: TObject);
    procedure MovOTrabajoExecute(Sender: TObject);
    procedure ControlChePropioDuplicadoExecute(Sender: TObject);
    procedure RubroClientesExecute(Sender: TObject);
    procedure PlanerOTrabajoExecute(Sender: TObject);
    procedure AjusteLotesStockExecute(Sender: TObject);
    procedure CtaCteAcopioExecute(Sender: TObject);
    procedure AdminTransporteExecute(Sender: TObject);
    procedure PlanifVtoTransportesExecute(Sender: TObject);
    procedure UnidadesTrExecute(Sender: TObject);
    procedure UnidadesTrAnexosExecute(Sender: TObject);
    procedure EstacionProduccionExecute(Sender: TObject);
    procedure PlanificacionExecute(Sender: TObject);
    procedure lbDolar_oldClick(Sender: TObject);
    procedure LstMovCajaGralExecute(Sender: TObject);
    procedure ListadoControlOTrabajoExecute(Sender: TObject);
    procedure TipoMovCCCompraExecute(Sender: TObject);
    procedure MovCCAuxCompExecute(Sender: TObject);
    procedure ImportarVisaTxtExecute(Sender: TObject);
    procedure SectoresProduccionExecute(Sender: TObject);
    procedure MaterialesProduccionExecute(Sender: TObject);
    procedure ParteDiarioExecute(Sender: TObject);
    procedure IngresoChequesAnuladosExecute(Sender: TObject);
    procedure ResumenPedidosExecute(Sender: TObject);
    procedure ExportarRtosExecute(Sender: TObject);
    procedure ImportarRemitosExecute(Sender: TObject);
    procedure PedidosExecute(Sender: TObject);
    procedure PersonalMotivosValesExecute(Sender: TObject);
    procedure ImportacionPersonalExecute(Sender: TObject);
    procedure ListadoDetalleOCExecute(Sender: TObject);
    procedure DetallePedidosRealizadosExecute(Sender: TObject);
    procedure MotivosAjustesCCVtaExecute(Sender: TObject);
    procedure MotivosAjustesComprasExecute(Sender: TObject);
    procedure ListadoAjustesCtaCteExecute(Sender: TObject);
    procedure ListadoPresupuestosDetalleExecute(Sender: TObject);
    procedure MotivosAjustesStockExecute(Sender: TObject);
    procedure ListadoRetIvaEfectuadasExecute(Sender: TObject);
    procedure HistorialMovCajaExecute(Sender: TObject);
    procedure TimerFcElectronicaTimer(Sender: TObject);
    procedure ReciboExpressExecute(Sender: TObject);
    procedure LstTransferenciasInterbancExecute(Sender: TObject);
    procedure TimerMinimoTimer(Sender: TObject);
    procedure IngresarFechaFiscalVtaExecute(Sender: TObject);
    procedure TimerPedidoTimer(Sender: TObject);
    procedure LiquidacionPrimariaGranosExecute(Sender: TObject);
    procedure Promo_CantExecute(Sender: TObject);
    procedure ResumenGralCajaExecute(Sender: TObject);
    procedure ListadoHistorialPreciosExecute(Sender: TObject);
    procedure AdminPLUExecute(Sender: TObject);
    procedure FrameMenu1BitBtn1Click(Sender: TObject);
    procedure AdvGlowMenuButton10Click(Sender: TObject);
    procedure UsuariosLstRubrosExecute(Sender: TObject);
    procedure ListadoProduccionPIExecute(Sender: TObject);
    procedure ListadoComprasCabDetExecute(Sender: TObject);
    procedure ArqueoCajaExecute(Sender: TObject);
    procedure OrdenacionRubrosExecute(Sender: TObject);
    procedure StockTipoAdicionalExecute(Sender: TObject);
    procedure RecepcionRepartoGrillaExecute(Sender: TObject);
    procedure ListadoCheRemplazadosExecute(Sender: TObject);
    procedure PlantillaRecepRepartoExecute(Sender: TObject);
    procedure VideosTutorialesExecute(Sender: TObject);
    procedure ABCProveedoresExecute(Sender: TObject);
    procedure ArmadoAdicionalPlantillaPedidoExecute(Sender: TObject);
    procedure DetallePrevisionExecute(Sender: TObject);
    procedure ControlPermisosExecute(Sender: TObject);
    procedure ControlAsignacionPedidosPrevisionExecute(Sender: TObject);
    procedure StockAlquilerExecute(Sender: TObject);
    procedure TimerTareasTimer(Sender: TObject);
    procedure dskTareasMessageClick(Sender: TObject);
    procedure ImportarMercadoPagoExecute(Sender: TObject);
    procedure PacientesExecute(Sender: TObject);
    procedure ListadoVentaCabDetExecute(Sender: TObject);
    procedure PaisesExecute(Sender: TObject);
    procedure ListadoArticulosProduccionExecute(Sender: TObject);
    procedure AltaCAEAExecute(Sender: TObject);
    procedure AdvAlertCheAlcobroAlertClick(Sender: TObject);
    procedure FiscalizaLoteExecute(Sender: TObject);
    procedure AdvAlertPedidosAlertClick(Sender: TObject);
    procedure AdvAlertMinimoDeleteMessage(Sender: TObject; index: Integer);
    procedure AdvAlertVencimientosDeleteMessage(Sender: TObject;
      index: Integer);
    procedure AdvAlertElectronicaAlertClick(Sender: TObject);
    procedure DskAlertTareasCloseButtonClick(Sender: TObject);
    procedure dskAlertPedidoMessageClick(Sender: TObject);
    procedure dskAlertPedidoCloseButtonClick(Sender: TObject);
    procedure DskAlertElectronicaMessageClick(Sender: TObject);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
    procedure CierreCajaExpressExecute(Sender: TObject);
    procedure Obra_TipoExecute(Sender: TObject);
    procedure PersonalCategoriasExecute(Sender: TObject);
    procedure ConceptosExecute(Sender: TObject);
    procedure LiquidacionHaberesExecute(Sender: TObject);
    procedure StockExpressExecute(Sender: TObject);
    procedure DepositoVendedorExecute(Sender: TObject);
    procedure LimpiarLogExecute(Sender: TObject);
    procedure ListadoChequesCompartidosExecute(Sender: TObject);
    procedure TipoLiquidacionSuelddoExecute(Sender: TObject);
    procedure uilSecurityDlg1GroupAdded(Sender: TObject; GroupName: string);
    procedure TimerTrialTimer(Sender: TObject);
    procedure dskAlertaTrialShow(Sender: TObject);
    procedure dskAlertaTrialClose(Sender: TObject);
    procedure MovimientoSemanalExecute(Sender: TObject);
    procedure ImportarFcCompraAFIPExecute(Sender: TObject);
    procedure ImportarFcVentaAFIPExecute(Sender: TObject);
    procedure LecturaRelojExecute(Sender: TObject);
    procedure ArchivosNextBynExecute(Sender: TObject);
    procedure IngresoCarnesExecute(Sender: TObject);
    procedure AdministracionCarnesExecute(Sender: TObject);
    procedure LecturaXMLHasarExecute(Sender: TObject);
    procedure ListadoClientes_LDRExecute(Sender: TObject);
    procedure HelpExecute(Sender: TObject);
    procedure BorradorInventarioExecute(Sender: TObject);
    procedure ListadoBorradorOCExecute(Sender: TObject);
    procedure ListasActualizanPrecioExecute(Sender: TObject);
    procedure GoogleMapTMSExecute(Sender: TObject);
    procedure TestGoogleExecute(Sender: TObject);
    procedure LstPercepcionIva_VtaExecute(Sender: TObject);
    procedure dskAlertPedidos_TxMessageClick(Sender: TObject);
    procedure dskAlertPedidos_TxCloseButtonClick(Sender: TObject);
    procedure pnPedidosClose(Sender: TObject);
    procedure sgPedidosDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure TimerVencimientosTimer(Sender: TObject);
    procedure DskAlertMinimoCloseButtonClick(Sender: TObject);
    procedure DskAlertVencimientosCloseButtonClick(Sender: TObject);
    procedure dskAlertaTrialCloseButtonClick(Sender: TObject);
    procedure FDEventAlerter1Alert(ASender: TFDCustomEventAlerter;
      const AEventName: string; const AArgument: Variant);
    procedure HistorialCostoProduccionExecute(Sender: TObject);
    procedure NovedadesPersonalExecute(Sender: TObject);
    procedure CrearAccesoDirectoExecute(Sender: TObject);
    procedure ProyeccionPedidosProveedoresExecute(Sender: TObject);
    procedure ImportarGastosRubrosExecute(Sender: TObject);
    procedure VentasCtroCostoExecute(Sender: TObject);
    procedure TimerRecibosTimer(Sender: TObject);
    procedure dskAlertRecibosMessageClick(Sender: TObject);
    procedure dskAlertRecibosCloseButtonClick(Sender: TObject);
    procedure ListadoAxumExecute(Sender: TObject);
    procedure ArticulosUsadosEnProduccionExecute(Sender: TObject);
    procedure ListadoValoresEnOrdenPago_RecibosExecute(Sender: TObject);
    procedure ImportarRelacionCodigoProveedorExecute(Sender: TObject);
    procedure CambioPreciosExpressExecute(Sender: TObject);
    procedure PedidosAppExecute(Sender: TObject);
    procedure RubrosListaPedidoMovilExecute(Sender: TObject);
    procedure TimerPedidosMovilTimer(Sender: TObject);
    procedure dskAlertPedidoMovilMessageClick(Sender: TObject);
    procedure dskAlertPedidoMovilCloseButtonClick(Sender: TObject);
    procedure UsuariosMovilExecute(Sender: TObject);
    procedure ListadoGastosObraExecute(Sender: TObject);
    procedure ListadoRecepcionesMercaderiaExecute(Sender: TObject);
    procedure VerificaChe_OPagoExecute(Sender: TObject);
    procedure InformarCAEASExecute(Sender: TObject);
    procedure PedidosSectoresExecute(Sender: TObject);
    procedure ImpresionRotulosExecute(Sender: TObject);
    procedure PedidosAgrupadosExecute(Sender: TObject);
    procedure AdvBadgeButton1Click(Sender: TObject);
    procedure TimerPresupuestoAlCobroTimer(Sender: TObject);
    procedure RegistroPikeoExecute(Sender: TObject);
    procedure ListadoMateriasPrimasUsadasExecute(Sender: TObject);
    procedure AdvGlowButton108Click(Sender: TObject);
    procedure LecturaBasculaExecute(Sender: TObject);
    procedure KanbanPresupuestoExecute(Sender: TObject);
    procedure DskAlertVencimientosMessageClick(Sender: TObject);
    procedure AdvSearchEditAccionesSelect(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure tbpMenuGeneralExpand(Sender: TObject);
    procedure AgenteIAExecute(Sender: TObject);
    procedure StockEceptuadosIVAVtaExecute(Sender: TObject);
    procedure AdministradorNPMovilExecute(Sender: TObject);
    procedure RegistroProduccionDiariaExecute(Sender: TObject);
    procedure ControlTransaccionesExecute(Sender: TObject);
    procedure ReasignacionPartesDiariosProdExecute(Sender: TObject);
    procedure ReferenciasPlataformasExecute(Sender: TObject);
    procedure VtasPlataformasExecute(Sender: TObject);
    procedure TMSFNCRibbon1PageControlClick(Sender: TObject);
    procedure ConsultaCertificadoExecute(Sender: TObject);
    procedure ListadoNovedadesFacturasExecute(Sender: TObject);
    procedure PeidosWebExecute(Sender: TObject);
    procedure tbpMenuGeneralTabClick(Sender: TObject; Page: Integer);
  private
    procedure ThreadElectronicaFin(Sender: TObject);
    procedure ThreadPedidoTxFin(Sender: TObject);
    procedure ThreadMinimoFin(Sender: TObject);
    procedure ThreadVencimientosFin(Sender: TObject);
    procedure ThreadTareasFin(Sender: TObject);
    procedure ThreadTx_StockFin(Sender: TObject);
    procedure ThreadCobranzaFin(Sender: TObject);
    procedure ThreadPedidoMovilFin(Sender: TObject);
    procedure ThreadFin(Sender: TObject);
    procedure ThreadFinPresupuesto(Sender: TObject);
    procedure CargarAccionesEnBuscador;
    { Private declarations }
  public
    { Public declarations }
    MouseDownSpot  : TPoint;
    Seleccionado   : Boolean;
    AccNombre      : String;
    DepositoEnUso  : Integer;
    Lista          : TListBox;
    TViewMenu      : TTreeView;
    EditTemp       : TEdit;
    PathTx         : String;
    DatosSinBDEPath: String;
    // este lo cambie aca para hacer los SQLConect en Ejecucion
    NroEstilo: Integer;
    FinalizarAvisoMinimo: Boolean;
    FinalizarAvisoVencimiento: Boolean;
    MuestraPresupuestos:Boolean;

    procedure AsignarVariablesGlobales;
    procedure AsignarMenuLateral;
    // procedure CargaTrewView(MyAction:TActionClients; Nod: TTreeNode);

    // function EncontrarNo(const aNome: string): TTreeNode;
  end;

var
  FMenu: TFMenu;
  QCaja: TFDQuery;
  TituloOpcion: String;
  ControlVencimientos: Boolean;
  sucursal: String;

implementation

uses
  UStock_2, UFactura_2,
  UChequeras_2, UTarjetaCredito_2, UBancos_2, UCtaCaja_2, UCompra_2,
  UPresupuesto_2, URecibo_2, UAplicacionesCCVta_2,
  UCtaCteVta, UFPago_2, UAcercaDe, UCtaCteCompra,
  USaldosClientes, USaldosProveedores, UMarcas_2,
  URubro_2, ULibroIvaCompra_2, USubRubro_2, ULibroIvaVenta_2,
  UPlanillaCheTercero,
  UCaja, UCambioPrecio, UListaPreciosPersonalizada,
  UAjustesCCProveedores, UAjustesCCClientes_2, UDepositos_2,
  UEmpresa, UAlicuotasIva, UConsultaStock, UComprobantes, UEgresoCaja,
  ULocalidades,
  UPlanCuentaDeGastos, UAperturaCaja, UInformeVta, USucursal, UTransferencia,
  UOPago_2, UCompraCtdo_2, UFacturaCtdo_2, UClientes_2, UProveedor_2,
  UControlNumeracion, UAplicacionesCCCompra_2, UControlCalculoImpuesto,
  UInscripcion_2, UGraficoVentas, UControlCtaCte,
  UPercepcionIB_2, UPercepcionIva_2, URentabilidad, UVentaPorCliente,
  UAnalisisCreditoCliente, UAjusteMercaderia,
  URelacionPagoVencimientoClientes, UTRetenciones, UVtaArticulosExentos,
  URemitos, UAgenda, UCondicionPago, UProvincia, UZona, UConceptosBancarios,
  UGastosBancarios, UDepositosBancarios, UResumenBco, UTransferenciaCh3,
  UTransferenciaEfectivo, UControlCalculoImpuestoCompra, UCargos,
  UPersonal, UGastosRubros, UGastosCuentas, UAdelantosSueldos,
  USaldosGastos, UChequesACaja, UMoneda, UOpciones, UIngresoCaja,
  UChequesEmitidos, UConsultaExistencia, UControlCierreFiscal,
  UCambioPrecio_2, UVtaPorClienteProducto,
  UFacturarRemitos, UConfiguraIni, UListaPresupuestos,
  UUnidades, UControladorCaja,
  UControlComprobantesNoImpresos, UCtaCteEmpleados, UIngresosCtaEmpleados,
  UControlComisiones, UListadoCheEmitidos, UControlAsignaVendedor,
  UListadoFcPorVendedor, UControlAperturaCaja, USaldoClientesMensual,
  UCorrectorDecimales, UManejadorTrigger, UFacturarRemitosAgrupados,
  USaldoProveedoresMensual, UListadoArtGravEnIngBrutosVentas,
  UListadoPercepciones, UFacModelo, UFacturarModelos,
  UGrupoModelo, UOrdenCompra, UPreciosEspecialesClientes, UAjusteStockCero,
  UAnalisisIngresosEgresos, URemplazoCheques, UCorrectorDeCero,
  UComparacionCompraVenta, UCostosFijos, UStockProduccion, UOrdenProduccion,
  UOProduccionProceso, UOProduccionIniciada, UOCompraAutorizacion,
  UOCompraRecepcion, UOCompraImpresion, UCategoriaProductos, UProductos,
  UOrdenDeTrabajo, UOrdenTrabajoPendientes, UTransportes, UOCompraNuevas,
  UOCompraRealizadas, UControlCpbteEmitidos, UGraficoIntegrado,
  UListadoRecibos, UAnalisiCobranza, ULstCompraPorRubro,
  UPlanRubo_SubRubro_Stock, UListadoOtPuntaje, ULstOTrabajoArchivada,
  UListadoOTPorCliente_ConDetalle, URubrosProveedores, UListadoMovCaja,
  UExportadorFcComp, UImportarFcComp, UAsignarCodigoBarra, UCajaUser,
  UExportaArticulos, UImportarStock, UExportadorFcVta, UImportarFcVta,
  UImportarClientes, UExpotadorClientes, UImportarProveedores,
  UExpotadorProveedores, UNotaPedido, URelacionStockProveedor,
  UDetalleDeNotaPedido, UMovStockPorDeposito, UListaPrecioEspecial,
  UListadoOPago, UListadoOTrabajoEmpleados, UControlUnidadesStock,
  UListadoDepositosBancarios, UComparacionPrecios, ULogFile,
  URemplazoChequesTercero, UListadoMovimientosStock, UInventario,
  UConsultaStockXSerie, UListadoPoliticaPrecios, UComprometido,
  UControlMovStockVta, URemplazoSeries, UComisionesVendedores,
  UControlComisionesPorArticulo, URecepcionMercaderia, UResumenMovStock,
  UListadoCostoArtVenta, UListadoVtaRubro_SubRubro, UListadoSaldosEmpleados,
  USaldoIngresos, UControlCantidadesStock, UJuridiccion,
  UAdministradorSeries, UReasignaCtaGastoIngreso, UComprobantesUsuarios,
  UTasaRetGanancias, UListadoRetencionesGanamcia, UAnulacionOPago,
  UAnulacionChequesPropios, UAvisoProceso, UListadoTransfBanco,
  UListadoDebitosBco, UListadoDebitos, UAnulacionRecibos,
  UDetalleArticulosVendidos, ULstVtaSucursalDeCliente, UTasaRetIIBB,
  UListadoRetencionesCobranza, UAjustesSeries, UListadoRetencionesPagos_IB,
  UListadoTCRecibidas, UListadoPercIB_FcVta, UListadoTxStockPendientes,
  UListadoFcCompraPorProveedor, UAnulacionAdelantosSueldo,
  UAnulacionDepositosBancarios, UListadoOperacionesClientes,
  UControlIntegridadVentas, Utarjetacreditocompras,
  UControlIntegridadCompra, UObras, URemitoObra,
  UPadronProveeEmbargo, UDetalleObras, UListaPreciosProveedor,
  UImportarClientesExcel, UConsultaArticuloProveedores, UTasas_Ret_perc,
  UListaPreciosTabla, UTasasPerc_Ret_IIBB, URMAEnvio, UImportarStockExcel,
  UEtiquetas, UListadoArtRMA, UTiketVta, UNotaPedidoCliente,
  UNPedidoClientePendientes, ULiquidacionTC,
  UConciliacionChePropios, UResumenTC, UVtasRubro_Subrubro,
  UImportarProveedoresExcel, UListadoGastosTC, UFiltroCpbte_Vta,
  UActualizaCosto_Venta_excel, UFiltroCpbte_Compra, UIngAjustesExcel,
  UListadoRelacionCompraVenta, UListadoVtaArticulosClientesSuc,
  UListadoCpbteGastosBco, UABPrecioSombra, UCambioPrecio_sombra,
  UAsignaVendedorRC, UListadoRecibosPorVendedor, UPedidosCumplidos,
  UFlujoFondos, UListadoClientesCondVta, UListadoFacVencidas,
  UListadovtaPorVendedor, UComposicionCobranza, USaldoClientesMensualAFecha,
  UABCClientes, UAlias, UListadoCpbteVtaPorTipo, UPresentaciones,
  UChe3DeppositadosAntes, URegimenRetencionIVA,
  URemitosPendientesFacturacion, UPersonalAcciones, UListadoConsumosTC,
  UTransf_Interbnacarias, URemplazoValoresIngresados, UAsignarLote,
  UPlantillas, UAbonosGrupos, UListadoAjuestesStock,
  UAbonosGrilla, UGeneradorCupones, UDescuentosUsuarios,
  UListaPreciosUsuario, UReciboAbonos, UAbonosCupon, UAdminstracionTareas,
  UDescto_Presupuesto_oc, URecargos_Presupuesto_oc, UPresupuestoOC,
  UListadoVtasVsCobros, UControlRetenciones, UControlCuponTC, UDetallesNc_Rec,
  UImportarMarcasExcel, UListadoCpbteCompPorTipo, UCategoriaCliente, UNotaVenta,
  UDepositosUsuarios, UListadoConsumosObras, UNotasVersion,
  UUsuariosAutorizanPrecios, UListadoTxCaja, UListadoNVPendientes,
  UListadoAcreditacionesTC, UListadoRtosAFiscal, UListadoStock,
  UReArmaResumenBco, UControlErroresMov, UPlantillas_Grillas,
  UListadoStockGeneral, UListadoNotaPedido, UNotaTransfStock,
  UGeoPosicionClientes, USaldoClientes_x_Cliente, UGoogleMap,
  UVtaPorVendedorDiaria, UControlChe3, UChequesEmitidosDetalle,
  UUsuariosAdminNP, UGrupoDetalleFacturacion,
  DMBuscadoresForm, DMStoreProcedureForm, UPlanillaArmado, UFacturarPlantillas,
  URecepcionGarantias, UControlItemCompra, UListadoStockConsignacion,
  UListadoRecepGtias, UJuridicion_Localidad, UConsultaPrecio, UGtias_Ext,
  UListadoRecibosPorVendedor_2, UAsignacionJuridiccion, UJuridiccionExcepcion,
  UListadoClientesUltimaVta, UControlSaldoCtaCteVta,
  UPanelControlOP, UListadoChePorOrdenPago, UServicioTecnico,
  UArticulosSTExterno, UAcopio, URtoEntregaAcopio,
  UListadoCompraArticulosProveedor, UTransferenciasStockAnulada,
  ULstComparativoArtPorCompra, URelacionCobranzaVencimiento,
  ULista_Stock_rub_subrub, DMContableForm, UListadoGastoRefContable,
  UConfiguraPath, UAdministraEstadoStock, UImportarRubroExcel,
  UImportarSubRubroExcel, UIngresoLotePersonal, UImportarVtas_PtoVta,
  UVencimientos, UABCCompraArticulos, UControlCpbteRecibidos,
  UImpresionCUponesAbonos, UResumenVentas, UResumenVtasRubros_Subr_anual,
  UResumenVtasAnualVendedor, UPagosPersonalAnual, UCheCompartidos,
  UListadoChRecibidos, UNotasCambio, UClienteCotizacion, UPrecioEspecialCliente,
  UControlMovCtaCteVta_detalle, UAsignacionesEmpleados, UListadoCpbteVta,
  UListadoCpbteCompra, UStock_descuentos, UListaPorSucursal, UControlVtoCupones,
  UIngresosCtaEmpleadoLote, UComprobContabilizar, UConceptosPlantillas,
  UControlItemVta, UPanelImportacionVtas, UPanelImportacionComp,
  UImportarCobroCupones, UListadoChe3PorCpbteIng, UCtroCosto,
  UListadoPorCtrosCosto, UInformeGeneral, UArticulosFacCompra, UCajaResumen,
  UControlCuponAbono, UListadoMovStock_Diario, UOPagoExcluidasGanacia,
  UListadoSeries, UHojaDeCarga, UGastosIngresosConsolidados, UCopiaPrecios,
  UTipoServicio, ULstStock_Precio_Fisico, UComposicionVta_Cobros,
  UNovedadesStock, UAsignacionCtaGastoStock, UControlsStockRubros,
  UListadoPagosPersonal, UControlMovChe3, UCambioVendedor_clientes,
  UControlRetIIBTarjeta, UControl_Rto_Fc, UImprimirLoteVales,
  UExistenciasConMov, UURelacionPagoVencimientoProveed, URevisionMovChe3,
  USaldoProveedorAFecha, UCompIngresosEgresos, UComposicionVtos_Compra,
  UComposicionVtos_Vtas, UControlRtosHuerfanos, UCalculadorFinaciero,
  UFiscalizarLote, UImportarAjustes, UImportacionEstadoStock, UVtas_Fondos,
  UControlFactModelo, UListadoArtiPendientesOC, UFormResolcucion3668,
  UImportacionPreventa, UPizarronOT, UPizarronAcopios, ULstMercaderiaAcopio,
  UPlanillaPedido, UEntregasAcopios, UGeneradorDebitosTC,
  UBorradorPedido, UPrestadores, UComprobantesAfip,
  URubrosFueraPromo, UPanelComisionObjetivos,
  UImportacionFacCompra, UClientes_Adicionales, UProyeccionAnuales,
  UImportacionFacVta, ULstPlantillas, UFeriados, UPreciosCompra,
  UImportarDsctos, UConsolidacionAcopioRtos,
  UListadoOTrabajo, UABMVencimientos, UCobroConTarjetaCredito, UPedidosMorphi,
  UDespachoImpo, UImportarCobroRipsa, UConversorFcVta_a_Comp,
  UControlTxBancarias, UCobranzaPorLote, UInformeVariablesVtas_Stock,
  uMainConsultaCuit, UListadoRtosDetalle, UMotivosOT, UControlChePropio,
  URubroClientes, UPlanerOTrabajo, UCuentaCCAcopio,
  UAdminTransporte, UVencimientosTransp, UUnidadesTR_Anexos, UUnidadesTR,
  UOrdenDeTrabajo_Estaciones, UPanificacionProduccion, ULstMovCaja,
  ULstControlOTrabajo, UTipoAdicionalCompra, UMovAuxCCComp, ULeerArchivoTCVisa,
  UOrdenProduccionSector, UProduccion_Material, UProduccion_PDiario,
  UChequesAnulados, UPedidosResumen, UExportadorRtos, UImportarRtos, UPedidos,
  UMotivosVales, UImportarEmpleadosExcel, UPendientesOC, UAjustesLotes,
  UDetallePedidos, UMotivosAjustesCCVta, UMotivosAjustesCCComp,
  UListadoAjustesCtasCtes, UListadoPresuDetalle, UMotivoAjusteStock,
  URetencionIva_Efectuadas, UHistorialMovCaja, UDMain_FD, UReciboExpress,
  ULstTransfInterbancaria, VirtualUI_Sdk, ULiqGranos,
  UPromoCanArt,UABCProveedores,UControlUsuarios_2,
  UResumenGeneralCajas, ListadoHist_Precio, UAdministradorPLU,
  UUsuariosRubStock, ULstOProduccionDetalle, UListadoComprasCabDet, UArqueoCaja,
  URubrosOrdenador, UStockTipoAdicional, URecpcionRepartoExpress,
  UListaCheRemplazados, UPlantillaRecReparto,UrlMon, UStockTree,UStockAlquiler,
  UListadoPedidosPrevision, UReasigancionPedidos, UImportarMercadoPago,UPacientes,
  UListadoVentasCabDet, UPaises, UListadoArtiProduccion, UAltaConsulta_CAEA, UCierreCajaGeneral, UBuscarPorNroReferencia, UABMBase,
  UTipoObra, UPersonalCategorias, UPersonalABMConceptos, UPersonal_Liquidacion,
  UStock_CargaExpress, UDepositosVendedor, UControlCheCompartidos, UImportacionFacCompraAFIP,
  UCopola,UTipoLiquidacion,UInformeSemanal, UImportacionFacVentaAFIP,
  ULecturaRelojPersonal, UNextBin, UPlanillaSalucla, UImportarHASAR,
  UListadoCliente_LDR, UBorradorInventarioConsulta, UListadoBorradoOC,
  UListasActualizables, UPruebaGoogle, ULstPercepcionesIvaVta,
  UHistorialPreciosProduccion, UPersonalNovedades, UPrevisionCompraProveedor,
  UImportarRubGastos, UVentaCentroCosto, UArchivosAxum,
  UListadoArticulosUsoProduccion, UListadoValoresOrdenPago,
  UImportarStockProveedorXLS, UCambioPrecioExpress, ULectorPedidosApp,
  UUsuariosRubrosMovil, UUsuariosMovil, UListadoGastosObra, UListadoRecepciones,
  UControlChe3_Opago, UInformarCAEA, USectoresPedido,
  URemitarPedidosAgrupados, UPresupuestosACobrar, UBorradorRegistrPikeo,
  UListadoMateriasPrimasUsadas, UBalanzaSerie, UKanbanPresupuesto,
  UEmisionRotulos_2,SYS_InterfaceFE,FE_Utils2, UConultasIA,
  UArticulosEceptuadosIVA, UUsuariosAdminNP_Movil, URegistroDiarioOP,
  UControlTransacciones, UReasignacionPartesDiarios, URferenciasTCPlataformas,
  UCargaPlataformaJson, UNovedadesFact, ULeerOrdenWP;

{$R *.DFM}
// Ejemplo tomado de http://stackoverflow.com/questions/2...event-properly

procedure TFMenu.AsignarMenuLateral;
  begin
//    btnABCClientes.Enabled     := Clientes.Enabled;
//    btnABCClientes.Visible     := Clientes.Enabled;
//
//    btnFacturasCtdo.Enabled    := FacturasCtdo.Enabled;
//    btnFacturasCtdo.Visible    := FacturasCtdo.Enabled;
//
//    btnFacCC.Enabled           := FacturasVtaCC.Enabled;
//    btnFacCC.Visible           := FacturasVtaCC.Enabled;
//
//    btnCtaCteclientes.Enabled  := CtaCteClientes.Enabled;
//    btnCtaCteclientes.Visible  := CtaCteClientes.Enabled;
//
//    btnAplicacionesVta.Enabled := AplicacionesCtaCteVta.Enabled;
//    btnAplicacionesVta.Visible := AplicacionesCtaCteVta.Enabled;
//
//    btnRemitos.Enabled         := Remitos.Enabled;
//    btnRemitos.Visible         := Remitos.Enabled;
//
//    btnPresupuesto.Enabled     := Presupuestos.Enabled;
//    btnPresupuesto.Visible     := Presupuestos.Enabled;
//
//    if (FacturasCtdo.Enabled = False) or (FacturasVtaCC.Enabled = False) then
//    begin
//      btnABCClientes.Enabled     := False;
//      btnABCClientes.Visible     := False;
//
//      btnFacturasCtdo.Enabled    := False;
//      btnFacturasCtdo.Visible    := False;
//
//      btnFacCC.Enabled           := False;
//      btnFacCC.Visible           := False;
//
//      btnCtaCteclientes.Enabled  := False;
//      btnCtaCteclientes.Visible  := False;
//
//      btnAplicacionesVta.Enabled := False;
//      btnAplicacionesVta.Visible := False;
//
//      btnRemitos.Enabled         := False;
//      btnRemitos.Visible         := False;
//
//      btnPresupuesto.Enabled     := False;
//      btnPresupuesto.Visible     := False;
//    end;
//
//    btnProveedores.Enabled := Proveedores.Enabled;
//    btnProveedores.Visible := Proveedores.Enabled;
//
//    btnCompCtdo.Enabled    := FacturaCompraContado.Enabled;
//    btnCompCtdo.Visible    := FacturaCompraContado.Enabled;
//
//    btnFacturaCompraCC.Enabled := FacturaCompraCC.Enabled;
//    btnFacturaCompraCC.Visible := FacturaCompraCC.Enabled;
//
//    btnCtaCteCompra.Enabled    := CtaCteProveedores.Enabled;
//    btnCtaCteCompra.Visible    := CtaCteProveedores.Enabled;
//
//    if (FacturaCompraContado.Enabled = False) or (FacturaCompraCC.Enabled = False) then
//    begin
//      btnProveedores.Enabled := False;
//      btnProveedores.Visible := False;
//
//      btnCompCtdo.Enabled    := False;
//      btnCompCtdo.Visible    := False;
//
//      btnFacturaCompraCC.Enabled := False;
//      btnFacturaCompraCC.Visible := False;
//
//      btnCtaCteCompra.Enabled    := False;
//      btnCtaCteCompra.Visible    := False;
//    end;
  end;

procedure TFMenu.CargarAccionesEnBuscador;
var
  i: Integer;
  Act: TCustomAction;
begin
  AdvSearchEditAcciones.Items.Clear;
  for i := 0 to Acciones.ActionCount - 1 do
    begin
      if Acciones.Actions[i] is TCustomAction then
        begin
          Act := TCustomAction(Acciones.Actions[i]);
          if Assigned(Act.OnExecute) and Act.Visible then
            begin
              AdvSearchEditAcciones.SearchList.Items.Add(Act.Caption); // nil = sin ícono
            end;
        end;
    end;
end;


procedure TFMenu.AsignarVariablesGlobales;
begin
  // **************************************************************************
  // ******* Asigno as variables globales *************************************
  // **************************************************************************
  DMMain_FD.AnularFactura           := AnularFacturasdeVta.Enabled;
  DMMain_FD.ModificaPrecioVta       := ModificaPrecios.Enabled;
  DMMain_FD.ModificaDetalleArticulo := ModificaDetalleStock.Enabled;
  DMMain_FD.AplicaDescuento         := AplicaDescuentos.Enabled;
  DMMain_FD.ModificaListaPrecios    := ModificaListaPrecio.Enabled;
  DMMain_FD.ModificaCaja            := ModificarCaja.Enabled;
  DMMain_FD.VerCostos               := VercostosenlaVta.Enabled;
  DMMain_FD.ModificaLineaOT         := ModificaLineaOTrabajo.Enabled;
  DMMain_FD.FiltraCajaUser          := FiltrarCajaPorUsuarios.Enabled;
  DMMain_FD.BorraLineaOT            := BorraLineaOTrabajo.Enabled;
  DMMain_FD.BorrarAplCCCOMp         := BorrarAplicacionesCtaCteComp.Enabled;
  DMMain_FD.BorrarAplCCVta          := BorrarAplicacionesCtaCteVta.Enabled;
  DMMain_FD.ModificaAbono           := ModificaAbonoCliente.Enabled;
  DMMain_FD.ModificaVendedor        := ModificaVendedor.Enabled;
  DMMain_FD.ModificaDeposito        := ModificaDeposito.Enabled;
  DMMain_FD.ModificaSucursal        := ModificaSucursal.Enabled;
  DMMain_FD.ModificaCreditoClientes := ModificaCreditoClientes.Enabled;
  DMMain_FD.VerCostoFichaStock      := VerCostosFichaStock.Enabled;
  DMMain_FD.VenderDebajoMinimo      := Venderpordebajodecosto.Enabled;
  DMMain_FD.ABMClientes             := ABMClientes.Enabled;
  DMMain_FD.ABMArticulos            := ABMArticulos.Enabled;
  DMMain_FD.BorrarRecibos           := BorrarRecibosdeCobro.Enabled;
  DMMain_FD.CargarFcVtaManual       := PermitirCargaFacVtaManual.Enabled;
  DMMain_FD.BorrarFcCompra          := BorrarComprobantesdeCompra.Enabled;
  DMMain_FD.AnularRemitos           := AnularRemitos.Enabled;
  DMMain_FD.BorrarRemitos           := BorrarRemitos.Enabled;
  DMMain_FD.BMIncidencias           := BMIncidenciasClientes.Enabled;
  DMMain_FD.BMNotaPedido            := BMdeNotasdePediodeClientes.Enabled;
  DMMain_FD.AutorizadoLineaConCero  := AutorizaLineaCero.Enabled;
  DMMain_FD.UsuarioAdministrador    := UsuarioAdministrador.Enabled;
  DMMain_FD.VerCtaCtePersonal       := CtaCtedePersonal1.Enabled;
  DMMain_FD.AutorizadoReimprimirFc  := AutorizadoReimprimir.Enabled;
  DMMain_FD.ModificaAsignadoOT      := ModificarOperadorAsignadoOTRabajo1.Enabled;
  DMMain_FD.ModificaFactura         := ModificarFactura1.Enabled;
  DMMain_FD.AutorizadoHacerNC       := AutorizadoHacerNC.Enabled;
  DMMain_FD.BorrarOPago             := BorrarOrdendePago.Enabled;
end;



procedure TFMenu.FormClick(Sender: TObject);
begin
  tbpMenuGeneral.Collaps;

  TMSFNCRibbon1PageControl.Collapsed  :=True;
  TMSFNCRibbon1PageControl.Collapsable:=False;

end;

procedure TFMenu.FormClose(Sender: TObject; var Action: TCloseAction);
  var
    ArchivoIni: TIniFile;
    path: String;
  begin
    if MessageDlg('Esta seguro de salir de la Aplicación?........',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin

      path := ExtractFilePath(ParamStr(0));
      ArchivoIni := TIniFile.Create(path + DMMain_FD.NombreIni);
      if JvBackground.Image.Mode = bmStretch Then
        ArchivoIni.WriteInteger('Imagen', 'modo', 10)
      else if JvBackground.Image.Mode = bmTile Then
        ArchivoIni.WriteInteger('Imagen', 'modo', 0)
      else if JvBackground.Image.Mode = bmTop Then
        ArchivoIni.WriteInteger('Imagen', 'modo', 3);

      ArchivoIni.WriteBool('MuestraBarra', 'MuestraBarra',
        False { RibbonMenu.Minimized } );
      ArchivoIni.WriteInteger('estilo', 'Numero', NroEstilo);

      ArchivoIni.Free;

      // FMenu.Hide;
      Users1.Logout;
      QBorraTraceUser.Close;
      QBorraTraceUser.ExecSQL;
      QBorraTraceUser.Close;
      WindowCloseAll.Execute;
      Application.Terminate;
    end
    else
      Action := TCloseAction.caNone;
  end;

procedure TFMenu.ProveedoresExecute(Sender: TObject);
begin
  if not(Assigned(FormProveedor_2)) then
    FormProveedor_2 := TFormProveedor_2.Create(Application);
  FormProveedor_2.Show;
end;

procedure TFMenu.ClientesExecute(Sender: TObject);
begin
  if not(Assigned(FormClientes_2)) then
    FormClientes_2 := TFormClientes_2.Create(Application);
  FormClientes_2.Show;
end;



procedure TFMenu.ArchivosNextBynExecute(Sender: TObject);
begin
  if not(Assigned(FormNextByn)) then
    FormNextByn := TFormNextByn.Create(Application);
  FormNextByn.Show;
end;

procedure TFMenu.ArmadoAdicionalPlantillaPedidoExecute(Sender: TObject);
begin
  if not(Assigned(FormArmadoAdicionalPlantillaPedidos)) then
    FormArmadoAdicionalPlantillaPedidos := TFormArmadoAdicionalPlantillaPedidos.Create(Application);
  FormArmadoAdicionalPlantillaPedidos.Show;
end;

procedure TFMenu.ArqueoCajaExecute(Sender: TObject);
  begin
    if not(Assigned(FormArqueoCaja)) then
      FormArqueoCaja := TFormArqueoCaja.Create(Application);
    FormArqueoCaja.Show;
  end;

procedure TFMenu.ArticulosDatosExecute(Sender: TObject);
  begin
    if not(Assigned(FormStock_2)) then
      FormStock_2 := TFormStock_2.Create(Application);
    FormStock_2.Show;
  end;

procedure TFMenu.FacturasVtaCCExecute(Sender: TObject);
  begin
    if not(Assigned(FormCpbte_2)) then
      FormCpbte_2 := TFormCpbte_2.Create(Application);
    FormCpbte_2.Show;
  end;

procedure TFMenu.FDEventAlerter1Alert(ASender: TFDCustomEventAlerter;
  const AEventName: string; const AArgument: Variant);
begin
  If (AEventName = 'Factura') then
		Begin
			//<Executa tratamento para novo cliente cadastrado>
			ShowMessage('Factura Nueva');
 		End
end;

procedure TFMenu.FeriadosExecute(Sender: TObject);
  begin
    if not(Assigned(FormFeriados)) then
      FormFeriados := TFormFeriados.Create(Application);
    FormFeriados.Show;
  end;



procedure TFMenu.FiltroCpbte_CCExecute(Sender: TObject);
  begin
    if not(Assigned(FormFiltroCpbte_vta)) then
      FormFiltroCpbte_vta := TFormFiltroCpbte_vta.Create(Application);
    FormFiltroCpbte_vta.Show;
  end;

procedure TFMenu.FiltroCpbte_cc_compraExecute(Sender: TObject);
  begin
    if not(Assigned(FormFiltroCpbte_Compra)) then
      FormFiltroCpbte_Compra := TFormFiltroCpbte_Compra.Create(Application);
    FormFiltroCpbte_Compra.Show;
  end;

procedure TFMenu.FiscalizaLoteExecute(Sender: TObject);
begin
   if not(Assigned(FormFiscalizacionLote)) then
      FormFiscalizacionLote := TFormFiscalizacionLote.Create(Application);
    FormFiscalizacionLote.Show;
end;

procedure TFMenu.FlujoFondosExecute(Sender: TObject);
  begin
    if not(Assigned(FormFlujoFondos)) then
      FormFlujoFondos := TFormFlujoFondos.Create(Application);
    FormFlujoFondos.Show;
  end;


procedure TFMenu.FacturasCtdoExecute(Sender: TObject);
  begin
    if (Assigned(FormCpbteCtdo_2)) then
      FreeAndNil(FormCpbteCtdo_2);
    if not(Assigned(FormCpbteCtdo_2)) then
      FormCpbteCtdo_2 := TFormCpbteCtdo_2.Create(Application);
    FormCpbteCtdo_2.Show;
  end;

procedure TFMenu.CheEmitidosDetalleExecute(Sender: TObject);
  begin
    if not(Assigned(FormChequesEmitidosDetalle)) then
      FormChequesEmitidosDetalle := TFormChequesEmitidosDetalle.Create
        (Application);
    FormChequesEmitidosDetalle.Show;
  end;

procedure TFMenu.ChequerasExecute(Sender: TObject);
  begin
    if not(Assigned(FormChequeras_2)) then
      FormChequeras_2 := TFormChequeras_2.Create(Application);
    FormChequeras_2.Show;
  end;

procedure TFMenu.TCreditoExecute(Sender: TObject);
  begin
    if not(Assigned(FormTCredito_2)) then
      FormTCredito_2 := TFormTCredito_2.Create(Application);
    FormTCredito_2.Show;
  end;


procedure TFMenu.BancosExecute(Sender: TObject);
  begin
    if not(Assigned(FormBancos_2)) then
      FormBancos_2 := TFormBancos_2.Create(Application);
    FormBancos_2.Show;
  end;

procedure TFMenu.ResumenGralCajaExecute(Sender: TObject);
  begin
    if not(Assigned(FormResumenGralCajas)) then
      FormResumenGralCajas := TFormResumenGralCajas.Create(Application);
    FormResumenGralCajas.Show;
  end;

procedure TFMenu.CuentasCajaBancoExecute(Sender: TObject);
  begin
    if not(Assigned(FormCtaCaja_2)) then
      FormCtaCaja_2 := TFormCtaCaja_2.Create(Application);
    FormCtaCaja_2.Show;
  end;

procedure TFMenu.FacturaCompraCCExecute(Sender: TObject);
  begin
    if not(Assigned(FormCompra_2)) then
      FormCompra_2 := TFormCompra_2.Create(Application);
    FormCompra_2.Show;
  end;

procedure TFMenu.PresentacionExecute(Sender: TObject);
  begin
    if not(Assigned(Formpresentaciones)) then
      Formpresentaciones := TFormpresentaciones.Create(Application);
    Formpresentaciones.Show;
  end;

procedure TFMenu.PrestadoresExecute(Sender: TObject);
  begin
    if Not(Assigned(FormPrestadores)) Then
      FormPrestadores := TFormPrestadores.Create(Application);
    FormPrestadores.Show;
  end;

procedure TFMenu.PresupuestoOCDescuentosExecute(Sender: TObject);
  begin
    if not(Assigned(FormDescuentosPresupOC)) then
      FormDescuentosPresupOC := TFormDescuentosPresupOC.Create(Application);
    FormDescuentosPresupOC.Show;

  end;

procedure TFMenu.PresupuestoOCExecute(Sender: TObject);
  begin
    if not(Assigned(FormPresupuestoOC)) then
      FormPresupuestoOC := TFormPresupuestoOC.Create(Application);
    FormPresupuestoOC.Show;
  end;

procedure TFMenu.PresupuestoOCRecargosExecute(Sender: TObject);
  begin
    if not(Assigned(FormRecargosPresupOC)) then
      FormRecargosPresupOC := TFormRecargosPresupOC.Create(Application);
    FormRecargosPresupOC.Show;
  end;

procedure TFMenu.PresupuestosExecute(Sender: TObject);
  begin
    if not(Assigned(FormPresupuesto_2)) then
      FormPresupuesto_2 := TFormPresupuesto_2.Create(Application);
    FormPresupuesto_2.Show;
  end;

procedure TFMenu.ReciboCobranzaExecute(Sender: TObject);
  begin
    if not(Assigned(FormRecibo_2)) then
      FormRecibo_2 := TFormRecibo_2.Create(Application);
    FormRecibo_2.Show;
  end;

procedure TFMenu.ReciboExpressExecute(Sender: TObject);
  begin
    if not(Assigned(FormReciboExpress)) then
      FormReciboExpress := TFormReciboExpress.Create(Application);
    FormReciboExpress.Show;
  end;

procedure TFMenu.ReciboPorLoteExecute(Sender: TObject);
  begin
    if not(Assigned(FormCobranza_x_lote)) then
      FormCobranza_x_lote := TFormCobranza_x_lote.Create(Application);
    FormCobranza_x_lote.Show;
  end;

procedure TFMenu.FacturaCompraContadoExecute(Sender: TObject);
  begin
    if not(Assigned(FormCompraCtdo_2)) then
      FormCompraCtdo_2 := TFormCompraCtdo_2.Create(Application);
    FormCompraCtdo_2.Show;
  end;

procedure TFMenu.AplicacionesCtaCteVtaExecute(Sender: TObject);
  begin
    if not(Assigned(FormAplicacionesCCVta_2)) then
      FormAplicacionesCCVta_2 := TFormAplicacionesCCVta_2.Create(Application);
    FormAplicacionesCCVta_2.Show;
  end;

procedure TFMenu.CtaCteAcopioExecute(Sender: TObject);
  begin
    if not(Assigned(FormCTaCteAcopio)) then
      FormCTaCteAcopio := TFormCTaCteAcopio.Create(Application);
    FormCTaCteAcopio.Show;
  end;

procedure TFMenu.CtaCteClientesExecute(Sender: TObject);
  begin
    if not(Assigned(FormCtaCteVta)) then
      FormCtaCteVta := TFormCtaCteVta.Create(Application);
    FormCtaCteVta.Show;
  end;

procedure TFMenu.FormaPagoExecute(Sender: TObject);
  begin
    if not(Assigned(FormFormaPago_2)) then
      FormFormaPago_2 := TFormFormaPago_2.Create(Application);
    FormFormaPago_2.Show;
  end;

procedure TFMenu.OrdenPagoExecute(Sender: TObject);
  begin
    if not(Assigned(FormOPago_2)) then
      FormOPago_2 := TFormOPago_2.Create(Application);
    FormOPago_2.Show;
  end;

procedure TFMenu.CtaCteProveedoresExecute(Sender: TObject);
  begin
    if not(Assigned(FormCtaCteCompra)) then
      FormCtaCteCompra := TFormCtaCteCompra.Create(Application);
    FormCtaCteCompra.Show;
  end;

procedure TFMenu.CtroCostoExecute(Sender: TObject);
  begin
    if not(Assigned(FormCtroCosto)) then
      FormCtroCosto := TFormCtroCosto.Create(Application);
    FormCtroCosto.Show;
  end;

procedure TFMenu.CerrarExecute(Sender: TObject);
  begin
    begin
      Sleep(1000);
      Application.ProcessMessages;
    end;
    Close;
  end;

procedure TFMenu.AplicacionesCtaCteCompraExecute(Sender: TObject);
  begin
    if not(Assigned(FormAplicacionesCCCompra_2)) then
      FormAplicacionesCCCompra_2 := TFormAplicacionesCCCompra_2.Create
        (Application);
    FormAplicacionesCCCompra_2.Show;
  end;

procedure TFMenu.SaldoDeudaClientesExecute(Sender: TObject);
  begin
    if not(Assigned(FormSaldosClientes)) then
      FormSaldosClientes := TFormSaldosClientes.Create(Application);
    FormSaldosClientes.Show;
  end;

procedure TFMenu.SaldoDeudaCliente_unoExecute(Sender: TObject);
  begin
    if not(Assigned(FormsaldoClientes_x_Cliente)) then
      FormsaldoClientes_x_Cliente := TFormsaldoClientes_x_Cliente.Create
        (Application);
    FormsaldoClientes_x_Cliente.Show;
  end;

procedure TFMenu.VerificaChe_OPagoExecute(Sender: TObject);
begin
  if not(Assigned(FormControlChe3_OP)) then
    FormControlChe3_OP := TFormControlChe3_OP.Create(Application);
  FormControlChe3_OP.Show;
end;

procedure TFMenu.VerificadorCtacteExecute(Sender: TObject);
  begin
    if not(Assigned(FormControlCC)) then
      FormControlCC := TFormControlCC.Create(Application);
    FormControlCC.Show;
  end;

procedure TFMenu.SaldoDeudaProveedoresExecute(Sender: TObject);
  begin
    if not(Assigned(FormSaldosProveedores)) then
      FormSaldosProveedores := TFormSaldosProveedores.Create(Application);
    FormSaldosProveedores.Show;
  end;

procedure TFMenu.SaldoIngresosEgresosExecute(Sender: TObject);
  begin
    if not(Assigned(FormGastosIngresosConsolidados)) then
      FormGastosIngresosConsolidados := TFormGastosIngresosConsolidados.Create
        (Application);
    FormGastosIngresosConsolidados.Show;
  end;

procedure TFMenu.MarcasExecute(Sender: TObject);
  begin
    if not(Assigned(FormMarca_2)) then
      FormMarca_2 := TFormMarca_2.Create(Application);
    FormMarca_2.Show;
  end;

procedure TFMenu.MaterialesProduccionExecute(Sender: TObject);
  begin
    if not(Assigned(FormProduccionMateriales)) then
      FormProduccionMateriales := TFormProduccionMateriales.Create(Application);
    FormProduccionMateriales.Show;
  end;

procedure TFMenu.BorradorInventarioExecute(Sender: TObject);
begin
  begin
    if not(Assigned(FormBorradorInventarioConsulta)) then
      FormBorradorInventarioConsulta := TFormBorradorInventarioConsulta.Create(Application);
    FormBorradorInventarioConsulta.Show;
  end;
end;

procedure TFMenu.BorradorPedidoExecute(Sender: TObject);
  begin
    if not(Assigned(FormBorradorPedido)) then
      FormBorradorPedido := TFormBorradorPedido.Create(Application);
    FormBorradorPedido.Show;
  end;

procedure TFMenu.BorrarAccClick(Sender: TObject);
  var
    Comp: TComponent;
  begin
    // ShowMessage(AccNombre);
    // CDSAccesos.Close;
    // CDSAccesos.Params.ParamByName('id_usuario').Value:= DMMain_FD.UsuarioActivoId;
    // CDSAccesos.Params.ParamByName('id').Value        := StrToInt(Trim(copy(AccNombre,5,10)));
    // CDSAccesos.Open;
    // CDSAccesos.Delete;
    // CDSAccesos.ApplyUpdates(0);
    Comp := FindComponent(AccNombre);
    if (Comp <> nil) then

      FreeAndNil(Comp);
    // Comp.Free
    // Contro
    // TAccesoDirecto(Sender).Name
  end;

procedure TFMenu.btPanelTreeClick(Sender: TObject);
  begin
    // pnTreeMenu.visible:=False;
  end;

procedure TFMenu.BuscarPorReferenciaExecute(Sender: TObject);
var
  FormAct :  TFormABMBase;
  TFormAct:  string;
begin
  FormAct :=  nil;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(self);
  FormBuscarPorNroReferenica.CompraVta:='';
  FormBuscarPorNroReferenica.ShowModal;
  IF (FormBuscarPorNroReferenica.ModalResult=mrOK) and (FormBuscarPorNroReferenica.Id > 0) THEN
    BEGIN
      if FormBuscarPorNroReferenica.CompraVta ='PR' then
        begin
          Presupuestos.Execute;
          FormAct      :=  FormPresupuesto_2;
        end
      else
      if FormBuscarPorNroReferenica.CompraVta ='C' then
        begin
          if FormBuscarPorNroReferenica.Tipo='FC' then
            begin
              FacturaCompraCC.Execute;
              FormAct :=  FormCompra_2;
            end
          else
            if FormBuscarPorNroReferenica.Tipo='FO' then
              begin
                FacturaCompraContado.Execute;
                FormAct := FormCompraCtdo_2;
              end;
        end
      else
        if FormBuscarPorNroReferenica.CompraVta = 'V' then
          begin
            if FormBuscarPorNroReferenica.Tipo = 'FO' then
              begin
                FacturasCtdo.Execute;
                FormAct :=  FormCpbteCtdo_2;
              end
            else
              if (FormBuscarPorNroReferenica.Tipo = 'FC') or (FormBuscarPorNroReferenica.Tipo = 'NC')  then
                begin
                  FacturasVtaCC.Execute;
                  FormAct :=  FormCpbte_2;
                end
              else
                if FormBuscarPorNroReferenica.Tipo = 'TK' then
                  begin
                    TicketFactura.Execute;
                    FormAct :=  FormTicketVta;
                  end;
          end
      else
        if FormBuscarPorNroReferenica.CompraVta = 'OT' then
          begin
            OrdenTrabajoSup.Execute;
            FormAct :=  FormOrdenDeTrabajo;
          end;
    end;
  if FormAct<>nil then
    begin
      FormAct.TipoCpbte := FormBuscarPorNroReferenica.Tipo;
      FormAct.DatoNew   := IntToStr(FormBuscarPorNroReferenica.id);
      FormAct.Recuperar.Execute;
    end
  else
    begin
      Showmessage('No se encontró el comprobante');
      FreeAndNil(FormAct);
    end;
end;



procedure TFMenu.RubrosExecute(Sender: TObject);
  begin
    if not(Assigned(FormRubro_2)) then
      FormRubro_2 := TFormRubro_2.Create(Application);
    FormRubro_2.Show;
  end;


procedure TFMenu.RubrosListaPedidoMovilExecute(Sender: TObject);
begin
 if not(Assigned(FormRubrosListaMovil)) then
    FormRubrosListaMovil := TFormRubrosListaMovil.Create(Application);
  FormRubrosListaMovil.Show;
end;

procedure TFMenu.LecturaRelojExecute(Sender: TObject);
begin
  if not(Assigned(FormLectorRelojPersonal)) then
    FormLectorRelojPersonal := TFormLectorRelojPersonal.Create(Application);
  FormLectorRelojPersonal.Show;
end;

procedure TFMenu.LecturaXMLHasarExecute(Sender: TObject);
begin
  if not(Assigned(FormImportarHasar)) then
   FormImportarHasar:= TFormImportarHasar.Create(Application);
  FormImportarHasar.Show;
end;

procedure TFMenu.LeerDatosCopolaExecute(Sender: TObject);
  begin
    if not(Assigned(FormLeerCopola)) then
      FormLeerCopola := TFormLeerCopola.Create(Application);
    FormLeerCopola.Show;
  end;

procedure TFMenu.LibroIvaCompraExecute(Sender: TObject);
  begin
    if not(Assigned(FormLibroIvaCompra_2)) then
      FormLibroIvaCompra_2 := TFormLibroIvaCompra_2.Create(Application);
    FormLibroIvaCompra_2.Show;
  end;

procedure TFMenu.SubRubrosExecute(Sender: TObject);
  begin
    if not(Assigned(FormSubRubros_2)) then
      FormSubRubros_2 := TFormSubRubros_2.Create(Application);
    FormSubRubros_2.Show;
  end;

procedure TFMenu.LibroIvaVentaExecute(Sender: TObject);
  begin
    if not(Assigned(FormLibroIvaVenta_2)) then
      FormLibroIvaVenta_2 := TFormLibroIvaVenta_2.Create(Application);
    FormLibroIvaVenta_2.Show;
  end;


procedure TFMenu.LimpiarLogExecute(Sender: TObject);
var
  i:Integer;
  F: TSearchRec;
  dir:string;
  ListaDir:TStringList;
begin
  ListaDir:= TStringList.Create;
  ListaDir:= DMMain_FD.ListaDirectorios(ExtractFilePath(ParamStr(0)));

  for I := 0 to ListaDir.Count-1 do
    begin
      if FindFirst(ListaDir[I], faAnyFile, F) = 0 then
        begin
          try
            repeat
              if (F.Attr and faDirectory <> 0) then
                begin
                  if (F.Name <> '.') and (F.Name <> '..') then
                    begin
                      DMMain_FD.DelDir(ListaDir[I]);
                    end;
                end
              else
                DMMain_FD.DelDir(ListaDir[I]);
            until FindNext(F) <> 0;
          finally
            System.SysUtils.FindClose(F);
          end;
        end;
    end;
  FreeAndNil(ListaDir);

end;


procedure TFMenu.PlanificacionExecute(Sender: TObject);
  begin
    if not(Assigned(FormPlanificacion_Produccion)) then
      FormPlanificacion_Produccion := TFormPlanificacion_Produccion.Create(Application);
    FormPlanificacion_Produccion.Show;
  end;

procedure TFMenu.PlanifVtoTransportesExecute(Sender: TObject);
  begin
    if not(Assigned(FormVtosTransportes)) then
      FormVtosTransportes := TFormVtosTransportes.Create(Application);
    FormVtosTransportes.Show;
  end;

procedure TFMenu.PlanillaArmadoProductosExecute(Sender: TObject);
  begin
    if not(Assigned(FormPlanillaArmado)) then
      FormPlanillaArmado := TFormPlanillaArmado.Create(Application);
    FormPlanillaArmado.Show;
  end;

procedure TFMenu.PlanilladeChe3Execute(Sender: TObject);
  begin
    if not(Assigned(FormPlanillaCheTercero)) then
      FormPlanillaCheTercero := TFormPlanillaCheTercero.Create(Application);
    FormPlanillaCheTercero.Show;
  end;

procedure TFMenu.PlanillaPedidoExecute(Sender: TObject);
  begin
    if not(Assigned(FormPlanillaPedido)) then
      FormPlanillaPedido := TFormPlanillaPedido.Create(Application);
    FormPlanillaPedido.Show;
  end;

procedure TFMenu.CajaConsultaExecute(Sender: TObject);
  begin
    if not(Assigned(FormCaja)) then
      FormCaja := TFormCaja.Create(Application);
    FormCaja.Show;
  end;

procedure TFMenu.CajaResumenExecute(Sender: TObject);
  begin
    if not(Assigned(FormCajaResumen)) then
      FormCajaResumen := TFormCajaResumen.Create(Application);
    FormCajaResumen.Show;
  end;

procedure TFMenu.ListadoEntregasAcopiosExecute(Sender: TObject);
  begin
    if not(Assigned(FormListadoEntregasAcopios)) then
      FormListadoEntregasAcopios := TFormListadoEntregasAcopios.Create
        (Application);
    FormListadoEntregasAcopios.Show;
  end;

procedure TFMenu.TrazabilidadCompraExecute(Sender: TObject);
  begin
    if not(Assigned(FormTrazabilidadPreciosCompra)) then
      FormTrazabilidadPreciosCompra := TFormTrazabilidadPreciosCompra.Create
        (Application);
    FormTrazabilidadPreciosCompra.Show;
  end;

procedure TFMenu.MovCCAuxCompExecute(Sender: TObject);
  begin
    if not(Assigned(FormMovAuxCCComp)) then
      FormMovAuxCCComp := TFormMovAuxCCComp.Create(Application);
    FormMovAuxCCComp.Show;
  end;

procedure TFMenu.MovimientoSemanalExecute(Sender: TObject);
begin
  if not(Assigned(FormInformeSemanal)) then
      FormInformeSemanal:= TFormInformeSemanal.Create(Application);
    FormInformeSemanal.Show;
end;

procedure TFMenu.VideosTutorialesExecute(Sender: TObject);
var
Dire : String;
begin
//  OpenObject('https://www.youtube.com/channel/UCmefR8neNlxtFs5TsVE4jZw');
  Dire := 'https://www.youtube.com/channel/UCmefR8neNlxtFs5TsVE4jZw';
  HLinkNavigateString(NIL, PWideChar(WideString(Dire)) );

end;

procedure TFMenu.TipoLiquidacionSuelddoExecute(Sender: TObject);
begin
  if not(Assigned(FormTipoLiquidacionSueldos)) then
      FormTipoLiquidacionSueldos := TFormTipoLiquidacionSueldos.Create(Application);
    FormTipoLiquidacionSueldos.Show;
end;

procedure TFMenu.ImportarGastosRubrosExecute(Sender: TObject);
begin
  if not(Assigned(FormImportarRubGastos)) then
    FormImportarRubGastos:= TFormImportarRubGastos.Create(Application);
  FormImportarRubGastos.Show;
end;

procedure TFMenu.LecturaBasculaExecute(Sender: TObject);
begin
  if not(Assigned(FormLecturaBascula)) then
    FormLecturaBascula := TFormLecturaBascula.Create(Application);
  FormLecturaBascula.Show;
end;

procedure TFMenu.ActualizacionPreciosExecute(Sender: TObject);
  begin
    if not(Assigned(FormCambioPrecios)) then
      FormCambioPrecios := TFormCambioPrecios.Create(Application);
    FormCambioPrecios.Show;
  end;

procedure TFMenu.ListaPrecioPersonalizadaExecute(Sender: TObject);
  begin
    if not(Assigned(FormListaPreciosPersonalizada)) then
      FormListaPreciosPersonalizada := TFormListaPreciosPersonalizada.Create
        (Application);
    FormListaPreciosPersonalizada.Show;
  end;

procedure TFMenu.AjustesCCProveedoresExecute(Sender: TObject);
  begin
    if not(Assigned(FormAjusteCCProveedores)) then
      FormAjusteCCProveedores := TFormAjusteCCProveedores.Create(Application);
    FormAjusteCCProveedores.Show;
  end;

procedure TFMenu.AjusteLotesStockExecute(Sender: TObject);
  begin
    if not(Assigned(FormAjusteLotes)) then
      FormAjusteLotes := TFormAjusteLotes.Create(Application);
    FormAjusteLotes.Show;
  end;

procedure TFMenu.AjustesCCClientesExecute(Sender: TObject);
  begin
    if not(Assigned(FormAjustesCCVenta_2)) then
      FormAjustesCCVenta_2 := TFormAjustesCCVenta_2.Create(Application);
    FormAjustesCCVenta_2.Show;
  end;

procedure TFMenu.LstRetencionesExecute(Sender: TObject);
  begin
    if not(Assigned(FormListadoRetencionesCobranza)) then
      FormListadoRetencionesCobranza := TFormListadoRetencionesCobranza.Create
        (Application);
    FormListadoRetencionesCobranza.Show;
  end;

procedure TFMenu.LstTransferenciasInterbancExecute(Sender: TObject);
  begin
    if not(Assigned(FormLstTransferenciasInterBancarias)) then
      FormLstTransferenciasInterBancarias :=
        TFormLstTransferenciasInterBancarias.Create(Application);
    FormLstTransferenciasInterBancarias.Show;
  end;

procedure TFMenu.LstUltimaVtaClientesExecute(Sender: TObject);
  begin
    if not(Assigned(FormListadoUltimaVtaCliente)) then
      FormListadoUltimaVtaCliente := TFormListadoUltimaVtaCliente.Create
        (Application);
    FormListadoUltimaVtaCliente.Show;
  end;

procedure TFMenu.LstVtasRubrosAnualExecute(Sender: TObject);
  begin
    if not(Assigned(FormResumenVtaRubro_Sub_Anual)) then
      FormResumenVtaRubro_Sub_Anual := TFormResumenVtaRubro_Sub_Anual.Create
        (Application);
    FormResumenVtaRubro_Sub_Anual.Show;
  end;

procedure TFMenu.LstVtasVendedoresAnualesExecute(Sender: TObject);
  begin
    if not(Assigned(FormResumenAnualVtasVendedor)) then
      FormResumenAnualVtasVendedor := TFormResumenAnualVtasVendedor.Create
        (Application);
    FormResumenAnualVtasVendedor.Show;
  end;

procedure TFMenu.DepositosExecute(Sender: TObject);
  begin
    if not(Assigned(FormDepositos_2)) then
      FormDepositos_2 := TFormDepositos_2.Create(Application);
    FormDepositos_2.Show;
  end;

procedure TFMenu.DepositoUsuarioExecute(Sender: TObject);
  begin
    if not(Assigned(FormDepositosUsuarios)) then
      FormDepositosUsuarios := TFormDepositosUsuarios.Create(Application);
    FormDepositosUsuarios.Show;
  end;

procedure TFMenu.DepositoVendedorExecute(Sender: TObject);
begin
  if not(Assigned(FormDepositoVendedor)) then
    FormDepositoVendedor := TFormDepositoVendedor.Create(Application);
  FormDepositoVendedor.Show;
end;

procedure TFMenu.DescuentosEspecialesExecute(Sender: TObject);
begin
  if not(Assigned(FormStock_Dstos)) then
    FormStock_Dstos := TFormStock_Dstos.Create(Application);
  FormStock_Dstos.Show;
end;

procedure TFMenu.DescuentosUsuariosExecute(Sender: TObject);
begin
  if not(Assigned(FormDescuentosUsuarios)) then
    FormDescuentosUsuarios := TFormDescuentosUsuarios.Create(Application);
  FormDescuentosUsuarios.Show;
end;

procedure TFMenu.DespachoImpoExecute(Sender: TObject);
begin
  if not(Assigned(FormDespachoImpo)) then
    FormDespachoImpo := TFormDespachoImpo.Create(Application);
  FormDespachoImpo.Show;
end;

procedure TFMenu.EmpresaExecute(Sender: TObject);
  begin
    if not(Assigned(FormEmpresa)) then
      FormEmpresa := TFormEmpresa.Create(Application);
    FormEmpresa.Show;
  end;

procedure TFMenu.EntregaAcopioExecute(Sender: TObject);
  begin
    if not(Assigned(FormRtoEntregaAcopio)) then
      FormRtoEntregaAcopio := TFormRtoEntregaAcopio.Create(Application);
    FormRtoEntregaAcopio.Show;
  end;

procedure TFMenu.EstacionProduccionExecute(Sender: TObject);
  begin
    if not(Assigned(FormEstacionProduccion)) then
      FormEstacionProduccion := TFormEstacionProduccion.Create(Application);
    FormEstacionProduccion.Show;
  end;

procedure TFMenu.EstadosArticulosExecute(Sender: TObject);
  begin
    if not(Assigned(FormAdminEstadosStock)) then
      FormAdminEstadosStock := TFormAdminEstadosStock.Create(Application);
    FormAdminEstadosStock.Show;
  end;

procedure TFMenu.FormDblClick(Sender: TObject);
  var
    ArchivoIni: TIniFile;
    path: string;
    ImagenPath: string;
  begin
    path := ExtractFilePath(ParamStr(0));
    ArchivoIni := TIniFile.Create(path + '\' + DMMain_FD.NombreIni);
    ImagenPath := ArchivoIni.ReadString('Imagen', 'nombre', '');
    OpenPictureDialog1.Execute;
    ImagenPath := OpenPictureDialog1.FileName;
    if ImagenPath <> '' then
    begin
      JvBackground.Image.Enabled := False;
      JvBackground.Image.Picture.LoadFromFile(ImagenPath);
      JvBackground.Image.Enabled := True;
    end;
    ArchivoIni.WriteString('Imagen', 'nombre', ImagenPath);
    ArchivoIni.Free;
  end;

procedure TFMenu.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  begin
    // pmPrincipal.AutoPopup:= shift=[ssctrl,ssRight];
  end;

procedure TFMenu.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
  begin
    // RibbonMenu.Minimized:=True;
    // sbEstado.Panels[0].Text:='X:'+ IntToStr(X)+'Y:'+ IntToStr(Y) ;
    //if (Y>150) and (pagControlMenu.Collapsed=False) then
    //  pagControlMenu.Collapsed:=True;
    // begin
    //
    // if RibbonMenu.Minimized=False then
    // RibbonMenu.Minimized:=True
    // else
    // if RibbonMenu.Minimized=True then
    // begin
    // RibbonMenu.Minimized:=False;
    // RibbonMenu.Minimized:=True
    // end;
    // end;
  end;

procedure TFMenu.FormShow(Sender: TObject);
begin
  WindowState := wsMaximized;
  JvBackground.Image.Enabled := False;
  JvBackground.Image.Enabled := True;
    // ribbonMenu.Minimized       := True;
  FMenu.Refresh;
  if VirtualUI.Active then
    begin
      FMenu.BorderIcons              := [];
      FMenu.BorderStyle              := bsNone;
      tbpMenuGeneral.Caption.Visible := False;
      tbpMenuGeneral.Height          := 135;

      AdvQuickAccessToolBar1.Height  := 0;
      AdvToolBarOfficeStyler1.Style  := bsWindows10;
    end;
  tbpMenuGeneral.Collaps;
  tbpMenuGeneral.TabSettings.Spacing     :=20;
  tbpMenuGeneral.TabSettings.LeftMargin  :=3;
  tbpMenuGeneral.TabSettings.RightMargin :=3;
  tbpMenuGeneral.TabSettings.EndMargin   :=5;
  tbpMenuGeneral.TabSettings.StartMargin :=75;
  tbpMenuGeneral.ShowFloatingRibbon;

  LimpiarLog.Execute;
end;

procedure TFMenu.FrameMenu1BitBtn1Click(Sender: TObject);
  begin
    Usuarios.Execute;
  end;

procedure TFMenu.AliasExecute(Sender: TObject);
  begin
    if not(Assigned(FormAlias)) then
      FormAlias := TFormAlias.Create(Application);
    FormAlias.Show;
  end;

procedure TFMenu.AlicuotaIvaExecute(Sender: TObject);
  begin
    if not(Assigned(FormAlicuotasIva)) then
      FormAlicuotasIva := TFormAlicuotasIva.Create(Application);
    FormAlicuotasIva.Show;
  end;

procedure TFMenu.AltaCAEAExecute(Sender: TObject);
begin
  if not(Assigned(FormAltaConsulta_CAEA)) then
    FormAltaConsulta_CAEA:= TFormAltaConsulta_CAEA.Create(Application);
  FormAltaConsulta_CAEA.Show;
end;

procedure TFMenu.InscripcionExecute(Sender: TObject);
  begin
    if not(Assigned(FormInscripcion_2)) then
      FormInscripcion_2 := TFormInscripcion_2.Create(Application);
    FormInscripcion_2.Show;
  end;

procedure TFMenu.PercepcionIvaExecute(Sender: TObject);
  begin
    if not(Assigned(FormPercepcionIva_2)) then
      FormPercepcionIva_2 := TFormPercepcionIva_2.Create(Application);
    FormPercepcionIva_2.Show;
  end;

procedure TFMenu.PedidosAgrupadosExecute(Sender: TObject);
begin
  if not(Assigned(FormPedidosAProcesar)) then
    FormPedidosAProcesar := TFormPedidosAProcesar.Create(Application);
  FormPedidosAProcesar.Show;
end;

procedure TFMenu.PedidosAppExecute(Sender: TObject);
begin
  if not(Assigned(FormLectorPedidosApp)) then
    FormLectorPedidosApp := TFormLectorPedidosApp.Create(Application);
  FormLectorPedidosApp.Show;
end;

procedure TFMenu.PedidosExecute(Sender: TObject);
  begin
    if not(Assigned(FormPedidos)) then
      FormPedidos := TFormPedidos.Create(Application);
    FormPedidos.Show;
  end;

procedure TFMenu.PedidosMorphiExecute(Sender: TObject);
  begin
    if not(Assigned(FormPedidosMorphi)) then
      FormPedidosMorphi := TFormPedidosMorphi.Create(Application);
    FormPedidosMorphi.Show;
  end;

procedure TFMenu.PedidosSectoresExecute(Sender: TObject);
begin
  if not(Assigned(FormSectorPedidos)) then
    FormSectorPedidos := TFormSectorPedidos.Create(Application);
  FormSectorPedidos.Show;
end;

procedure TFMenu.PedidosSinfacturarExecute(Sender: TObject);
  begin
    if not(Assigned(FormPedidosCumplidos)) then
      FormPedidosCumplidos := TFormPedidosCumplidos.Create(Application);
    FormPedidosCumplidos.Show;
  end;

procedure TFMenu.PeidosWebExecute(Sender: TObject);
begin
  if not(Assigned(FormLeerOrdenWP)) then
    FormLeerOrdenWP := TFormLeerOrdenWP.Create(Application);
  FormLeerOrdenWP.Show;
end;


procedure TFMenu.PercepcionIBExecute(Sender: TObject);
  begin
    if not(Assigned(FormPercepcionIB_2)) then
      FormPercepcionIB_2 := TFormPercepcionIB_2.Create(Application);
    FormPercepcionIB_2.Show;
  end;

procedure TFMenu.ConsultaStockExecute(Sender: TObject);
  begin
    if not(Assigned(FormConsultaStock)) then
      FormConsultaStock := TFormConsultaStock.Create(Application);
    FormConsultaStock.Show;
  end;

procedure TFMenu.ComprobantesExecute(Sender: TObject);
  begin
    if not(Assigned(FormComprobantes)) then
      FormComprobantes := TFormComprobantes.Create(Application);
    FormComprobantes.Show;
  end;

procedure TFMenu.edNombreAccDireExit(Sender: TObject);
  var
    c: TObject;
    acc: TAccesoDirecto;
  begin
    // CDSAccesos.Close;
    // CDSAccesos.Params.ParamByName('id_usuario').Value:= DMMain_FD.UsuarioActivoId;
    // CDSAccesos.Params.ParamByName('id').Value        := StrToInt(Trim(copy(AccNombre,5,10)));
    // CDSAccesos.Open;
    // CDSAccesos.Edit;
    // CDSAccesosCAPTION.Value:=EditTemp.Text;
    // CDSAccesos.ApplyUpdates(0);

    c := FindComponent(AccNombre);
    acc := (c as TAccesoDirecto);
    if acc <> nil then
    begin
      with acc do
      begin
        Caption := '';
        Text := EditTemp.Text;
      end;
    end;
    EditTemp.Free;

  end;

procedure TFMenu.edNombreAccDireKeyPress(Sender: TObject; var Key: Char);
  begin
    if Key = #13 then
      edNombreAccDire.OnExit(Sender);
  end;

procedure TFMenu.EgresoCajaExecute(Sender: TObject);
  begin
    if not(Assigned(FormEgresoCaja)) then
      FormEgresoCaja := TFormEgresoCaja.Create(Application);
    FormEgresoCaja.Show;
  end;

procedure TFMenu.RubroClientesExecute(Sender: TObject);
  begin
    if not(Assigned(FormRubroClientes)) then
      FormRubroClientes := TFormRubroClientes.Create(Application);
    FormRubroClientes.Show;
  end;

procedure TFMenu.RubroGastosExecute(Sender: TObject);
  begin
    if not(Assigned(FormGastosRubro)) then
      FormGastosRubro := TFormGastosRubro.Create(Application);
    FormGastosRubro.Show;
  end;

procedure TFMenu.CuentasGastosExecute(Sender: TObject);
  begin
    if not(Assigned(FormGastosCuentas)) then
      FormGastosCuentas := TFormGastosCuentas.Create(Application);
    FormGastosCuentas.Show;
  end;

procedure TFMenu.LocalidadesExecute(Sender: TObject);
  begin
    if not(Assigned(Formlocalidades)) then
      Formlocalidades := TFormLocalidades.Create(Application);
    Formlocalidades.Show;
  end;

procedure TFMenu.FormCreate(Sender: TObject);
  var
    path, Icono, imagen, Login, caja, Empleado, ClientePorDefecto, PuertoCom,
    ScannerSerie, Deposito, PrNomCpbte, PrNomListados, agenda, DiscriminaIva,
    datos, DatosContable, UsaBDE, PrCpbteDefecto, PrListadoDefecto,
    ProveedorPorDefecto, GravamenPorDefecto, SYSDBA,Password: string;
    RangoFechaCCVta, RangoFechaCCComp, RangoFechaCCEmp, UnidadesPorDefecto,
    TIvaPorDefecto, STIvaPorDefecto, InscripcionPorDefecto,SucursalPorDefecto: Integer;
    ArchivoIni, GeneralIni: TIniFile;
    Trial, MonitorActivo: Boolean;
    Contador, Tope, Modo, TipoBaseDatos: Integer;
    D, M, Y, H, Mi: Word;
    StyleName,MonitorPath: string;

    Busqueda: TSearchRec;
    iResultado, TipoConf: Integer;
    aux, SDirectorio: string;
    Query: TFDQuery;
begin
    // con esto hago el seto en la pc
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL, '.');
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_STHOUSAND, ',');
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SMONDECIMALSEP, '.');
    SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SMONTHOUSANDSEP, ',');
    // establezco los separadores de miles y decimales
    FormatSettings.DecimalSeparator := '.';
    FormatSettings.ThousandSeparator := ',';
    path := ExtractFilePath(ParamStr(0));
    // **************************************
    // Creo el DataModule Contable
    // **************************************
    if not(Assigned(DMContable)) then
      DMContable := TDMContable.Create(Application);
    DMContable.fdcContables.Connected := False;
    // **************************************
    // Creo el DataModule 2 Nuevo
    // **************************************

    if not(Assigned(DMMain_FD)) then
      DMMain_FD := TDMMain_FD.Create(Application);
    DMMain_FD.fdcGestion.Connected := False;
    DMMain_FD.FdcUser.Connected    := False;
   // tcFireDACDriver1.FDConnection := DMMain_FD.fdcGestion;
   // tcFireDACDriver1.FDTransaction:= FDTransaction;

    // **************************************
    // Creo el DataModule Auxiliares ( Nuevo)
    // **************************************
    if not(Assigned(DMBuscadores)) then
      DMBuscadores := TDMBuscadores.Create(Application);

    if not(Assigned(DMStoreProcedure)) then
      DMStoreProcedure := TDMStoreProcedure.Create(Application);

    // ***************************************************************
    // *************************************************************
    // Pongo un Ini General de donde tomo la Base de Datos ********
    // *************************************************************
    // ***************************************************************

    GeneralIni := TIniFile.Create(path + 'General.Ini');
    Datos      := GeneralIni.ReadString('Datos', 'Datos', 'GestionV3');
    // ****** Poner Icono en el Sistema....
    if (DMMain_FD.Icono <> '') and (FileExists(DMMain_FD.Icono)) then
      try
        Application.Icon.LoadFromFile(DMMain_FD.Icono);
      except
      end;
    // **********************************
    DatosContable            := GeneralIni.ReadString('Datos', 'DatosContable', '');
    UsaBDE                   := GeneralIni.ReadString('Datos', 'BDE', 'S');
    DatosSinBDEPath          := GeneralIni.ReadString('Datos', 'DatosSinBDEPath', '');
    SYSDBA                   := GeneralIni.ReadString('Datos', 'UsuarioBD', 'SYSDBA');
    Password                 := GeneralIni.ReadString('Datos', 'UsuarioPassword', 'regulador');
    // impresoras
    PrNomCpbte               := GeneralIni.ReadString('Impresoras', 'Comprobantes', '');
    PrNomListados            := GeneralIni.ReadString('Impresoras', 'Listados', '');
    PrCpbteDefecto           := GeneralIni.ReadString('Impresoras', 'ComprobanteDefecto', 'S');
    PrListadoDefecto         := GeneralIni.ReadString('Impresoras', 'ListadoDefecto', 'S');
    // codificacion de stock controlada por rubro-subrubro
    // se paso a Opciones---- ControlaCodigo     := GeneralIni.ReadString('Stock', 'ControlaCodigo', 'S');
    // Si usa escaner Serie
    ScannerSerie             := GeneralIni.ReadString('Scanner', 'Activo', 'N');
    PuertoCom                := GeneralIni.ReadString('Scanner', 'Puerto', 'COM2');
    ProveedorPorDefecto      := GeneralIni.ReadString('Proveedor', 'Proveedor', '');
    TIvaPorDefecto           := GeneralIni.ReadInteger('Iva', 'Tasa', 1);
    STIvaPorDefecto          := GeneralIni.ReadInteger('Iva', 'SobreTasa', 1);
    GravamenPorDefecto       := GeneralIni.ReadString('Gravamen', 'gravamen', 'G');
    UnidadesPorDefecto       := GeneralIni.ReadInteger('Unidad', 'Unidad', 1);
    InscripcionPorDefecto    := GeneralIni.ReadInteger('Inscripcion', 'Inscripcion', 1);
    TipoBaseDatos            := GeneralIni.ReadInteger('Datos', 'BaseDatos', 0);

    DMMain_FD.AvisoSinCae     := GeneralIni.ReadBool('AvisoSinCae', 'Estado', True);
    // ***************************************************************
    // ***************************************************************
    // Guardo los valores en el ini General *************************
    GeneralIni.WriteString('Datos', 'Datos', datos);
    GeneralIni.WriteString('Icono', 'Path', Icono);

    GeneralIni.WriteString('Datos', 'DatosContable', DatosContable);
    GeneralIni.WriteString('Datos', 'BDE', UsaBDE);
    GeneralIni.WriteString('Datos', 'DatosSinBDEPath', DatosSinBDEPath);
    GeneralIni.WriteString('Datos', 'UsuarioBD', SYSDBA);
    GeneralIni.WriteString('Datos', 'UsuarioPassword', Password);
//
    GeneralIni.WriteString('Impresoras', 'Comprobantes', PrNomCpbte);
    GeneralIni.WriteString('Impresoras', 'Listados', PrNomListados);
    GeneralIni.WriteString('Impresoras', 'ComprobanteDefecto', PrCpbteDefecto);
    GeneralIni.WriteString('Impresoras', 'ListadoDefecto', PrListadoDefecto);
    GeneralIni.WriteString('Scanner', 'Activo', ScannerSerie);
    GeneralIni.WriteString('Scanner', 'Puerto', PuertoCom);
    GeneralIni.WriteString('Proveedor', 'Proveedor', ProveedorPorDefecto);
    GeneralIni.WriteInteger('Iva', 'Tasa', TIvaPorDefecto);
    GeneralIni.WriteInteger('Iva', 'SobreTasa', STIvaPorDefecto);
    GeneralIni.WriteString('Gravamen', 'gravamen', GravamenPorDefecto);
    GeneralIni.WriteInteger('Unidad', 'Unidad', UnidadesPorDefecto);
    GeneralIni.WriteInteger('Inscripcion', 'Inscripcion',InscripcionPorDefecto);

    GeneralIni.Free;
    // Fin de Manjeo del Ini General ******************************
    // *************************************************************
    // *************************************************************
    // Conecto a la Base de Datos *********************************
    // *************************************************************
    if not DMMain_FD.Conectar then
      begin
        if Not(Assigned(FormConfiguraPath)) Then
          FormConfiguraPath := TFormConfiguraPath.Create(Application);

        if (not FormConfiguraPath.Conectar) then
          begin
            WindowCloseAll.Execute;
            Application.Terminate;
          end;
      end;
    // *************************************************************
    // Levanto si Usa contabilidad
    // *************************************************************
     if DMMain_FD.GetUsaContabilidad then
      begin
        if not DMMain_FD.ConectarContable then
          begin
             if MessageDlg('Verificar el Alias de la Base de Datos del Contable  o deshabilitar el usos de la parte contable..... Cierra la aplicacion?', mtConfirmation, mbYesNo, 0) = mrYes  then
              begin
                WindowCloseAll.Execute;
                Application.Terminate;
              end;
          end;
      end;

    Users1.Login;
    if Users1.LastLoginOk = False Then
      Application.Terminate;
    // Feafip WS
    if not(Assigned(DM_FacturaElectronica)) then
      DM_FacturaElectronica:=TDM_FacturaElectronica.Create(Application);

    // Feafip JC
    if not(Assigned(dmFE1)) then
      dmFE1:=TdmFE1.Create(Application);

    // Rutina a de control acceso a sistema
    var vCuit:string;
    vCuit:= '20139746377';
//    RESTClient1.BaseURL := 'http://baroquely-psephological-ace.ngrok-free.dev/api/empresa-status?cuit='+vCuit;
//    RESTRequest1.Execute;
//    if (RESTRequest1.Response.StatusCode=200) Then
//      begin
//        ShowMessage('Ok ----- ' + RESTResponse1.Content);
//      end;
    // ***********************************************

    // *************************************************************
    // Levanto el si Usa Control de Firma Operaciones  (Clave pedido por Pili) Pide la clave del usuario por si hacen un doc con alguien ya logeado
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'FIRMA';
    DMMain_FD.QOpciones.Open;
    if (DMMain_FD.QOpciones.IsEmpty) Then
      begin
        Query := TFDQuery.Create(Self);
        Query.SQL.Text :=
          'Insert into opciones (opcion,descripcion,valor,grupo) values ' +
          ' (''FIRMA'',''Validar Operacion .. Confirma quien la hizo'',''No'',''I'')';
        Query.Connection := DMMain_FD.fdcGestion;
        Query.ExecSQL;
        Query.Close;
        FreeAndNil(Query);
      end;
    DMMain_FD.QOpciones.Close;
    // *************************************************************
    // Levanto el si Usa Control Actualizacion de Precios en Produccion
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'PRODUVTA';
    DMMain_FD.QOpciones.Open;
    if (DMMain_FD.QOpciones.IsEmpty) Then
      begin
        Query := TFDQuery.Create(Self);
        Query.SQL.Text :=
          'Insert into opciones (opcion,descripcion,valor,grupo) values ' +
          ' (''PRODUVTA'',''Cambia Precio Art.de Produccion al cambiar Costo'',''No'',''I'')';
        Query.Connection := DMMain_FD.fdcGestion;
        Query.ExecSQL;
        Query.Close;
        FreeAndNil(Query);
      end;
    DMMain_FD.QOpciones.Close;
    // *************************************************************
    // Levanto el si Usa Descuenta Stock en los Remitos
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'STOCKRTO';
    DMMain_FD.QOpciones.Open;
    if (DMMain_FD.QOpciones.IsEmpty) Then
      begin
        Query := TFDQuery.Create(Self);
        Query.SQL.Text :=
          'Insert into opciones (opcion,descripcion,valor,grupo) values ' +
          ' (''STOCKRTO'',''Descontar Stock por Medio de Rto'',''No'',''I'')';
        Query.Connection := DMMain_FD.fdcGestion;
        Query.ExecSQL;
        Query.Close;
        FreeAndNil(Query);
      end;
    DMMain_FD.QOpciones.Close;
    // *************************************************************
    // Levanto si Controla la Cancelacion de Comprobante
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'ESCCPBTE';
    DMMain_FD.QOpciones.Open;
    if (DMMain_FD.QOpciones.IsEmpty) Then
      begin
        Query := TFDQuery.Create(Self);
        Query.SQL.Text :=
          'Insert into opciones (opcion,descripcion,valor,grupo) values ' +
          ' (''ESCCPBTE'',''Controla Cancelacion de Cpbte de Vta'',''No'',''I'')';
        Query.Connection := DMMain_FD.fdcGestion;
        Query.ExecSQL;
        Query.Close;
        FreeAndNil(Query);
      end;
    DMMain_FD.QOpciones.Close;
    // *************************************************************
    // Levanto si Controla la Finalizacion de Operaciones de Comprobante (Pili)
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'FINOPER';
    DMMain_FD.QOpciones.Open;
    if (DMMain_FD.QOpciones.IsEmpty) Then
      begin
        Query := TFDQuery.Create(Self);
        Query.SQL.Text :=
          'Insert into opciones (opcion,descripcion,valor,grupo) values ' +
          ' (''FINOPER'',''Controla Final Operaciones de Entregas en Ventas'',''No'',''I'')';
        Query.Connection := DMMain_FD.fdcGestion;
        Query.ExecSQL;
        Query.Close;
        FreeAndNil(Query);
      end;
    DMMain_FD.QOpciones.Close;
    // *************************************************************
    // Levanto si La App Hace Login o no --- LOGEA EN LA APP
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'LOGINAPP';
    DMMain_FD.QOpciones.Open;
    if (DMMain_FD.QOpciones.IsEmpty) Then
      begin
        Query := TFDQuery.Create(Self);
        Query.SQL.Text :=
          'Insert into opciones (opcion,descripcion,valor,grupo) values ' +
          ' (''LOGINAPP'',''Hacer login en la app de venta Movil'',''No'',''I'')';
        Query.Connection := DMMain_FD.fdcGestion;
        Query.ExecSQL;
        Query.Close;
        FreeAndNil(Query);
      end;
    DMMain_FD.QOpciones.Close;
    // *************************************************************
    // Levanto el si Monto retencion de IVA
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'RETIVA';
    DMMain_FD.QOpciones.Open;
    if (DMMain_FD.QOpciones.IsEmpty) Then
      begin
        Query := TFDQuery.Create(Self);
        Query.SQL.Text :=
          'Insert into opciones (opcion,descripcion,valor,grupo) values ' +
          ' (''RETIVA'',''Monto Neto Minimo retencion Iva Facturas M'',''1000'',''F'')';
        Query.Connection := DMMain_FD.fdcGestion;
        Query.ExecSQL;
        Query.Close;
        FreeAndNil(Query);
      end;
    DMMain_fd.QOpciones.Close;
    // *************************************************************
    // Levanto el Motivo de los Ajustes por Produccion
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'MOTIVOPROD';
    DMMain_FD.QOpciones.Open;
    if (DMMain_FD.QOpciones.IsEmpty) Then
      begin
        Query := TFDQuery.Create(Self);
        Query.SQL.Text :=
          'Insert into opciones (opcion,descripcion,valor,grupo) values ' +
          ' (''MOTIVOPROD'',''Codigo Motivo Ajuste para Produccion'',''0'',''F'')';
        Query.Connection := DMMain_FD.fdcGestion;
        Query.ExecSQL;
        Query.Close;
        FreeAndNil(Query);
      end;
    DMMain_fd.QOpciones.Close;
    // *************************************************************
    // Verifico si es una version de prueba
    // *************************************************************
    Trial := False;
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'TRIAL';
    DMMain_FD.QOpciones.Open;
    if DMMain_FD.QOpciones.Fields[0].AsString <> '' Then
      if Copy(DMMain_FD.QOpciones.Fields[0].AsString, 1, 1) = 'S' Then
      begin
        Trial := True;
        TimerTrial.Enabled:=True;
        DMMain_FD.QOpciones.Close;
        DMMain_FD.QOpciones.ParamByName('opcion').Value := 'CONTADOR';
        DMMain_FD.QOpciones.Open;
        Contador := StrToInt(DMMain_FD.QOpciones.Fields[0].AsString);
        DMMain_FD.QOpciones.Close;

        DMMain_FD.QOpciones.Close;
        DMMain_FD.QOpciones.ParamByName('opcion').Value := 'TOPE';
        DMMain_FD.QOpciones.Open;
        Tope := StrToInt(DMMain_FD.QOpciones.Fields[0].AsString);
        DMMain_FD.QOpciones.Close;

        if Contador >= Tope Then
          begin
            ShowMessage('Periodo de Prueba Superado... Llamar al proveedor del sistema para habilitarlo...');
            Application.Terminate;
          end
        else
        begin
          spContadorTrial.Close;
          spContadorTrial.ParamByName('NUEVOVALOR').Value :=      IntToStr(Contador + 1);
          spContadorTrial.ExecProc;
          spContadorTrial.Close;
        end;
      end;
    DMMain_FD.QOpciones.Close;
    // *************************************************************
    // tomo el nombre del Ususario para determinar el .INI que debo tomar.
    // si es vacio es por que no se logeo entonces el nombre del ini es Gestion
    // si no tomo el nombre del tipo (chavon)
    // *************************************************************
    DMMain_FD.NombreIni := Trim(Users1.CurrentUser.UserName);
    if DMMain_FD.NombreIni = '' Then
      DMMain_FD.NombreIni := 'Gestion.ini'
    else
      DMMain_FD.NombreIni := Trim(Users1.CurrentUser.UserName) + '.ini';
    // *******************************************************
    // Inicio el Archivo INI *********************************
    // *******************************************************
    ArchivoIni := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.NombreIni);
    // busco el fondo de pantalla
    imagen := ArchivoIni.ReadString('Imagen', 'nombre', '');

    if (DMMain_FD.Imagen <> '') and (FileExists(DMMain_FD.Imagen)) then
      begin
        JvBackground.Image.Enabled := False;
        JvBackground.Image.Picture.LoadFromFile(DMMain_FD.Imagen);
        JvBackground.Image.Enabled := True;

        case DMMain_FD.ImagenModo of
          10: JvBackground.Image.Mode := bmStretch;
           0: JvBackground.Image.Mode := bmTile;
           3: JvBackground.Image.Mode := bmTop;
        end;
      end;
    Modo := ArchivoIni.ReadInteger('Imagen', 'modo', 0);
    // busco sucrusal
    sucursal := ArchivoIni.ReadString('Sucursal', 'Sucursal', '1');

    TimerPresupuestoAlCobro.Enabled := ArchivoIni.ReadBool('Presupuesto', 'AlCobro',False);
    DMMain_FD.SucursalPorDef        := DMMain_FD.Sucursal;
    DMMain_FD.InscripcionPorDefecto := InscripcionPorDefecto;

    // busco Caja
    Caja :=   DMMain_FD.Caja;//ArchivoIni.ReadString('Caja', 'Caja', '1');
    // Busco Deposito
    Deposito := ArchivoIni.ReadString('Deposito', 'Deposito', '1');
    if Deposito = '' Then
      Deposito := '1';

    DepositoEnUso := StrToInt(DMMain_FD.Deposito);
    // usa agenda
    agenda := ArchivoIni.ReadString('Agenda', 'Agenda', 'N');
    // Cliente
    ClientePorDefecto := ArchivoIni.ReadString('cliente', 'cliente', '');
     //Rango de dias entre fechas para las ctas corrientes
    RangoFechaCCVta   := ArchivoIni.ReadInteger('RangoFechas', 'CtaCteVta', 1);
    RangoFechaCCComp  := ArchivoIni.ReadInteger('RangoFechas', 'CtaCteComp', 1);
    RangoFechaCCEmp   := ArchivoIni.ReadInteger('RangoFechas', 'CtaCteEmpleado', 1);
    // Empleado por defecto para las ordens de Trabajo
    Empleado          := ArchivoIni.ReadString('Empleado', 'Empleado', '000001');
    // si Discrimina Iva en las Facturas solo en la visualizacion en pantalla
    // esta opcion no afecta al comprobante , solo es en la visualizacion y carga
    DiscriminaIva     := ArchivoIni.ReadString('DiscriminaIva', 'Discrimina', 'S');
    // RibbonMenu.Minimized  := ArchivoIni.ReadBool('MuestraBarra', 'MuestraBarra', False);

    NroEstilo                := ArchivoIni.ReadInteger('estilo', 'Numero', 0);
     // *******************************************************
    // Fin de lectura INI ************************************
    // *******************************************************

    AcAgenda.Visible := DMMain_FD.Agenda;//(agenda = 'S');

    PathTx := ArchivoIni.ReadString('stock', 'Transferencia', 'c:\');

    ArchivoIni.WriteString('Imagen', 'nombre', DMMain_FD.Imagen);
    if JvBackground.Image.Mode = bmTile then
      ArchivoIni.WriteInteger('Imagen', 'modo', 10)
    else if JvBackground.Image.Mode = bmStretch then
      ArchivoIni.WriteInteger('Imagen', 'modo', 0);

    ArchivoIni.WriteString('Sucursal', 'Sucursal', Sucursal);
    ArchivoIni.WriteString('Caja', 'Caja', Caja);
    ArchivoIni.WriteString('Deposito', 'Deposito', Deposito);
    ArchivoIni.WriteString('Agenda', 'Agenda', agenda);
    ArchivoIni.WriteString('cliente', 'cliente', ClientePorDefecto);
    ArchivoIni.WriteInteger('RangoFechas', 'CtaCteVta', RangoFechaCCVta);
    ArchivoIni.WriteInteger('RangoFechas', 'CtaCteComp', RangoFechaCCComp);
    ArchivoIni.WriteInteger('RangoFechas', 'CtaCteEmpleado', RangoFechaCCEmp);
    ArchivoIni.WriteString('Empleado', 'Empleado', Empleado);
    ArchivoIni.WriteString('DiscriminaIva', 'Discrimina', DiscriminaIva);
    ArchivoIni.WriteBool('MuestraBarra', 'MuestraBarra', False);
    ArchivoIni.Free;

    DMMain_FD.UsuarioActivo   := Trim(Users1.CurrentUser.UserName);
    DMMain_FD.UsuarioActivoId := Users1.CurrentUser.UserId;
    // Verifico si es Administrador
    // Lo cambio por una opcion del menu
    DMMain_FD.UsuarioAdministrador := UsuarioAdministrador.Enabled;
    // ********************************************
    // ***** si el user es administrador le permito todas las listas
    // ********************************************
  //  if DMMain_FD.UsuarioAdministrador then
  //    DMMain_FD.ControlaLista := False;
    // ********************************************
    // ********************************************
    CDSEmpresa.Open;
    // RibbonMenu.Caption   := 'SiGCo - Sistema de Gestion - Empresa : '+CDSEmpresaNOMBRE.AsString+' > '+'  Usuario : '+ Users1.CurrentUser.RealName;
    FMenu.Caption := 'SiGCo - Sistema de Gestion - ';

    sbEstado.Panels[0].Text:='Usuario: '+ Users1.CurrentUser.RealName;
    sbEstado.Panels[2].Text:='Datos : ' + DatosSinBDEPath;
    sbEstado.Panels[1].Text:='Empresa: '+ CDSEmpresaNOMBRE.AsString;

    tbpMenuGeneral.Caption.Caption := FMenu.Caption;
    CDSEmpresa.Close;

    lbUsuario.Caption := DMMain_FD.UsuarioActivo + #13;

    DMMain_FD.fdcGestion.StartTransaction;
    try
      Query            := TFDQuery.Create(Self);
      Query.SQL.Text   := 'execute procedure actualizaprioridadesot';
      Query.Connection := DMMain_FD.fdcGestion;
      Query.ExecSQL;
      Query.Close;
      DMMain_FD.fdcGestion.Commit;
      FreeAndNil(Query);
    Except
      DMMain_FD.fdcGestion.Rollback;
      Query.Close;
      FreeAndNil(Query);
    end;

    // ***********************************************************
    // Estos valores determina las acciones que se pueden hacer
    // ***********************************************************
    AsignarVariablesGlobales;

    if DMMain_FD.UsuarioAdministrador Then
      FMenu.Caption := FMenu.Caption + '(Administrador)';
    if Trial Then
      FMenu.Caption := FMenu.Caption + ' ** VERSION DE PRUEBA **';
    // ***********************************************************
    // Asigno los descuentos
    // **************************************************************
    DMMain_FD.TopeDsctoGral  := 0;
    DMMain_FD.TopeDsctoLinea := 0;
    DMMain_FD.DsctoLineaTemp := 0;

    if (DMMain_FD.AplicaDescuento = True) then
      begin
        DMMain_FD.TopeDsctoGral  := 100;
        DMMain_FD.TopeDsctoLinea := 100;
        DMMain_FD.DsctoLineaTemp := 100;

        DMMain_FD.QDstoUser.Close;
        DMMain_FD.QDstoUser.ParamByName('id').Value := DMMain_FD.UsuarioActivoId;
        DMMain_FD.QDstoUser.Open;
        if (DMMain_FD.QDstoUser.FieldByName('ID_USUARIO').AsString <> '') then
          begin
            DMMain_FD.TopeDsctoGral  := DMMain_FD.QDstoUser.FieldByName('DESC_GENERAL').AsFloat;
            DMMain_FD.TopeDsctoLinea := DMMain_FD.QDstoUser.FieldByName('DESC_LINEA').AsFloat;
            DMMain_FD.DsctoLineaTemp := DMMain_FD.QDstoUser.FieldByName('DESC_LINEA').AsFloat;
          end;
        DMMain_FD.QDstoUser.Close;
      end;
    // **************************************************************
    // Si el User administra Notas de Pedido Activo el Thread
    // **************************************************************
    DMMain_FD.QUsuariosAdminNP.Close;
    DMMain_FD.QUsuariosAdminNP.ParamByName('id').Value := DMMain_FD.UsuarioActivoId;
    DMMain_FD.QUsuariosAdminNP.Open;
    if (DMMain_FD.QUsuariosAdminNP.FIeldByName('ID_USUARIO').AsString <> '') then
    begin
      TimerPedido_Tx.Enabled := True;
      TimerPedido.Enabled    := True;
    end;
    DMMain_FD.QUsuariosAdminNP.Close;
    // **************************************************************
    // Si el User administra Notas de Pedido de Moviles Activo el Thread
    // **************************************************************
    Query            := TFDQuery.Create(Self);
    Query.SQL.Text   := 'select count(*) from usuarios_administra_pedidos_ap u where u.id_usuario = :id_usuario';
    Query.ParamByName('id_usuario').Value := DMMain_FD.UsuarioActivoId;
    Query.Connection :=DMMain_FD.fdcGestion;
    Query.Open;
    TimerPedidosMovil.Enabled := Query.RecordCount>0;
    Query.Close;
    FreeAndNil(Query);
    // **************************************************************
    // Asigno a Caja Selecionada la caja del INI por si no se logea
    // **************************************************************
     if caja = '' Then
      ShowMessage('No Hay caja asignada ... verificar en parametros...')
    else
      DMMain_FD.CajaSeleccionada := StrToInt(caja);
    // si no busco en el archivo de asignaciones de caja cual le corresponde *****
    if Users1.CurrentUser.UserName <> '' Then
      begin
        QCaja := TFDQuery.Create(Self);
        QCaja.Connection := DMMain_FD.fdcGestion;

        QCaja.SQL.Clear;
        QCaja.SQL.Text:='Select caja from CajaUsuario where usuario=' + '''' +
          Users1.CurrentUser.UserName + '''' + ' and por_defecto = ''S'' ';
        QCaja.Open;

        if QCaja.Fields[0].AsString <> '' Then
          begin
            DMMain_FD.CajaSeleccionada := QCaja.Fields[0].Value;
            QCaja.Close;
          end
        else
          begin
            QCaja.SQL.Clear;
            QCaja.SQL.Text:='Select min(caja) from CajaUsuario where usuario=' + '''' + Users1.CurrentUser.UserName + '''';
            QCaja.Open;
            if QCaja.Fields[0].AsString <> '' Then
            begin
              DMMain_FD.CajaSeleccionada := QCaja.Fields[0].Value;
              QCaja.Close;
            end
          end;
        QCaja.Close;
        FreeAndNil(QCaja);
      end;
    // *************************************************************
    // **** Verifico como y con que caracter se justifica
    // **** y rellena el codig de articulo *****
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'CODJUSTIFCADO';
    DMMain_FD.QOpciones.Open;
    DMMain_FD.JustificaCodigo := DMMain_FD.QOpciones.Fields[0].AsString;
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'CHAR';
    DMMain_FD.QOpciones.Open;
    DMMain_FD.CharCodigo := DMMain_FD.QOpciones.Fields[0].AsString;
    if DMMain_FD.CharCodigo = '' Then
      DMMain_FD.CharCodigo := '        ';
    DMMain_FD.QOpciones.Close;
    // *************************************************************
    // Levanto Cantidad Max de dias desde la ultima actulizacion de precios
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'MAXDIAPRECIO';
    DMMain_FD.QOpciones.Open;
    if DMMain_FD.QOpciones.Fields[0].AsString <> '' Then
      DMMain_FD.IntervMaxDesdeULtActuPrecio := DMMain_FD.QOpciones.Fields[0].AsInteger
    else
      DMMain_FD.IntervMaxDesdeULtActuPrecio := 0;
    DMMain_FD.QOpciones.Close;
    // *************************************************************
    // Levanto Si traslado descuento a las NC de Venta
    // *************************************************************
    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('opcion').Value := 'DSCTNC';
    DMMain_FD.QOpciones.Open;
    DMMain_FD.TraerDscto_a_NC := DMMain_FD.QOpciones.Fields[0].AsString[1]= 'S';
    DMMain_FD.QOpciones.Close;
    // ************************************************************
    // si usa juridicion de Facturacion por IIBB
    // ************************************************************
    // Factura por Cta y Orden
    // ************************************************************
   // DMMain_FD.QOpciones.ParamByName('Opcion').Value := 'CTAORDEN';
   // DMMain_FD.QOpciones.Open;
    DMMain_FD.FacturaPorCtaOrden := DMMain_FD.GetFacturaCtaOrden;// Copy(DMMain_FD.QOpciones.Fields[0].AsString,1, 1) = 'S';
   // DMMain_FD.QOpciones.Close;
    // *************************************************************
    // Levanto el archivo de Monedas
    // *************************************************************
    QMoneda.Close;
    QMoneda.Open;
    QMoneda.First;
    lbDolar.Caption := (QMoneda.FieldByName('moneda').Value + '.: ' + FormatFloat('0.000', QMoneda.FieldByName('cotizacion').Value));
    QMoneda.Close;
    // ************************************
    AsignarMenuLateral;
    // ************************************
    DMMain_FD.QHayFiltros.Close;
    DMMain_FD.QHayFiltros.Open;
    if DMMain_FD.QHayFiltros.Fields[0].AsInteger > 0 then
      DMMain_FD.HayFiltros := True
    else
      DMMain_FD.HayFiltros := False;
    //jvMes.Date              := Date;
    //nvPanel.ActivePageIndex := 0;
    // CDSAccesos.Close;
    // CDSAccesos.Open;
    // CargarAccesosDirectos.Execute;

    // Control de Aviso de Transferencias
    DMMain_FD.QDeposito.Close;
    DMMain_FD.QDeposito.ParamByName('Id').Value := DepositoEnUso;
    DMMain_FD.QDeposito.Open;

    SDirectorio := PathTx + '\';
    aux := SDirectorio + '*_a_' + '' + DMMain_fd.QDepositoNOMBRE.AsString + '' + '*.xml';
    iResultado := FindFirst(aux, faAnyFile, Busqueda);

    TimerTx_Stock.Enabled := iResultado = 0;
    DMMain_FD.QDeposito.Close;
    // ************************************

    // control de Vencimientos Inicia o no Hilo de ejecucion
    if AdministradordeVencimientos1.Enabled then
      begin
        TimerVencimientos.Enabled := True;//CDSVencimientos.RecordCount > 0;
        ControlVencimientos       := TimerVencimientos.Enabled;
      end;
    // ************************************
    // control de Cheques de Tercero
    // ************************************
    if VerChequesDisponiblesdelaCateraaCobrar1.Enabled then
      begin
        aux:='';
        CDSCheAlCobro.Close;
        CDSCheAlCobro.Params.ParamByName('Desde').AsDate := Date;
        CDSCheAlCobro.Params.ParamByName('Hasta').AsDate := Date;
        CDSCheAlCobro.Open;

        if CDSCheAlCobro.RecordCount > 0 then
          begin
            CDSCheAlCobro.First;
            while Not(CDSCheAlCobro.Eof) do
              begin
                Aux := Aux + '<p align=''left'' float="left">'+CDSCheAlCobroORIGEN.AsString + '....' + CDSCheAlCobroNUMERO.AsString+'</p><p align="right">'+FormatFloat(',0.00', CDSCheAlCobroIMPORTE.AsFloat)+'</p>'+'<br>';
                CDSCheAlCobro.Next;
              end;
            AdvAlertCheAlcobro.AlertMessages.Add.Text.Text:=Aux;
            AdvAlertCheAlcobro.Show;
          end;
        CDSCheAlCobro.Close;
      end;
    // ************************************
    // Vencimientos Transporte
    // ************************************
    CDSVtoTr.Close;
    CDSVtoTr.Params.ParamByName('Desde').AsDate := EncodeDate(YearOf(Date), MonthOf(Date), 1);
    CDSVtoTr.Params.ParamByName('Hasta').AsDate := EncodeDate(YearOf(Date), MonthOfTheYear(Date), DaysInMonth(Date));
    CDSVtoTr.Open;

    if CDSVtoTr.RecordCount > 0 then
      begin
        dskVtoTr.MessageText := '';
        CDSVtoTr.First;
        while Not(CDSVtoTr.Eof) do
          begin
            dskVtoTr.MessageText := dskVtoTr.MessageText + CDSVtoTrDESCRIPCION.AsString + '.... ' + CDSVtoTrMOTIVO.AsString + ' .... ' + #13;
            CDSVtoTr.Next;
          end;
        dskVtoTr.Execute;
      end;
    CDSVtoTr.Close;
    // ************************************
    // ************************************
    cbEstilo.Items.Clear;
    for StyleName in TStyleManager.StyleNames do
      cbEstilo.Items.Add(StyleName);
     /// Controla o no Facturas sin Cae
    TimerFcElectronica.Enabled := DMMain_fd.AvisoSinCae;
    // ************************************
    /// Controla Minimos
    TimerMinimo.Enabled       := True;
    // ************************************
    /// Controla Pedidos Moviles
 //   TimerPedidosMovil.Enabled := True;
    // *************************************************************
    // **** Muestra CAEA Activo ********************
    QCaeActivo.Close;
    QCaeActivo.Open;
    if QCaeActivo.RecordCount>0 then
      begin
        sbEstado.Panels[4].Text:='CAEA: '+QCaeActivoCAEA.AsString+' Vigencia :'+
                                  Copy(QCAeActivoVigenciadesde.AsString,7,2)+'/'+
                                  Copy(QCAeActivoVigenciadesde.AsString,5,2)+'/'+
                                  Copy(QCAeActivoVigenciadesde.AsString,1,4)+'-'+
                                  Copy(QCAeActivoVigenciaHasta.AsString,7,2)+'/'+
                                  Copy(QCAeActivoVigenciaHasta.AsString,5,2)+'/'+
                                  Copy(QCAeActivoVigenciaHasta.AsString,1,4);

      end;
    QCaeActivo.Close;
    //*********************************************************
    TStyleManager.SetStyle(cbEstilo.Items[NroEstilo]);
    cbEstilo.ItemIndex   := NroEstilo;

    TimerTareas.Enabled  := True;
    // RibbonMenu.ActivePage.Index:=0;
    // RibbonMenu.Minimized           := False;
    tbpMenuGeneral.ActivePageIndex := 0;
    //pagControlMenu.ActivePageIndex := 0;

    // RibbonMenu.Floating:=False;
    DMMain_FD.Nombre_PC := DMMain_FD.GetPCName;
    //*************************************************************
    // Rececpcion de Recibos Temporales
    TimerRecibos.Enabled   := True;
    // Manejo de eventos en la base de datos
    FDEventAlerter1.Active := False;
  //  FDScript1.ExecuteAll;
    CargarAccionesEnBuscador;

end;

procedure TFMenu.WindowCloseAllExecute(Sender: TObject);
  var
    i: Integer;
  begin
    if FMenu.MDIChildCount > 0 then
      for i := FMenu.MDIChildCount - 1 downto 0 do
        FMenu.MDIChildren[i].Close;
  end;

procedure TFMenu.WindowsRestaurarExecute(Sender: TObject);
  var
    i: Integer;
  begin
    if FMenu.MDIChildCount > 0 then
      for i := 0 to FMenu.MDIChildCount - 1 do
        FMenu.MDIChildren[i].WindowState := wsNormal;
  end;

procedure TFMenu.PlanerOTrabajoExecute(Sender: TObject);
  begin
    if not(Assigned(FormPlanerOTrabajo)) then
      FormPlanerOTrabajo := TFormPlanerOTrabajo.Create(Application);
    FormPlanerOTrabajo.Show;
  end;

procedure TFMenu.PlanGastosExecute(Sender: TObject);
  begin
    if not(Assigned(FormPlanCuentaGastos)) then
      FormPlanCuentaGastos := TFormPlanCuentaGastos.Create(Application);
    FormPlanCuentaGastos.Show;
  end;

procedure TFMenu.CajaAperturaExecute(Sender: TObject);
  begin
    if not(Assigned(FormAperturaCaja)) then
      FormAperturaCaja := TFormAperturaCaja.Create(Application);
    FormAperturaCaja.Show;
  end;

procedure TFMenu.OpercionesRealizadasExecute(Sender: TObject);
  begin
    if not(Assigned(FormInformeVta)) then
      FormInformeVta := TFormInformeVta.Create(Application);
    FormInformeVta.Show;
  end;

procedure TFMenu.SucursalesExecute(Sender: TObject);
  begin
    if not(Assigned(FormSucursal)) then
      FormSucursal := TFormSucursal.Create(Application);
    FormSucursal.Show;
  end;

procedure TFMenu.TransferenciaExecute(Sender: TObject);
  begin
    if not(Assigned(FormTransferencias)) then
      FormTransferencias := TFormTransferencias.Create(Application);
    FormTransferencias.Show;
  end;

procedure TFMenu.TransInterbancariasExecute(Sender: TObject);
  begin
    if not(Assigned(FormTransferenciasInterbancarias)) then
      FormTransferenciasInterbancarias :=
        TFormTransferenciasInterbancarias.Create(Application);
    FormTransferenciasInterbancarias.Show;

  end;

procedure TFMenu.ControlNumeracionExecute(Sender: TObject);
  begin
    if not(Assigned(FormControlNumeracion)) then
      FormControlNumeracion := TFormControlNumeracion.Create(Application);
    FormControlNumeracion.Show;

  end;

procedure TFMenu.ControladorFcVtaExecute(Sender: TObject);
  begin
    if not(Assigned(FormControlImpuestos)) then
      FormControlImpuestos := TFormControlImpuestos.Create(Application);
    FormControlImpuestos.Show;
  end;

procedure TFMenu.GraficoVentasExecute(Sender: TObject);
  begin
    if not(Assigned(FormGraficoVentas)) then
      FormGraficoVentas := TFormGraficoVentas.Create(Application);
    FormGraficoVentas.Show;
  end;

procedure TFMenu.RenombrarClick(Sender: TObject);
  var
    Comp: TObject;
    acc: TAccesoDirecto;
  begin
    Comp := FindComponent(AccNombre);
    if (Comp <> Nil) then
    begin
      acc := (Comp as TAccesoDirecto);
      EditTemp := TEdit.Create(acc);
      EditTemp.OnExit := edNombreAccDire.OnExit;
      EditTemp.Top := acc.Top + acc.Height;;
      EditTemp.Left := acc.Left;
      EditTemp.AutoSize := True;
      EditTemp.Visible := True;
      EditTemp.Text := acc.Caption; // '';
      EditTemp.Parent := FMenu;
      EditTemp.OnKeyPress := edNombreAccDire.OnKeyPress;
      EditTemp.BringToFront;
      EditTemp.SetFocus;
      // Nombre.SetFocus;
    end;

  end;

procedure TFMenu.RentabilidadExecute(Sender: TObject);
  begin
    if not(Assigned(FormRentabilidad)) then
      FormRentabilidad := TFormRentabilidad.Create(Application);
    FormRentabilidad.Show;

  end;

procedure TFMenu.Vta_a_ClienteProductoExecute(Sender: TObject);
  begin
    if not(Assigned(FormVtaClienteProducto)) then
      FormVtaClienteProducto := TFormVtaClienteProducto.Create(Application);
    FormVtaClienteProducto.Show;

  end;

procedure TFMenu.AnalisiCreditoClientesExecute(Sender: TObject);
  begin
    if not(Assigned(FormAnalisisCreditoCliente)) then
      FormAnalisisCreditoCliente := TFormAnalisisCreditoCliente.Create
        (Application);
    FormAnalisisCreditoCliente.Show;

  end;

procedure TFMenu.AjustesStockExecute(Sender: TObject);
  begin
    if not(Assigned(FormAjustesStock)) then
      FormAjustesStock := TFormAjustesStock.Create(Application);
    FormAjustesStock.Show;
  end;

procedure TFMenu.ControlPagoClientesExecute(Sender: TObject);
  begin
    if not(Assigned(FormRelacionPagoSClientes)) then
      FormRelacionPagoSClientes := TFormRelacionPagoSClientes.Create
        (Application);
    FormRelacionPagoSClientes.Show;
  end;

procedure TFMenu.ControlPagoProveedoresExecute(Sender: TObject);
  begin
    if not(Assigned(FormRelacionPagosProveedores)) then
      FormRelacionPagosProveedores := TFormRelacionPagosProveedores.Create
        (Application);
    FormRelacionPagosProveedores.Show;
  end;

procedure TFMenu.ControlPercepIIBBTCExecute(Sender: TObject);
  begin
    if not(Assigned(FormControlIIBBLiq)) then
      FormControlIIBBLiq := TFormControlIIBBLiq.Create(Application);
    FormControlIIBBLiq.Show;
  end;

procedure TFMenu.ControlPermisosExecute(Sender: TObject);
begin
  if not(Assigned(FormControlUsuarios_2)) then
    FormControlUsuarios_2 := TFormControlUsuarios_2.Create(Application);
  FormControlUsuarios_2.Fact:=Acciones;
  FormControlUsuarios_2.Show;
end;

procedure TFMenu.ControlRetencionesExecute(Sender: TObject);
begin
  if not(Assigned(formControlRetenciones)) then
    formControlRetenciones := TformControlRetenciones.Create(Application);
  formControlRetenciones.Show;

end;

procedure TFMenu.ControlRtoHuerfanosExecute(Sender: TObject);
begin
  if not(Assigned(FormControlRtosHuerfanos)) then
    FormControlRtosHuerfanos := TFormControlRtosHuerfanos.Create(Application);
  FormControlRtosHuerfanos.Show;
end;

procedure TFMenu.ControlRubrosStockExecute(Sender: TObject);
  begin
    if not(Assigned(FormControlStockRubros)) then
      FormControlStockRubros := TFormControlStockRubros.Create(Application);
    FormControlStockRubros.Show;
  end;

procedure TFMenu.ControlSaldosCtaCteVtaExecute(Sender: TObject);
  begin
    if not(Assigned(FormControlSaldoCtaCteVta)) then
      FormControlSaldoCtaCteVta := TFormControlSaldoCtaCteVta.Create
        (Application);
    FormControlSaldoCtaCteVta.Show;

  end;

procedure TFMenu.ControlTCExecute(Sender: TObject);
  begin
    if not(Assigned(FormControlCuponTC)) then
      FormControlCuponTC := TFormControlCuponTC.Create(Application);
    FormControlCuponTC.Show;
  end;

procedure TFMenu.ControlTransaccionesExecute(Sender: TObject);
begin
  if not(Assigned(FormControlTransacciones)) then
    FormControlTransacciones := TFormControlTransacciones.Create(Application);
  FormControlTransacciones.Show;
end;

procedure TFMenu.ControlTxBancoExecute(Sender: TObject);
  begin
    if not(Assigned(FormControlTxBancarias)) then
      FormControlTxBancarias := TFormControlTxBancarias.Create(Application);
    FormControlTxBancarias.Show;
  end;

procedure TFMenu.TRetencionesExecute(Sender: TObject);
  begin
    if not(Assigned(FormTRetenciones)) then
      FormTRetenciones := TFormTRetenciones.Create(Application);
    FormTRetenciones.Show;
  end;

procedure TFMenu.uilSecurityDlg1GroupAdded(Sender: TObject; GroupName: string);
begin

end;

// procedure TFMenu.tvMenuDblClick(Sender: TObject);
// var mi:TMenuItem;
// acc:TAccesoDirecto;
// c:TObject;
// begin
// mi:= tvMenu.Selected.Data;
// if (mi<>nil) and ((Assigned(mi.OnClick)))   then
// begin
// CDSAccesos.Close;
// CDSAccesos.Params.ParamByName('id_usuario').Value:= DMMain_FD.UsuarioActivoId;
// CDSAccesos.Params.ParamByName('id').Value        := StrToInt(Trim(copy(AccNombre,5,10)));
// CDSAccesos.Open;
// CDSAccesos.Edit;
// CDSAccesosACCION.Value:=mi.Name;
// CDSAccesos.ApplyUpdates(0);

// c:= FindComponent(AccNombre);
// acc:=(C as TAccesoDirecto);
// if acc<>nil then
// begin
// with acc do
// begin
// Caption    :='';
// Text       := mi.Caption;
// OnDblClick := mi.OnClick;
// end;
// end;
// end;
// tvMenu.Visible:=False;
// Lista.Free;
// pnTreeMenu.Visible:=False;
// end;

procedure TFMenu.ArticulosExentosVendidosExecute(Sender: TObject);
  begin
    if not(Assigned(FormArticulosExentosVendidos)) then
      FormArticulosExentosVendidos := TFormArticulosExentosVendidos.Create
        (Application);
    FormArticulosExentosVendidos.Show;
  end;

procedure TFMenu.AcercaDeExecute(Sender: TObject);
  begin
    if not(Assigned(FormAcercaDe)) then
      FormAcercaDe := TFormAcercaDe.Create(Application);
    FormAcercaDe.Show;
  end;

procedure TFMenu.AcopioExecute(Sender: TObject);
  begin
    if not(Assigned(FormAcopio)) then
      FormAcopio := TFormAcopio.Create(Application);
    FormAcopio.Show;
  end;


procedure TFMenu.RemitosExecute(Sender: TObject);
begin
  if not(Assigned(FormRemitos)) then
    FormRemitos := TFormRemitos.Create(Application);
  FormRemitos.Show;
end;

procedure TFMenu.AcAgendaExecute(Sender: TObject);
  begin
    if not(Assigned(FormAgenda)) then
      FormAgenda := TFormAgenda.Create(Application);
    FormAgenda.Show;

  end;

procedure TFMenu.AccesoDirecto1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  begin
    Seleccionado := False;
    if (Button = mbLeft) then
      Seleccionado := True;
    MouseDownSpot.X := X;
    MouseDownSpot.Y := Y;
    AccNombre := TAccesoDirecto(Sender).Name;
  end;

procedure TFMenu.AccesoDirecto1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
  begin
    if Seleccionado then
    begin
      TAccesoDirecto(Sender).Left := TAccesoDirecto(Sender).Left -
        (MouseDownSpot.X - X);
      TAccesoDirecto(Sender).Top := TAccesoDirecto(Sender).Top -
        (MouseDownSpot.Y - Y);
      // FindComponent('L'+TImage(Sender).Name)
      // Etiqueta.Top  := TImage(Sender).Top+TImage(Sender).Height;
      // Etiqueta.Left := TImage(Sender).Left-Trunc((Etiqueta.Width-TImage(Sender).Width) /2);

    end;

  end;

procedure TFMenu.AccesoDirecto1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var
    Nombre: String;
  begin
    if Seleccionado then
    begin
      ReleaseCapture;
      Seleccionado := False;
      TAccesoDirecto(Sender).Left := TAccesoDirecto(Sender).Left -
        (MouseDownSpot.X - X);
      TAccesoDirecto(Sender).Top := TAccesoDirecto(Sender).Top -
        (MouseDownSpot.Y - Y);
      Nombre := TAccesoDirecto(Sender).Name;
      // CDSAccesos.Close;
      // CDSAccesos.Params.ParamByName('id_usuario').Value:= DMMain_FD.UsuarioActivoId;
      // CDSAccesos.Params.ParamByName('id').Value        := StrToInt(Trim(copy(Nombre,5,10)));
      // CDSAccesos.Open;
      // CDSAccesos.Edit;
      // CDSAccesosPOS_X.Value:= TAccesoDirecto(Sender).Left - (MouseDownSpot.x - x);
      // CDSAccesosPOS_Y.Value:= TAccesoDirecto(Sender).Top - (MouseDownSpot.y - y);
      // CDSAccesos.Post;
      // CDSAccesos.ApplyUpdates(0);
    end;
  end;

procedure TFMenu.UsuariosAdminNPExecute(Sender: TObject);
  begin
    if not(Assigned(FormUsuariosAdminNP)) then
      FormUsuariosAdminNP := TFormUsuariosAdminNP.Create(Application);
    FormUsuariosAdminNP.Show;
  end;

procedure TFMenu.UsuariosAutorizanExecute(Sender: TObject);
  begin
    if not(Assigned(FormUsuariosAutorizan)) then
      FormUsuariosAutorizan := TFormUsuariosAutorizan.Create(Application);
    FormUsuariosAutorizan.Show;
  end;

procedure TFMenu.UsuariosExecute(Sender: TObject);
  begin
    SecurityAdmCentral1.Execute;
  end;

procedure TFMenu.UsuariosLstRubrosExecute(Sender: TObject);
  begin
    if not(Assigned(FormUsuarioRubroLista)) then
      FormUsuarioRubroLista := TFormUsuarioRubroLista.Create(Application);
    FormUsuarioRubroLista.Show;
  end;

procedure TFMenu.UsuariosMovilExecute(Sender: TObject);
begin
  if not(Assigned(FormUsuariosMoviles)) then
     FormUsuariosMoviles := TFormUsuariosMoviles.Create(Application);
   FormUsuariosMoviles.Show;
end;

procedure TFMenu.LoginExecute(Sender: TObject);
  var
    QCaja     : TFDQuery;
    Archivo   : TextFile;
    ArchivoIni: TIniFile;
  begin
    WindowCloseAll.Execute;
    Application.ProcessMessages;
    Users1.Logout;
    Users1.Login;
    if Users1.LastLoginOk = False Then
      Application.Terminate;
    DMMain_FD.UsuarioActivo := Trim(Users1.CurrentUser.UserName);
    if Users1.CurrentUser.UserName <> '' Then
      DMMain_FD.NombreIni := Trim(Users1.CurrentUser.UserName) + '.ini';
{$I-}
    AssignFile(Archivo, ExtractFilePath(ParamStr(0)) + DMMain_FD.NombreIni);
    reset(Archivo);
    CloseFile(Archivo);
{$I+}
    if Not(IOResult = 0) Then
    begin
      ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + DMMain_FD.NombreIni);
      ArchivoIni.WriteString('Sucursal', 'Sucursal', '1');
      ArchivoIni.WriteString('Caja', 'Caja', '1');
      ArchivoIni.WriteString('Deposito', 'Deposito', '1');
      ArchivoIni.WriteString('Agenda', 'Agenda', 'N');
      ArchivoIni.WriteString('Empleado', 'Empleado', '000001');
      ArchivoIni.WriteString('cliente', 'cliente', '');
      ArchivoIni.WriteInteger('RangoFechas', 'CtaCteVta', 1);
      ArchivoIni.WriteInteger('RangoFechas', 'CtaCteComp', 1);
      ArchivoIni.WriteInteger('RangoFechas', 'CtaCteEmpleado', 1);
      ArchivoIni.WriteString('DiscriminaIva', 'Discrimina', 'S');
    end;
    // Verifico si es Administrador
    DMMain_FD.UsuarioAdministrador := UsuarioAdministrador.Enabled;
    DMMain_FD.UsuarioActivoId      := Users1.CurrentUser.UserId;

    FMenu.Caption := 'SiGCo - Sistema de Gestion Comercial  ==> ' +
      '  Usuario : ' + Users1.CurrentUser.RealName;
    // sbMenu.Panels[0].Text:= 'Base de datos: '+DatosSinBDEPath;

    if DMMain_FD.UsuarioAdministrador Then
      FMenu.Caption := FMenu.Caption + ' (Administrador)';

    // lbUsuario.LabelCaption :=DMMain_FD.UsuarioActivo+#13;
    // ***********************************************************
    // Estos vlores determina las acciones que se pueden hacer
    // ***********************************************************
    AsignarVariablesGlobales;
    // ***********************************************************
    // ***********************************************************
    if Users1.CurrentUser.UserName <> '' Then
    begin
      QCaja := TFDQuery.Create(Self);
      QCaja.Connection := DMMain_FD.fdcGestion;
      QCaja.SQL.Clear;
      QCaja.SQL.Text:=('Select caja from CajaUsuario where usuario=' + '''' +  Users1.CurrentUser.UserName + '''');
      QCaja.Open;
      if QCaja.Fields[0].AsString <> '' Then
        DMMain_FD.CajaSeleccionada := QCaja.Fields[0].Value
      else
        DMMain_FD.CajaSeleccionada := 0;
      QCaja.Close;
      FreeAndNil(QCaja);
    end;

    // ***********************************************************
    // ***********************************************************
    // Asigno los descuentos
    // **************************************************************
    // ***********************************************************
    if (DMMain_FD.AplicaDescuento = True) then
    begin
      DMMain_FD.TopeDsctoGral  := 100;
      DMMain_FD.TopeDsctoLinea := 100;

      DMMain_FD.QDstoUser.Close;
      DMMain_FD.QDstoUser.ParamByName('id').Value := DMMain_FD.UsuarioActivoId;
      DMMain_FD.QDstoUser.Open;
      if (DMMain_FD.QDstoUser.FieldByName('ID_USUARIO').AsString <> '') then
        begin
          DMMain_FD.TopeDsctoGral  := DMMain_FD.QDstoUser.FIeldByName('DESC_GENERAL').AsFloat;
          DMMain_FD.TopeDsctoLinea := DMMain_FD.QDstoUser.FieldByName('DESC_LINEA').AsFloat;
        end;
      DMMain_FD.QDstoUser.Close;
    end;
    // **************************************************************

    AsignarMenuLateral;

  end;

procedure TFMenu.CondicionesPagoExecute(Sender: TObject);
  begin
    if not(Assigned(FormCondicionPago)) then
      FormCondicionPago := TFormCondicionPago.Create(Application);
    FormCondicionPago.Show;

  end;

procedure TFMenu.ProvinciasExecute(Sender: TObject);
  begin
    if not(Assigned(FormProvincia)) then
      FormProvincia := TFormProvincia.Create(Application);
    FormProvincia.Show;

  end;

procedure TFMenu.ProyeccionAnualesExecute(Sender: TObject);
  begin
    if not(Assigned(FormProyeccionAnuales)) then
      FormProyeccionAnuales := TFormProyeccionAnuales.Create(Application);
    FormProyeccionAnuales.Show;
  end;

procedure TFMenu.ProyeccionPedidosProveedoresExecute(Sender: TObject);
begin
  if not(Assigned(FormPrevisionCompraProveedor)) then
    FormPrevisionCompraProveedor := TFormPrevisionCompraProveedor.Create(Application);
  FormPrevisionCompraProveedor.Show;

end;

procedure TFMenu.ZonasExecute(Sender: TObject);
  begin
    if not(Assigned(FormZonas)) then
      FormZonas := TFormZonas.Create(Application);
    FormZonas.Show;

  end;

procedure TFMenu.ConceptosBancariosExecute(Sender: TObject);
  begin
    if not(Assigned(FormConceptosBancarios)) then
      FormConceptosBancarios := TFormConceptosBancarios.Create(Application);
    FormConceptosBancarios.Show;

  end;

procedure TFMenu.ConceptosExecute(Sender: TObject);
begin
  if not(Assigned(FormABMPersonalConceptos)) then
    FormABMPersonalConceptos := TFormABMPersonalConceptos.Create(Application);
  FormABMPersonalConceptos.Show;
end;

procedure TFMenu.Ing_EgrBancariosExecute(Sender: TObject);
begin
  if not(Assigned(FormMovEgr_IngBancos)) then
    FormMovEgr_IngBancos := TFormMovEgr_IngBancos.Create(Application);
  FormMovEgr_IngBancos.Show;
end;

procedure TFMenu.DepositosBancariosExecute(Sender: TObject);
  begin
    if not(Assigned(FormDepositosBancarios)) then
      FormDepositosBancarios := TFormDepositosBancarios.Create(Application);
    FormDepositosBancarios.Show;
  end;

procedure TFMenu.TrasnfChequesExecute(Sender: TObject);
  begin
    if not(Assigned(FormTransferenciaChe3)) then
      FormTransferenciaChe3 := TFormTransferenciaChe3.Create(Application);
    FormTransferenciaChe3.Show;
  end;

procedure TFMenu.TrazabilidadStockExecute(Sender: TObject);
  begin
    if not(Assigned(FormExistenciaConMov)) then
      FormExistenciaConMov := TFormExistenciaConMov.Create(Application);
    FormExistenciaConMov.Show;

  end;

procedure TFMenu.ConciliacionBcoExecute(Sender: TObject);
  begin
    if not(Assigned(FormResumenBco)) then
      FormResumenBco := TFormResumenBco.Create(Application);
    FormResumenBco.Show;
  end;

procedure TFMenu.TransfEfectivoExecute(Sender: TObject);
  begin
    if not(Assigned(FormTransferenciaEfectivo)) then
      FormTransferenciaEfectivo := TFormTransferenciaEfectivo.Create
        (Application);
    FormTransferenciaEfectivo.Show;
  end;

procedure TFMenu.ControladorFcCompraExecute(Sender: TObject);
  begin
    if not(Assigned(FormControlImpuestoCompra)) then
      FormControlImpuestoCompra := TFormControlImpuestoCompra.Create
        (Application);
    FormControlImpuestoCompra.Show;

  end;

// procedure TFMenu.CargarAccesosDirectosExecute(Sender: TObject);
// var accIcono:TAccesoDirecto;
// path:String;
// i:Integer;
// c:tObject;
// Menu:TMenuItem;
// BitMap:TBitMap;
// begin
// BitMap:=TBitMap.Create;
// CDSListadoAcc.Close;
// CDSListadoAcc.Params.ParamByName('id_usuario').Value:=DMMain_FD.UsuarioActivoId;
// CDSListadoAcc.Open;
// if Not(CDSListadoAcc.IsEmpty) then
// begin
// while not(cdsListadoAcc.Eof) do
// begin
// Path:=ExtractFilePath(ParamStr(0));
//
// accIcono         := TAccesoDirecto.Create(FMenu);
// //  accIcono.Picture.LoadFromFile(Path+'kcmdf.gif');// := imgAccesoDirecto.Picture;
// if (CDSListadoAccIMAGEN.isNull) then
// accIcono.Picture.LoadFromFile(Path+'kcmdf.gif')
// else
// begin
/// /              BitMap.Assign(CDSListadoAccIMAGEN);
// try
// accIcono.Picture.Assign(CDSListadoAccIMAGEN);
// Except
// accIcono.Picture.LoadFromFile(Path+'kcmdf.gif')
// end;
// end;
// accIcono.PosXPicture:=20;
// accIcono.PosYPicture:=0;
// accIcono.PosXText   :=1;
// accIcono.PosYText   :=0;
// accIcono.Text    := CDSListadoAccCAPTION.Text;// 'Acceso Directo';
// accIcono.Left    := CDSListadoAccPOS_X.Value;
// accIcono.Top     := CDSListadoAccPOS_Y.Value;
// accIcono.Height  := 76;
// accIcono.width   := 67;
// accIcono.OnMouseDown:= AccesoDirecto1MouseDown;
// accIcono.OnMouseMove:= AccesoDirecto1MouseMove;
// accIcono.OnMouseUp  := AccesoDirecto1MouseUp;
// accIcono.PopupMenu  := mOpcionAccesoDirecto;
// accIcono.SendToBack;
// C:=FindComponent(CDSListadoAccACCION.Value);
// menu:= (C as TMenuItem);
//
// //Menu:=FindComponent('Articulos1');
//
// if Menu<>nil then
// begin
// accIcono.OnDblClick := Menu.OnClick;//   CDSListadoAccACCION.Value;
// accIcono.Text       := Menu.Caption;//   CDSListadoAccACCION.Value;
// end;
//
/// /          for i :=0 to Acciones.ActionCount-1 do
/// /            begin
/// /              if (Acciones.Actions[i].Name=CDSListadoAccACCION.Value) Then
/// /               begin
/// /                 accIcono.OnDblClick:=Acciones.Actions[i];
/// /                 showmessage('encontrado producto item='+IntToStr(i));
/// /               end;
/// /
/// /            end;
//
// accIcono.Parent   := FMenu;
// accIcono.Name     := 'Acc_'+CDSListadoAccID.AsString;
// accIcono.Caption  := '';
// accIcono.TextAlign:= taCenter;
// accIcono.Visible  := True;
// accIcono.Border   := False;
//
// CDSListadoAcc.Next;
// end;
// end;
// end;

procedure TFMenu.CargoExecute(Sender: TObject);
  begin
    if not(Assigned(FormCargos)) then
      FormCargos := TFormCargos.Create(Application);
    FormCargos.Show;
  end;

//procedure TFMenu.CategoriaExecute(Sender: TObject);
//  begin
//    if not(Assigned(FormCategorias)) then
//      FormCategorias := TFormCategorias.Create(Application);
//    FormCategorias.Show;
//  end;

procedure TFMenu.PersonalAccionesExecute(Sender: TObject);
  begin
    if not(Assigned(FormPersonalAcciones)) then
      FormPersonalAcciones := TFormPersonalAcciones.Create(Application);
    FormPersonalAcciones.Show;
  end;

procedure TFMenu.PersonalCategoriasExecute(Sender: TObject);
begin
  if not(Assigned(FormPersonalCategorias)) then
    FormPersonalCategorias := TFormPersonalCategorias.Create(Application);
  FormPersonalCategorias.Show;
end;

procedure TFMenu.PersonalExecute(Sender: TObject);
begin
  if not(Assigned(FormPersonal)) then
    FormPersonal := TFormPersonal.Create(Application);
  FormPersonal.Show;
end;

procedure TFMenu.PersonalMotivosValesExecute(Sender: TObject);
  begin
    if not(Assigned(FormMotivosPersonal)) then
      FormMotivosPersonal := TFormMotivosPersonal.Create(Application);
    FormMotivosPersonal.Show;

  end;

procedure TFMenu.AdelantoSueldoExecute(Sender: TObject);
  begin
    if not(Assigned(FormAdelantosSueldo)) then
      FormAdelantosSueldo := TFormAdelantosSueldo.Create(Application);
    FormAdelantosSueldo.Show;

  end;

procedure TFMenu.AdicionalesClientesExecute(Sender: TObject);
  begin
    if not(Assigned(FormClientesAdicionales)) then
      FormClientesAdicionales := TFormClientesAdicionales.Create(Application);
    FormClientesAdicionales.Show;
  end;

procedure TFMenu.AdministracionCarnesExecute(Sender: TObject);
begin
  if not(Assigned(FormPlanillaCarnes)) then
      FormPlanillaCarnes := TFormPlanillaCarnes.Create(Application);
    FormPlanillaCarnes.Show;
end;

procedure TFMenu.AdministracionFcModeloExecute(Sender: TObject);
  begin
    if not(Assigned(FormControlFcModelo)) then
      FormControlFcModelo := TFormControlFcModelo.Create(Application);
    FormControlFcModelo.Show;
  end;

procedure TFMenu.AdministracionSeriesExecute(Sender: TObject);
  begin
    if not(Assigned(FormAdministradorSeries)) then
      FormAdministradorSeries := TFormAdministradorSeries.Create(Application);
    FormAdministradorSeries.Show;

  end;

procedure TFMenu.AdministradorNPMovilExecute(Sender: TObject);
begin
  if not(Assigned(FormAdministrador_NP_Movil)) then
    FormAdministrador_NP_Movil := TFormAdministrador_NP_Movil.Create(Application);
  FormAdministrador_NP_Movil.Show;
end;

procedure TFMenu.AdminPLUExecute(Sender: TObject);
begin
  if not(Assigned(FormAdministradorPLU)) then
    FormAdministradorPLU := TFormAdministradorPLU.Create(Application);
  FormAdministradorPLU.Show;
end;

procedure TFMenu.AdminTareasExecute(Sender: TObject);
  begin
    if not(Assigned(FormAdminTareas)) then
      FormAdminTareas := TFormAdminTareas.Create(Application);
    FormAdminTareas.Show;
  end;

procedure TFMenu.AdminTransporteExecute(Sender: TObject);
  begin
    if not(Assigned(FormAdminTransporte)) then
      FormAdminTransporte := TFormAdminTransporte.Create(Application);
    FormAdminTransporte.Show;

  end;

procedure TFMenu.AdvAlertCheAlcobroAlertClick(Sender: TObject);
begin
  if not(Assigned(FormPlanillaCheTercero)) then
    FormPlanillaCheTercero := TFormPlanillaCheTercero.Create(Application);
  FormPlanillaCheTercero.Show;
end;

procedure TFMenu.AdvAlertElectronicaAlertClick(Sender: TObject);
begin
  if Not(Assigned(FormFiscalizacionLote)) then
    FormFiscalizacionLote:=TFormFiscalizacionLote.Create(Application);
  FormFiscalizacionLote.Show;
end;

procedure TFMenu.AdvAlertMinimoDeleteMessage(Sender: TObject; index: Integer);
begin
 if MessageDlg('Dejar de Mostrar Mensaje..???', mtConfirmation, mbYesNo, 0,  mbNo) = mrYes Then
    begin
      Sleep(150);
      TimerMinimo.Enabled  := False;
      FinalizarAvisoMinimo := True;
    end
end;


procedure TFMenu.AdvAlertPedidosAlertClick(Sender: TObject);
begin
  if not(Assigned(FormFiscalizacionLote)) then
    FormFiscalizacionLote := TFormFiscalizacionLote.Create(Application);
  FormFiscalizacionLote.Show;
end;


procedure TFMenu.AdvAlertVencimientosDeleteMessage(Sender: TObject;
  index: Integer);
begin
 if MessageDlg('Dejar de Mostrar Mensaje..???', mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      // dskVencimientos.
      Sleep(40);
      //AdvAlertVencimientos.Hide;
      //CDSVencimientos.Close;
      TimerVencimientos.Enabled := False;
      ControlVencimientos       := False;
      FinalizarAvisoVencimiento := True;
    end;
end;

procedure TFMenu.AdvBadgeButton1Click(Sender: TObject);
begin
  if Not(Assigned(FormPedidosAProcesar)) then
    FormPedidosAProcesar:=TFormPedidosAProcesar.Create(Application);
  FormPedidosAProcesar.Show;

end;

procedure TFMenu.AdvGlowButton108Click(Sender: TObject);
begin
  if not(Assigned(FormLecturaBascula)) then
      FormLecturaBascula := TFormLecturaBascula.Create(Application);
    FormLecturaBascula.Show;
end;

procedure TFMenu.AdvGlowMenuButton10Click(Sender: TObject);
  begin
    AdvGlowButton10.DoDropDown;
  end;



procedure TFMenu.AdvSearchEditAccionesSelect(Sender: TObject);
var
  i   : Integer;
  Act : TCustomAction;
  TextoSeleccionado: string;
begin
  TextoSeleccionado := AdvSearchEditAcciones.SearchList.SelectedItem.Captions[0];
  for i := 0 to Acciones.ActionCount - 1 do
    begin
      Act := TCustomAction(Acciones.Actions[i]);
      if SameText(Act.Caption, TextoSeleccionado) then
        begin
          Act.Execute;
          Break;
        end;
    end;

  AdvSearchEditAcciones.Text := '';
end;

procedure TFMenu.AgenteIAExecute(Sender: TObject);
begin
    if not(Assigned(FormConsultaIA)) then
      FormConsultaIA := TFormConsultaIA.Create(Application);
    FormConsultaIA.Show;

end;

procedure TFMenu.pnPedidosClose(Sender: TObject);
begin
  if MessageDlg('Dejar de Mostrar Mensaje..???', mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      Sleep(50);
      pnPedidos.Visible:=False;
      TimerPedido.Enabled := False;
     end;
end;

procedure TFMenu.SaldosGastosExecute(Sender: TObject);
  begin
    if not(Assigned(FormSaldoGastos)) then
      FormSaldoGastos := TFormSaldoGastos.Create(Application);
    FormSaldoGastos.Show;
  end;

procedure TFMenu.CobroChequesACajaExecute(Sender: TObject);
  begin
    if not(Assigned(FormCheACAja)) then
      FormCheACAja := TFormCheACAja.Create(Application);
    FormCheACAja.Show;
  end;

procedure TFMenu.MonedasExecute(Sender: TObject);
  begin
    if not(Assigned(FormMonedas)) then
      FormMonedas := TFormMonedas.Create(Application);
    FormMonedas.Show;
  end;

procedure TFMenu.Mosaico1Click(Sender: TObject);
  begin
    JvBackground.Image.Mode := bmTile;
  end;

procedure TFMenu.MotivosAjustesCCVtaExecute(Sender: TObject);
  begin
    if not(Assigned(FormMotivosAjustesCCVta)) then
      FormMotivosAjustesCCVta := TFormMotivosAjustesCCVta.Create(Application);
    FormMotivosAjustesCCVta.Show;
  end;

procedure TFMenu.MotivosAjustesComprasExecute(Sender: TObject);
  begin
    if not(Assigned(FormMotivosAjustesCCComp)) then
      FormMotivosAjustesCCComp := TFormMotivosAjustesCCComp.Create(Application);
    FormMotivosAjustesCCComp.Show;
  end;

procedure TFMenu.MotivosAjustesStockExecute(Sender: TObject);
  begin
    if not(Assigned(FormMotivoAjustesStock)) then
      FormMotivoAjustesStock := TFormMotivoAjustesStock.Create(Application);
    FormMotivoAjustesStock.Show;
  end;

procedure TFMenu.OpcionesExecute(Sender: TObject);
  begin
    if not(Assigned(FormOpciones)) then
      FormOpciones := TFormOpciones.Create(Application);
    FormOpciones.Show;
  end;

procedure TFMenu.InformarCAEASExecute(Sender: TObject);
begin
   if not(Assigned(FormInformarCAEA)) then
      FormInformarCAEA := TFormInformarCAEA.Create(Application);
    FormInformarCAEA.Show;
end;

procedure TFMenu.InformeGeneralExecute(Sender: TObject);
  begin
    if not(Assigned(FormInformeGeneral)) then
      FormInformeGeneral := TFormInformeGeneral.Create(Application);
    FormInformeGeneral.Show;
  end;

procedure TFMenu.IngAjusteCCExcelExecute(Sender: TObject);
  begin
    if not(Assigned(FormIngAjusCCExcel)) then
      FormIngAjusCCExcel := TFormIngAjusCCExcel.Create(Application);
    FormIngAjusCCExcel.Show;
  end;

procedure TFMenu.IngresarFechaFiscalVtaExecute(Sender: TObject);
var Query:TFDQuery;
begin
  if MessageDlg('Pasar Fecha Fiscal Vta...', mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
  begin
    Query:=TFDQuery.Create(nil);
    Query.Connection  := DMMain_FD.fdcGestion;
    Query.SQL.Text    := 'update fcvtacab f set f.fecha_fiscal=f.fechavta';
    query.ExecSQL;
    Query.Close;
    FreeAndNil(Query);
  end;
end;

procedure TFMenu.IngresarLotePagoCuponesExecute(Sender: TObject);
  begin
    if not(Assigned(FormImportarCobroCupones)) then
      FormImportarCobroCupones := TFormImportarCobroCupones.Create(Application);
    FormImportarCobroCupones.Show;
  end;

procedure TFMenu.IngresoCajaExecute(Sender: TObject);
  begin
    if not(Assigned(FormIngresoCaja)) then
      FormIngresoCaja := TFormIngresoCaja.Create(Application);
    FormIngresoCaja.Show;

  end;

procedure TFMenu.IngresoCarnesExecute(Sender: TObject);
begin
  if not(Assigned(FormPlanillaCarnes)) then
     FormPlanillaCarnes := TFormPlanillaCarnes.Create(Application);
  FormPlanillaCarnes.Show;
end;

procedure TFMenu.IngresoChequesAnuladosExecute(Sender: TObject);
  begin
    if not(Assigned(FormChequesAnulados)) then
      FormChequesAnulados := TFormChequesAnulados.Create(Application);
    FormChequesAnulados.Show;
  end;

procedure TFMenu.ChequesEmitidosExecute(Sender: TObject);
  begin
    if not(Assigned(FormChequesEmitidos)) then
      FormChequesEmitidos := TFormChequesEmitidos.Create(Application);
    FormChequesEmitidos.Show;
  end;

procedure TFMenu.ExistenciasExecute(Sender: TObject);
  begin
    if not(Assigned(FormExistencias)) then
      FormExistencias := TFormExistencias.Create(Application);
    FormExistencias.Show;
  end;

procedure TFMenu.CierreCajaExpressExecute(Sender: TObject);
begin
  if not(Assigned(FormCierreCajaGeneral)) then
    FormCierreCajaGeneral := TFormCierreCajaGeneral.Create(Application);
  FormCierreCajaGeneral.Show;
end;

procedure TFMenu.CierresFiscalesExecute(Sender: TObject);
  begin
    if not(Assigned(FormCierresFiscales)) then
      FormCierresFiscales := TFormCierresFiscales.Create(Application);
    FormCierresFiscales.Show;
  end;

procedure TFMenu.CambiarArticulosFcCompraExecute(Sender: TObject);
begin
  IF NoT(Assigned(FormReempArticuloFcCompra)) Then
    FormReempArticuloFcCompra := TFormReempArticuloFcCompra.Create(Application);
  FormReempArticuloFcCompra.Show;
end;

// procedure TFMenu.CambiarIcono1Click(Sender: TObject);
// var Path:String;
// begin
// Path:=ExtractFilePath(ParamStr(0));
// GetCursorPos(Puntero);
//
// accIcono         := TAccesoDirecto.Create(self);
/// /  accIcono.Picture.LoadFromFile(Path+'kcmdf.gif');// := imgAccesoDirecto.Picture;
// accIcono.Picture.LoadFromFile(Path+'kcmdf.gif');

// var
// begin
// comp:TObject;
// Acc:TAccesoDirecto;
// Path:String;
// begin
// OpenPictureDialog1.Filter:='*.BMP;*.GIF';
// OpenPictureDialog1.InitialDir :=ExtractFilePath(ParamStr(0));
// if OpenPictureDialog1.Execute then
// if OpenPictureDialog1.FileName<>'' then
// begin
// Comp:=FindComponent(AccNombre);
// if (Comp<>Nil) then
// begin
// Acc:=(Comp as TAccesoDirecto);
// Acc.Picture.loadFromFile(OpenPictureDialog1.FileName);

// CDSAccesos.Close;
// CDSAccesos.Params.ParamByName('id_usuario').Value:= DMMain_FD.UsuarioActivoId;
// CDSAccesos.Params.ParamByName('id').Value        := StrToInt(Trim(copy(AccNombre,5,10)));
// CDSAccesos.Open;
// CDSAccesos.Edit;
// CDSAccesosIMAGEN.LoadFromFile(OpenPictureDialog1.FileName);
// CDSAccesos.ApplyUpdates(0);

// end;
// end;
// end;

procedure TFMenu.CambiarPasswordExecute(Sender: TObject);
  begin
    Users1.ChangeUserPassword;
  end;

procedure TFMenu.CambioMercaderiaExecute(Sender: TObject);
  begin
    IF NoT(Assigned(FormNotas_Cambio)) Then
      FormNotas_Cambio := TFormNotas_Cambio.Create(Application);
    FormNotas_Cambio.Show;

  end;

procedure TFMenu.CambioPreciosExpressExecute(Sender: TObject);
begin
  IF NoT(Assigned(FormCambioPrecioExpres)) Then
    FormCambioPrecioExpres := TFormCambioPrecioExpres.Create(Application);
 FormCambioPrecioExpres.Show;
end;

procedure TFMenu.CambioPrecioSombraExecute(Sender: TObject);
  begin
    IF NoT(Assigned(FormCambioPrecioSombra)) Then
      FormCambioPrecioSombra := TFormCambioPrecioSombra.Create(Application);
    FormCambioPrecioSombra.Show;
  end;

procedure TFMenu.ActualizacionPrecios_2Execute(Sender: TObject);
  begin
    IF NoT(Assigned(FormCambioPrecio_2)) Then
      FormCambioPrecio_2 := TFormCambioPrecio_2.Create(Application);
    FormCambioPrecio_2.Show;

  end;

procedure TFMenu.ActualizaCostoVta_excelExecute(Sender: TObject);
  begin
    IF NoT(Assigned(FormActualizaCostoVta_excel)) Then
      FormActualizaCostoVta_excel := TFormActualizaCostoVta_excel.Create(Application);
    FormActualizaCostoVta_excel.Show;
  end;

procedure TFMenu.ComprobantesAfipExecute(Sender: TObject);
  begin
    IF NoT(Assigned(FormCodComprobantesAfip)) Then
      FormCodComprobantesAfip := TFormCodComprobantesAfip.Create(Application);
    FormCodComprobantesAfip.Show;
  end;

procedure TFMenu.ComprobantesEmitidosPorClienteExecute(Sender: TObject);
  begin
    IF NoT(Assigned(FormVentaPorCliente)) Then
      FormVentaPorCliente := TFormVentaPorCliente.Create(Application);
    FormVentaPorCliente.Show;
  end;

procedure TFMenu.CompraCtaCteReducidaExecute(Sender: TObject);
  begin
    ShowMessage(' Deshabilitado .... ');

    // IF NoT(Assigned(FormCompraCtaCteReducida)) Then
    // FormCompraCtaCteReducida:=TFormCompraCtaCteReducida.Create(Application);
    // FormCompraCtaCteReducida.Show;
  end;

procedure TFMenu.FacturarRemitosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormFacturarRemitos)) Then
      FormFacturarRemitos := TFormFacturarRemitos.Create(Application);
    FormFacturarRemitos.Show;
  end;

procedure TFMenu.ConfiguraLocalExecute(Sender: TObject);
  begin
    if Not(Assigned(FormConfiguraIni)) Then
      FormConfiguraIni := TFormConfiguraIni.Create(Application);
    FormConfiguraIni.Show;
  end;

procedure TFMenu.ListarPresupuestosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListaPresupuestos)) Then
      FormListaPresupuestos := TFormListaPresupuestos.Create(Application);
    FormListaPresupuestos.Show;
  end;

procedure TFMenu.ListasActualizanPrecioExecute(Sender: TObject);
begin
   if Not(Assigned(FormListasActualizanPrecio)) Then
      FormListasActualizanPrecio := TFormListasActualizanPrecio.Create(Application);
    FormListasActualizanPrecio.Show;
end;

procedure TFMenu.ListaStock_precio_fisicoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLstStockPrecio_Fisico)) Then
      FormLstStockPrecio_Fisico := TFormLstStock_Precio_Fisico.Create(Application);
    FormLstStockPrecio_Fisico.Show;
  end;

procedure TFMenu.ValoresCompartidosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCheCompartidos)) Then
      FormCheCompartidos := TFormCheCompartidos.Create(Application);
    FormCheCompartidos.Show;
  end;

procedure TFMenu.VencimientosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormVencimientos)) Then
      FormVencimientos := TFormVencimientos.Create(Application);
    FormVencimientos.Show;
  end;

procedure TFMenu.VentasCtroCostoExecute(Sender: TObject);
begin
  if Not(Assigned(FormVentasPorCentroCosto)) Then
    FormVentasPorCentroCosto := TFormVentasPorCentroCosto.Create(Application);
  FormVentasPorCentroCosto.Show;
end;

procedure TFMenu.Ventas_UnicoStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormVtas_UnicoStock)) Then
      FormVtas_UnicoStock := TFormVtas_UnicoStock.Create(Application);
    FormVtas_UnicoStock.Show;
  end;

procedure TFMenu.UnidadesStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormUnidades)) Then
      FormUnidades := TFormUnidades.Create(Application);
    FormUnidades.Show;
  end;

procedure TFMenu.UnidadesTrAnexosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormUnidadesAnexos)) Then
      FormUnidadesAnexos := TFormUnidadesAnexos.Create(Application);
    FormUnidadesAnexos.Show;
  end;

procedure TFMenu.UnidadesTrExecute(Sender: TObject);
  begin
    if Not(Assigned(FormUnidadesTr)) Then
      FormUnidadesTr := TFormUnidadesTr.Create(Application);
    FormUnidadesTr.Show;
  end;

procedure TFMenu.ControlCajaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlCaja)) Then
      FormControlCaja := TFormControlCaja.Create(Application);
    FormControlCaja.Show;
  end;

procedure TFMenu.ControlChePropioDuplicadoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlChequesDuplicados)) Then
      FormControlChequesDuplicados := TFormControlChequesDuplicados.Create
        (Application);
    FormControlChequesDuplicados.Show;
  end;

procedure TFMenu.ControlCheques3Execute(Sender: TObject);
  begin
    if Not(Assigned(FormControlChe3)) Then
      FormControlChe3 := TFormControlChe3.Create(Application);
    FormControlChe3.Show;
  end;

procedure TFMenu.ControlCpbteNoImpresosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlCompNoImpresos)) Then
      FormControlCompNoImpresos := TFormControlCompNoImpresos.Create
        (Application);
    FormControlCompNoImpresos.Show;
  end;

procedure TFMenu.ControlCpbteRecibidosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCpbteRecibidos)) Then
      FormCpbteRecibidos := TFormCpbteRecibidos.Create(Application);
    FormCpbteRecibidos.Show;
  end;

procedure TFMenu.CtaCtePersonalExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCtaCteEmpleados)) Then
      FormCtaCteEmpleados := TFormCtaCteEmpleados.Create(Application);
    FormCtaCteEmpleados.Show;
  end;

procedure TFMenu.RetirosEmpleadosPorLotesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRetiroLotesPersonal)) Then
      FormRetiroLotesPersonal := TFormRetiroLotesPersonal.Create(Application);
    FormRetiroLotesPersonal.Show;
  end;

procedure TFMenu.RevisionCuponAbonoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlCuponAbono)) Then
      FormControlCuponAbono := TFormControlCuponAbono.Create(Application);
    FormControlCuponAbono.Show;
  end;

procedure TFMenu.RevisionMovCHe3Execute(Sender: TObject);
  begin
    if Not(Assigned(FormRevisionMovChe3)) Then
      FormRevisionMovChe3 := TFormRevisionMovChe3.Create(Application);
    FormRevisionMovChe3.Show;
  end;

procedure TFMenu.IngresosPersonalExecute(Sender: TObject);
  begin
    if Not(Assigned(FormIngresoEmpleados)) Then
      FormIngresoEmpleados := TFormIngresoEmpleados.Create(Application);
    FormIngresoEmpleados.Show;
  end;

procedure TFMenu.IngresosPersonalLoteExecute(Sender: TObject);
  begin
    if Not(Assigned(FormIngresoPorLotePersonal)) Then
      FormIngresoPorLotePersonal := TFormIngresoPorLotePersonal.Create
        (Application);
    FormIngresoPorLotePersonal.Show;
  end;

procedure TFMenu.LiquidacionComisionesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlComisiones)) Then
      FormControlComisiones := TFormControlComisiones.Create(Application);
    FormControlComisiones.Show;
  end;

procedure TFMenu.ListaCheEmitidosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoCheEmitidos)) Then
      FormListadoCheEmitidos := TFormListadoCheEmitidos.Create(Application);
    FormListadoCheEmitidos.Show;
  end;

procedure TFMenu.AsignarVendedoresExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAsignacionVendedor)) Then
      FormAsignacionVendedor := TFormAsignacionVendedor.Create(Application);
    FormAsignacionVendedor.Show;
  end;

procedure TFMenu.AsignaVendedor_clienteExecute(Sender: TObject);
  begin
    if Not(Assigned(FormClientes_Vendedor)) Then
      FormClientes_Vendedor := TFormClientes_Vendedor.Create(Application);
    FormClientes_Vendedor.Show;

  end;

procedure TFMenu.FacPorVendedorExecute(Sender: TObject);
  begin
    if Not(Assigned(FormFacturaPorVendedor)) Then
      FormFacturaPorVendedor := TFormFacturaPorVendedor.Create(Application);
    FormFacturaPorVendedor.Show;
  end;

procedure TFMenu.ControlAperturaCajaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlAperturaCaja)) Then
      FormControlAperturaCaja := TFormControlAperturaCaja.Create(Application);
    FormControlAperturaCaja.Show;
  end;

procedure TFMenu.ControlAsignacionPedidosPrevisionExecute(Sender: TObject);
begin
  if Not(Assigned(FormReAsignacionPedidos)) Then
    FormReAsignacionPedidos := TFormReAsignacionPedidos.Create(Application);
  FormReAsignacionPedidos.Show;

end;

procedure TFMenu.ControlAsignacionRto_FcExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlAsignacionRto_Fc)) Then
      FormControlAsignacionRto_Fc := TFormControlAsignacionRto_Fc.Create
        (Application);
    FormControlAsignacionRto_Fc.Show;
  end;

procedure TFMenu.SaldoAFechaComprasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormSaldoProveedorAlDia)) Then
      FormSaldoProveedorAlDia := TFormSaldoProveedorAlDia.Create(Application);
    FormSaldoProveedorAlDia.Show;

  end;

procedure TFMenu.SaldoClientesMensualExecute(Sender: TObject);
  begin
    if Not(Assigned(FormSaldoClientesMensual)) Then
      FormSaldoClientesMensual := TFormSaldoClientesMensual.Create(Application);
    FormSaldoClientesMensual.Show;
  end;

procedure TFMenu.SaldoClientesMensual_AlDiaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormSaldoClientesAlDia)) Then
      FormSaldoClientesAlDia := TFormSaldoClientesAlDia.Create(Application);
    FormSaldoClientesAlDia.Show;
  end;

procedure TFMenu.CorrectorDecimalesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCorrectorDecimales)) Then
      FormCorrectorDecimales := TFormCorrectorDecimales.Create(Application);
    FormCorrectorDecimales.Show;
  end;

procedure TFMenu.ManejaTriggersExecute(Sender: TObject);
  begin
    if Not(Assigned(FormManejadorTriggers)) Then
      FormManejadorTriggers := TFormManejadorTriggers.Create(Application);
    FormManejadorTriggers.Show;
  end;

procedure TFMenu.FacturarRtosAgrupadosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormFacturaRemitoAgrupado)) Then
      FormFacturaRemitoAgrupado := TFormFacturaRemitoAgrupado.Create
        (Application);
    FormFacturaRemitoAgrupado.Show;

  end;

procedure TFMenu.SalirClick(Sender: TObject);
  begin
    Close;
  end;

procedure TFMenu.SaldoProveedoresMensualExecute(Sender: TObject);
  begin
    if Not(Assigned(FormSaldoProveedorMensual)) Then
      FormSaldoProveedorMensual := TFormSaldoProveedorMensual.Create
        (Application);
    FormSaldoProveedorMensual.Show;
  end;

procedure TFMenu.ListadoAjustesCtaCteExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoAjustesCC)) Then
      FormListadoAjustesCC := TFormListadoAjustesCC.Create(Application);
    FormListadoAjustesCC.Show;
  end;

procedure TFMenu.ListadoAjustesStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoAjustesStock)) Then
      FormListadoAjustesStock := TFormListadoAjustesStock.Create(Application);
    FormListadoAjustesStock.Show;
  end;

procedure TFMenu.ListadoArtGravIBExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoArtGravIngBrutosVentas)) Then
      FormListadoArtGravIngBrutosVentas :=
        TFormListadoArtGravIngBrutosVentas.Create(Application);
    FormListadoArtGravIngBrutosVentas.Show;
  end;

procedure TFMenu.AnularCheExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAnulaCheques)) Then
      FormAnulaCheques := TFormAnulaCheques.Create(Application);
    FormAnulaCheques.Show;
  end;

procedure TFMenu.ListaPercepcionesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListaPercepciones)) Then
      FormListaPercepciones := TFormListaPercepciones.Create(Application);
    FormListaPercepciones.Show;
  end;

procedure TFMenu.ListaPorSucursalExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListaSucursal)) Then
      FormListaSucursal := TFormListaSucursal.Create(Application);
    FormListaSucursal.Show;

  end;

procedure TFMenu.ABCClientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormABCClientes)) Then
      FormABCClientes := TFormABCClientes.Create(Application);
    FormABCClientes.Show;
  end;

procedure TFMenu.ABCComprasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormABCCompraArticulos)) Then
      FormABCCompraArticulos := TFormABCCompraArticulos.Create(Application);
    FormABCCompraArticulos.Show;
  end;

procedure TFMenu.ABCProveedoresExecute(Sender: TObject);
begin
  if Not(Assigned(FormABCProveedores)) Then
    FormABCProveedores := TFormABCProveedores.Create(Application);
  FormABCProveedores.Show;
end;

procedure TFMenu.ABMFacturaModeloExecute(Sender: TObject);
  begin
    if Not(Assigned(FormFacModelo)) Then
      FormFacModelo := TFormFacModelo.Create(Application);
    FormFacModelo.Show;
  end;

procedure TFMenu.FacturarModelosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormFacturarModelos)) Then
      FormFacturarModelos := TFormFacturarModelos.Create(Application);
    FormFacturarModelos.Show;
  end;

procedure TFMenu.FacturarPlantillasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormFacturaPlantillas)) Then
      FormFacturaPlantillas := TFormFacturaPlantillas.Create(Application);
    FormFacturaPlantillas.Show;
  end;

procedure TFMenu.GruposDetalleVtaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormGrupoDetalleFactura)) Then
      FormGrupoDetalleFactura := TFormGrupoDetalleFactura.Create(Application);
    FormGrupoDetalleFactura.Show;
  end;

procedure TFMenu.GruposModeloExecute(Sender: TObject);
  begin
    if Not(Assigned(FormGrupoModelo)) Then
      FormGrupoModelo := TFormGrupoModelo.Create(Application);
    FormGrupoModelo.Show;
  end;

procedure TFMenu.GtiasExtendidasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormGtias_Ext)) Then
      FormGtias_Ext := TFormGtias_Ext.Create(Application);
    FormGtias_Ext.Show;
  end;

procedure TFMenu.HelpExecute(Sender: TObject);
var
Dire : String;
begin
//  OpenObject('https://www.youtube.com/channel/UCmefR8neNlxtFs5TsVE4jZw');
  Dire := 'http://www.larsoft.com.ar/ayuda';
  HLinkNavigateString(NIL, PWideChar(WideString(Dire)) );
end;

procedure TFMenu.HistorialCostoProduccionExecute(Sender: TObject);
begin
  if Not(Assigned(FormHistorialPreciosProduccion)) Then
    FormHistorialPreciosProduccion := TFormHistorialPreciosProduccion.Create(Application);
  FormHistorialPreciosProduccion.Show;
end;

procedure TFMenu.HistorialMovCajaExecute(Sender: TObject);
begin
  if Not(Assigned(FormHistorialMovCaja)) Then
    FormHistorialMovCaja := TFormHistorialMovCaja.Create(Application);
  FormHistorialMovCaja.Show;
end;

procedure TFMenu.HojaDeCargaExecute(Sender: TObject);
begin
  if Not(Assigned(FormHojaDeCarga)) Then
    FormHojaDeCarga := TFormHojaDeCarga.Create(Application);
  FormHojaDeCarga.Show;
end;

procedure TFMenu.OrdenDeCompraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOrdenCompra)) Then
      FormOrdenCompra := TFormOrdenCompra.Create(Application);
    FormOrdenCompra.RxDBAutorizo.Enabled         := False;
    FormOrdenCompra.dbeFechaAutorizacion.Enabled := False;
    FormOrdenCompra.RxDBAutorizo.Color           := clBtnFace;
    FormOrdenCompra.dbeFechaAutorizacion.Color   := clBtnFace;
    with FormOrdenCompra.DBGrillaDetalle do
    begin
      Columns[3].Color := clWindow;
      Columns[4].Color := clInfoBk;
      Columns[5].Color := clInfoBk;
    end;
    FormOrdenCompra.Modo             := 'N';
    FormOrdenCompra.Agregar.Enabled  := True;
    FormOrdenCompra.Borrar.Enabled   := True;
    FormOrdenCompra.Buscar.Enabled   := True;
    FormOrdenCompra.Prev.Enabled     := True;
    FormOrdenCompra.Next.Enabled     := True;
    FormOrdenCompra.Imprimir.Enabled := False;
    FormOrdenCompra.lbModo.Caption   := 'En Modo de Pedido';
  end;

procedure TFMenu.RecepcionOCompraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOCompraRecepcion)) Then
      FormOCompraRecepcion := TFormOCompraRecepcion.Create(Application);
    FormOCompraRecepcion.Show;
  end;

procedure TFMenu.RecepcionRepartoGrillaExecute(Sender: TObject);
begin
 if Not(Assigned(FormRecepRepartoExpress)) Then
   FormRecepRepartoExpress := TFormRecepRepartoExpress.Create(Application);
  FormRecepRepartoExpress.Show;

end;

procedure TFMenu.ImpresionCuponesExecute(Sender: TObject);
begin
  if Not(Assigned(FormImpresionCuponesAbonos)) Then
    FormImpresionCuponesAbonos := TFormImpresionCuponesAbonos.Create(Application);
  FormImpresionCuponesAbonos.Show;
end;

procedure TFMenu.ImpresionOrdenCompraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOCompraImpresion)) Then
      FormOCompraImpresion := TFormOCompraImpresion.Create(Application);
    FormOCompraImpresion.Show;
  end;

procedure TFMenu.ImpresionRotulosExecute(Sender: TObject);
begin
  if Not(Assigned(FormRotulos_2)) Then
    FormRotulos_2 := TFormRotulos_2.Create(Application);
  FormRotulos_2.Show;
end;

procedure TFMenu.ImpresionValesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImpresionLoteVales)) Then
      FormImpresionLoteVales := TFormImpresionLoteVales.Create(Application);
    FormImpresionLoteVales.Show;
  end;

procedure TFMenu.PreciosEspecialesClientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormPreciosEspecialesClientes)) Then
      FormPreciosEspecialesClientes := TFormPreciosEspecialesClientes.Create
        (Application);
    FormPreciosEspecialesClientes.Show;
  end;

procedure TFMenu.PreciosPlantillasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormConceptosPlantillas)) Then
      FormConceptosPlantillas := TFormConceptosPlantillas.Create(Application);
    FormConceptosPlantillas.Show;
  end;

procedure TFMenu.PonerStockCeroExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAjusteStockCero)) Then
      FormAjusteStockCero := TFormAjusteStockCero.Create(Application);
    FormAjusteStockCero.Show;
  end;

procedure TFMenu.AnalisisIngresoEgresoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAnalisisEgresosIngresos)) Then
      FormAnalisisEgresosIngresos := TFormAnalisisEgresosIngresos.Create
        (Application);
    FormAnalisisEgresosIngresos.Show;
  end;

procedure TFMenu.RemplazoChequesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRemplazoCheques)) Then
      FormRemplazoCheques := TFormRemplazoCheques.Create(Application);
    FormRemplazoCheques.Show;
  end;

procedure TFMenu.ControlDepositosStkExecute(Sender: TObject);
  begin
    if Not(Assigned(FormProceso)) Then
      FormProceso := TFormProceso.Create(Application);
    FormProceso.Mensaje := 'Revisando depositos de Stock...';
    Application.ProcessMessages;
    FormProceso.Show;

    DMStoreProcedure.spControlDepositosStock.Close;
    DMStoreProcedure.spControlDepositosStock.ExecProc;
    DMStoreProcedure.spControlDepositosStock.Close;
    FormProceso.Close;
  end;

procedure TFMenu.ControlDetallesCtaCteVtaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlMovCtaVta_Detalles)) Then
      FormControlMovCtaVta_Detalles := TFormControlMovCtaVta_Detalles.Create
        (Application);
    FormControlMovCtaVta_Detalles.Show;
  end;

procedure TFMenu.ControlDetalleVtaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlDetalleVta)) Then
      FormControlDetalleVta := TFormControlDetalleVta.Create(Application);
    FormControlDetalleVta.Show;
  end;

procedure TFMenu.ControlErroresChe3Execute(Sender: TObject);
  begin
    if Not(Assigned(FormControlErroresMovimientos)) Then
      FormControlErroresMovimientos := TFormControlErroresMovimientos.Create
        (Application);
    FormControlErroresMovimientos.Show;
  end;

procedure TFMenu.RearmarMovimientosdeBancoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormReArmaResumenBco)) Then
      FormReArmaResumenBco := TFormReArmaResumenBco.Create(Application);
    FormReArmaResumenBco.Show;
    // SQLResumenBco.ExecSQL;
    // DMMain.spRearmarMovBco.close;
    // DMMain.spRearmarMovBco.ExecProc;
    // DMMain.spRearmarMovBco.close;
    // FormProceso.Close;
  end;

procedure TFMenu.CorrectorCeroCtaCteExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCorrectorCeros)) Then
      FormCorrectorCeros := TFormCorrectorCeros.Create(Application);
    FormCorrectorCeros.Show;
  end;

procedure TFMenu.CorrigeFechaFcVtaDetExecute(Sender: TObject);
  begin
    if Not(Assigned(FormProceso)) Then
      FormProceso := TFormProceso.Create(Application);
    FormProceso.Mensaje := 'Corrigiendo Fechas...';
    FormProceso.Show;
    Application.ProcessMessages;
    DMStoreProcedure.spVerificaFechaFcVtaDetFD.Close;
    DMStoreProcedure.spVerificaFechaFcVtaDetFD.ExecProc;
    DMStoreProcedure.spVerificaFechaFcVtaDetFD.Close;
    FormProceso.Close;
  end;

procedure TFMenu.CorrigeFechaTxExecute(Sender: TObject);
  begin
    if Not(Assigned(FormProceso)) Then
      FormProceso := TFormProceso.Create(Application);
    FormProceso.Mensaje := 'Corrigiendo Fechas...';
    FormProceso.Show;
    Application.ProcessMessages;
    DMStoreProcedure.spCorrigeFechaTx.Close;
    DMStoreProcedure.spCorrigeFechaTx.ExecProc;
    DMStoreProcedure.spCorrigeFechaTx.Close;
    FormProceso.Close;
  end;

procedure TFMenu.CorrigeNroRec_enMovCajaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormProceso)) Then
      FormProceso := TFormProceso.Create(Application);
    FormProceso.Mensaje := 'Corrigiendo Movimientos...';
    FormProceso.Show;
    DMStoreProcedure.spRenumeraMov_caja_recibos.Close;
    DMStoreProcedure.spRenumeraMov_caja_recibos.ExecProc;
    DMStoreProcedure.spRenumeraMov_caja_recibos.Close;
    FormProceso.Close;
  end;

procedure TFMenu.CorrigeDetalleFcCompExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlDetalleComp)) Then
      FormControlDetalleComp := TFormControlDetalleComp.Create(Application);
    FormControlDetalleComp.Show;
  end;

procedure TFMenu.CorrigeFechaFcCompDetExecute(Sender: TObject);
  begin
    if Not(Assigned(FormProceso)) Then
      FormProceso := TFormProceso.Create(Application);
    FormProceso.Mensaje := 'Corrigiendo Fechas...';
    FormProceso.Show;
    DMStoreProcedure.spVerificaFechaFcCompDetFD.Close;
    DMStoreProcedure.spVerificaFechaFcCompDetFD.ExecProc;
    DMStoreProcedure.spVerificaFechaFcCompDetFD.Close;
    FormProceso.Close;
  end;

procedure TFMenu.RelacionCobranzaVencimientoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRelacionCobranzaVencimiento)) Then
      FormRelacionCobranzaVencimiento := TFormRelacionCobranzaVencimiento.Create(Application);
    FormRelacionCobranzaVencimiento.Show;
  end;

procedure TFMenu.RelacionCompraVentaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRelacionCompraVenta)) Then
      FormRelacionCompraVenta := TFormRelacionCompraVenta.Create(Application);
    FormRelacionCompraVenta.Show;
  end;

procedure TFMenu.CostosFijosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCostosFijos)) Then
      FormCostosFijos := TFormCostosFijos.Create(Application);
    FormCostosFijos.Show;
  end;

procedure TFMenu.CotizacionClienteExecute(Sender: TObject);
  begin
    if Not(Assigned(FormClienteCotizacion)) Then
      FormClienteCotizacion := TFormClienteCotizacion.Create(Application);
    FormClienteCotizacion.Show;
  end;

procedure TFMenu.CpbteContabilizarExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCpbteContabilizar)) Then
      FormCpbteContabilizar := TFormCpbteContabilizar.Create(Application);
    FormCpbteContabilizar.Show;
  end;

procedure TFMenu.ArticulosProduccionExecute(Sender: TObject);
  begin
    if Not(Assigned(FormStockProduccion)) Then
      FormStockProduccion := TFormStockProduccion.Create(Application);
    FormStockProduccion.Show;
  end;

procedure TFMenu.ArticulosUsadosEnProduccionExecute(Sender: TObject);
begin
  if Not(Assigned(FormAticulosUsadosProduccion)) Then
    FormAticulosUsadosProduccion := TFormAticulosUsadosProduccion.Create(Application);
  FormAticulosUsadosProduccion.Show;
end;

procedure TFMenu.ArtiPendientesOCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormArtPendientesOC)) Then
      FormArtPendientesOC := TFormArtPendientesOC.Create(Application);
    FormArtPendientesOC.Show;
  end;

procedure TFMenu.OrdenProduccionExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOrdenProduccion)) Then
      FormOrdenProduccion := TFormOrdenProduccion.Create(Application);
    FormOrdenProduccion.Show;
  end;

procedure TFMenu.OProducionProcesoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOProduccionProcesando)) Then
      FormOProduccionProcesando := TFormOProduccionProcesando.Create
        (Application);
    FormOProduccionProcesando.Show;

  end;

procedure TFMenu.OProducionInicadasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOProduccionIniciadas)) Then
      FormOProduccionIniciadas := TFormOProduccionIniciadas.Create(Application);
    FormOProduccionIniciadas.Show;
  end;

procedure TFMenu.AutorizaOrdenCompraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOCompraAutorizar)) Then
      FormOCompraAutorizar := TFormOCompraAutorizar.Create(Application);
    FormOCompraAutorizar.Show;
  end;

procedure TFMenu.CategoriaProductosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCategoriaProductos)) Then
      FormCategoriaProductos := TFormCategoriaProductos.Create(Application);
    FormCategoriaProductos.Show;
  end;

procedure TFMenu.CategoriasClientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCategoriasClientes)) Then
      FormCategoriasClientes := TFormCategoriasClientes.Create(Application);
    FormCategoriasClientes.Show;
  end;

procedure TFMenu.CDSAccesosNewRecord(DataSet: TDataSet);
  begin
    QId_AccDirecto.Close;
    QId_AccDirecto.ParamByName('id_usuario').Value := DMMain_FD.UsuarioActivoId;
    QId_AccDirecto.Open;
    if QId_AccDirecto.Fields[0].AsString <> '' then
      // CDSAccesosID.Value:=QId.Fields[0].AsInteger+1
      // else
      // CDSAccesosID.Value:=1;
      // CDSAccesosID_USUARIO.Value:=DMMain_FD.UsuarioActivoId;
      // CDSAccesosPOS_X.Value:= 200;
      // CDSAccesosPOS_Y.Value:= 200;
      // CDSAccesosCAPTION.Value:='Nuevo Accesos Directo';
      // CDSAccesosACCION.Value:='';
      // CDSAccesosIMAGEN.Clear;
      QId_AccDirecto.Close;

  end;

procedure TFMenu.ProductosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormProductos)) Then
      FormProductos := TFormProductos.Create(Application);
    FormProductos.Show;
  end;

procedure TFMenu.PromoCuponesPagoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRubrosFueraPromocion)) Then
      FormRubrosFueraPromocion := TFormRubrosFueraPromocion.Create(Application);
    FormRubrosFueraPromocion.Show;
  end;

procedure TFMenu.Promo_CantExecute(Sender: TObject);
  begin
    if Not(Assigned(FormPromo_x_Cant)) Then
      FormPromo_x_Cant := TFormPromo_x_Cant.Create(Application);
    FormPromo_x_Cant.Show;
  end;

procedure TFMenu.OrdenTrabajoSupExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOrdenDeTrabajo)) Then
      FormOrdenDeTrabajo := TFormOrdenDeTrabajo.Create(Application);
    FormOrdenDeTrabajo.Tag     := 0;
    FormOrdenDeTrabajo.Caption := 'Orden de Trabajo en Modo Supervisor';
    FormOrdenDeTrabajo.Show;
    FormOrdenDeTrabajo.btborrar.Visible := True;
  end;

procedure TFMenu.OrdenTrabajoPendientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoOTrabajoPendientes)) Then
      FormListadoOTrabajoPendientes := TFormListadoOTrabajoPendientes.Create
        (Application);
    FormListadoOTrabajoPendientes.Show;
  end;

procedure TFMenu.TransportesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormTransportes)) Then
      FormTransportes := TFormTransportes.Create(Application);
    FormTransportes.Show;
  end;

procedure TFMenu.OrdenCompraNuevasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOCompraNuevas)) Then
      FormOCompraNuevas := TFormOCompraNuevas.Create(Application);
    FormOCompraNuevas.Show;
  end;

procedure TFMenu.OrdenCompraRealizadasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOCompraRealizadas)) Then
      FormOCompraRealizadas := TFormOCompraRealizadas.Create(Application);
    FormOCompraRealizadas.Show;
  end;

procedure TFMenu.ListadoCpbteCompraPortipoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoCpbteCompPorTipo)) Then
      FormListadoCpbteCompPorTipo := TFormListadoCpbteCompPorTipo.Create
        (Application);
    FormListadoCpbteCompPorTipo.Show;

  end;

procedure TFMenu.ListadoCpbteGastosBancoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoCpbteGastoBco)) Then
      FormListadoCpbteGastoBco := TFormListadoCpbteGastoBco.Create(Application);
    FormListadoCpbteGastoBco.Show;
  end;

procedure TFMenu.ListadoCpbtEmitidosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlCpbteEmitidos)) Then
      FormControlCpbteEmitidos := TFormControlCpbteEmitidos.Create(Application);
    FormControlCpbteEmitidos.Show;
  end;

procedure TFMenu.ListadoCpbtePorTipoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoCpbteVtaPorTipo)) Then
      FormListadoCpbteVtaPorTipo := TFormListadoCpbteVtaPorTipo.Create
        (Application);
    FormListadoCpbteVtaPorTipo.Show;
  end;

procedure TFMenu.GraficoIntegradoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormGraficoIntegrado)) Then
      FormGraficoIntegrado := TFormGraficoIntegrado.Create(Application);
    FormGraficoIntegrado.Show;
  end;

procedure TFMenu.ListadoRecibosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoRecibos)) Then
      FormListadoRecibos := TFormListadoRecibos.Create(Application);
    FormListadoRecibos.Show;
  end;

procedure TFMenu.ListadoRecepcionesMercaderiaExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoRecepciones)) Then
    FormListadoRecepciones := TFormListadoRecepciones.Create(Application);
  FormListadoRecepciones.Show;
end;

procedure TFMenu.ListadoRecepcionGtiaExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoRecepGtias)) Then
    FormListadoRecepGtias := TFormListadoRecepGtias.Create(Application);
  FormListadoRecepGtias.Show;
end;

procedure TFMenu.ListadoRecibosCobradorExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoRecibosPorCobrador_2)) Then
      FormListadoRecibosPorCobrador_2 := TFormListadoRecibosPorCobrador_2.Create
        (Application);
    FormListadoRecibosPorCobrador_2.Show;
  end;

procedure TFMenu.ListadoRecibosCobrador_conAplicacionesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoRecibosPorCobrador)) Then
      FormListadoRecibosPorCobrador := TFormListadoRecibosPorCobrador.Create
        (Application);
    FormListadoRecibosPorCobrador.Show;
  end;

procedure TFMenu.ListadoRelacionCompraVentaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoRelacionCompraVenta)) Then
      FormListadoRelacionCompraVenta := TFormListadoRelacionCompraVenta.Create
        (Application);
    FormListadoRelacionCompraVenta.Show;
  end;

procedure TFMenu.ListadoRemitosConDetalle2Execute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoRtosDetalle)) Then
      FormListadoRtosDetalle := TFormListadoRtosDetalle.Create(Application);
    FormListadoRtosDetalle.Show;

  end;

procedure TFMenu.GeoPosicionClientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormPosicionGeoClientes)) Then
      FormPosicionGeoClientes := TFormPosicionGeoClientes.Create(Application);
    FormPosicionGeoClientes.Show;
  end;

procedure TFMenu.GoogleMapExecute(Sender: TObject);
  begin
    if Not(Assigned(FormGoogleMap)) Then
      FormGoogleMap := TFormGoogleMap.Create(Application);
    FormGoogleMap.Show;
  end;

procedure TFMenu.GoogleMapTMSExecute(Sender: TObject);
begin
    if Not(Assigned(FormAnalisisCobranza)) Then
      FormAnalisisCobranza := TFormAnalisisCobranza.Create(Application);
    FormAnalisisCobranza.Show;
end;

procedure TFMenu.GraficoAnalisisCobanzaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAnalisisCobranza)) Then
      FormAnalisisCobranza := TFormAnalisisCobranza.Create(Application);
    FormAnalisisCobranza.Show;
  end;

procedure TFMenu.ListadoChe3DepositadosAntesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormChe3DepositadoAntes)) Then
      FormChe3DepositadoAntes := TFormChe3DepositadoAntes.Create(Application);
    FormChe3DepositadoAntes.Show;
  end;

procedure TFMenu.ListadoChe3PorcpbteExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoChe3PorCpbte)) Then
      FormListadoChe3PorCpbte := TFormListadoChe3PorCpbte.Create(Application);
    FormListadoChe3PorCpbte.Show;
  end;

procedure TFMenu.ListadoCheEmitidos_OPagoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoChePor_OPago)) Then
      FormListadoChePor_OPago := TFormListadoChePor_OPago.Create(Application);
    FormListadoChePor_OPago.Show;

  end;

procedure TFMenu.ListadoChequesCompartidosExecute(Sender: TObject);
begin
  if Not(Assigned(FormControlCheCompartidos)) Then
      FormControlCheCompartidos := TFormControlCheCompartidos.Create(Application);
    FormControlCheCompartidos.Show;
end;

procedure TFMenu.ListadoCheRemplazadosExecute(Sender: TObject);
begin
    if Not(Assigned(FormListadoCheRemp)) Then
      FormListadoCheRemp := TFormListadoCheRemp.Create(Application);
    FormListadoCheRemp.Show;
end;

procedure TFMenu.ListadoChRecibidosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoChRecibidos)) Then
      FormListadoChRecibidos := TFormListadoChRecibidos.Create(Application);
    FormListadoChRecibidos.Show;
  end;

procedure TFMenu.ListadoClientesCondVentaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoClienteConVenta)) Then
      FormListadoClienteConVenta := TFormListadoClienteConVenta.Create
        (Application);
    FormListadoClienteConVenta.Show;
  end;

procedure TFMenu.ListadoClientes_LDRExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoClientes_LDR)) Then
    FormListadoClientes_LDR := TFormListadoClientes_LDR.Create(Application);
  FormListadoClientes_LDR.Show;
end;

procedure TFMenu.ListadoCompraArticulosProveeExecute(Sender: TObject);
begin
  if Not(Assigned(FormLisCompraArt_Proveedor)) Then
    FormLisCompraArt_Proveedor := TFormLisCompraArt_Proveedor.Create
      (Application);
  FormLisCompraArt_Proveedor.Show;
end;

procedure TFMenu.ListadoCompraPorRubroExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoCompraPorRubro)) Then
    FormListadoCompraPorRubro := TFormListadoCompraPorRubro.Create(Application);
  FormListadoCompraPorRubro.Show;
end;

procedure TFMenu.ListadoComprasCabDetExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoComprasCabDet)) Then
    FormListadoComprasCabDet := TFormListadoComprasCabDet.Create(Application);
  FormListadoComprasCabDet.Show;
end;

procedure TFMenu.ListadoComprativoArticulosCompraExecute(Sender: TObject);
begin
  if Not(Assigned(FormComparaArtPorCompra)) Then
    FormComparaArtPorCompra := TFormComparaArtPorCompra.Create(Application);
  FormComparaArtPorCompra.Show;
end;

procedure TFMenu.ListadoConsumTCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoConsumosTC)) Then
      FormListadoConsumosTC := TFormListadoConsumosTC.Create(Application);
    FormListadoConsumosTC.Show;
  end;

procedure TFMenu.ListadoControlOTrabajoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlOTrabajo)) Then
      FormControlOTrabajo := TFormControlOTrabajo.Create(Application);
    FormControlOTrabajo.Show;
  end;

procedure TFMenu.PlanRubo_Subrubro_stockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormPlanRubro_SubRubro_Stock)) Then
      FormPlanRubro_SubRubro_Stock := TFormPlanRubro_SubRubro_Stock.Create
        (Application);
    FormPlanRubro_SubRubro_Stock.Show;
  end;

procedure TFMenu.PlantillaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormPlantillas)) Then
      FormPlantillas := TFormPlantillas.Create(Application);
    FormPlantillas.Show;
  end;

procedure TFMenu.PlantillaGrillaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormPlantillas_Grillas)) Then
      FormPlantillas_Grillas := TFormPlantillas_Grillas.Create(Application);
    FormPlantillas_Grillas.Show;
  end;

procedure TFMenu.PlantillaRecepRepartoExecute(Sender: TObject);
begin
  if Not(Assigned(FormPlantillaRecepReparto)) Then
    FormPlantillaRecepReparto := TFormPlantillaRecepReparto.Create(Application);
  FormPlantillaRecepReparto.Show;
end;

procedure TFMenu.pnCotizacionDblClick(Sender: TObject);
  begin
    QMoneda.Close;
    QMoneda.Open;
    // pnCotizacion.LabelCaption:=(QMoneda.FieldByName('moneda').Value+'.: '+FormatFloat('0.000',qMoneda.FieldByName('cotizacion').Value));
    QMoneda.Close;
  end;

procedure TFMenu.LstOrdenTrabajoPorPuntosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormMovimientosPuntaje)) Then
      FormMovimientosPuntaje := TFormMovimientosPuntaje.Create(Application);
    FormMovimientosPuntaje.Show;
  end;

procedure TFMenu.LstOTrabajoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoOT)) Then
      FormListadoOT := TFormListadoOT.Create(Application);
    FormListadoOT.Show;
  end;

procedure TFMenu.LstPagoPersonalExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoPagoPersonal)) Then
      FormListadoPagoPersonal := TFormListadoPagoPersonal.Create(Application);
    FormListadoPagoPersonal.Show;
  end;

procedure TFMenu.LstPagosAnualesPersonalExecute(Sender: TObject);
  begin
    if Not(Assigned(FormPagosPersonalAnual)) Then
      FormPagosPersonalAnual := TFormPagosPersonalAnual.Create(Application);
    FormPagosPersonalAnual.Show;
  end;

procedure TFMenu.LstPercepcionIva_VtaExecute(Sender: TObject);
begin
  if Not(Assigned(FormLstPercepcionesIvaVta)) Then
    FormLstPercepcionesIvaVta := TFormLstPercepcionesIvaVta.Create(Application);
  FormLstPercepcionesIvaVta.Show;
end;

procedure TFMenu.LstPlantillasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLstPlantillas)) Then
      FormLstPlantillas := TFormLstPlantillas.Create(Application);
    FormLstPlantillas.Show;
  end;

procedure TFMenu.LstPreciosEspecialesClientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLstPreciosEspecialesClientes)) Then
      FormLstPreciosEspecialesClientes :=
        TFormLstPreciosEspecialesClientes.Create(Application);
    FormLstPreciosEspecialesClientes.Show;

  end;

procedure TFMenu.LstOrdenTrabajoArchivadasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOrdenTrabajoArchivadas)) Then
      FormOrdenTrabajoArchivadas := TFormOrdenTrabajoArchivadas.Create
        (Application);
    FormOrdenTrabajoArchivadas.Show;
  end;

procedure TFMenu.LstAcopiosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLstMercaderiaAcopio)) Then
      FormLstMercaderiaAcopio := TFormLstMercaderiaAcopio.Create(Application);
    FormLstMercaderiaAcopio.Show;
  end;

procedure TFMenu.LstAsinacionesEmpleadosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAsignacionesPersonal)) Then
      FormAsignacionesPersonal := TFormAsignacionesPersonal.Create(Application);
    FormAsignacionesPersonal.Show;

  end;

procedure TFMenu.LstGastosCtroCostoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLstPorCtroCosto)) Then
      FormLstPorCtroCosto := TFormLstPorCtroCosto.Create(Application);
    FormLstPorCtroCosto.Show;
  end;

procedure TFMenu.LstDetalleOrdenTrabajoPorClienteExecute(Sender: TObject);
  begin
    if Not(Assigned(FormOrdenesTrabajoPorClienteDetalle)) Then
      FormOrdenesTrabajoPorClienteDetalle :=
        TFormOrdenesTrabajoPorClienteDetalle.Create(Application);
    FormOrdenesTrabajoPorClienteDetalle.Show;
  end;

procedure TFMenu.LstGastosRefContableExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoGastoRefContable)) Then
      FormListadoGastoRefContable := TFormListadoGastoRefContable.Create
        (Application);
    FormListadoGastoRefContable.Show;
  end;

procedure TFMenu.LstGralVentasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormResumenVentas)) Then
      FormResumenVentas := TFormResumenVentas.Create(Application);
    FormResumenVentas.Show;
  end;

procedure TFMenu.LstMovCajaGralExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLstMovCajaGeneral)) Then
      FormLstMovCajaGeneral := TFormLstMovCajaGeneral.Create(Application);
    FormLstMovCajaGeneral.Show;
  end;

procedure TFMenu.RubroProveeExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRubrosProveedores)) Then
      FormRubrosProveedores := TFormRubrosProveedores.Create(Application);
    FormRubrosProveedores.Show;
  end;

procedure TFMenu.ListadoMateriasPrimasUsadasExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoMateriasPrimasUsadas)) Then
    FormListadoMateriasPrimasUsadas := TFormListadoMateriasPrimasUsadas.Create(Application);
  FormListadoMateriasPrimasUsadas.Show;
end;

procedure TFMenu.ListadoMovIngCajaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoMovCaja)) Then
      FormListadoMovCaja := TFormListadoMovCaja.Create(Application);
    FormListadoMovCaja.Show;
  end;

procedure TFMenu.ListadoMovIng_EgrExecute(Sender: TObject);
  begin
    if Not(Assigned(FormComposicionIngEgre)) Then
      FormComposicionIngEgre := TFormComposicionIngEgre.Create(Application);
    FormComposicionIngEgre.Show;
  end;

procedure TFMenu.ExportarFcCompraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormExportarFcComp)) Then
      FormExportarFcComp := TFormExportarFcComp.Create(Application);
    FormExportarFcComp.Show;
  end;

procedure TFMenu.ImportarFcCompraAFIPExecute(Sender: TObject);
begin
  if Not(Assigned(FormImportarFcCompraAFIP)) Then
     FormImportarFcCompraAFIP := TFormImportarFcCompraAFIP.Create(Application);
  FormImportarFcCompraAFIP.Show;
end;

procedure TFMenu.ImportarFcCompraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportarFcComp)) Then
      FormImportarFcComp := TFormImportarFcComp.Create(Application);
    FormImportarFcComp.Show;
  end;

procedure TFMenu.AsignaCodigoBarraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAsignaCodigoBarra)) Then
      FormAsignaCodigoBarra := TFormAsignaCodigoBarra.Create(Application);
    FormAsignaCodigoBarra.Show;
  end;

procedure TFMenu.AsignarJuridiccionExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAsignacionJuridiccion)) Then
      FormAsignacionJuridiccion := TFormAsignacionJuridiccion.Create
        (Application);
    FormAsignacionJuridiccion.Show;
  end;

procedure TFMenu.AsignaCajaUsuarioExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAsignaCajaUsuario)) Then
      FormAsignaCajaUsuario := TFormAsignaCajaUsuario.Create(Application);
    FormAsignaCajaUsuario.Show;
  end;

procedure TFMenu.ExportaStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormExportaStock)) Then
      FormExportaStock := TFormExportaStock.Create(Application);
    FormExportaStock.Show;
  end;

procedure TFMenu.ImportarStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportarStock)) Then
      FormImportarStock := TFormImportarStock.Create(Application);
    FormImportarStock.Show;
  end;

procedure TFMenu.ImportarSubRubrosExcelExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportarSubRubroExcel)) Then
      FormImportarSubRubroExcel := TFormImportarSubRubroExcel.Create
        (Application);
    FormImportarSubRubroExcel.Show;
  end;

procedure TFMenu.ImportarVisaTxtExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLeerArchivoTCVisa)) Then
      FormLeerArchivoTCVisa := TFormLeerArchivoTCVisa.Create(Application);
    FormLeerArchivoTCVisa.Show;
  end;

procedure TFMenu.Importarvtas_PtoVtaMorphiExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportarVtas_PtoVtaMorphi)) Then
      FormImportarVtas_PtoVtaMorphi := TFormImportarVtas_PtoVtaMorphi.Create(Application);
    FormImportarVtas_PtoVtaMorphi.Show;
  end;

procedure TFMenu.ImportarRelacionCodigoProveedorExecute(Sender: TObject);
begin
 if Not(Assigned(FormImportaProveeStockXLS)) Then
      FormImportaProveeStockXLS := TFormImportaProveeStockXLS.Create(Application);
    FormImportaProveeStockXLS.Show;
end;

procedure TFMenu.ExportarFcVtaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormExportaFcVta_XML)) Then
      FormExportaFcVta_XML := TFormExportaFcVta_XML.Create(Application);
    FormExportaFcVta_XML.Show;
  end;

procedure TFMenu.ImportarFcVentaAFIPExecute(Sender: TObject);
begin
 if Not(Assigned(FormImportarFcVentaAFIP)) Then
     FormImportarFcVentaAFIP := TFormImportarFcVentaAFIP.Create(Application);
  FormImportarFcVentaAFIP.Show;

end;

procedure TFMenu.ImportarFcVtaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportarFcVta)) Then
      FormImportarFcVta := TFormImportarFcVta.Create(Application);
    FormImportarFcVta.Show;
  end;


procedure TFMenu.ImportarMarcasExcelExecute(Sender: TObject);
  begin
    if Not(Assigned(FormimportarMarcasExcel)) Then
      FormimportarMarcasExcel := TFormimportarMarcasExcel.Create(Application);
    FormimportarMarcasExcel.Show;

  end;

procedure TFMenu.ImportarMercadoPagoExecute(Sender: TObject);
begin
  if Not(Assigned(FormImportarMercadoPago)) Then
    FormImportarMercadoPago := TFormImportarMercadoPago.Create(Application);
  FormImportarMercadoPago.Show;
end;

procedure TFMenu.ImportarClientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportarClientes)) Then
      FormImportarClientes := TFormImportarClientes.Create(Application);
    FormImportarClientes.Show;
  end;

procedure TFMenu.ImportarCobroTCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCobroConTarjetasCredito)) Then
      FormCobroConTarjetasCredito := TFormCobroConTarjetasCredito.Create
        (Application);
    FormCobroConTarjetasCredito.Show;
  end;


procedure TFMenu.ImportarDesctosClientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImpDscto)) Then
      FormImpDscto := TFormImpDscto.Create(Application);
    FormImpDscto.Show;

  end;

procedure TFMenu.ExportarClientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormExportarClientes)) Then
      FormExportarClientes := TFormExportarClientes.Create(Application);
    FormExportarClientes.Show;
  end;

procedure TFMenu.ImportarPreventaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportacionPreventas)) Then
      FormImportacionPreventas := TFormImportacionPreventas.Create(Application);
    FormImportacionPreventas.Show;
  end;

procedure TFMenu.ImportarProveedoresExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportarProveedores)) Then
      FormImportarProveedores := TFormImportarProveedores.Create(Application);
    FormImportarProveedores.Show;
  end;

procedure TFMenu.ImportarProveeExcelExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportarProveedoresExcel)) Then
      FormImportarProveedoresExcel := TFormImportarProveedoresExcel.Create
        (Application);
    FormImportarProveedoresExcel.Show;
  end;

procedure TFMenu.ImportarRemitosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportarRtos)) Then
      FormImportarRtos := TFormImportarRtos.Create(Application);
    FormImportarRtos.Show;
  end;

procedure TFMenu.ImportarRipsaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCobrosRipsa)) Then
      FormCobrosRipsa := TFormCobrosRipsa.Create(Application);
    FormCobrosRipsa.Show;
  end;

procedure TFMenu.ImportarRubroExcelExecute(Sender: TObject);
  begin
    if Not(Assigned(FormImportarRubroExcel)) Then
      FormImportarRubroExcel := TFormImportarRubroExcel.Create(Application);
    FormImportarRubroExcel.Show;
  end;

procedure TFMenu.ExportarProveedoresExecute(Sender: TObject);
  begin
    if Not(Assigned(FormExportaProveedores)) Then
      FormExportaProveedores := TFormExportaProveedores.Create(Application);
    FormExportaProveedores.Show;
  end;

procedure TFMenu.ExportarRtosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormExportaRe)) Then
      FormExportaRe := TFormExportaRe.Create(Application);
    FormExportaRe.Show;
  end;

procedure TFMenu.Exportar_DebitosTCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormClientesDebTC)) Then
      FormClientesDebTC := TFormClientesDebTC.Create(Application);
    FormClientesDebTC.Show;
  end;

procedure TFMenu.NotaPedidoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormNotaPedido)) Then
    begin
      FormNotaPedido := TFormNotaPedido.Create(Application);
      FormNotaPedido.Modo := 'N';
      FormNotaPedido.lbModo.Caption := 'Ingreso Nueva';
    end
    else
      FormNotaPedido.Show;
  end;

procedure TFMenu.NotaPedidoRevisionExecute(Sender: TObject);
  begin
    if Not(Assigned(FormNotaPedido)) Then
    begin
      FormNotaPedido := TFormNotaPedido.Create(Application);
      FormNotaPedido.Modo := 'R';
      FormNotaPedido.lbModo.Caption := 'Revision';

    end
    else
      FormNotaPedido.Show;
  end;

procedure TFMenu.NotasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormNotas)) Then
      FormNotas := TFormNotas.Create(Application);
    FormNotas.Show;
  end;

procedure TFMenu.NotasVentasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormNotaVta)) Then
      FormNotaVta := TFormNotaVta.Create(Application);
    FormNotaVta.Show;
  end;

procedure TFMenu.NotaTransferenciaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormNota_TransfStock)) Then
      FormNota_TransfStock := TFormNota_TransfStock.Create(Application);
    FormNota_TransfStock.Show;

  end;

procedure TFMenu.NovedadesPersonalExecute(Sender: TObject);
begin
  if Not(Assigned(FormPersonalNovedades)) Then
    FormPersonalNovedades := TFormPersonalNovedades.Create(Application);
  FormPersonalNovedades.Show;

end;

procedure TFMenu.AsignarListaPrecioUsuarioExecute(Sender: TObject);
begin
  if Not(Assigned(FormListaPrecioUsuarios)) Then
    FormListaPrecioUsuarios := TFormListaPrecioUsuarios.Create(Application);
  FormListaPrecioUsuarios.Show;

end;

procedure TFMenu.AsignarStockProveedorExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRelacionStockProveedor)) Then
      FormRelacionStockProveedor := TFormRelacionStockProveedor.Create(Application);
    FormRelacionStockProveedor.Show;
  end;

procedure TFMenu.DetallePedidoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormDetallesNotaPedido)) Then
      FormDetallesNotaPedido := TFormDetallesNotaPedido.Create(Application);
    FormDetallesNotaPedido.Show;
  end;

procedure TFMenu.DetallePedidosRealizadosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormDetallePedidosRealizados)) Then
      FormDetallePedidosRealizados := TFormDetallePedidosRealizados.Create
        (Application);
    FormDetallePedidosRealizados.Show;
  end;

procedure TFMenu.DetallePrevisionExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoPedidosPrevision)) Then
    FormListadoPedidosPrevision := TFormListadoPedidosPrevision.Create(Application);
  FormListadoPedidosPrevision.Show;

end;

procedure TFMenu.DetallesNc_RcExecute(Sender: TObject);
  begin
    if Not(Assigned(FormdetallesNc_Rec)) Then
      FormdetallesNc_Rec := TFormdetallesNc_Rec.Create(Application);
    FormdetallesNc_Rec.Show;
  end;

procedure TFMenu.MovOTrabajoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormMotivosOTrabajo)) Then
      FormMotivosOTrabajo := TFormMotivosOTrabajo.Create(Application);
    FormMotivosOTrabajo.Show;
  end;

procedure TFMenu.MovTransDepositoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormMovTransferenciaStock)) Then
      FormMovTransferenciaStock := TFormMovTransferenciaStock.Create
        (Application);
    FormMovTransferenciaStock.Show;
  end;

procedure TFMenu.CreacionListasDePreciosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListaPrecioEspecial)) Then
      FormListaPrecioEspecial := TFormListaPrecioEspecial.Create(Application);
    FormListaPrecioEspecial.Show;
  end;

procedure TFMenu.ListadoOPagoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoOPago)) Then
      FormListadoOPago := TFormListadoOPago.Create(Application);
    FormListadoOPago.Show;
  end;

procedure TFMenu.DetalleOTrabajoEmpladosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoOTrabajoEmpleados)) Then
      FormListadoOTrabajoEmpleados := TFormListadoOTrabajoEmpleados.Create
        (Application);
    FormListadoOTrabajoEmpleados.Show;
  end;

procedure TFMenu.ControlUnidadesDeStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlUnidadesStock)) Then
      FormControlUnidadesStock := TFormControlUnidadesStock.Create(Application);
    FormControlUnidadesStock.Show;
  end;

procedure TFMenu.ControlVtoCuponesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlVtoCupones)) Then
      FormControlVtoCupones := TFormControlVtoCupones.Create(Application);
    FormControlVtoCupones.Show;
  end;

procedure TFMenu.Control_mov_che3Execute(Sender: TObject);
  begin
    if Not(Assigned(FormControlMovChe3)) Then
      FormControlMovChe3 := TFormControlMovChe3.Create(Application);
    FormControlMovChe3.Show;
  end;

procedure TFMenu.CopiarPreciosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCopiaPrecios)) Then
      FormCopiaPrecios := TFormCopiaPrecios.Create(Application);
    FormCopiaPrecios.Show;
  end;

procedure TFMenu.ListadoDepositosBancariosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoDepositoBco)) Then
      FormListadoDepositoBco := TFormListadoDepositoBco.Create(Application);
    FormListadoDepositoBco.Show;
  end;

procedure TFMenu.ListadoDetalleOCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormPendientesOC)) Then
      FormPendientesOC := TFormPendientesOC.Create(Application);
    FormPendientesOC.Show;
  end;

procedure TFMenu.ListadoConsumosObrasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoConsumosObras)) Then
      FormListadoConsumosObras := TFormListadoConsumosObras.Create(Application);
    FormListadoConsumosObras.Show;
  end;

procedure TFMenu.ComisionPorPlanExecute(Sender: TObject);
  begin
    if Not(Assigned(FormComisionVtaObjetivo)) Then
      FormComisionVtaObjetivo := TFormComisionVtaObjetivo.Create(Application);
    FormComisionVtaObjetivo.Show;
  end;

procedure TFMenu.cbEstilo_oldClick(Sender: TObject);
  begin
    WindowCloseAll.Execute;
    TStyleManager.SetStyle(cbEstilo.Items[cbEstilo.ItemIndex]);
    NroEstilo := cbEstilo.ItemIndex;
  end;

procedure TFMenu.ComparativaPreciosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormComparativaPrecios)) Then
      FormComparativaPrecios := TFormComparativaPrecios.Create(Application);
    FormComparativaPrecios.Show;
  end;

procedure TFMenu.ComposicionDeudaCpraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormComposicionVtosComp)) Then
      FormComposicionVtosComp := TFormComposicionVtosComp.Create(Application);
    FormComposicionVtosComp.Show;
  end;

procedure TFMenu.ComposicionDeudaVtaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormComposicionDeudaVta)) Then
      FormComposicionDeudaVta := TFormComposicionDeudaVta.Create(Application);
    FormComposicionDeudaVta.Show;
  end;

procedure TFMenu.ComposicionIngresosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormComposicionIngresos)) Then
      FormComposicionIngresos := TFormComposicionIngresos.Create(Application);
    FormComposicionIngresos.Show;
  end;

procedure TFMenu.ComposicionReciboExecute(Sender: TObject);
  begin
    if Not(Assigned(FormComposicionCobranza)) Then
      FormComposicionCobranza := TFormComposicionCobranza.Create(Application);
    FormComposicionCobranza.Show;
  end;

procedure TFMenu.ComposicionVta_CobroExecute(Sender: TObject);
  begin
    if Not(Assigned(FormComposicionVtas_Cobros)) Then
      FormComposicionVtas_Cobros := TFormComposicionVtas_Cobros.Create
        (Application);
    FormComposicionVtas_Cobros.Show;
  end;

procedure TFMenu.LogFileExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLog)) Then
      FormLog := TFormLog.Create(Application);
    FormLog.Show;
  end;

procedure TFMenu.ReemplazoChe3Execute(Sender: TObject);
  begin
    if Not(Assigned(FormRemplazoChequesTerceros)) Then
      FormRemplazoChequesTerceros := TFormRemplazoChequesTerceros.Create
        (Application);
    FormRemplazoChequesTerceros.Show;
  end;

procedure TFMenu.ReemplazoValoresIngExecute(Sender: TObject);
begin
  if Not(Assigned(FormReemplazoValoresIng)) Then
    FormReemplazoValoresIng := TFormReemplazoValoresIng.Create(Application);
  FormReemplazoValoresIng.Show;
end;

procedure TFMenu.ReferenciasPlataformasExecute(Sender: TObject);
begin
  if Not(Assigned(FormRef_TCPlataformas)) Then
    FormRef_TCPlataformas := TFormRef_TCPlataformas.Create(Application);
  FormRef_TCPlataformas.Show;
end;

procedure TFMenu.ReArmarMovStockExecute(Sender: TObject);
  begin
    // DMMain.QSetIdMovStock.Close;
    // DMMain.QSetIdMovStock.ExecSQL;
    if MessageDlg('Procede con el Armado de Movi. de Stock.....?',
      mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      Screen.Cursor := crHourglass;
      DMStoreProcedure.spRearmarMovStockFD.Close;
      DMStoreProcedure.spRearmarMovStockFD.ParamByName('Ordenar').Value := 'N';

      DMStoreProcedure.spRearmarMovStockFD.ExecProc;
      DMStoreProcedure.spRearmarMovStockFD.Close;
      Screen.Cursor := crDefault;
    end;

  end;

procedure TFMenu.ListadoMovStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoMovStock)) Then
      FormListadoMovStock := TFormListadoMovStock.Create(Application);
    FormListadoMovStock.Show;
  end;

procedure TFMenu.TomaInventarioExecute(Sender: TObject);
  begin
    if Not(Assigned(FormInventario)) Then
      FormInventario := TFormInventario.Create(Application);
    FormInventario.Show;
  end;

procedure TFMenu.OrdenacionRubrosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRubroOrdenador)) Then
      FormRubroOrdenador := TFormRubroOrdenador.Create(Application);
    FormRubroOrdenador.Show;

  end;

procedure TFMenu.OrdenarMovStockExecute(Sender: TObject);
  begin
    // SQLDesActivaTriggers.ExecSQL;

    if MessageDlg('Procede con el Ordenamiento de Movi. de Stock.....?',
      mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      if DMMain_FD.UsuarioActivo='master' then
        begin
          DMStoreProcedure.spOrdenarMovStock_FD.Close;
          DMStoreProcedure.spOrdenarMovStock_FD.ExecProc;
          DMStoreProcedure.spOrdenarMovStock_FD.Close;
        end
      else
        ShowMessage('Usuario No Autorizado...');
    end;
    // SQLActivaTriggers.ExecSQL;
  end;

procedure TFMenu.ConsultaXSerieExecute(Sender: TObject);
  begin
    if Not(Assigned(FormConsultaXSerie)) Then
      FormConsultaXSerie := TFormConsultaXSerie.Create(Application);
    FormConsultaXSerie.Show;

  end;

procedure TFMenu.ListadoPoliticaPreciosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListaPoliticasPrecios)) Then
      FormListaPoliticasPrecios := TFormListaPoliticasPrecios.Create
        (Application);
    FormListaPoliticasPrecios.Show;
  end;

procedure TFMenu.ListadoPresupuestosDetalleExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLstPresupuestoDetalle)) Then
      FormLstPresupuestoDetalle := TFormLstPresupuestoDetalle.Create
        (Application);
    FormLstPresupuestoDetalle.Show;
  end;

procedure TFMenu.ListadoProduccionPIExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoPedidosPI)) Then
      FormListadoPedidosPI := TFormListadoPedidosPI.Create(Application);
    FormListadoPedidosPI.Show;
  end;

procedure TFMenu.CalcFiancieraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormCalculadorFinanciero)) Then
      FormCalculadorFinanciero := TFormCalculadorFinanciero.Create(Application);
    FormCalculadorFinanciero.Show;
  end;

procedure TFMenu.CalculadoraExecute(Sender: TObject);
  begin
    // Calculator.Execute;
    JvCalculator.Execute;
    // AdvSmoothCalculator1.Show;
  end;

procedure TFMenu.SectoresProduccionExecute(Sender: TObject);
  begin
    if Not(Assigned(FormSectoresProduccion)) Then
      FormSectoresProduccion := TFormSectoresProduccion.Create(Application);
    FormSectoresProduccion.Show;
  end;

procedure TFMenu.SerieMayusculExecute(Sender: TObject);
  begin
    DMMain_FD.QSeriesAMayuscula.Close;
    DMMain_FD.QSeriesAMayuscula.ExecSQL;
    DMMain_Fd.QSeriesAMayuscula.Close;
  end;

procedure TFMenu.ServicioTecnicoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormServicioTecnico)) Then
      FormServicioTecnico := TFormServicioTecnico.Create(Application);
    FormServicioTecnico.Show;
  end;

procedure TFMenu.sgPedidosDblClickCell(Sender: TObject; ARow, ACol: Integer);
begin
 if sgPedidos.Cells[2,ARow]<>'' then
     begin
       if not(Assigned(FormPedidos)) then
         FormPedidos:=TFormPedidos.Create(Application);
       FormPedidos.DatoNew:=StrToInt( sgPedidos.Cells[2,ARow]);
       FormPedidos.Recuperar.Execute;
     end;
end;

procedure TFMenu.StockAlquilerExecute(Sender: TObject);
begin
  if Not(Assigned(FormStockAlquiler)) Then
    FormStockAlquiler := TFormStockAlquiler.Create(Application);
  FormStockAlquiler.Show;
end;

procedure TFMenu.StockEceptuadosIVAVtaExecute(Sender: TObject);
begin
  if Not(Assigned(FormArtciculosEceptuadosIVAVta)) Then
    FormArtciculosEceptuadosIVAVta := TFormArtciculosEceptuadosIVAVta.Create(Application);
  FormArtciculosEceptuadosIVAVta.Show;
end;

procedure TFMenu.StockExpressExecute(Sender: TObject);
begin
  if Not(Assigned(FormStock_Express)) Then
     FormStock_Express := TFormStock_Express.Create(Application);
   FormStock_Express.Show;
end;

procedure TFMenu.StockTipoAdicionalExecute(Sender: TObject);
 begin
    if Not(Assigned(FormStockTipoAdicional)) Then
      FormStockTipoAdicional := TFormStockTipoAdicional.Create(Application);
    FormStockTipoAdicional.Show;
  end;

procedure TFMenu.VerStockComprometidoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormStockComprometido)) Then
      FormStockComprometido := TFormStockComprometido.Create(Application);
    FormStockComprometido.Show;
  end;


procedure TFMenu.ContorlFcDet_MovStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlMovStockVta)) Then
      FormControlMovStockVta := TFormControlMovStockVta.Create(Application);
    FormControlMovStockVta.Show;
  end;

procedure TFMenu.PermutaSeriesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRemplazoSeries)) Then
      FormRemplazoSeries := TFormRemplazoSeries.Create(Application);
    FormRemplazoSeries.Show;
  end;

procedure TFMenu.CreacionPoliticaComisionesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormComisionesVendedores)) Then
      FormComisionesVendedores := TFormComisionesVendedores.Create(Application);
    FormComisionesVendedores.Show;
  end;

procedure TFMenu.CrearAccesoDirectoExecute(Sender: TObject);
begin

end;

// procedure TFMenu.CrearAccesoDirectoExecute(Sender: TObject);
// var accIcono:TAccesoDirecto;
// path:String;
// Puntero:TPoint;
// begin
// CDSAccesos.Insert;
// Path:=ExtractFilePath(ParamStr(0));
// GetCursorPos(Puntero);
//
// accIcono         := TAccesoDirecto.Create(self);
/// /  accIcono.Picture.LoadFromFile(Path+'kcmdf.gif');// := imgAccesoDirecto.Picture;
// accIcono.Picture.LoadFromFile(Path+'kcmdf.gif');
// accIcono.PosXPicture:=20;
// accIcono.PosYPicture:=0;
// accIcono.PosXText   :=1;
// accIcono.PosYText   :=0;
// accIcono.Brush.Style:=bsClear;
// accIcono.Text       :='Acceso Directo';
// accIcono.Left       := Puntero.X;
// accIcono.Top        := Puntero.Y;
// accIcono.Height     := 76;
// accIcono.width      := 67;
// accIcono.OnMouseDown:= AccesoDirecto1MouseDown;
// accIcono.OnMouseMove:= AccesoDirecto1MouseMove;
// accIcono.OnMouseUp  := AccesoDirecto1MouseUp;
// accIcono.PopupMenu  := mOpcionAccesoDirecto;
// accIcono.Name       := 'Acc_'+CDSAccesosID.AsString;
// accIcono.Caption    := '';
// accIcono.Parent     := FMenu;
// accIcono.TextAlign  := taCenter;
// accIcono.Border     := False;
// accIcono.Visible    := True;
//
//
//
// // CDSAccesosIMAGEN.AsVariant:=accIcono.Picture;
// CDSAccesos.Post;
// CDSAccesos.ApplyUpdates(0);
// lbAccesoDirecto          := TLabel.Create ( pnAccesoDirecto );
// lbAccesoDirecto.Parent   := pnAccesoDirecto;
// lbAccesoDirecto.Caption  :='Nuevo Acceso Directo';
// end;

procedure TFMenu.LiquidacionComisionesPorArticuloExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlComisionesPorArticulo)) Then
      FormControlComisionesPorArticulo :=
        TFormControlComisionesPorArticulo.Create(Application);
    FormControlComisionesPorArticulo.Show;
  end;

procedure TFMenu.LiquidacionHaberesExecute(Sender: TObject);
begin
  if Not(Assigned(FormPersonalliquidacion)) Then
    FormPersonalliquidacion := TFormPersonalliquidacion.Create(Application);
  FormPersonalliquidacion.Show;
end;

procedure TFMenu.LiquidacionPrimariaGranosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLiqGranos)) Then
      FormLiqGranos := TFormLiqGranos.Create(Application);
    FormLiqGranos.Show;
  end;

procedure TFMenu.RecepcionArticulosGtiaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRecepGarantia)) Then
      FormRecepGarantia := TFormRecepGarantia.Create(Application);
    FormRecepGarantia.Show;
  end;

procedure TFMenu.RecepcionMercaderiaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRecepcionMercaderia)) Then
      FormRecepcionMercaderia := TFormRecepcionMercaderia.Create(Application);
    FormRecepcionMercaderia.Show;
  end;

procedure TFMenu.Resolucion3886Execute(Sender: TObject);
  begin
    if Not(Assigned(FormResolucion3668)) Then
      FormResolucion3668 := TFormResolucion3668.Create(Application);
    FormResolucion3668.Show;
  end;

procedure TFMenu.ResumenMovStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormResumenMovStock)) Then
      FormResumenMovStock := TFormResumenMovStock.Create(Application);
    FormResumenMovStock.Show;
  end;

procedure TFMenu.ResumenPedidosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormPedidosResumen)) Then
      FormPedidosResumen := TFormPedidosResumen.Create(Application);
    FormPedidosResumen.Show;
  end;

procedure TFMenu.ListadoVtaRubroVendedorExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoVtaRubro)) Then
      FormListadoVtaRubro := TFormListadoVtaRubro.Create(Application);
    FormListadoVtaRubro.Show;
  end;

procedure TFMenu.ListadoVtasvsCobrosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormVentasVsCobranza)) Then
      FormVentasVsCobranza := TFormVentasVsCobranza.Create(Application);
    FormVentasVsCobranza.Show;
  end;

procedure TFMenu.ListadoVtaTotalPorVendedorExecute(Sender: TObject);
  begin
    if Not(Assigned(FormlistadoVtaPorVendedor)) Then
      FormlistadoVtaPorVendedor := TFormlistadoVtaPorVendedor.Create
        (Application);
    FormlistadoVtaPorVendedor.Show;
  end;

procedure TFMenu.ListadoVta_clienteRubroSubExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoVtaArticulosClienteSuc)) Then
      FormListadoVtaArticulosClienteSuc :=
        TFormListadoVtaArticulosClienteSuc.Create(Application);
    FormListadoVtaArticulosClienteSuc.Show;
  end;

procedure TFMenu.Listado_ArtRubSubrExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLista_Stock_Rub_SubRub)) Then
      FormLista_Stock_Rub_SubRub := TFormLista_Stock_Rub_SubRub.Create
        (Application);
    FormLista_Stock_Rub_SubRub.Show;
  end;

procedure TFMenu.ListadoGastosTCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormgastosTC)) Then
      FormgastosTC := TFormgastosTC.Create(Application);
    FormgastosTC.Show;
  end;

procedure TFMenu.ListadoHistorialPreciosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoHistorialPrecio)) Then
      FormListadoHistorialPrecio := TFormListadoHistorialPrecio.Create
        (Application);
    FormListadoHistorialPrecio.Show;
  end;

procedure TFMenu.ListadoAcreditacionesTCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoAcreditacionesTC)) Then
      FormListadoAcreditacionesTC := TFormListadoAcreditacionesTC.Create
        (Application);
    FormListadoAcreditacionesTC.Show;
  end;

procedure TFMenu.ListadoSaldosEmpleadosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormSaldosEmpleados)) Then
      FormSaldosEmpleados := TFormSaldosEmpleados.Create(Application);
    FormSaldosEmpleados.Show;
  end;

procedure TFMenu.ListadoSeriesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoSeries)) Then
      FormListadoSeries := TFormListadoSeries.Create(Application);
    FormListadoSeries.Show;

  end;

procedure TFMenu.ListadoNovedadesFacturasExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoNovedadesFac)) Then
    FormListadoNovedadesFac := TFormListadoNovedadesFac.Create(Application);
  FormListadoNovedadesFac.Show;
end;

procedure TFMenu.ListadoNovedadesStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormNovedadesStock)) Then
      FormNovedadesStock := TFormNovedadesStock.Create(Application);
    FormNovedadesStock.Show;

  end;

procedure TFMenu.ListadoNPedidosCompraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoNotaPedido)) Then
      FormListadoNotaPedido := TFormListadoNotaPedido.Create(Application);
    FormListadoNotaPedido.Show;
  end;

procedure TFMenu.ListadoStockConsignacionExecute(Sender: TObject);
  begin
    if Not(Assigned(FormStockConsignacion)) Then
      FormStockConsignacion := TFormStockConsignacion.Create(Application);
    FormStockConsignacion.Show;
  end;

procedure TFMenu.ListadoStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoStock)) Then
      FormListadoStock := TFormListadoStock.Create(Application);
    FormListadoStock.Show;
  end;

procedure TFMenu.ListadoStockGeneralExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoStockGral)) Then
      FormListadoStockGral := TFormListadoStockGral.Create(Application);
    FormListadoStockGral.Show;
  end;

procedure TFMenu.SaldosIngresosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormSaldoIngresos)) Then
      FormSaldoIngresos := TFormSaldoIngresos.Create(Application);
    FormSaldoIngresos.Show;
  end;

procedure TFMenu.ListadoCostoVtaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoCostoArtVendidos)) Then
      FormListadoCostoArtVendidos := TFormListadoCostoArtVendidos.Create
        (Application);
    FormListadoCostoArtVendidos.Show;
  end;

procedure TFMenu.ControlMinMaxStockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlCantidadesStock)) Then
      FormControlCantidadesStock := TFormControlCantidadesStock.Create
        (Application);
    FormControlCantidadesStock.Show;
  end;

procedure TFMenu.JuridiccionesIIBBExecute(Sender: TObject);
  begin
    if Not(Assigned(FormJuridiccion)) Then
      FormJuridiccion := TFormJuridiccion.Create(Application);
    FormJuridiccion.Show;

  end;

procedure TFMenu.JuridiccionesIIBBLocalidadesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormJuridicion_Localidad)) Then
      FormJuridicion_Localidad := TFormJuridicion_Localidad.Create(Application);
    FormJuridicion_Localidad.Show;
  end;

procedure TFMenu.JuridiccionExcepcionesExecute(Sender: TObject);
begin
  if Not(Assigned(FormJuridicion_Sucursal)) Then
    FormJuridicion_Sucursal := TFormJuridicion_Sucursal.Create(Application);
  FormJuridicion_Sucursal.Show;

end;


procedure TFMenu.KanbanPresupuestoExecute(Sender: TObject);
begin
  if Not(Assigned(FormKanbanPrespuesto)) Then
    FormKanbanPrespuesto := TFormKanbanPrespuesto.Create(Application);
  FormKanbanPrespuesto.Show;

end;

procedure TFMenu.dskAlertaPedidosMessageClick(Sender: TObject);
  begin
    NotaPedido.Execute;
  end;

procedure TFMenu.dskAlertaTrialClose(Sender: TObject);
begin
  TimerTrial.Enabled:=True;
end;

procedure TFMenu.dskAlertaTrialCloseButtonClick(Sender: TObject);
begin
  TimerTrial.Enabled:=True;
end;

procedure TFMenu.dskAlertaTrialShow(Sender: TObject);
begin
  TimerTrial.Enabled:=False;
end;

procedure TFMenu.DskAlertElectronicaMessageClick(Sender: TObject);
begin
  FiscalizaLote.Execute;
end;

procedure TFMenu.DskAlertMinimoCloseButtonClick(Sender: TObject);
begin
  if MessageDlg('Dejar de Mostrar Mensaje..???', mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      Sleep(50);
      DskAlertMinimo.Close(True);
      TimerMinimo.Enabled := False;
     end;

end;

procedure TFMenu.dskAlertPedidoCloseButtonClick(Sender: TObject);
begin
  if MessageDlg('Dejar de Mostrar Mensaje..???', mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      Sleep(50);
      dskAlertPedido.Close(True);
      TimerPedido.Enabled := False;
     end;
end;

procedure TFMenu.dskAlertPedidoMessageClick(Sender: TObject);
begin
  Sleep(50);
  dskAlertPedido.Close(True);
  if not(Assigned(FormPedidos)) then
      FormPedidos := TFormPedidos.Create(Application);
    FormPedidos.Show;
end;

procedure TFMenu.dskAlertPedidoMovilCloseButtonClick(Sender: TObject);
begin
 if MessageDlg('Dejar de Mostrar Mensaje..???', mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      Sleep(50);
      dskAlertPedidoMovil.Close(True);
      TimerPedidosMovil.Enabled := False;
     end;
end;

procedure TFMenu.dskAlertPedidoMovilMessageClick(Sender: TObject);
begin
  if not(Assigned(FormLectorPedidosApp)) then
    FormLectorPedidosApp := TFormLectorPedidosApp.Create(Application);
  FormLectorPedidosApp.Show;
end;

procedure TFMenu.dskAlertPedidos_TxCloseButtonClick(Sender: TObject);
begin
  if MessageDlg('Dejar de Mostrar Mensaje..???', mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      Sleep(40);
      dskAlertPedidos_Tx.Close(True);
      TimerPedido_Tx.Enabled := False;
    end;

end;

procedure TFMenu.dskAlertPedidos_TxMessageClick(Sender: TObject);
begin
 if Not(Assigned(FormNotaPedidoCliente)) Then
      FormNotaPedidoCliente := TFormNotaPedidoCliente.Create(Application);
    FormNotaPedidoCliente.Show;
end;

procedure TFMenu.dskAlertRecibosCloseButtonClick(Sender: TObject);
begin
  if MessageDlg('Dejar de Mostrar Mensaje..???', mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      Sleep(50);
      dskAlertRecibos.Close(True);
      TimerRecibos.Enabled := False;
     end;
end;

procedure TFMenu.dskAlertRecibosMessageClick(Sender: TObject);
begin
  if Not(Assigned(FormRecibo_2)) Then
    FormRecibo_2 := TFormRecibo_2.Create(Application);
  FormRecibo_2.Show;
end;

procedure TFMenu.DskAlertTareasCloseButtonClick(Sender: TObject);
begin
 if MessageDlg('Dejar de Mostrar Mensaje..???', mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      // dskVencimientos.
      Sleep(40);
      DskAlertTareas.Close(True);
      TimerTareas.Enabled := False;
    end;

end;

procedure TFMenu.DskAlertVencimientosCloseButtonClick(Sender: TObject);
begin
  if MessageDlg('Dejar de Mostrar Mensaje..???', mtConfirmation, mbYesNo, 0, mbNo) = mrYes Then
    begin
      Sleep(50);
      DskAlertVencimientos.Close(True);
      TimerVencimientos.Enabled := False;
    end;

end;

procedure TFMenu.DskAlertVencimientosMessageClick(Sender: TObject);
begin
  if not(Assigned(FormVencimientos)) then
    FormVencimientos := TFormVencimientos.Create(Application);
  FormVencimientos.Show;

end;

procedure TFMenu.dskTareasMessageClick(Sender: TObject);
begin
  if not(Assigned(FormAdminTareas)) then
    FormAdminTareas := TFormAdminTareas.Create(Application);
  FormAdminTareas.Show;
end;

procedure TFMenu.dskVencimientosMessageClick(Sender: TObject);
  begin
    if Not(Assigned(FormVencimientos)) Then
      FormVencimientos := TFormVencimientos.Create(Application);
    FormVencimientos.Buscar.Execute;
    FormVencimientos.Show;
  end;



procedure TFMenu.lbDolar_oldClick(Sender: TObject);
  begin
    if Not(Assigned(FormMonedas)) Then
      FormMonedas := TFormMonedas.Create(Application);
    QMoneda.Close;
    QMoneda.Open;
    FormMonedas.DatoNew := QMoneda.Fields[0].AsString;
    QMoneda.Close;
    FormMonedas.Recuperar.Execute;
    FormMonedas.Show;

    QMoneda.Close;
    QMoneda.Open;
    QMoneda.First;
    lbDolar.Caption := (QMoneda.FieldByName('moneda').Value + '.: ' + FormatFloat('0.000', QMoneda.FieldByName('cotizacion').Value));
    QMoneda.Close;
  end;

procedure TFMenu.RegimenesRetencionIvaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRegimenRetencionIVA)) Then
      FormRegimenRetencionIVA := TFormRegimenRetencionIVA.Create(Application);
    FormRegimenRetencionIVA.Show;
  end;

procedure TFMenu.RegistroPikeoExecute(Sender: TObject);
begin
  if Not(Assigned(FormBorradoRegistroPikeo)) then
    FormBorradoRegistroPikeo:=TFormBorradoRegistroPikeo.create(Application);
  FormBorradoRegistroPikeo.Cliente:='******';
  FormBorradoRegistroPikeo.ShowModal;
  FreeAndNil(FormBorradoRegistroPikeo);

end;

procedure TFMenu.RegistroProduccionDiariaExecute(Sender: TObject);
begin
  if Not(Assigned(FormRegistroDiarioOP)) Then
    FormRegistroDiarioOP := TFormRegistroDiarioOP.Create(Application);
  FormRegistroDiarioOP.Show;
end;

procedure TFMenu.ControlCodigosSeriesExecute(Sender: TObject);
begin
  if Not(Assigned(FormAdministradorSeries)) Then
    FormAdministradorSeries := TFormAdministradorSeries.Create(Application);
  FormAdministradorSeries.Show;
end;

procedure TFMenu.ReasignacionPartesDiariosProdExecute(Sender: TObject);
begin
  if Not(Assigned(FormReasignacionPartesDiarios)) Then
    FormReasignacionPartesDiarios := TFormReasignacionPartesDiarios.Create
      (Application);
  FormReasignacionPartesDiarios.Show;
end;

procedure TFMenu.ReasignaCtasGastosIngresoExecute(Sender: TObject);
begin
  if Not(Assigned(FormReasignaCtasGastosIngresos)) Then
    FormReasignaCtasGastosIngresos := TFormReasignaCtasGastosIngresos.Create
      (Application);
  FormReasignaCtasGastosIngresos.Show;
end;

procedure TFMenu.AsignaComprobantesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormComprobantesUsuarios)) Then
      FormComprobantesUsuarios := TFormComprobantesUsuarios.Create(Application);
    FormComprobantesUsuarios.Show;

  end;

procedure TFMenu.AsignactaGasto_stockExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAsignacionCtaGastoStock)) Then
      FormAsignacionCtaGastoStock := TFormAsignacionCtaGastoStock.Create
        (Application);
    FormAsignacionCtaGastoStock.Show;

  end;

procedure TFMenu.AsignaLoteTCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAsignacionLoteTC)) Then
      FormAsignacionLoteTC := TFormAsignacionLoteTC.Create(Application);
    FormAsignacionLoteTC.Show;

  end;

{

  procedure TfRegForm.ProcessActionManager(Comp: TActionManager);
  var
  i: Integer;
  CompCaption: String;
  Node, ParentNode, ActionBarNode: TTreeNode;
  begin
  CompCaption:=Comp.Name;
  ParentNode:=tvComponents.Items.AddChild(NIL,CompCaption);
  ParentNode.Data:=New(PCompData);
  ParentNode.ImageIndex:=UNCHECKED;
  ParentNode.SelectedIndex:=UNCHECKED;
  TCompData(ParentNode.Data^).Name:=Comp.Name;
  TCompData(ParentNode.Data^).ClassName:=Comp.ClassName;
  TCompData(ParentNode.Data^).Caption:=CompCaption;
  TCompData(ParentNode.Data^).Parent:=TheForm.Name;
  StoredCaption:=GetLeft(LocalCompList.Values[Comp.Name]);
  if StoredCaption<>'' then
  begin
  ParentNode.ImageIndex:=CHECKED;
  ParentNode.SelectedIndex:=CHECKED;
  TCompData(ParentNode.Data^).Caption:=StoredCaption;
  CheckParent(ParentNode);
  end;
  for i:=0 to Comp.ActionCount-1 do
  begin
  CompCaption:=(Comp.Actions[i] as TCustomAction).Caption;
  Node:=tvComponents.Items.AddChild(ParentNode,CompCaption);
  Node.Data:=New(PCompData);
  Node.ImageIndex:=UNCHECKED;
  Node.SelectedIndex:=UNCHECKED;
  TCompData(Node.Data^).Name:=(Comp.Actions[i] as TCustomAction).Name;
  TCompData(Node.Data^).ClassName:=(Comp.Actions[i] as TCustomAction).ClassName;
  TCompData(Node.Data^).Caption:=CompCaption;
  TCompData(Node.Data^).Parent:=Comp.Name;
  StoredCaption:=GetLeft(LocalCompList.Values[(Comp.Actions[i] as TCustomAction).Name]);
  if StoredCaption<>'' then
  begin
  Node.ImageIndex:=CHECKED;
  Node.SelectedIndex:=CHECKED;
  TCompData(Node.Data^).Caption:=StoredCaption;
  CheckParent(Node);
  end;
  end;
  end;
}


// procedure TFMenu.AsignarAccionClick(Sender: TObject);
// var
// i:integer;
// str:string;
// nodoP:TTreeNode;
// esto era antes
// procedure GetItems(mi:TMenuItem;Nodo:TTreeNode);
// var
// i:Integer;
// n:TTreeNode;
// begin
// for i := 0 to (mi.Count - 1) do
// begin
// if ((Mi.Items[i].Enabled) and (mi.items[i].Visible) and (mi.items[i].Caption<>'-') ) then
// begin
// Str := mi.Items[i].Caption;
// Lista.Items.AddObject(Str, mi.Items[i]);
// SubItems de este
// n:=tvMenu.Items.AddChildObject(Nodo, Str, Mi.Items[i]);

// GetItems(mi.Items[i],n);
// end;
// end;
// end;
// begin
// tvMenu.Items.Clear;
// pnTreeMenu.Top       := 35;
// pnTreeMenu.Left      := 30;
// pnTreeMenu.Width     := 380;
// pnTreeMenu.Height    := 600;

// for i := 0 to (MenuPrincipal.Items.Count - 1) do
// begin
// if ((MenuPrincipal.Items[i].Enabled) and (MenuPrincipal.Items[i].Visible) and (MenuPrincipal.Items[i].Caption<>'-')) then
// begin
// Str := MenuPrincipal.Items[i].Caption;
// NodoP:=tvMenu.Items.AddObject(nil, Str, MenuPrincipal.Items[i]);
// GetItems(MenuPrincipal.Items[i],NodoP);
// end;
// end;
// pnTreeMenu.Visible:=True;
// end;

// procedure TFMenu.CargaTrewView(MyAction:TActionClients; Nod: TTreeNode);
// Var
// i: Integer;
// Nodo: TTreeNode;
// begin
// for i := 0 to MyAction.Count - 1 do
// begin
// if MyAction[i].ParentItem = ActionManager.ActionBars[0] then
// begin
// Nodo:= tvMenu.Items.AddObject(Nod, MyAction[i].DisplayName, MyAction[i].Action );
// MyAction[i].ParentItem.DisplayName ;
// end
// else
// begin
// Nodo:= tvMenu.Items.AddChildObject(Nod, MyAction[i].DisplayName,MyAction[i].Action );
// MyAction[i].ParentItem.DisplayName;
// end;
// Aca cuando creo el treeView marco todos los nodos como activos.
// TreeView1.CheckBox[Nodo]:= True;
// if i <= MyAction.Count - 1 then
// CargaTrewView(MyAction[i].Items,Nodo);

// end;
// end;

procedure TFMenu.AsiganrAcciondeManager1Click(Sender: TObject);
  begin
    // tvMenu.Items.Clear;
    // pnTreeMenu.Top       := 35;
    // pnTreeMenu.Left      := 30;
    // pnTreeMenu.Width     := 380;
    // pnTreeMenu.Height    := 600;
    //
    // CargaTrewView(ActionManager.ActionBars[9].Items, nil);
    // tvMenu.FullExpand;
    // pnTreeMenu.Visible:=True;
  end;

procedure TFMenu.AsignaRcCobradoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAsignacionCobradorRC)) Then
      FormAsignacionCobradorRC := TFormAsignacionCobradorRC.Create(Application);
    FormAsignacionCobradorRC.Show;
  end;

procedure TFMenu.TasaRetGananciaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormTasaRetGanancia)) Then
      FormTasaRetGanancia := TFormTasaRetGanancia.Create(Application);
    FormTasaRetGanancia.Show;
  end;

procedure TFMenu.ListadoRetGanExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoRetencionesGanancias)) Then
      FormListadoRetencionesGanancias := TFormListadoRetencionesGanancias.Create
        (Application);
    FormListadoRetencionesGanancias.Show;
  end;

procedure TFMenu.ListadoRetIvaEfectuadasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRetIva_EfectuadasLiq)) Then
      FormRetIva_EfectuadasLiq := TFormRetIva_EfectuadasLiq.Create(Application);
    FormRetIva_EfectuadasLiq.Show;
  end;

procedure TFMenu.AnulacionOPagoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAnulacionOPago)) Then
      FormAnulacionOPago := TFormAnulacionOPago.Create(Application);
    FormAnulacionOPago.Show;
  end;

procedure TFMenu.MarcarCheReemplazadoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormProceso)) Then
      FormProceso := TFormProceso.Create(Application);
    FormProceso.Mensaje := 'marcando cheques reemplazados...';
    FormProceso.Show;
    DMStoreProcedure.spMarcarCheRemplzados.Close;
    DMStoreProcedure.spMarcarCheRemplzados.ExecProc;
    DMStoreProcedure.spMarcarCheRemplzados.Close;
    FormProceso.Close;
  end;

procedure TFMenu.ListadoTransBcoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoTransfBanco)) Then
      FormListadoTransfBanco := TFormListadoTransfBanco.Create(Application);
    FormListadoTransfBanco.Show;
  end;

procedure TFMenu.ListadoGastosBcoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoDebitosBco)) Then
      FormListadoDebitosBco := TFormListadoDebitosBco.Create(Application);
    FormListadoDebitosBco.Show;

  end;

procedure TFMenu.ListadoGastosObraExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoGastosObra)) Then
    FormListadoGastosObra := TFormListadoGastosObra.Create(Application);
  FormListadoGastosObra.Show;

end;

procedure TFMenu.ListadoDebitosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoDebitos)) Then
      FormListadoDebitos := TFormListadoDebitos.Create(Application);
    FormListadoDebitos.Show;

  end;

procedure TFMenu.AnuacionReciboExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAnulacionRecibos)) Then
      FormAnulacionRecibos := TFormAnulacionRecibos.Create(Application);
    FormAnulacionRecibos.Show;
  end;

procedure TFMenu.ListadoArticulosenSTExecute(Sender: TObject);
  begin
    if Not(Assigned(FormArticulos_STExterno)) Then
      FormArticulos_STExterno := TFormArticulos_STExterno.Create(Application);
    FormArticulos_STExterno.Show;
  end;

procedure TFMenu.ListadoArticulosProduccionExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoArticulosProduccion)) Then
    FormListadoArticulosProduccion := TFormListadoArticulosProduccion.Create(Application);
  FormListadoArticulosProduccion.Show;
end;

procedure TFMenu.ListadoArticulosVendidosExecute(Sender: TObject);
begin
  if Not(Assigned(FormDetalleArticulosVendidos)) Then
    FormDetalleArticulosVendidos := TFormDetalleArticulosVendidos.Create(Application);
  FormDetalleArticulosVendidos.Show;
end;

procedure TFMenu.ListadoAxumExecute(Sender: TObject);
begin
  if Not(Assigned(FormAxum)) Then
    FormAxum := TFormAxum.Create(Application);
  FormAxum.Show;
end;

procedure TFMenu.ListadoBorradorOCExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoBorradoOC)) Then
    FormListadoBorradoOC := TFormListadoBorradoOC.Create(Application);
  FormListadoBorradoOC.Show;
end;

procedure TFMenu.ListadoValoresEnOrdenPago_RecibosExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoValoresOPago)) Then
    FormListadoValoresOPago := TFormListadoValoresOPago.Create(Application);
  FormListadoValoresOPago.Show;
end;

procedure TFMenu.ListadoVentaCabDetExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoVentasCabDet)) Then
    FormListadoVentasCabDet := TFormListadoVentasCabDet.Create(Application);
  FormListadoVentasCabDet.Show;
end;

procedure TFMenu.ListadoVtaClienteSucAsigandaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoVta_SucursalCliente)) Then
      FormListadoVta_SucursalCliente := TFormListadoVta_SucursalCliente.Create
        (Application);
    FormListadoVta_SucursalCliente.Show;
  end;

procedure TFMenu.TasaRetIIBBExecute(Sender: TObject);
  begin
    if Not(Assigned(FormTasaRetIIBB)) Then
      FormTasaRetIIBB := TFormTasaRetIIBB.Create(Application);
    FormTasaRetIIBB.Show;
  end;

procedure TFMenu.AjustesSeriesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAjustesSeries)) Then
      FormAjustesSeries := TFormAjustesSeries.Create(Application);
    FormAjustesSeries.Show;
  end;

procedure TFMenu.ListadoRetencioIB_pagosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoRetencionesOPago_IB)) Then
      FormListadoRetencionesOPago_IB := TFormListadoRetencionesOPago_IB.Create
        (Application);
    FormListadoRetencionesOPago_IB.Show;
  end;

procedure TFMenu.ListadoMovTCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoMovTarjetasCreditoRecibidas)) Then
      FormListadoMovTarjetasCreditoRecibidas := TFormListadoMovTarjetasCreditoRecibidas.Create(Application);
    FormListadoMovTarjetasCreditoRecibidas.Show;
  end;

procedure TFMenu.ListadoNVPendientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoNVPendientes)) Then
      FormListadoNVPendientes := TFormListadoNVPendientes.Create(Application);
    FormListadoNVPendientes.Show;
  end;

procedure TFMenu.ListadoPercep_IB_FcVtaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoPercIB_FcVta)) Then
      FormListadoPercIB_FcVta := TFormListadoPercIB_FcVta.Create(Application);
    FormListadoPercIB_FcVta.Show;
  end;

procedure TFMenu.ListadoTxStockAnuladasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormTransfStockAnuladas)) Then
      FormTransfStockAnuladas := TFormTransfStockAnuladas.Create(Application);
    FormTransfStockAnuladas.Show;
  end;

procedure TFMenu.ListadoTxdeCajaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoTxCaja)) Then
      FormListadoTxCaja := TFormListadoTxCaja.Create(Application);
    FormListadoTxCaja.Show;
  end;

procedure TFMenu.ListadoTxStockPendientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoTxStockPendientes)) Then
      FormListadoTxStockPendientes := TFormListadoTxStockPendientes.Create
        (Application);
    FormListadoTxStockPendientes.Show;
  end;

procedure TFMenu.ListadoFacVencidaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoFacVencidas)) Then
      FormListadoFacVencidas := TFormListadoFacVencidas.Create(Application);
    FormListadoFacVencidas.Show;
  end;

procedure TFMenu.ListadoFcCompExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListCpbteCompra)) Then
      FormListCpbteCompra := TFormListCpbteCompra.Create(Application);
    FormListCpbteCompra.Show;
  end;

procedure TFMenu.ListadoFcCompraPorProveedorExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoFcCompraPorProveedor)) Then
      FormListadoFcCompraPorProveedor := TFormListadoFcCompraPorProveedor.Create
        (Application);
    FormListadoFcCompraPorProveedor.Show;
  end;

procedure TFMenu.ListadoFcVtaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoCpbteVta)) Then
      FormListadoCpbteVta := TFormListadoCpbteVta.Create(Application);
    FormListadoCpbteVta.Show;

  end;

procedure TFMenu.AnulacionAdelantoSueldoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAnulacionAdelantos)) Then
      FormAnulacionAdelantos := TFormAnulacionAdelantos.Create(Application);
    FormAnulacionAdelantos.Show;
  end;

procedure TFMenu.AnulacionDepBancoExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAnulacionDepositoBancario)) Then
      FormAnulacionDepositoBancario := TFormAnulacionDepositoBancario.Create
        (Application);
    FormAnulacionDepositoBancario.Show;

  end;

procedure TFMenu.ListadoOperacionesClientesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormListadoOpercionesCliente)) Then
      FormListadoOpercionesCliente := TFormListadoOpercionesCliente.Create
        (Application);
    FormListadoOpercionesCliente.Show;
  end;

procedure TFMenu.ControlIntegridadCtaCteVtaExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlIntegridad)) Then
      FormControlIntegridad := TFormControlIntegridad.Create(Application);
    FormControlIntegridad.Show;

  end;

procedure TFMenu.TarjetaCreditoCompraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormTarjetaCreditoCompra)) Then
      FormTarjetaCreditoCompra := TFormTarjetaCreditoCompra.Create(Application);
    FormTarjetaCreditoCompra.Show;

  end;

procedure TFMenu.ControlIntegridadCtaCteCompraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormControlIntegridadCompra)) Then
      FormControlIntegridadCompra := TFormControlIntegridadCompra.Create
        (Application);
    FormControlIntegridadCompra.Show;
  end;

procedure TFMenu.ConsolidacionAcopiosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormConsolidacionAcopioRemitos)) Then
      FormConsolidacionAcopioRemitos := TFormConsolidacionAcopioRemitos.Create
        (Application);
    FormConsolidacionAcopioRemitos.Show;
  end;


procedure TFMenu.ConsultaCertificadoExecute(Sender: TObject);
var
  Certificado, Clave: String;
  ClaseCertificado  : ICertificado;
begin
  ArchivoIni  := TIniFile.Create(ExtractFilePath(ParamStr(0)) +  DMMain_FD.NombreIni);
  Clave       := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
  Certificado := ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
  ArchivoIni.Free;

  ClaseCertificado := coCertificado.Create;
  if ClaseCertificado.CargarInformacionCertificado(Certificado, Clave) Then
    ClaseCertificado.MostrarInformacionCertificado;
    // FreeAndNil(ClaseCertificado);
end;

procedure TFMenu.ConsultaCuitExecute(Sender: TObject);
  begin
    if Not(Assigned(FormConsultaCuit)) Then
      FormConsultaCuit := TFormConsultaCuit.Create(Application);
    FormConsultaCuit.Show;

  end;

procedure TFMenu.ConsultaPrecioExecute(Sender: TObject);
begin
  if Not(Assigned(FormConsultaPrecio)) Then
    FormConsultaPrecio := TFormConsultaPrecio.Create(Application);
  FormConsultaPrecio.Show;
end;

procedure TFMenu.ObrasExecute(Sender: TObject);
  begin
    if Not(Assigned(FormObras)) Then
      FormObras := TFormObras.Create(Application);
    FormObras.Show;
  end;

procedure TFMenu.Obra_TipoExecute(Sender: TObject);
begin
  if Not(Assigned(FormTipoObra)) Then
    FormTipoObra := TFormTipoObra.Create(Application);
  FormTipoObra.Show;
end;

procedure TFMenu.OPagosExcluidasGananciaExecute(Sender: TObject);
begin
  if Not(Assigned(FormOPagoExcluidasGanancia)) Then
    FormOPagoExcluidasGanancia := TFormOPagoExcluidasGanancia.Create
      (Application);
  FormOPagoExcluidasGanancia.Show;
end;

procedure TFMenu.RemitosObraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormRemitoObra)) Then
      FormRemitoObra := TFormRemitoObra.Create(Application);
    FormRemitoObra.Show;
  end;

procedure TFMenu.PacientesExecute(Sender: TObject);
begin
   if not(Assigned(FormPacientes)) then
    FormPacientes:=TFormPacientes.Create(Application);
  formPacientes.Show;
end;

procedure TFMenu.PadronProveedoresRentasExecute(Sender: TObject);
begin
  if Not(Assigned(FormPadronEmbargos)) Then
    FormPadronEmbargos := TFormPadronEmbargos.Create(Application);
  FormPadronEmbargos.Show;
end;


procedure TFMenu.PagosAbonosExecute(Sender: TObject);
begin
  if Not(Assigned(FormReciboAbonos)) Then
    FormReciboAbonos := TFormReciboAbonos.Create(Application);
  FormReciboAbonos.Show;
 end;

procedure TFMenu.PaisesExecute(Sender: TObject);
begin
  if Not(Assigned(FormPaises)) Then
    FormPaises := TFormPaises.Create(Application);
  FormPaises.Show;
end;

procedure TFMenu.PanelAcopiosExecute(Sender: TObject);
begin
  if Not(Assigned(FormPizarronAcopios)) Then
    FormPizarronAcopios := TFormPizarronAcopios.Create(Application);
  FormPizarronAcopios.Show;
end;

procedure TFMenu.PanelControlOPExecute(Sender: TObject);
begin
  if Not(Assigned(FormControlOP)) Then
    FormControlOP := TFormControlOP.Create(Application);
  FormControlOP.Show;
end;

procedure TFMenu.PanelImportacionAjustesStockExecute(Sender: TObject);
begin
  if Not(Assigned(FormPanelImportacionAjustesStock)) Then
    FormPanelImportacionAjustesStock := TFormPanelImportacionAjustesStock.Create(Application);
  FormPanelImportacionAjustesStock.Show;
end;

procedure TFMenu.PanelImportacionComprasExecute(Sender: TObject);
begin
  if Not(Assigned(FormPanelImportacionComp)) Then
    FormPanelImportacionComp := TFormPanelImportacionComp.Create(Application);
  FormPanelImportacionComp.Show;
end;

procedure TFMenu.PanelImportacionVtasExecute(Sender: TObject);
begin
  if Not(Assigned(FormPanelImportacionVta)) Then
    FormPanelImportacionVta := TFormPanelImportacionVta.Create(Application);
  FormPanelImportacionVta.Show;
end;

procedure TFMenu.PanelOTrabajoExecute(Sender: TObject);
begin
  if Not(Assigned(FormPizarronOT)) Then
    FormPizarronOT := TFormPizarronOT.Create(Application);
  FormPizarronOT.Show;
end;

procedure TFMenu.ParteDiarioExecute(Sender: TObject);
begin
  if Not(Assigned(FormProducc_Diario)) Then
    FormProducc_Diario := TFormProducc_Diario.Create(Application);
  FormProducc_Diario.Show;
end;

procedure TFMenu.DetalleMovimientoStockDiarioExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoMovStockDiario)) Then
    FormListadoMovStockDiario := TFormListadoMovStockDiario.Create(Application);
  FormListadoMovStockDiario.Show;
end;

procedure TFMenu.DetalleObrasExecute(Sender: TObject);
begin
  if Not(Assigned(FormDetallesObras)) Then
     FormDetallesObras := TFormDetallesObras.Create(Application);
  FormDetallesObras.Show;
end;

procedure TFMenu.ListaPreciosProveedoresExecute(Sender: TObject);
begin
  if Not(Assigned(FormListaPreciosProvee)) Then
    FormListaPreciosProvee := TFormListaPreciosProvee.Create(Application);
  FormListaPreciosProvee.Show;
end;

procedure TFMenu.ImagenCuadriculaExecute(Sender: TObject);
begin
  JvBackground.Image.Mode := bmTile;
end;

procedure TFMenu.ImagenExpandidaExecute(Sender: TObject);
  begin
    JvBackground.Image.Mode := bmTop;
  end;

procedure TFMenu.ImagenCleanExecute(Sender: TObject);
  var
    path: String;
    ArchivoIni: TIniFile;
  begin
    path := ExtractFilePath(ParamStr(0));
    JvBackground.Image.Picture.LoadFromFile
      (path + '\Backgrnd\MasterFinazas.jpg');
    ArchivoIni := TIniFile.Create(path + '\' + DMMain_FD.NombreIni);
    ArchivoIni.WriteString('Imagen', 'nombre', '');
    ArchivoIni.Free;

  end;

procedure TFMenu.ImagenStrechaExecute(Sender: TObject);
  begin
    JvBackground.Image.Mode := bmStretch;
  end;

procedure TFMenu.ImpoConversionFcVta_CompExecute(Sender: TObject);
begin
  if Not(Assigned(FormConversorFcVta_a_Compra)) Then
    FormConversorFcVta_a_Compra := TFormConversorFcVta_a_Compra.Create(Application);
  FormConversorFcVta_a_Compra.Show;
end;

procedure TFMenu.ImportacionComprasGeneralExecute(Sender: TObject);
begin
  if Not(Assigned(FormImportacionCompraGral)) Then
    FormImportacionCompraGral := TFormImportacionCompraGral.Create(Application);
  FormImportacionCompraGral.Show;
end;

procedure TFMenu.ImportacionExistenciasExecute(Sender: TObject);
begin
  if Not(Assigned(FormImportacionExistencias)) Then
    FormImportacionExistencias := TFormImportacionExistencias.Create(Application);
  FormImportacionExistencias.Show;
end;

procedure TFMenu.ImportacionPersonalExecute(Sender: TObject);
begin
  if Not(Assigned(FormImportarEmpleadosXLS)) Then
    FormImportarEmpleadosXLS := TFormImportarEmpleadosXLS.Create(Application);
  FormImportarEmpleadosXLS.Show;
end;

procedure TFMenu.ImportacionVtaGeneralExecute(Sender: TObject);
begin
  if Not(Assigned(FormImportacionFacturasVtaGral)) Then
    FormImportacionFacturasVtaGral := TFormImportacionFacturasVtaGral.Create(Application);
  FormImportacionFacturasVtaGral.Show;
end;

procedure TFMenu.ImportarClientesExcelExecute(Sender: TObject);
begin
  if Not(Assigned(FormImportarClientesExcel)) Then
    FormImportarClientesExcel := TFormImportarClientesExcel.Create(Application);
  FormImportarClientesExcel.Show;
end;

procedure TFMenu.ConsultaPreciosProveedoresExecute(Sender: TObject);
begin
  if Not(Assigned(FormConsultaArticuloProveedores)) Then
    FormConsultaArticuloProveedores := TFormConsultaArticuloProveedores.Create(Application);
  FormConsultaArticuloProveedores.Show;
end;

procedure TFMenu.TasaRet_PercExecute(Sender: TObject);
begin
  if Not(Assigned(FormTasasRet_Perc)) Then
    FormTasasRet_Perc := TFormTasasRet_Perc.Create(Application);
  FormTasasRet_Perc.Show;
end;



procedure TFMenu.tbpMenuGeneralExpand(Sender: TObject);
begin
  // tbpMenuGeneral.Update; // esto ocurre cuando dejo clavada la expansion del componente
  // tbpMenuGeneral.BeginUpdate;
  // tbpMenuGeneral.EndUpdate;
  // ShowMessage('expand');
end;

procedure TFMenu.tbpMenuGeneralTabClick(Sender: TObject; Page: Integer);
begin
  if Not(tbpMenuGeneral.Expanded) Then //si esta expandido
    begin
    // tbpMenuGeneral.Expand;
    end;
end;

procedure TFMenu.TablaDePreciosExecute(Sender: TObject);
begin
  if Not(Assigned(FormListaPreciosTabla)) Then
    FormListaPreciosTabla := TFormListaPreciosTabla.Create(Application);
  FormListaPreciosTabla.Show;
end;

procedure TFMenu.ABMTasasRet_Perc_IIBBExecute(Sender: TObject);
begin
  if Not(Assigned(FormTasaPercep_Ret)) Then
    FormTasaPercep_Ret := TFormTasaPercep_Ret.Create(Application);
  FormTasaPercep_Ret.Show;
end;

procedure TFMenu.ABMVencimientosExecute(Sender: TObject);
begin
  if Not(Assigned(FormABMVencimientos)) Then
    FormABMVencimientos := TFormABMVencimientos.Create(Application);
  FormABMVencimientos.Show;
end;

procedure TFMenu.AbonadoGrillaExecute(Sender: TObject);
begin
  if Not(Assigned(FormAbonosGrilla)) Then
    FormAbonosGrilla := TFormAbonosGrilla.Create(Application);
  FormAbonosGrilla.Show;
end;

procedure TFMenu.AbonadoGrupoExecute(Sender: TObject);
begin
  if Not(Assigned(FormAbonosGrupos)) Then
    FormAbonosGrupos := TFormAbonosGrupos.Create(Application);
  FormAbonosGrupos.Show;
end;

procedure TFMenu.AbonoCuponExecute(Sender: TObject);
begin
  if Not(Assigned(FormAbonosCupon)) Then
    FormAbonosCupon := TFormAbonosCupon.Create(Application);
  FormAbonosCupon.Show;
end;

procedure TFMenu.AbonosGeneraCuopnesExecute(Sender: TObject);
begin
  if Not(Assigned(FormGeneradorCupones)) Then
    FormGeneradorCupones := TFormGeneradorCupones.Create(Application);
  FormGeneradorCupones.Show;
end;

procedure TFMenu.ABPreciosSombraExecute(Sender: TObject);
begin
  if Not(Assigned(FormABPrecioSombra)) Then
    FormABPrecioSombra := TFormABPrecioSombra.Create(Application);
  FormABPrecioSombra.Show;
end;

procedure TFMenu.RMAEnvioExecute(Sender: TObject);
begin
  if Not(Assigned(FormRMAEnvios)) Then
    FormRMAEnvios := TFormRMAEnvios.Create(Application);
  FormRMAEnvios.Show;
end;

procedure TFMenu.ImportarStockExcelExecute(Sender: TObject);
begin
  if Not(Assigned(FormImportarStockExcel)) Then
    FormImportarStockExcel := TFormImportarStockExcel.Create(Application);
  FormImportarStockExcel.Show;
end;

procedure TFMenu.EtiquetasExecute(Sender: TObject);
begin
  if Not(Assigned(FormEtiquetas)) Then
    FormEtiquetas := TFormEtiquetas.Create(Application);
  FormEtiquetas.Show;
end;

procedure TFMenu.ListadoRMAExecute(Sender: TObject);
begin
  if Not(Assigned(FormListadoRMA)) Then
    FormListadoRMA := TFormListadoRMA.Create(Application);
  FormListadoRMA.Show;
end;

procedure TFMenu.RMARecepExecute(Sender: TObject);
begin
  ShowMessage('No Habilitado... ');
end;

procedure TFMenu.RtosAFiscalExecute(Sender: TObject);
begin
  if Not(Assigned(FormRtosAFiscal)) Then
    FormRtosAFiscal := TFormRtosAFiscal.Create(Application);
  FormRtosAFiscal.Show;
end;

procedure TFMenu.RtosPendientesExecute(Sender: TObject);
begin
  if Not(Assigned(FormRtoPendientes)) Then
    FormRtoPendientes := TFormRtoPendientes.Create(Application);
  FormRtoPendientes.Show;
end;

procedure TFMenu.TestGoogleExecute(Sender: TObject);
begin
  if Not(Assigned(FormTestGoogleMap)) Then
    FormTestGoogleMap := TFormTestGoogleMap.Create(Application);
  FormTestGoogleMap.Show;
end;

procedure TFMenu.TicketFacturaExecute(Sender: TObject);
begin
  if Not(Assigned(FormTicketVta)) Then
    FormTicketVta := TFormTicketVta.Create(Application);
  FormTicketVta.Show;
end;

procedure TFMenu.ThreadMinimoFin(Sender: TObject);
begin
  if sbEstado<>nil then
    begin
      sbEstado.Panels[3].Text       := '..';
      if DskAlertMinimo.MessageText<>'' then
        DskAlertMinimo.Execute();
      TimerMinimo.Enabled         := True;
    end;
end;

procedure TFMenu.TimerMinimoTimer(Sender: TObject);
var ThMinimo: TThread;
begin
  if DMMain_FD.GetStockMinimo then
    begin
      sbEstado.Panels[3].Text       := 'Revisando Minimos';
      TimerMinimo.Enabled:=False;
      ThMinimo := TThread.CreateAnonymousThread(
      procedure
       var
          QConection: TFDConnection;
          MsgTxt    : String;
          Query     : TFDQuery;
        begin
          if (QConection=nil) then
            begin
              QConection := TFDConnection.Create(Application);
              with QConection do
                begin
                  ConnectionName                         := 'Minimo_2';
                  QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
                  QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
                  QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
                  QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
                  QConection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
                  LoginPrompt                            := False;
                  QConection.Connected                   := True;
                end;

              Query:=TFDQuery.Create(nil);
              Query.ConnectionName:=QConection.ConnectionName;
              Query.SQL.Text:='select s.codigo_stk, s.detalle_stk, d.fisico from depositostk d '+
                              '  left join stock s on s.codigo_stk=d.codigo_stk '+
                              '  left join depositos dep on dep.id=d.codigo_deposito '+
                              'where d.aviso_minimostock=''S'' and d.fisico <= d.minimo ';
              Query.Open;

              DskAlertMinimo.MessageText:='';
              MsgTxt                    :='';
              if (Query.RecordCount > 0) Then
                begin
                  Query.First;
                  while Not(Query.Eof) do
                    begin
                      MsgTxt:= MsgTxt + Query.FieldByName('CODIGO_STK').AsString + '-' +
                               Copy(Query.FieldByName('DETALLE_STK').AsString+'                                    ',1,45) + #9+
                               ' .... '+
                               AnsiRightStr('      '+FormatFloat(',0.00', Query.FieldByName('FISICO').AsFloat),10)+#13;
                      Query.Next;
                    end;
                  DskAlertMinimo.MessageText:=MsgTxt;
                end;

              DskAlertMinimo.Location.Height:= 30 * Query.RecordCount;
              DskAlertMinimo.Location.Width := 600;
              Query.Close;
              QConection.Close;
              FreeAndNil(Query);
              FreeAndNil(QConection);
              sleep(4000);
            end;
        end);
      ThMinimo.OnTerminate:=ThreadMinimoFin;
      ThMinimo.Start;
    end;

end;

procedure TFMenu.ThreadElectronicaFin(Sender: TObject);
begin
  if sbEstado<>nil then
    begin
      sbEstado.Panels[3].Text       := '..';
      if DskAlertElectronica.MessageText<>'' then
        DskAlertElectronica.Execute();
      TimerFcElectronica.Enabled         := True;
    end;
end;

procedure TFMenu.TimerFcElectronicaTimer(Sender: TObject);
var ThElectronica: TThread;
begin
  sbEstado.Panels[3].Text       := 'Buscando Fc.Sin Fiscalizar';
  TimerFcElectronica.Enabled    := False;
  ThElectronica                 := TThread.CreateAnonymousThread(
  procedure
    var
      QConection : TFDConnection;
      Query      : TFDQuery;
    begin
      try
        if QConection = nil then
          begin
            QConection := TFDConnection.Create(NIL);
            with QConection do
              begin
                ConnectionName              := 'Electronica';
                Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
                Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
                Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
                Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
                Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
                LoginPrompt                 := False;
                Connected                   := True;
              end;
          end;

        Query                := TFDQuery.Create(nil);
        Query.ConnectionName := QConection.ConnectionName;
        Query.SQL.Text       := 'select f.id_fc,f.sucursal,s.detalle,f.razonsocial from fcvtacab f '+
                                '  left join sucursal s on s.codigo=f.sucursal'+
                                ' where f.factura_electronica=''S'' and (f.cae='''' or f.cae=''0'') and '+
                                '       (f.cae_vencimiento is null) and f.anulado<>''S'' ';

        Query.Close;
        Query.Open;
        DskAlertElectronica.MessageText:='';
        if (Query.RecordCount > 0) and (DMMain_FD.GetAvisoSinCAE) Then
          DskAlertElectronica.MessageText:='Facturas Pendientes de Fiscalizacion......';

      finally
        Query.Close;
        QConection.Close;
        FreeAndNil(Query);
        FreeAndNil(QConection);;
        Sleep(3000);
      end;
    end);
    ThElectronica.OnTerminate:=ThreadElectronicaFin;
    ThElectronica.Start;
end;



procedure TFMenu.ThreadPedidoMovilFin(Sender: TObject);
begin
  sbEstado.Panels[3].Text       := '..';
  if dskAlertPedidoMovil.MessageText<>'' Then
    dskAlertPedidoMovil.Execute;
  if (DMMain_FD.ImprimePedidosApp) Then
    begin
      if (dskAlertPedidoMovil.Tag>-1) then
        begin
          if not(Assigned(FormLectorPedidosApp)) Then
           FormLectorPedidosApp := TFormLectorPedidosApp.Create(Application);
          FormLectorPedidosApp.FormStyle  := fsNormal;
          FormLectorPedidosApp.Visible    := False;
          FormLectorPedidosApp.rgModos.ItemIndex   :=1;
          FormLectorPedidosApp.rgImpresos.ItemIndex:=1;
          formLectorPedidosApp.Buscar.Execute;
          if Not(FormLectorPedidosApp.QCabecera.IsEmpty) Then
            begin
              formlectorPedidosApp.frReport.PrintOptions.ShowDialog:=False;
              FormLectorPedidosApp.ImprimirPedido.Execute;
            end;
          FormLectorPedidosApp.Close;
        end;
    end
  else
    if (dskAlertPedidoMovil.Tag>-1) and not(Assigned(FormLectorPedidosApp)) then
      begin
        if not(Assigned(FormLectorPedidosApp)) Then
          FormLectorPedidosApp := TFormLectorPedidosApp.Create(Application);
        FormLectorPedidosApp.rgModos.ItemIndex:=1;
        formLectorPedidosApp.Buscar.Execute;
      end;
  TimerPedidosMovil.Enabled   := True;
end;


procedure TFMenu.TimerPedidosMovilTimer(Sender: TObject);
 var ThPedidoMovil: TThread;
begin
  sbEstado.Panels[3].Text       := 'Revisando Pedidos Moviles';
  TimerPedidosMovil.Enabled     := False;
  ThPedidoMovil                 := TThread.CreateAnonymousThread(
    procedure
     VAR
      QConection: TFDConnection;
      Query     : TFDQuery;
      SQLText   : string;
      r         : Integer;
    begin

      QConection := TFDConnection.Create(NIL);
      with QConection do
        begin
          ConnectionName                         := 'PedidosMovil';
          QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
          QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
          QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
          QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
          QConection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
          LoginPrompt          := False;
          QConection.Connected := True;
        end;
      SQLText:='select p.* from borrador_ped_movil_cab p where p.estado=''N'' and p.impreso=''N'' order by p.fecha,p.cliente ';
      Query                := TFDQuery.Create(nil);
      Query.ConnectionName := QConection.ConnectionName;
      Query.SQL.Text       := SQLText;
      Query.Close;
      Query.Open;
      Query.First;
      dskAlertPedidoMovil.MessageText:='';
      dskAlertPedidoMovil.HeaderText :='';
      dskAlertPedidoMovil.HeaderText :='Pedidos desde Pedido Moviles ....';
      dskAlertPedidoMovil.Tag        :=-1;

      if Query.RecordCount>0 then
        begin
          dskAlertPedidoMovil.MessageText:= 'Pedidos Moviles nuevos..';
          dskAlertPedidoMovil.Tag        := Query.RecordCount;//<//('id').Value;
        end;

      Query.Close;
      QConection.Close;
      FreeAndNil(Query);
      FreeAndNil(QConection);;
      Sleep(2000);
    end);
    ThPedidoMovil.OnTerminate:= ThreadPedidoMovilFin;
    ThPedidoMovil.Start;
end;


procedure TFMenu.ThreadFin(Sender: TObject);
begin
  if sgPedidos.RowCount<=1 then
    pnPedidos.Visible:=False;
  if sbEstado<>nil then
    begin
      sbEstado.Panels[3].Text       := '..';
      if (dskAlertPedido.MessageText<>'') and (sgPedidos.RowCount>1) then
        begin
          dskAlertPedido.Execute();
          if DMMain_FD.MostrarPedidos then
            begin
              pnPedidos.Visible:=True;
              pnPedidos.Collaps:=False;
            end
          else
            begin
              pnPedidos.Visible:=False;
              pnPedidos.Collaps:=False;
            end
        end;
      TimerPedido.Enabled           := True;
    end;
end;

procedure TFMenu.TimerPedidoTimer(Sender: TObject);
 var ThPedido: TThread;
begin
  sbEstado.Panels[3].Text       := 'Revisando Pedidos DX';
  TimerPedido.Enabled           := False;

  ThPedido    :=TThread.CreateAnonymousThread(
    procedure
     VAR
      QConection: TFDConnection;
      Query     : TFDQuery;
      SQLText   : string;
      r         : Integer;
    begin
      QConection := TFDConnection.Create(NIL);
      with QConection do
        begin
          ConnectionName                         := 'PlantillaPedidos';
          QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
          QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
          QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
          QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
          QConection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
          LoginPrompt          := False;
          QConection.Connected := True;
        end;
      SQLText:='select p.fecha,p.id,p.cliente,coalesce(c.nombre,''Sin Nombre'') from plantilla_pedido_cab p '+
               'left join clientes c on c.codigo = p.cliente where p.facturado =''N'' order by p.fecha desc ';
      Query                := TFDQuery.Create(nil);
      Query.ConnectionName := QConection.ConnectionName;
      Query.SQL.Text       := SQLText;
      Query.Close;
      Query.Open;
      dskAlertPedido.MessageText:='';
      dskAlertPedido.HeaderText :='';
      dskAlertPedido.HeaderText :='Pedidos desde Notas de Pedido (DX) ....';
      r:=0;

      sgPedidos.ClearAll;
      sgPedidos.RowCount := Query.RecordCount;
      if Query.RecordCount > 0 then
        begin
          while not(Query.Eof) do
            begin
              sgPedidos.Cells[0,r]:=Query.Fields[0].AsString;
              sgPedidos.Cells[1,r]:=Query.Fields[3].AsString;
              sgPedidos.Cells[2,r]:=Query.Fields[1].AsString;

              Query.Next;
              Inc(r);
            end;
          dskAlertPedido.MessageText:='Pedido DX Nuevos.... ';
        end;
      Query.Close;
      QConection.Close;
      FreeAndNil(Query);
      FreeAndNil(QConection);;
      Sleep(2000);
    end);
  ThPedido.OnTerminate:= ThreadFin;
  ThPedido.Start;
end;

procedure TFMenu.ThreadPedidoTxFin(Sender: TObject);
begin
  if sbEstado<>nil then
    begin
      sbEstado.Panels[3].Text  := '..';
      if dskAlertPedidos_Tx.MessageText<>'' then
        dskAlertPedidos_Tx.Execute();
      TimerPedido_Tx.Enabled           := True;
    end;
end;


procedure TFMenu.TimerPedido_TxTimer(Sender: TObject);
 var ThPedidoTx: TThread;
begin
  TimerPedido_Tx.Enabled   := False;
  sbEstado.Panels[3].Text  := 'Revisando Pedido';
  ThPedidoTx               := TThread.CreateAnonymousThread(
  procedure
    VAR
      QConection: TFDConnection;
      Query:TFDQuery;
    begin

      QConection := TFDConnection.Create(NIL);
      with QConection do
        begin
          ConnectionName                         := 'PedidosSuc';
          QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
          QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
          QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
          QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
          QConection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
          LoginPrompt          := False;
          QConection.Connected := True;
        end;

      Query                := TFDQuery.Create(nil);
      Query.ConnectionName := QConection.ConnectionName;
      Query.SQL.Text:='select Count(*) from notapedidocab n where n.pedido = ''N'' ';// and n.a_SUCURSAL = '+(sucursal);
      Query.Close;
      Query.Open;
      dskAlertPedidos_Tx.MessageText:='';
      if Query.Fields[0].AsInteger > 0 then
        dskAlertPedidos_Tx.MessageText:='Hay '+ Query.Fields[0].AsString+' Notas de pedidos Nuevas...';
      Query.Close;
      QConection.Close;
      FreeAndNil(Query);
      FreeAndNil(QConection);
      Sleep(2000);
    end);
  ThPedidoTx.OnTerminate:=ThreadPedidoTxFin;
  ThPedidoTx.Start;
end;
////////////////// Control de Presupuestos al Cobro ///////////////////////
procedure TFMenu.ThreadFinPresupuesto(Sender: TObject);
begin
  if MuestraPresupuestos then
    begin
      iF Not(Assigned(FormPrespuestoAlCobro)) Then
        FormPrespuestoAlCobro:=TFormPrespuestoAlCobro.Create(Application);
      FormPrespuestoAlCobro.show;
    end;
  if sbEstado<>nil then
    sbEstado.Panels[3].Text          := '..';
  TimerPresupuestoAlCobro.Enabled  := True;
end;

procedure TFMenu.TimerPresupuestoAlCobroTimer(Sender: TObject);
var ThPresupuestos: TThread;
 begin
  MuestraPresupuestos             := False;
  sbEstado.Panels[3].Text         := 'Revisando Presupuestos';
  TimerPresupuestoAlCobro.Enabled := False;

  ThPresupuestos                  := TThread.CreateAnonymousThread(
  procedure
     VAR
      QConection: TFDConnection;
      Query     : TFDQuery;
      SQLText   : string;
    begin
      if QConection<>nil then
        FreeAndNil(QConection);
      QConection := TFDConnection.Create(NIL);
      with QConection do
        begin
          ConnectionName                         := 'Presupuestos';
          QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
          QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
          QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
          QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
          QConection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
          LoginPrompt          := False;
          QConection.Connected := True;
        end;
      Query                := TFDQuery.Create(nil);
      Query.ConnectionName := QConection.ConnectionName;
      Query.SQL.Text       := 'select count(p.id_pr) from prescab p where p.a_cobrar=''S'' ';;
      Query.Close;
      Query.Open;
      MuestraPresupuestos:= Query.Fields[0].AsInteger>0;

      Query.Close;
      QConection.Close;
      FreeAndNil(Query);
      FreeAndNil(QConection);;
      Sleep(3000);
    end);
  ThPresupuestos.OnTerminate:= ThreadFinPresupuesto;
  ThPresupuestos.Start;
end;
///////////fin de Prespueustos al cobro ////////////////////////////////////////////////////

procedure TFMenu.ThreadCobranzaFin(Sender: TObject);
begin
  if (sbEstado<>nil) and (Trim(dskAlertRecibos.MessageText)<>'')  then
    begin
      sbEstado.Panels[3].Text  := '..';
      dskAlertRecibos.Execute;
      TimerRecibos.Enabled     := True;
    end;
end;


procedure TFMenu.TimerRecibosTimer(Sender: TObject);
 var ThCobranza: TThread;
Var Aux:string;
begin
  sbEstado.Panels[3].Text       := 'Revisando Cobranza';
  TimerRecibos.Enabled          := False;
  ThCobranza    :=TThread.CreateAnonymousThread(
    procedure
     VAR
      QConection: TFDConnection;
      Query     : TFDQuery;
      SQLText   : string;
    begin
      QConection := TFDConnection.Create(NIL);
      with QConection do
        begin
          ConnectionName                         := 'Cobranza';
          QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
          QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
          QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
          QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
          QConection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
          LoginPrompt          := False;
          QConection.Connected := True;
        end;
      SQLText:='select b.id,b.cliente,c.nombre, b.fechapago,Sum(b.importe) as Importe from borrador_recibo b '+
               '  left join clientes c on c.codigo=b.cliente '+
               ' group by b.id,b.cliente,c.nombre, b.fechapago ';
      Query                := TFDQuery.Create(nil);
      Query.ConnectionName := QConection.ConnectionName;
      Query.SQL.Text:=SQLText;
      Query.Close;
      Query.Open;

      Aux                        :='';
      dskAlertRecibos.MessageText:='';
      if Query.RecordCount > 0 then
        begin
          Query.First;
          while Not(Query.Eof) do
            begin
              Aux:= Aux + Query.Fields[1].AsString + '-' +
                          Copy(Query.Fields[2].AsString+'                                           ',1,45) + #9+
                          ' .... '+
                          AnsiRightStr('      '+FormatFloat(',0.00', Query.Fields[4].AsFloat),10)+#13;
              Query.Next;
            end;
          Query.Close;
        end;

      Query.Close;
      QConection.Close;
      FreeAndNil(Query);
      FreeAndNil(QConection);;
      Sleep(2000);
    end);
  ThCobranza.OnTerminate:= ThreadCobranzaFin;
  ThCobranza.Start;
end;

procedure TFMenu.ThreadTareasFin(Sender: TObject);
begin
  if sbEstado<>nil then
    begin
      sbEstado.Panels[3].Text  := '';
      if DskAlertTareas.MessageText<>'' then
        DskAlertTareas.Execute();
      TimerTareas.Enabled           := True;
    end;
end;

procedure TFMenu.TimerTareasTimer(Sender: TObject);
var ThTareas:TThread;
begin
  sbEstado.Panels[3].Text       := 'Revisando Tareas';
  TimerTareas.Enabled           := False;
  ThTareas             :=TThread.CreateAnonymousThread(
  procedure
    var
      QConection : TFDConnection;
      Query      : TFDQuery;
      MsgAux:String;
    begin
      QConection := TFDConnection.Create(NIL);
      with QConection do
        begin
          ConnectionName := 'Tareas';
          QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
          QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
          QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
          QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
          QConection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
          LoginPrompt          := False;
          QConection.Connected := True;
        end;

      Query                := TFDQuery.Create(nil);
      Query.ConnectionName := QConection.ConnectionName;
      Query.SQL.Text:='''
                        select p.* from planer_tareas p where  extract(year from p.startime)=:anio and
                          extract(month from p.startime)=:mes and
                          extract(day from p.startime)=:dia
                      ''';
      query.ParamByName('anio').Value :=YearOf(Date);
      query.ParamByName('mes').Value  :=MonthOf(Date);
      query.ParamByName('dia').Value  :=DayOf(Date);
      Query.Open;

      MsgAux                     :='';
      DskAlertTareas.MessageText := '';

      Query.First;
      while Not(Query.Eof) do
        begin
          MsgAux:= MsgAux + Query.FieldByName('SUBJECT').AsString +'...'+Query.FieldByName('STARTIME').AsString + #13;
          Query.Next;
        end;

      Query.Close;
      QConection.Close;
      FreeAndNil(QConection);;
      FreeAndNil(Query);
      Sleep(3000);
    end);
  ThTareas.OnTerminate:=ThreadTareasFin;
  ThTareas.Start;
end;

procedure TFMenu.TimerTrialTimer(Sender: TObject);
begin
  dskAlertaTrial.Execute;
end;

procedure TFMenu.ThreadTx_StockFin(Sender: TObject);
begin
  sbEstado.Panels[3].Text  := '';
  TimerTx_Stock.Enabled    := True;
end;


procedure TFMenu.TimerTx_StockTimer(Sender: TObject);
 var ThTx_Stock: TThread;
begin
  sbEstado.Panels[3].Text  := 'Revisando Tx.de Stock';
  TimerTx_Stock.Enabled    := False;
  ThTx_Stock               := TThread.CreateAnonymousThread(
  procedure
    var
      Busqueda   : TSearchRec;
      iResultado : Integer;
      aux, SDirectorio: string;
      QConection : TFDConnection;
      Query      : TFDQuery;
    begin
      try
        with QConection do
          begin
            if QConection = nil then
              begin
                QConection := TFDConnection.Create(NIL);
                ConnectionName              := 'Transferencia';
                Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
                Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
                Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
                Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
                Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
                LoginPrompt                 := False;
              end;
            Connected                       := True;
          end;

        Query                := TFDQuery.Create(nil);
        Query.ConnectionName := QConection.ConnectionName;
        Query.SQL.Text       :='select * from depositos where id = '+ IntToStr(DepositoEnUso);
        Query.Open;

        SDirectorio := PathTx + '\';
        aux := SDirectorio + '*_a_' + '' + Query.FieldByName('NOMBRE').AsString + ''
                + '*.xml';
        iResultado := FindFirst(aux, faAnyFile, Busqueda);
        if (iResultado = 0) Then
          TThread.Synchronize(nil, procedure
            begin
              AdvAlertRecpTx.Show;
            end);

      finally
        Query.close;
        QConection.Connected    :=  False;
        FreeAndNil(Query);
        FreeAndNil(QConection);
      end;
    end);
    ThTx_Stock.OnTerminate:= ThreadTx_StockFin;
    ThTx_Stock.Start;
end;

procedure TFMenu.ThreadVencimientosFin(Sender: TObject);
begin
  sbEstado.Panels[3].Text  := '..';
  if DskAlertVencimientos.MessageText<>'' then
    DskAlertVencimientos.Execute();
  TimerVencimientos.Enabled           := True;
end;

procedure TFMenu.TimerVencimientosTimer(Sender: TObject);
 var ThVencimientos: TThread;
begin
  if AdministradordeVencimientos1.Enabled then
    BEGIN
      TimerVencimientos.Enabled   := False;
      sbEstado.Panels[3].Text     := 'Revisando Vencimientos';
      ThVencimientos              := TThread.CreateAnonymousThread(
      procedure
        VAR
          QConection : TFDConnection;
          Query      :TFDQuery;
          MsgAux     :String;
        begin
          QConection := TFDConnection.Create(NIL);
          with QConection do
            begin
              ConnectionName := 'Vencimiento';
              Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
              Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
              Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
              Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
              Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
              LoginPrompt                 := False;
              Open;
            end;

          Query                := TFDQuery.Create(nil);
          Query.ConnectionName := QConection.ConnectionName;
          Query.SQL.Text:= 'select v.id, v.asunto, v.importe, v.fecha_incio, v.fecha_finalizacion from  vencimientos v '+
                           'where ( v.avisa_inicio between :desde-5 and :desde+5)'+
                           '          and v.finalizado<>''S''';

          Query.Close;
          Query.ParamByName('desde').AsDateTime:=Date;
          Query.Open;

          DskAlertVencimientos.MessageText:='';
          if Query.RecordCount > 0 then
            begin
              MsgAux  := '';
              while Not(Query.Eof) do
                begin
                  MsgAux := MsgAux + Copy(Query.FieldByName('ASUNTO').AsString, 1, 25) + '....' +
                                     FormatFloat(',0.00', Query.FieldByName('IMPORTE').AsFloat) + ' //// Vto.: ' + FormatDateTime('dd/mm/yyyy',
                                     Query.FieldByName('FECHA_INCIO').AsDateTime) + #13;//'<br>';
                  Query.Next;
                end;
              DskAlertVencimientos.MessageText:=MsgAux;
            end;
          Query.Close;
          QConection.Close;
          FreeAndNil(Query);
          FreeAndNil(QConection);
          Sleep(3000);
        end);

      ThVencimientos.OnTerminate:=ThreadVencimientosFin;
      ThVencimientos.Start;
    END;

end;


procedure TFMenu.TipoMovCCCompraExecute(Sender: TObject);
  begin
    if Not(Assigned(FormAdicionalesCompra)) Then
      FormAdicionalesCompra := TFormAdicionalesCompra.Create(Application);
    FormAdicionalesCompra.Show;
  end;

procedure TFMenu.TipoServiciosExecute(Sender: TObject);
  begin
    if Not(Assigned(FormTipoServicio)) Then
      FormTipoServicio := TFormTipoServicio.Create(Application);
    FormTipoServicio.Show;
  end;


procedure TFMenu.TMSFNCRibbon1PageControlClick(Sender: TObject);
begin
  if TMSFNCRibbon1PageControl.Collapsed=True Then
    begin
      TMSFNCRibbon1PageControl.Collapsed:=False;
      TMSFNCRibbon1PageControl.Collapsable:=True;
      tmsFNCRibbon1PageControl.Realign;
    end;
end;

procedure TFMenu.NPedidoClienteExecute(Sender: TObject);
  begin
    if Not(Assigned(FormNotaPedidoCliente)) Then
      FormNotaPedidoCliente := TFormNotaPedidoCliente.Create(Application);
    FormNotaPedidoCliente.Show;
  end;

procedure TFMenu.ListadoPendienteNPExecute(Sender: TObject);
  begin
    if Not(Assigned(FormNPedidoClientePendientes)) Then
      FormNPedidoClientePendientes := TFormNPedidoClientePendientes.Create
        (Application);
    FormNPedidoClientePendientes.Show;
  end;

procedure TFMenu.LiquidacionTCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormLiquidacionTC)) Then
      FormLiquidacionTC := TFormLiquidacionTC.Create(Application);
    FormLiquidacionTC.Show;
  end;

procedure TFMenu.ConciliarCheuqesExecute(Sender: TObject);
  begin
    if Not(Assigned(FormConciliacionChePropios)) Then
      FormConciliacionChePropios := TFormConciliacionChePropios.Create
        (Application);
    FormConciliacionChePropios.Show;
  end;

procedure TFMenu.ResumenTCExecute(Sender: TObject);
  begin
    if Not(Assigned(FormResumentTC)) Then
      FormResumentTC := TFormResumentTC.Create(Application);
    FormResumentTC.Show;
  end;

procedure TFMenu.VtaDiariaVendedorExecute(Sender: TObject);
  begin
    if Not(Assigned(FormVtaVendedorDiaria)) Then
      FormVtaVendedorDiaria := TFormVtaVendedorDiaria.Create(Application);
    FormVtaVendedorDiaria.Show;

  end;

procedure TFMenu.VtaRubroSubRubroExecute(Sender: TObject);
begin
  if Not(Assigned(FormVtaRubro_SubRubro)) Then
    FormVtaRubro_SubRubro := TFormVtaRubro_SubRubro.Create(Application);
  FormVtaRubro_SubRubro.Show;
end;

procedure TFMenu.VtasPlataformasExecute(Sender: TObject);
begin
  if Not(Assigned(FormCargaPlataformaJSon)) Then
    FormCargaPlataformaJSon := TFormCargaPlataformaJSon.Create(Application);
  FormCargaPlataformaJSon.Show;
end;

end.
