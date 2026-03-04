unit UOrdenCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, DBGrids, ExtCtrls, ComCtrls,Variants,Librerias,
  Db, ActnList, Buttons, ToolWin, JvGradient, JvComponentBase, frxExportText, frxExportPDF,
  JvExStdCtrls, JvDBCombobox, Menus, JvFormPlacement, JvLabel, JvDBControls,
  JvExMask, JvToolEdit, FMTBcd, frxDBSet, DBCtrls, StdCtrls, Mask,
  JvBaseEdits,DateUtils,IniFiles, JvExDBGrids, JvDBGrid, System.Actions,
  JvAppStorage, JvAppIniStorage, frxClass, frxExportRTF, Vcl.ImgList,
  JvExControls, CompBuscador, JvExExtCtrls, JvExtComponent, JvPanel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportBaseDialog, System.ImageList,System.Math,
  FireDAC.DBX.Migrate, Data.SqlExpr, frCoreClasses, Datasnap.DBClient;
type

  TFormOrdenCompra = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText10: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeCondCompra: TDBEdit;
    dbeDeposito: TDBEdit;
    pcDetalleFactura: TPageControl;
    pagDetalle: TTabSheet;
    Bevel48: TBevel;
    dbtTotal: TDBText;
    Label23: TLabel;
    DBGrillaDetalle: TDBGrid;
    PagImpuestos: TTabSheet;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Label6: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Bevel6: TBevel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    DBText1: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText6: TDBText;
    Label21: TLabel;
    Bevel32: TBevel;
    DBText3: TDBText;
    dbtTotalFinal: TDBText;
    Label2: TLabel;
    Bevel2: TBevel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    Bevel5: TBevel;
    Label5: TLabel;
    Bevel7: TBevel;
    DBText8: TDBText;
    Label7: TLabel;
    Bevel8: TBevel;
    DBText9: TDBText;
    dbeDscto: TDBEdit;
    dbgIva: TDBGrid;
    Label22: TLabel;
    dbeMuestraRealizo: TDBEdit;
    Label19: TLabel;
    dbeMuestraAutorizo: TDBEdit;
    BuscarProveedor: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarArticulo: TAction;
    BuscarTipoCpbte: TAction;
    BuscarEmpleado: TAction;
    BuscarCondicionCompra: TAction;
    Label15: TLabel;
    lbModo: TLabel;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frOrdenCompra: TfrxReport;
    frDBCabecera: TfrxDBDataset;
    frDBDetalle: TfrxDBDataset;
    frDBDImpuestos: TfrxDBDataset;
    lbEstado: TLabel;
    spVerop: TSpeedButton;
    Anular: TAction;
    pcPieOrdenCompra: TPageControl;
    pagVtos: TTabSheet;
    PagObs: TTabSheet;
    dbgVtos: TDBGrid;
    dbObservaciones: TDBMemo;
    pagNotas: TTabSheet;
    dbcTransporte: TDBLookupComboBox;
    Label17: TLabel;
    dbmNotas: TDBMemo;
    BuscarAutorizaOC: TAction;
    pnCosto: TPanel;
    dbtDetalle: TDBText;
    frxDBEmpresa: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    lbTopOC: TLabel;
    lbTotalOC: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Panel2: TPanel;
    dbcImpresa: TDBCheckBox;
    lbTotalGral: TLabel;
    Label27: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    lbNueva: TLabel;
    DetalleOp: TAction;
    sbAnular: TSpeedButton;
    VerPresupuesto: TAction;
    PopupMenu1: TPopupMenu;
    VerPresupuesto1: TMenuItem;
    RxDBESucursal: TJvDBComboEdit;
    RxDBECodigo: TJvDBComboEdit;
    RxDBECondCompra: TJvDBComboEdit;
    RxDBEDeposito: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxDBRealizo: TJvDBComboEdit;
    RxDBAutorizo: TJvDBComboEdit;
    dbeFechaCompra: TJvDBDateEdit;
    dbeFechaVencimiento: TJvDBDateEdit;
    DBDateEdit1: TJvDBDateEdit;
    dbeFechaAutorizacion: TJvDBDateEdit;
    spMarcarImpreso: TFDStoredProc;
    RxLabel4: TLabel;
    spMail: TSpeedButton;
    EnviarCorreo: TAction;
    Label29: TLabel;
    edCantidad: TJvCalcEdit;
    edCant: TLabel;
    GeneraRecepcion: TAction;
    spRecep: TSpeedButton;
    GenerarFactura: TAction;
    dbtCotizacion: TDBText;
    Label30: TLabel;
    dbtMoneda: TDBText;
    HacerCopiaOCompra: TAction;
    Panel3: TPanel;
    Label32: TLabel;
    Label31: TLabel;
    dbtID_OC_Prev: TDBText;
    dbtID_OC_Next: TDBText;
    N1: TMenuItem;
    GenerarRecepcion1: TMenuItem;
    GenerarFactura1: TMenuItem;
    chAgregaImpuesto: TCheckBox;
    pnComprobantesRec: TPanel;
    dbgComp: TDBGrid;
    Panel4: TPanel;
    lbFact: TLabel;
    lbRecep: TLabel;
    Label33: TLabel;
    N2: TMenuItem;
    VerCodigoAlternativo1: TMenuItem;
    JvDBStatusLabel1: TJvDBStatusLabel;
    spBorrador: TSpeedButton;
    Borrador: TAction;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    ComBuscadorCondCompra: TComBuscador;
    ComBuscadorVendedor: TComBuscador;
    ComBuscadorAutorizar: TComBuscador;
    CopiarOrdenCompra: TAction;
    pnDetalleAdicional: TJvPanel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    dbeNro: TDBEdit;
    dbeDetAdicional: TDBMemo;
    CambiarFechaRecepcion: TAction;
    N3: TMenuItem;
    CambiarFechaRecepcion1: TMenuItem;
    VolverAutorizada: TAction;
    DBText13: TDBText;
    N4: TMenuItem;
    VolverAutorizada1: TMenuItem;
    Recibida: TAction;
    DaPorRecibida1: TMenuItem;
    ControlDetalle: TAction;
    ControlDetalle1: TMenuItem;
    N5: TMenuItem;
    lbOCPendiente: TLabel;
    LeerRecepciones: TAction;
    DesAnular: TAction;
    N6: TMenuItem;
    DesAnular1: TMenuItem;
    spLeerRececpiones: TSpeedButton;
    ToolButton2: TToolButton;
    BusquedaPorReferencia: TAction;
    N7: TMenuItem;
    FiltraCodigoProveedor: TMenuItem;
    BorrarBorrador: TAction;
    ImprimirEtiquetas: TAction;
    N9: TMenuItem;
    ImprimirEtiquetas1: TMenuItem;
    VolverModoAutorizacion: TAction;
    VolverModoAutorizacion1: TMenuItem;
    VerRecepciones: TAction;
    VerFacturas: TAction;
    DBText11: TDBText;
    N8: TMenuItem;
    OmitirRecepcionAutomatica: TMenuItem;
    OmitirFacturaAutomtica: TMenuItem;
    CopiarDetalleXML: TAction;
    PegarDetalleDesdeXML: TAction;
    PopupMenu2: TPopupMenu;
    CopiarDetalleArchivoTemporal1: TMenuItem;
    PegraDetalleDesdeArchivoTemporal1: TMenuItem;
    CambiaProveedor: TAction;
    CambiaProveedor1: TMenuItem;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarEmpleadoExecute(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarCondicionCompraExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECondCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBEDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AnularExecute(Sender: TObject);
    procedure dbgVtosColEnter(Sender: TObject);
    procedure dbgVtosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frOrdenCompraPrintReport;
    procedure DBGrillaDetalleDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BuscarAutorizaOCExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbeFechaCompraExit(Sender: TObject);
    procedure DetalleOpExecute(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleExit(Sender: TObject);
    procedure VerPresupuestoExecute(Sender: TObject);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure GeneraRecepcionExecute(Sender: TObject);
    procedure GenerarFacturaExecute(Sender: TObject);
    procedure dbtCotizacionClick(Sender: TObject);
    procedure HacerCopiaOCompraExecute(Sender: TObject);
    procedure dbtID_OC_PrevClick(Sender: TObject);
    procedure dbtID_OC_NextClick(Sender: TObject);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure spRecepClick(Sender: TObject);
    procedure chAgregaImpuestoClick(Sender: TObject);
    procedure lbRecepClick(Sender: TObject);
    procedure lbFactClick(Sender: TObject);
    procedure pnComprobantesRecClick(Sender: TObject);
    procedure dbgCompDblClick(Sender: TObject);
    procedure Label33Click(Sender: TObject);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure DBGrillaDetalleDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGrillaDetalleDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure BorradorExecute(Sender: TObject);
    procedure CopiarOrdenCompraExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDetAdicionalKeyPress(Sender: TObject; var Key: Char);
    procedure CambiarFechaRecepcionExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure VolverAutorizadaExecute(Sender: TObject);
    procedure RecibidaExecute(Sender: TObject);
    procedure ControlDetalleExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure LeerRecepcionesExecute(Sender: TObject);
    procedure DesAnularExecute(Sender: TObject);
    procedure BusquedaPorReferenciaExecute(Sender: TObject);
    procedure BorrarBorradorExecute(Sender: TObject);
    procedure ImprimirEtiquetasExecute(Sender: TObject);
    procedure FiltraCodigoProveedorClick(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure VolverModoAutorizacionExecute(Sender: TObject);
    procedure VerRecepcionesExecute(Sender: TObject);
    procedure VerFacturasExecute(Sender: TObject);
    procedure OmitirRecepcionAutomaticaClick(Sender: TObject);
    procedure OmitirFacturaAutomticaClick(Sender: TObject);
    procedure CopiarDetalleXMLExecute(Sender: TObject);
    procedure PegarDetalleDesdeXMLExecute(Sender: TObject);
    procedure CambiaProveedorExecute(Sender: TObject);
  private
    { Private declarations }
    FModo:String;
    FTopeOC      :Extended;
    FTotalOC     :Extended;
    FTotalGral   :Extended;
    FTotalNueva  :Extended;
    FDesde,FHasta:TDateTime;

  public
    { Public declarations }
    Anulado  :Tpanel;
    Impresa  :Boolean;
    Replicada:Boolean;
    PROCEDURE UltimoComprobante;
    procedure SetTopeOC(Dato:Extended);
    Procedure SetTotalOC(dato:Extended);
    Procedure SetTotalGral(dato:Extended);
    Procedure SetTotalNuevas(dato:Extended);
    procedure SetDesdeHasta(Dato:TDateTime);
    procedure InsertarDetalle(codigo:String;Cantidad:Double);
    function HayPendientes:Boolean;
    procedure RecepcionarOCompra(codigo:String;Cantidad:Double);
  published
    PROPERTY Modo: STRING read FModo write FModo;
    property TopeOC:Extended read FTopeOC write FTopeOC;
    property TotalOC:Extended read FTotalOC write FTotalOC;
    property TotalGral:Extended read FTotalGral write FTotalGral;
    property TotalNuevas:Extended read FTotalNueva write FTotalNueva;
    property Desde:TDateTime read FDesde Write FDesde;
    property Hasta:TDateTime read FHasta Write FHasta;


  end;

var
  FormOrdenCompra: TFormOrdenCompra;

implementation

uses DMOrdenCompra,ComposicionPrecio, UBuscadorCpbte, UCompra_2,
  DMCompra, URecepcionMercaderia, DMRecepMerca, UBuscadorArticulos,
  UBuscadorProveedor, ULogin, UDetalleOperacionesProvee, UDetalleCompraArticulo,
  UPresupuestoOC,  DMStoreProcedureForm, UCorreo,
  UIngresoCotizacion, UBuscadorTipoCpbte, UBorradorPedido, DMBuscadoresForm,
  UBuscadorComprobantes, UFecha, UCargaDetalleOC, UDMain_FD, UBorradorOCompra,
  UBuscarPorNroReferencia, UEtiquetas_Compra, UStock_2, UCambioProveedorFactura;
{$R *.DFM}


procedure TFormOrdenCompra.InsertarDetalle(codigo:String;Cantidad:Double);
begin
  if DSBase.DataSet.State=dsInsert Then
    begin
      DatosOrdenCompra.CDSOrdenCompraDet.Append;
      DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOSetText(DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO,Codigo);
      DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA,FormatFloat('0.00',Cantidad));
      DatosOrdenCompra.CDSOrdenCompraDet.Post;
    end;
    //
end;


procedure TFormOrdenCompra.HacerCopiaOCompraExecute(Sender: TObject);
var i,id_old:Integer;
Nombre:String;
NroCpbte:String;
begin
  inherited;
  replicada:=False;
  if MessageDlg('Generar Orden de Compra por el Pendiente...',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
    begin
      if (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='R') and
         (((DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_PREV.AsString='') or (DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_PREV.AsInteger<0)) or
          ((DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_NEXT.AsString='') or (DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_NEXT.AsInteger<0)))  then
        begin
    //      DatosOrdenCompra.CDSOrdenCompCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OCompraCab.XML');
    //      DatosOrdenCompra.CDSOrdenCompraDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OCCompraDet.XML');
          DatosOrdenCompra.CDSOCCabXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OCompraCab.xml');
          DatosOrdenCompra.CDSOCDetXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OCCompraDet.xml');
          // queda inhabilitado creo que por las condiciones de busqueda
          Agregar.Enabled:=True;
          FormOrdenCompra.SucursalPorDefecto:=DatosOrdenCompra.CDSOCCabXML.FieldByName('sucursal').Value;
          Agregar.Execute;
          Modo:='N';
          //DuplicarFc:=True;
          For i:=0 to DatosOrdenCompra.CDSOCCabXML.FieldCount-1 do
            begin
              if (DatosOrdenCompra.CDSOrdenCompCab.FindField(DatosOrdenCompra.CDSOCCabXML.Fields[i].FieldName)<>nil) Then
                begin
                  Nombre:=DatosOrdenCompra.CDSOCCabXML.Fields[i].FieldName;
                  if (Nombre<>'ID_OC') Then
                    DatosOrdenCompra.CDSOrdenCompCab.FieldByName(Nombre).Value:=DatosOrdenCompra.CDSOCCabXML.FieldByName(Nombre).Value;

                  if Nombre='NROCPBTE' Then
                    NroCpbte:=DatosOrdenCompra.CDSOCCabXML.FieldByName(Nombre).Value;
                  if (Nombre='ID_OC') Then
                    id_Old  :=DatosOrdenCompra.CDSOCCabXML.FieldByName(Nombre).Value;

                end;
            end;
          DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_PREV.Value := id_old;
          DatosOrdenCompra.CDSOrdenCompCabNRO_OC_ANTERIOR.Value := NroCpbte;
          DatosOrdenCompra.CDSOrdenCompCabESTADO.Value          := 'A';
          DatosOrdenCompra.CDSOCDetXML.First;
         //  DatosNPedidoClientes.CDSNotaPedidoCabc VentaCabCPTE_MANUAL.Value:='N';
          while not(DatosOrdenCompra.CDSOCDetXML.Eof) do
            begin
              if (DatosOrdenCompra.CDSOCDetXML.FieldByName('CANTIDADAUTORIZADA').Value - DatosOrdenCompra.CDSOCDetXML.FieldByName('CANTIDADRECIBIDA').Value)>0 Then
                begin
                  DatosOrdenCompra.CDSOrdenCompraDet.Insert;
                  For i:=0 to DatosOrdenCompra.CDSOCDetXML.FieldCount-1 do
                    begin
                      if (DatosOrdenCompra.CDSOrdenCompraDet.FindField(DatosOrdenCompra.CDSOCDetXML.Fields[i].FieldName)<>nil) Then
                        begin
                          Nombre:=DatosOrdenCompra.CDSOCDetXML.Fields[i].FieldName;
                          if (Nombre<>'ID') Then
                            DatosOrdenCompra.CDSOrdenCompraDet.FieldByName(Nombre).Value:=DatosOrdenCompra.CDSOCDetXML.FieldByName(Nombre).Value;
                        end;
                    end;
                  DatosOrdenCompra.CDSOrdenCompraDetID_CABOC.Value             := DatosOrdenCompra.CDSOrdenCompCabID_OC.Value;
                  DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA.AsFloat     := DatosOrdenCompra.CDSOCDetXML.FieldByName('CANTIDADAUTORIZADA').Value -
                                                                                   DatosOrdenCompra.CDSOCDetXML.FieldByName('CANTIDADRECIBIDA').Value;
                  DatosOrdenCompra.CDSOrdenCompraDetCANTIDADAUTORIZADASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADAUTORIZADA,FloatToStr(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA.AsFloat));
                  DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat   := DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA.AsFloat;

                  DatosOrdenCompra.CDSOrdenCompraDet.Post;
                end;
              DatosOrdenCompra.CDSOCDetXML.Next;
            end;
        end;
      Replicada:=True;
      Confirma.Execute;
      if (Not(DSBase.DataSet.IsEmpty)) then
        begin
          sbEstado.Panels[0].Text:='Dando por Cumplida O.C Anterior..';
          sbEstado.Panels[0].Text:='';
          DatosOrdenCompra.QDarCumplidaOC.Close;
          DatosOrdenCompra.QDarCumplidaOC.ParamByName('id').Value:=id_old;
          DatosOrdenCompra.QDarCumplidaOC.ParamByName('next_id').Value := DatosOrdenCompra.CDSOrdenCompCabID_OC.AsInteger;
          DatosOrdenCompra.QDarCumplidaOC.ParamByName('next_nro').Value:= DatosOrdenCompra.CDSOrdenCompCabNROCPBTE.AsString;;
          DatosOrdenCompra.QDarCumplidaOC.ExecSQL;
          DatosOrdenCompra.QDarCumplidaOC.Close;
        end;
    end;
  //Salir.Execute;
end;

function TFormOrdenCompra.HayPendientes:Boolean;
var Faltante,Pedido,Entregado:real;
p:TBookmark;
begin
  Result   :=True;
  Faltante :=0;
  Pedido   :=0;
  Entregado:=0;

  p:=DatosOrdenCompra.CDSOrdenCompraDet.GetBookmark;
  DatosOrdenCompra.CDSOrdenCompraDet.DisableControls;
  DatosOrdenCompra.CDSOrdenCompraDet.First;
  while not(DatosOrdenCompra.CDSOrdenCompraDet.eof) do
    begin
      Pedido   :=Pedido+DatosOrdenCompra.CDSOrdenCompraDetCANTIDADAUTORIZADA.AsFloat;
      Entregado:=Entregado+DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat;
      Faltante :=Pedido-Entregado;
      DatosOrdenCompra.CDSOrdenCompraDet.Next;
    end;

  if Faltante<=0 then Result:=False;
  DatosOrdenCompra.CDSOrdenCompraDet.GotoBookmark(p);
  DatosOrdenCompra.CDSOrdenCompraDet.FreeBookmark(p);
  DatosOrdenCompra.CDSOrdenCompraDet.EnableControls;



end;


PROCEDURE TFormOrdenCompra.SetTopeOC(Dato: Extended);
begin
  if (VarIsNull(dato)) then
   Dato:=0;
  FTopeOC:=Dato;
  lbTopOC.Caption:=FormatFloat(',0.00',Dato);
end;

procedure TFormOrdenCompra.SetTotalOC(Dato:Extended);
begin
  if (VarIsNull(dato)) then
   Dato:=0;
  FTotalOC:=Dato;
  lbTotalOC.Caption:=FormatFloat(',0.00',Dato);
end;

procedure TFormOrdenCompra.spRecepClick(Sender: TObject);
begin
  inherited;
  PopUpMenu1.popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFormOrdenCompra.SetTotalGral(Dato:Extended);
begin
  if (VarIsNull(dato)) then
   Dato:=0;
  FTotalGral:=Dato;
  lbTotalGral.Caption:=FormatFloat(',0.00',Dato);
end;

procedure TFormOrdenCompra.SetTotalNuevas(Dato:Extended);
begin
  if (VarIsNull(dato)) then
   Dato:=0;
  FTotalNueva:=Dato;
  lbNueva.Caption:=FormatFloat(',0.00',Dato);
end;

procedure TFormOrdenCompra.setDesdeHasta(Dato:TDateTime);
var d,m,y:word;
begin
  DecodeDate(Dato,y,m,d);
  FDesde:=EncodeDate(y,m,1);
  FHasta:=EncodeDate(y,m,DaysInMonth(Dato));
 end;


PROCEDURE TFormOrdenCompra.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosOrdenCompra,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSOrdenCompCabLetra.AsString <> '') AND (CDSOrdenCompCabCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSOrdenCompCabLetra.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSOrdenCompCabSucursal.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSOrdenCompCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSOrdenCompCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSOrdenCompCabSucSetText(CDSOrdenCompCabSuc,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSOrdenCompCabNumeroSetText(CDSOrdenCompCabNumero,IntToStr(Numero));
            END;
         // Si discrimina IVA o no lo manejo desde la condicion del Proveedor
         // wwCDSOrdenCompraCabDESGLOZAIVA.Value        := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
          CDSOrdenCompCabTIPOCPBTE.Value          := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSOrdenCompCabCLASECPBTE.Value         := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSOrdenCompCabNROCPBTE.AsString := CDSOrdenCompCabLetra.AsString + CDSOrdenCompCabSuc.AsString +
                                          CDSOrdenCompCabNumero.AsString;
      FormOrdenCompra.dbgIva.Enabled := CDSOrdenCompCabDESGLOZAIVA.Value = 'S';
    END;
END;



procedure TFormOrdenCompra.VerCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=Not(VerCodigoAlternativo1.Checked);
  DBGrillaDetalle.Refresh;
end;

procedure TFormOrdenCompra.VerFacturasExecute(Sender: TObject);
begin
  inherited;
  pnComprobantesRec.Visible:=False;
  DatosOrdenCompra.CDSFacturaComp.Close;
  DatosOrdenCompra.CDSFacturaComp.Params.ParamByName('id_ordencompra').Value:=DSBase.DataSet.FieldByName('id_oc').Value;
  DatosOrdenCompra.CDSFacturaComp.Open;
  if DatosOrdenCompra.CDSFacturaComp.RecordCount>0 then
    begin
      dbgComp.DataSource:=DatosOrdenCompra.DSFacturaComp;
      pnComprobantesRec.Visible:=True;
    end;
end;

procedure TFormOrdenCompra.VerPresupuestoExecute(Sender: TObject);
begin
  inherited;
   if (DatosOrdenCompra.CDSOrdenCompCabID_PRESUPUESTO_OC.AsString<>'') then
     begin
       IF Not(Assigned(FormPresupuestoOC)) THEN
         FormPresupuestoOC:=TFormPresupuestoOC.Create(Application);
        FormPresupuestoOC.DatoNew:=DatosOrdenCompra.CDSOrdenCompCabID_PRESUPUESTO_OC.AsString;
      FormPresupuestoOC.show;
      FormPresupuestoOC.Recuperar.Execute;
     end;
end;


procedure TFormOrdenCompra.VerRecepcionesExecute(Sender: TObject);
begin
  inherited;
  pnComprobantesRec.Visible:=False;
  DatosOrdenCompra.CDSRecepciones.Close;
  DatosOrdenCompra.CDSRecepciones.Params.ParamByName('id_ordencompr').Value:=DSBase.DataSet.FieldByName('id_oc').Value;
  DatosOrdenCompra.CDSRecepciones.Open;
  if DatosOrdenCompra.CDSRecepciones.RecordCount>0 then
    begin
      dbgComp.DataSource:=DatosOrdenCompra.DSRecepciones;
      pnComprobantesRec.Visible:=True;
    end;
end;

procedure TFormOrdenCompra.VolverModoAutorizacionExecute(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]) and (DSBase.DataSet.FieldByName('ESTADO').Value='A') then
    begin
      with DatosOrdenCompra do
        begin
          QVolverAutorizada.Close;
          QVolverAutorizada.ParamByName('id').Value        := CDSOrdenCompCabID_OC.Value;
          QVolverAutorizada.ParamByName('Estado').Value    := 'N';
          QVolverAutorizada.ExecSQL;
          QVolverAutorizada.Close;
        end;
      Modo:='N';
      Recuperar.Execute;
    end;
end;

procedure TFormOrdenCompra.VolverAutorizadaExecute(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]) Then //and (DSBase.DataSet.FieldByName('ESTADO').Value='R') then
    begin
      with DatosOrdenCompra do
        begin
          QVolverAutorizada.Close;
          QVolverAutorizada.ParamByName('id').Value        := CDSOrdenCompCabID_OC.Value;
          QVolverAutorizada.ParamByName('Estado').Value    := 'A';
          QVolverAutorizada.ExecSQL;
          QVolverAutorizada.Close;
        end;
      Recuperar.Execute;
    end;
end;

procedure TFormOrdenCompra.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       DatosOrdenCompra.CDSOrdenCompCabCodigoSetText(DatosOrdenCompra.CDSOrdenCompCabCodigo, FormBuscadorProveedor.Codigo);
     end;

end;

procedure TFormOrdenCompra.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenCompra.CDSBuscaSucursal.Close;
  DatosOrdenCompra.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;//:=DatosOrdenCompra.CDSBuscaSucursal;
  if comBuscadorSucursal.rOk Then
    DatosOrdenCompra.CDSOrdenCompCabSucursalSetText(DatosOrdenCompra.CDSOrdenCompCabSucursal, IntToStr(comBuscadorSucursal.Id));
  DatosOrdenCompra.CDSBuscaSucursal.Close;

end;

procedure TFormOrdenCompra.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenCompra.CDSBuscaDeposito.Close;
  DatosOrdenCompra.CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    DatosOrdenCompra.CDSOrdenCompCabDepositoSetText(DatosOrdenCompra.CDSOrdenCompCabDeposito, IntToStr(comBuscadorDeposito.Id));
  DatosOrdenCompra.CDSBuscaDeposito.Close;

end;

procedure TFormOrdenCompra.BorradorExecute(Sender: TObject);
var i:Integer;
ListaDetalle :TStringlist;
Codigo,Cantidad:String;
begin
  inherited;
  i:=0;
  if DSBase.State=dsInsert  then
    begin
      if Not(Assigned(FormBorradorPedido)) then
        FormBorradorPedido:=TFormBorradorpedido.Create(self);
      FormBorradorPedido.ItemProv.Visible := True;
      FormBorradorPedido.chBorrar.Visible := True;
      FormBorradorPedido.Codigo           := DatosOrdenCompra.CDSOrdenCompCabCODIGO.Value;
      FormBorradorPedido.Show;
      if FormBorradorPedido.Lista.Count>0 then
        begin
          ListaDetalle:=TStringlist.Create;
          ListaDetalle:=FormBorradorPedido.Lista;
          for i:= 0 to ListaDetalle.Count-1 do
            begin
              Codigo  :=Copy(ListaDetalle[i],1,Pos(';',ListaDetalle[i])-1);
              Cantidad:=Copy(ListaDetalle[i],Pos(';',ListaDetalle[i])+1,Length(ListaDetalle[i])-Length(Codigo)-1);
              DatosOrdenCompra.CDSOrdenCompraDet.Append;
              DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOSetText(DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO,Codigo);
              DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA,Cantidad);
              DatosOrdenCompra.CDSOrdenCompraDet.Post;
            end;
        end;
      FreeAndnil(ListaDetalle);
    end;
end;

procedure TFormOrdenCompra.BorrarBorradorExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenCompra.QLimpiarBorradorOC.Close;
  DatosOrdenCompra.QLimpiarBorradorOC.ParamByName('ID_OC').Value:=DSBase.DataSet.FieldByName('id_oc').Value;
  DatosOrdenCompra.QLimpiarBorradorOC.ExecSQL;
  DatosOrdenCompra.QLimpiarBorradorOC.Close;
end;

procedure TFormOrdenCompra.BorrarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    begin
      if (not(DatosOrdenCompra.CDSOrdenCompCab.IsEmpty)) and
         (DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_NEXT.Value<0) and
         (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='A') then
      inherited;
    end;

end;

procedure TFormOrdenCompra.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  if (DatosOrdenCompra.CDSOrdenCompCabTIPO_PROVEEDOR.AsString='M') or
    (DatosOrdenCompra.CDSOrdenCompCabTIPO_PROVEEDOR.AsString='A') Then
    begin
      FormBuscadorArticulos.Param1:=3;
      FormBuscadorArticulos.Param2:=2;
      FormBuscadorArticulos.Param3:=3;

    end
  else
    // si el proveedor es solo de servicios
    if (DatosOrdenCompra.CDSOrdenCompCabTIPO_PROVEEDOR.AsString='G') Then
      begin
        FormBuscadorArticulos.Param1:=4;
        FormBuscadorArticulos.Param2:=5;
        FormBuscadorArticulos.Param3:=5;

      end;

 // if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    DatosOrdenCompra.CDSOrdenCompraDetCodigoArticuloSetText( DatosOrdenCompra.CDSOrdenCompraDetCodigoArticulo,FormBuscadorArticulos.Codigo);
end;

procedure TFormOrdenCompra.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
//  DatosOrdenCompra.CDSBuscaComprob.Close;
//  DatosOrdenCompra.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosOrdenCompra.CDSOrdenCompCabSucursal.Value;
//  DatosOrdenCompra.CDSBuscaComprob.Open;
//  IF NOT (DatosOrdenCompra.CDSBuscaComprob.IsEmpty) THEN
//    BEGIN
//      IF wwBuscadorComprobantes.Execute THEN
//        if wwBuscadorComprobantes.LookupTable.FieldByName('id_comprobante').AsString<>'' Then
//          DatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTESetText(DatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTE, wwBuscadorComprobantes.LookupTable.FieldByName('id_comprobante').AsString);
//    END
//  ELSE
//    ShowMessage('No hay comprobantes definidos para esta Operación...');
//  DatosOrdenCompra.CDSBuscaComprob.Close;


  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta=''C'' and '+
                                            '(tipo_comprob=''OC'') ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosOrdenCompra.CDSOrdenCompCabSucursal.Value;


  FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
//    CDSAdelantosID_TIPOCOMPROBANTESetText(CDSAdelantosID_TIPOCOMPROBANTE, comBuscadorTipoCpbte.LookupTable.FieldByName('id_comprobante').AsString);
      DatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTESetText(DatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;




end;

procedure TFormOrdenCompra.BusquedaPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(self);
  FormBuscarPorNroReferenica.CompraVta:='OC';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
      DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
      Recuperar.Execute;
    end
  else
    ShowMessage('No Hay Comprobante con ese Nro...');
end;

procedure TFormOrdenCompra.BuscarEmpleadoExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenCompra.CDSBuscaVendedor.Close;
  DatosOrdenCompra.CDSBuscaVendedor.Open;
  comBuscadorVendedor.Execute;
  if comBuscadorVendedor.rOk Then
    DatosOrdenCOmpra.CDSOrdenCompCabREALIZOSetText(DatosOrdenCOmpra.CDSOrdenCompCabREALIZO,comBuscadorVendedor.Id);
  DatosOrdenCompra.CDSBuscaVendedor.Close;
end;

procedure TFormOrdenCompra.BuscarCondicionCompraExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenCompra.CDSBuscaCondCompra.Close;
  DatosOrdenCompra.CDSBuscaCondCompra.Params.ParamByName('Codigo').Value := DatosOrdenCompra.CDSOrdenCompCabCodigo.Value;
  DatosOrdenCompra.CDSBuscaCondCompra.Open;
  comBuscadorCondCompra.Execute;
  if comBuscadorCondCompra.rOk Then
    DatosOrdenCompra.CDSOrdenCompCabCondicionCompraSetText(DatosOrdenCompra.CDSOrdenCompCabCondicionCompra, IntToStr(comBuscadorCondCompra.Id));
  DatosOrdenCompra.CDSBuscaCondCompra.Close;

end;

procedure TFormOrdenCompra.DBGrillaDetalleColEnter(Sender: TObject);
var enter:Char;
begin
  inherited;
  pnDetalleAdicional.Visible:= False;

  IF Modo='N' Then
    begin
      IF DBGrillaDetalle.SelectedIndex = 2 THEN
        DBGrillaDetalle.SelectedIndex := 3;
      IF DBGrillaDetalle.SelectedIndex = 4 THEN
        DBGrillaDetalle.SelectedIndex := 8;
      IF DBGrillaDetalle.SelectedIndex = 5 THEN
        DBGrillaDetalle.SelectedIndex := 8;

      IF DBGrillaDetalle.SelectedIndex = 9 THEN
        DBGrillaDetalle.SelectedIndex := 8;
     end
   else
    if Modo='A' Then
      begin
        IF DBGrillaDetalle.SelectedIndex = 2 THEN
          DBGrillaDetalle.SelectedIndex := 3;
        IF DBGrillaDetalle.SelectedIndex = 3 THEN
          DBGrillaDetalle.SelectedIndex := 7;
        IF DBGrillaDetalle.SelectedIndex = 5 THEN
          DBGrillaDetalle.SelectedIndex := 8;
        IF DBGrillaDetalle.SelectedIndex = 9 THEN
          DBGrillaDetalle.SelectedIndex := 8;
      end
     else
      if Modo='R' Then
        begin
          IF DBGrillaDetalle.SelectedIndex < 5 THEN
            DBGrillaDetalle.SelectedIndex := 5;
//          IF DBGrillaDetalle.SelectedIndex = 3 THEN
//            DBGrillaDetalle.SelectedIndex := 7;
//          IF DBGrillaDetalle.SelectedIndex = 4 THEN
//            DBGrillaDetalle.SelectedIndex := 7;
//          IF DBGrillaDetalle.SelectedIndex = 8 THEN
//            DBGrillaDetalle.SelectedIndex := 7;
        end;

  IF (DBGrillaDetalle.SelectedIndex = 8) and (DBGrillaDetalle.Fields[0].AsString<>'') THEN
    BEGIN
      IF (DatosOrdenCompra.CDSOrdenCompraDet.State IN [dsEdit, dsInsert]) AND
        (DatosOrdenCompra.CDSOrdenCompraDetModo_Gravamen.Value[1] IN ['M', 'I', 'Y']) THEN
        BEGIN
          FormComposicionPrecio               := TFormComposicionPrecio.Create(Application);
          FormComposicionPrecio.ValorGravado  := DatosOrdenCompra.CDSOrdenCompraDetUnitario_Gravado.AsFloat;
          FormComposicionPrecio.ValorExento   := DatosOrdenCompra.CDSOrdenCompraDetUnitario_Exento.AsFloat;
          FormComposicionPrecio.ValorImpuesto := 0;
          FormComposicionPrecio.ShowModal;
          // FreeAndNil(ComposicionPrecioForm);
          DatosOrdenCompra.CDSOrdenCompraDetUnitario_Exento.AsFloat    := FormComposicionPrecio.ValorExento;
          DatosOrdenCompra.CDSOrdenCompraDetUnitario_Gravado.AsFloat   := FormComposicionPrecio.ValorGravado;
          DatosOrdenCompra.CDSOrdenCompraDetUnitario_TotalSetText(DatosOrdenCompra.CDSOrdenCompraDetUnitario_Total, DatosOrdenCompra.CDSOrdenCompraDetUnitario_Total.AsString);
//          DBGrillaDetalle.SelectedIndex := 8;
          enter:=#13;
          DBGrillaDetalle.OnKeyPress(Sender,Enter);
        END;
    END;

end;

procedure TFormOrdenCompra.DBGrillaDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormOrdenCompra.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:=' F-11:Ver Mov.Art.';
end;

procedure TFormOrdenCompra.DBGrillaDetalleExit(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:='';
end;

procedure TFormOrdenCompra.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
    BEGIN
      if (DBGrillaDetalle.SelectedIndex = 1) THEN
        DBGrillaDetalle.SelectedIndex := 0
      else
        if (DBGrillaDetalle.SelectedIndex = 3) THEN
          DBGrillaDetalle.SelectedIndex := 1
        else
          if (DBGrillaDetalle.SelectedIndex = 7) and (Modo='N') THEN
            DBGrillaDetalle.SelectedIndex := 1
          else
            if (DBGrillaDetalle.SelectedIndex = 7) and (Modo='A') THEN
              DBGrillaDetalle.SelectedIndex := 4
            else
              if (DBGrillaDetalle.SelectedIndex = 7) and (Modo='R') THEN
                DBGrillaDetalle.SelectedIndex := 5;

      key := 0;
    END
   else
     IF (Key = VK_F11) and (DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO.AsString<>'')  THEN
      BEGIN
        IF NOT (Assigned(formDetalleCompraArticulo)) THEN
          BEGIN
            formDetalleCompraArticulo := TformDetalleCompraArticulo.Create(Application);
            formDetalleCompraArticulo.CodigoProvee  := DatosOrdenCompra.CDSOrdenCompCabCODIGO.Value;
            formDetalleCompraArticulo.Codigo        := DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO.Value;
            formDetalleCompraArticulo.ShowModal;
          END;
      END
    else
 // detalle Adicional..
  IF (Key = VK_ADD) and (Shift =[ssCtrl]) and (DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO.AsString<>'')  THEN
    BEGIN
      if (DBGrillaDetalle.SelectedIndex =1 ) THEN
        begin
          if DBGrillaDetalle.DataSource.DataSet.RecNo>0 then
            pnDetalleAdicional.Top:= 35 + ((DBGrillaDetalle.DataSource.DataSet.RecNo-1) * 18 )
          else
            pnDetalleAdicional.Top:= 35;
          pnDetalleAdicional.Visible:= Not(pnDetalleAdicional.Visible);
          dbeDetAdicional.SetFocus;
        end;
    END;


end;

procedure TFormOrdenCompra.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 5) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
        begin
          IF DBGrillaDetalle.SelectedField = DatosOrdenCompra.CDSOrdenCompraDetCodigoArticulo THEN
            BuscarArticulo.Execute;
        end;
    END;
end;


procedure TFormOrdenCompra.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize := False;
  JvAppIniFileStorage1.FileName    := (sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pcDetalleFactura.ActivePageIndex := 0;
  pcPieOrdenCompra.ActivePageIndex := 0;
  IF NOT (Assigned(DatosOrdenCompra)) THEN
    DatosOrdenCompra := TDatosOrdenCompra.Create(Application);


  dsBase.DataSet:=DatosOrdenCompra.CDSOrdenCompCab;
  WITH DMOrdenCompra.DatosOrdenCompra DO
    BEGIN
      AddClientDataSet(CDSOrdenCompCab, DSPOrdenCompraCab);
      AddClientDataSet(CDSOrdenCompraDet, DSPOrdenCompraDet);
      AddClientDataSet(CDSOrdenCompraVtos, DSPOrdenCompraVtos);
      AddClientDataSet(CDSImpuestos, DSPImpuestos);

      DatosOrdenCompra.CDSOrdenCompCab.Params.ParamByName('TipoCpbte').Clear;
      DatosOrdenCompra.CDSOrdenCompCab.Params.ParamByName('id').Clear;

      DatosOrdenCompra.CDSOrdenCompraDet.Params.ParamByName('id').Clear;

      DatosOrdenCompra.CDSOrdenCompraVtos.Params.ParamByName('id').Clear;

      DatosOrdenCompra.CDSImpuestos.Params.ParamByName('id').Clear;

      CDSOrdenCompCab.Open;
      CDSOrdenCompraDet.Open;
      CDSOrdenCompraVtos.Open;
      CDSImpuestos.Open;
      CDSTransportes.Open;

      CDSOrdenCompCab.EmptyDataSet;
      CDSOrdenCompraDet.EmptyDataSet;
      CDSImpuestos.EmptyDataSet;
      AplicarMascarasNumericas;
    END;
  Tabla:='OrdenCompraCab';
  Campo:='Id_Oc';

  if (not DMMain_FD.OrdenCompraTope.IsNan) then
    SetTopeOC(DMMain_FD.OrdenCompraTope)
  else
    SetTopeOC(0);

  SetTotalOC(0);
  SetTotalGral(0);
  SetTotalNuevas(0);

  //*************************************************************
   ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'OCompra.ini');
   chAgregaImpuesto.Checked          := ArchivoIni.ReadBool('impuestos', 'impuesto', True);
   VerCodigoAlternativo1.Checked     := ArchivoIni.ReadBool('codigo', 'codigo', False);
   OmitirRecepcionAutomatica.Checked := ArchivoIni.ReadBool('Recepcion', 'estado', False);
   OmitirFacturaAutomtica.Checked    := ArchivoIni.ReadBool('Factura', 'estado', False);

   ArchivoIni.Free;
  //*************************************************************
  // aca pido la copia del pendiente.....

  lbOCPendiente.Visible := DMMain_FD.OrdenCompraPendientes;

  //*******************************************

  //if Modo='N' Then btBuscar.Enabled:=True;
end;

procedure TFormOrdenCompra.FiltraCodigoProveedorClick(Sender: TObject);
begin
  inherited;
  FiltraCodigoProveedor.Checked:=Not(FiltraCodigoProveedor.Checked);
  DBGrillaDetalle.Refresh;
end;

procedure TFormOrdenCompra.FormActivate(Sender: TObject);
begin
  inherited;
//  if (FormOrdenCompra<>Nil) then
//    if (DSBase.DataSet.State = dsBrowse) then
//      if (Trim(DSBase.DataSet.FieldByName('CODIGO').AsString)<>'') then
//        Recuperar.Execute;
end;

procedure TFormOrdenCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  //*************************************************************
   ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'OCompra.ini');
   ArchivoIni.WriteBool('impuestos', 'impuesto', chAgregaImpuesto.Checked);
   ArchivoIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo1.Checked);
   ArchivoIni.WriteBool('Recepcion', 'estado', OmitirRecepcionAutomatica.Checked);
   ArchivoIni.WriteBool('Factura', 'estado', OmitirFacturaAutomtica.Checked);

   ArchivoIni.Free;
  //*************************************************************

  if Anulado<>nil Then FreeAndNil(Anulado);
  if FormDetalleOperacionesProvee<>nil then
    FormDetalleOperacionesProvee.Close;
  with DatosOrdenCompra do
  begin
    CDSOrdenCompCab.Close;
    CDSOrdenCompraDet.Close;
    CDSOrdenCompraVtos.Close;
    CDSImpuestos.Close;
    CDSTransportes.CLose;
  end;
  FreeAndNil(DatosOrdenCompra);
  Action:=caFree;
  inherited;
end;

procedure TFormOrdenCompra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOrdenCompra:=nil;
end;

procedure TFormOrdenCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) then
    IF (Shift=[ssCtrl]) and (Key=VK_DELETE) and (FormOrdenCompra.Active) and (DMMain_FD.UsuarioAdministrador=True) Then
      Borrar.Execute;

end;

procedure TFormOrdenCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key=#27) and (ActiveControl is TDBMemo) then
    begin
      Key:=#0;
      pnDetalleAdicional.Visible:=False;
      DBGrillaDetalle.SetFocus;
    end;
  inherited;
end;

procedure TFormOrdenCompra.FormResize(Sender: TObject);
begin
  inherited;
  if FormOrdenCompra<>nil then
    if (FormOrdenCompra.Width<>918) then
       FormOrdenCompra.Width:=918;

end;

procedure TFormOrdenCompra.AgregarExecute(Sender: TObject);
begin
  pnComprobantesRec.Visible:=False;
  if Anulado<>nil Then FreeAndNil(Anulado);
  DBGrillaDetalle.ReadOnly  :=False;
  dbgVtos.ReadOnly          :=False;
  pnCabecera.Enabled:=True;

  DatosOrdenCompra.CDSOrdenCompraDet.EmptyDataSet;
  DatosOrdenCompra.CDSImpuestos.EmptyDataSet;

  DatosOrdenCompra.CDSOrdenCompCab.close;
  DatosOrdenCompra.CDSOrdenCompCab.Params.ParamByName('TipoCpbte').Clear;
  DatosOrdenCompra.CDSOrdenCompCab.Params.ParamByName('id').Clear;
  DatosOrdenCompra.CDSOrdenCompCab.Open;

  DatosOrdenCompra.CDSOrdenCompraDet.Close;
  DatosOrdenCompra.CDSOrdenCompraDet.Params.ParamByName('id').Clear;
  DatosOrdenCompra.CDSOrdenCompraDet.Open;

  DatosOrdenCompra.CDSOrdenCompraVtos.Close;
  DatosOrdenCompra.CDSOrdenCompraVtos.Params.ParamByName('id').Clear;
  DatosOrdenCompra.CDSOrdenCompraVtos.Open;

  DatosOrdenCompra.CDSImpuestos.Close;
  DatosOrdenCompra.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosOrdenCompra.CDSImpuestos.Open;

  inherited;
  Replicada:=False;
  sbEstado.Panels[0].Text:='';

  Impresa:=False;
  pcDetalleFactura.ActivePageIndex := 0;
  if FormOrdenCompra.Visible then
    begin
      dbeFechaCompra.SetFocus;
      dbeFechaCompra.SelectAll;
    end;


end;

procedure TFormOrdenCompra.pcDetalleFacturaEnter(Sender: TObject);
begin
  inherited;
   IF ((RxDBECodigo.Text = '') OR
      (RxDBESucursal.Text = '') OR
      (RxDBEDeposito.Text = '') OR
      (DatosOrdenCompra.CDSOrdenCompCabMUESTRACOMPROBANTE.Value='') OR
      (dbeSuc.Text = '') OR
      (dbeNumero.Text = '') OR
      (dbeCondCompra.Text = '') or
      (dbeFechaCompra.Text = '') or
      (dbeMuestraRealizo.Text='')) and (DSBase.State in [dsInsert,dsEdit]) THEN
      BEGIN
        ShowMessage('Datos en la Cabecera Incompletos....');
        IF pcDetalleFactura.ActivePageIndex <> 0 THEN
          pcDetalleFactura.ActivePageIndex := 0;
        pnCabecera.Enabled := True;
        RxDBECodigo.SetFocus;
      END
    else
      begin
        if DSBase.State<>dsBrowse Then
          begin
            DatosOrdenCompra.CDSOrdenCompCabNumeroSetText(DatosOrdenCompra.CDSOrdenCompCabNumero,dbeNumero.Text);
            DatosOrdenCompra.CDSOrdenCompCabSucSetText(DatosOrdenCompra.CDSOrdenCompCabSuc,dbeSuc.Text);
          end;
        pnCabecera.Enabled:=False;
        pcDetalleFactura.Enabled:=True;
      end;

end;

procedure TFormOrdenCompra.PegarDetalleDesdeXMLExecute(Sender: TObject);
var CDSXml:TClientDataSet;
begin
  inherited;
  CDSXml:=TClientDataSet.Create(nil);
  if (DSBase.State in [dsInsert,dsEdit]) and (ActiveControl is TDBGrid) Then
    begin
      CDSXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OCompraDet.XML');
      CDSXML.First;
      while not(CDSXML.Eof) do
        begin
          DatosOrdenCompra.CDSOrdenCompraDet.Append;
          DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOSetText(DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO,CDSXML.FieldByName('CODIGOArticulo').AsString);
          DatosOrdenCompra.CDSOrdenCompraDetDETALLE.Value   :=CDSXML.FieldByName('Detalle').AsString;
          DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA,CDSXML.FieldByName('CantidadPEDIDA').AsString);
          DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTALSetText(DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTAL,CDSXML.FieldByName('Unitario_Total').AsString);
          DatosOrdenCompra.CDSOrdenCompraDet.Post;
          CDSXML.Next;
        end;
    end;
end;

procedure TFormOrdenCompra.pnComprobantesRecClick(Sender: TObject);
begin
  inherited;
  pnComprobantesRec.Visible:=False;
end;

procedure TFormOrdenCompra.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.TipoCpbte1 := 'OC';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.Tag        := 15;

//  if (Modo[1] in ['N']) Then     // nueva o.de compra
//    FormBuscaCpbte.EstadoOC:='N';// de acuerdo al modo de operacion traigo las OC >> Nuevas,Autorizadas,Recepcion
//  if (Modo[1] in ['A']) Then     // autorizacion
//    FormBuscaCpbte.EstadoOC:='N';// de acuerdo al modo de operacion traigo las OC >> Nuevas,Autorizadas,Recepcion
//  if (Modo[1] in ['R','I']) Then // recepcion o impresion
//    FormBuscaCpbte.EstadoOC:='A';// de acuerdo al modo de operacion traigo las OC >> Nuevas,Autorizadas,Recepcion
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
      BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
   end;

end;

procedure TFormOrdenCompra.ConfirmaExecute(Sender: TObject);
Var CopiarOC:Boolean;
begin
  CopiarOC:=False;

  CopiarOC:= lbOCPendiente.Visible;

  DatoNew   := IntToStr(DatosOrdenCompra.CDSOrdenCompCabID_OC.Value);
  TipoCpbte := DatosOrdenCompra.CDSOrdenCompCabTIPOCPBTE.Value;

  DatosOrdenCompra.SumarDetalle;
  DatosOrdenCompra.CalcularTotales;
  DatosOrdenCompra.CalcularVtos;

  if DatosOrdenCompra.CDSOrdenCompraDet.State<>dsBrowse Then
    DatosOrdenCompra.CDSOrdenCompraDet.Post;
  if DatosOrdenCompra.CDSOrdenCompraVtos.State<>dsBrowse Then
    DatosOrdenCompra.CDSOrdenCompraVtos.Post;

  if DatosOrdenCompra.CDSOrdenCompCabESTADO.Value<>'C' Then
    begin
      if (Modo='R') then
        begin
          if CopiarOC then
            begin
              DatosOrdenCompra.CDSOrdenCompCabESTADO.Value:='R';
              DatosOrdenCompra.CDSOrdenCompCabFECHACUMPLIDA.AsDateTime:=Date;
              DatosOrdenCompra.CalcularVtos;
            end
          else
            if (MessageDlg('Esta en modo de recepción, da por cumplida la Orden de Compra?.....',mtConfirmation,[mbYes,mbNo],0) = mrYes) Then
              begin
                DatosOrdenCompra.CDSOrdenCompCabESTADO.Value:='R';
                DatosOrdenCompra.CDSOrdenCompCabFECHACUMPLIDA.AsDateTime:=Date;
                DatosOrdenCompra.CalcularVtos;
              end;
        end
      else
        if (Modo='A') Then
          begin
            DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_PREV.Value   := -1;
            DatosOrdenCompra.CDSOrdenCompCabNRO_OC_ANTERIOR.AsString:= '';
            if (MessageDlg('Esta por autorizar una Orden de Compra, la Autoriza (Si/Yes) o solo la modifica (No)?.....',mtConfirmation,[mbYes,mbNo],0) = mrYes) Then
              BEGIN
                if (FormOrdenCompra.TopeOC>0) and ( FormOrdenCompra.TotalOC<FormOrdenCompra.TopeOC) then
                  begin
                    if DatosOrdenCompra.CDSOrdenCompCabFECHAAUTORIZACION.AsString='' then
                      DatosOrdenCompra.CDSOrdenCompCabFECHAAUTORIZACION.AsDateTime:=Date;

                    DatosOrdenCompra.CDSOrdenCompCabESTADO.Value:='A';
                    DatosOrdenCompra.CalcularVtos;
                  end
                else
                  begin
                    ShowMessage('Excede de limite de compra .... Necesita Autorización..');
                    if not (Assigned(FormLogin)) then
                      FormLogin := TFormLogin.Create(FormOrdenCompra);
                    FormLogin.ShowModal;
                    if (FormLogin.Tag=1) Then
                      begin
                        DatosOrdenCompra.CDSOrdenCompCabESTADO.Value:='A';
                        DatosOrdenCompra.CalcularVtos;
                      end
                    ELSE
                      begin
                        DatosOrdenCompra.CDSOrdenCompCabAUTORIZO.AsString         :='';
                        DatosOrdenCompra.CDSOrdenCompCabFECHAAUTORIZACION.AsString:='';
                      end;
                  end;
              END
            ELSE
              begin
                DatosOrdenCompra.CDSOrdenCompCabAUTORIZO.AsString         :='';
                DatosOrdenCompra.CDSOrdenCompCabFECHAAUTORIZACION.AsString:='';
              end;
          end;
    end;

  if (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString[1]='A') then
    if (Not(DatosOrdenCompra.CDSOrdenCompCabAUTORIZO.AsString='')) Then
      begin
        inherited;
        Recuperar.Execute;
        if Replicada=False then
          if (MessageDlg('Imprime Comprobante...?',mtConfirmation,[mbYes,mbNo],0 )=mrYes) Then
            Imprimir.Execute;
        Agregar.Enabled:=Modo='N';
        if Modo[1] in ['A'] then close;
      end
    else
      ShowMessage('Falta quien autoriza')
  else
    if (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString[1] in ['N','R']) Then
      begin
        if DatosOrdenCompra.CDSOrdenCompraDet.State<>dsBrowse Then
          DatosOrdenCompra.CDSOrdenCompraDet.Post;
        if DatosOrdenCompra.CDSOrdenCompraVtos.State<>dsBrowse Then
          DatosOrdenCompra.CDSOrdenCompraVtos.Post;
        if (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString[1] in ['N']) Then
          DatosOrdenCompra.InformarCambioPrecioHistorial;
        inherited;
        Recuperar.Execute;
        if (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString[1] in ['N']) Then
          begin

            if DMMain_FD.AutoConfirmaOrdenCompra Then
              begin
                DatosOrdenCompra.CDSBuscaAutoriza.Close;
                DatosOrdenCompra.CDSBuscaAutoriza.Open;
                DatosOrdenCompra.CDSBuscaAutoriza.First;
                if DatosOrdenCompra.CDSBuscaAutorizaCODIGO.AsString<>'' then
                  begin
                    DatosOrdenCompra.QAutorizarOC.Close;
                    DatosOrdenCompra.QAutorizarOC.ParamByName('id').Value          := DatosOrdenCompra.CDSOrdenCompCabID_OC.Value;
                    DatosOrdenCompra.QAutorizarOC.ParamByName('Fecha').AsDate      := Date;
                    DatosOrdenCompra.QAutorizarOC.ParamByName('Autorizo').AsString := DatosOrdenCompra.CDSBuscaAutorizaCODIGO.AsString;
                    DatosOrdenCompra.QAutorizarOC.ExecSQL;;
                    DatosOrdenCompra.QAutorizarOC.Close;
                    sbEstado.Panels[0].Text:='Autorizada...';
                    Recuperar.Execute;
                  end;
              end;
          end;

        Agregar.Enabled:=Modo='N';
        if DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString[1] in ['R'] Then
          begin
            if ((HayPendientes) and (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString='R'))  then
              begin
                DatosOrdenCompra.CDSOrdenCompCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OCompraCab.XML');
                DatosOrdenCompra.CDSOrdenCompraDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OCCompraDet.XML');

                if (Not(OmitirFacturaAutomtica.Checked)) and (MessageDlg('Genera el comprobante de Compra?..... ',mtConfirmation,[mbYes,mbNo],0)=mrYes) Then
                  GenerarFactura.Execute
                else
                  if (Not(OmitirRecepcionAutomatica.Checked)) and  (MessageDlg('Genera el comprobante de Ingreso Mercaderia?..... ',mtConfirmation,[mbYes,mbNo],0)=mrYes) Then
                    GeneraRecepcion.Execute;

                if DMMain_FD.OrdenCompraPendientes then {lbOCPendiente.Visible}
                  HacerCopiaOCompra.Execute;

              end
            else
              begin
                if (not(OmitirFacturaAutomtica.Checked)) and (MessageDlg('Genera el comprobante de Compra?..... ',mtConfirmation,[mbYes,mbNo],0)=mrYes) Then
                  GenerarFactura.Execute
                else
                  if (not(OmitirRecepcionAutomatica.Checked)) and (MessageDlg('Genera el comprobante de Ingreso Mercaderia?..... ',mtConfirmation,[mbYes,mbNo],0)=mrYes) Then
                    GeneraRecepcion.Execute;
              end;

          end;
      end
    else
      if (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString[1] in ['C']) Then
        begin
          inherited;
          Recuperar.Execute;
          Agregar.Enabled:=Modo='N';
        end;
  Replicada:=False;

end;


procedure TFormOrdenCompra.ControlDetalleExecute(Sender: TObject);
begin
  inherited;
  if not(DSBase.DataSet.IsEmpty) and (DSBase.DataSet.State = dsEdit) then
    begin
      if not(Assigned(FormControlDetalleOC)) then
        FormControlDetalleOC:=TFormControlDetalleOC.Create(Self);
      DatosOrdenCompra.CDSOrdenCompraDet.IndexFieldNames:='';
      FormControlDetalleOC.DSDetalle:=DatosOrdenCompra.DSOrdenCompraDet;
      FormControlDetalleOC.ShowModal;
      DatosOrdenCompra.CDSOrdenCompraDet.IndexFieldNames:='';

    end;
 end;

procedure TFormOrdenCompra.CopiarDetalleXMLExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  if Not(DatosOrdenCompra.CDSOrdenCompraDet.IsEmpty)  Then
    begin
      DatosOrdenCompra.CDSOrdenCompraDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OCompraDet.XML');
    end
  else
    ShowMessage('No Hay datos para Copiar....');
end;

procedure TFormOrdenCompra.CopiarOrdenCompraExecute(Sender: TObject);
var  Autorizado,Recibido:Extended;
begin
  inherited;
  Autorizado := 0;
  Recibido   := 0;
  Datosordencompra.CDSOrdenCompraDet.First;
  datosordencompra.CDSOrdenCompraDet.DisableControls;
  while not(datosordencompra.CDSOrdenCompraDet.eof) do
    begin
      Autorizado := DatosOrdenCompra.CDSOrdenCompraDetCANTIDADAUTORIZADA.Value+Autorizado;
      Recibido   := DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.Value+Recibido;
      datosordencompra.CDSOrdenCompraDet.Next;
    end;
  datosordencompra.CDSOrdenCompraDet.First;
  datosordencompra.CDSOrdenCompraDet.EnableControls;
  if Not(isZero(Autorizado-Recibido,0.1)) then
    begin
      DatosOrdenCompra.CDSOrdenCompCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OCompraCab.XML');
      DatosOrdenCompra.CDSOrdenCompraDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OCCompraDet.XML');
      HacerCopiaOCompra.Execute;
    end
  else
    Showmessage('No hay pendientes para hacer Clonado de Orden de Compra...');
end;

procedure TFormOrdenCompra.dbeDetAdicionalKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#27 then
    begin
      Key:=#0;
      pnDetalleAdicional.Visible:=False;
    end;
end;

procedure TFormOrdenCompra.dbeFechaCompraExit(Sender: TObject);
begin
  inherited;
  DatosOrdenCompra.CDSOrdenCompCabFECHASetText(DatosOrdenCompra.CDSOrdenCompCabFECHA,dbeFechaCompra.Text);
 end;

procedure TFormOrdenCompra.dbgCompDblClick(Sender: TObject);
begin
  inherited;
  if dbgComp.DataSource.DataSet.IsEmpty=False then
    begin
      if dbgComp.DataSource.DataSet.FieldByName('tipocpbte').AsString='RM' then
        begin
          if Not(Assigned(FormRecepcionMercaderia)) then
            FormRecepcionMercaderia:=TFormRecepcionMercaderia.Create(self);
          FormRecepcionMercaderia.DatoNew  :=dbgComp.DataSource.DataSet.FieldByName('id_recmer').AsString;
          FormRecepcionMercaderia.TipoCpbte:='RM';

          FormRecepcionMercaderia.Recuperar.Execute;
          FormRecepcionMercaderia.Show;
        end
      else
        if dbgComp.DataSource.DataSet.FieldByName('tipocpbte').AsString='FC' then
          begin
            if Not(Assigned(FormCompra_2)) then
              FormCompra_2:=TFormCompra_2.Create(self);
            FormCompra_2.DatoNew  :=dbgComp.DataSource.DataSet.FieldByName('id_fc').AsString;
            FormCompra_2.TipoCpbte:='FC';
            dbgComp.DataSource.DataSet.FieldByName('id_fc').AsString;
            FormCompra_2.Recuperar.Execute;
            FormCompra_2.Show;
          end;

      
    end;
  
end;

procedure TFormOrdenCompra.ModificarExecute(Sender: TObject);
begin
  inherited;
  Replicada:=False;
  if Modo='A' Then
    begin
      DatosOrdenCompra.CDSOrdenCompCabFECHAAUTORIZACION.AsDateTime:=Date;
      //if Trim(EmpleadoPorDefecto)<>'' Then
      //  DatosOrdenCompra.wwCDSOrdenCompraCabAUTORIZOSetText(DatosOrdenCompra.wwCDSOrdenCompraCabAUTORIZO,EmpleadoPorDefecto)
      //else
      //  begin
      //    ShowMessage('Verificar en las opciones de configuración local, el emplado por defecto');
      //    Cancelar.Execute;
      //  end;
    end;
  if Modo='R' Then DatosOrdenCompra.CDSOrdenCompCabFECHACUMPLIDA.AsDateTime:=Date;
end;

procedure TFormOrdenCompra.CambiaProveedorExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.FieldByName('ESTADO').Value='N' then
    BEGIN
      if Not(Assigned(FormCambiaProveedorFactura)) then
        FormCambiaProveedorFactura:=TFormCambiaProveedorFactura.Create(self);
      FormCambiaProveedorFactura.codigo       :=DSBase.DataSet.FieldByName('codigo').AsString;
      FormCambiaProveedorFactura.reazonsocial :=DSBase.DataSet.FieldByName('razonsocial').AsString;
      FormCambiaProveedorFactura.nombre       :=DSBase.DataSet.FieldByName('nombre').AsString;
      FormCambiaProveedorFactura.direccion    :=DSBase.DataSet.FieldByName('direccion').AsString;
      FormCambiaProveedorFactura.localidad    :=DSBase.DataSet.FieldByName('localidad').AsString;
      FormCambiaProveedorFactura.cpostal      :=DSBase.DataSet.FieldByName('cpostal').AsString;
      FormCambiaProveedorFactura.tipoiva      :=DSBase.DataSet.FieldByName('Tipoiva').Value;
      FormCambiaProveedorFactura.Tipo         :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
      FormCambiaProveedorFactura.Id_Cpbte     :=DSBase.DataSet.FieldByName('id_oc').Value;
      FormCambiaProveedorFactura.Showmodal;
      Recuperar.Execute;
    END
  ELSE
    ShowMessage('Operacion No valida para esta concidion');
end;

procedure TFormOrdenCompra.CambiarFechaRecepcionExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.IsEmpty=False) and (DSBase.DataSet.State=dsBrowse) then
    begin
      if DatosOrdenCompra.CDSOrdenCompCabESTADO.Value<>'R' then
        raise Exception.Create('No Esta Recepcionada esta Orden');

      IF MessageDlg('Modifica Fecha de Recepcion?...',mtInformation,[mbYes, mbNo], 0) = mrYes Then
        begin
          if Not(Assigned(FormFecha)) Then
            FormFecha:=TFormFecha.Create(Self);
          FormFecha.dbcCtaBco.Visible  :=False;
          FormFecha.dbcSucursal.Visible:=False;
          FormFecha.lbCta.Visible      :=False;
          FormFecha.Label1.Visible     :=False;
          FormFecha.fecha:=DatosOrdenCompra.CDSOrdenCompCabFECHACUMPLIDA.AsDateTime;
          FormFecha.ShowModal;
          if FormFecha.ModalResult=mrOk then
            begin
              DatosOrdenCompra.QCambiaFechaCumplida.Close;
              DatosOrdenCompra.QCambiaFechaCumplida.ParamByName('Fecha').AsDateTime:=FormFecha.fecha;
              DatosOrdenCompra.QCambiaFechaCumplida.ParamByName('Id').AsInteger:=DatosOrdenCompra.CDSOrdenCompCabID_OC.Value;
              DatosOrdenCompra.QCambiaFechaCumplida.ExecSQL;
              DatosOrdenCompra.QCambiaFechaCumplida.Close;

              Recuperar.Execute;
            end;
          FreeAndNil(FormFecha);
        end;
    end;
end;

procedure TFormOrdenCompra.CancelarExecute(Sender: TObject);
begin
  pnDetalleAdicional.Visible:=False;
  DatosOrdenCompra.CDSOrdenCompCab.close;
  DatosOrdenCompra.CDSOrdenCompCab.Params.ParamByName('TipoCpbte').Clear;
  DatosOrdenCompra.CDSOrdenCompCab.Params.ParamByName('id').Clear;
  DatosOrdenCompra.CDSOrdenCompCab.Open;

  DatosOrdenCompra.CDSOrdenCompraDet.Close;
  DatosOrdenCompra.CDSOrdenCompraDet.Params.ParamByName('id').Clear;
  DatosOrdenCompra.CDSOrdenCompraDet.Open;

  DatosOrdenCompra.CDSOrdenCompraVtos.Close;
  DatosOrdenCompra.CDSOrdenCompraVtos.Params.ParamByName('id').Clear;
  DatosOrdenCompra.CDSOrdenCompraVtos.Open;

  DatosOrdenCompra.CDSImpuestos.Close;
  DatosOrdenCompra.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosOrdenCompra.CDSImpuestos.Open;

  inherited;
  Agregar.Enabled:=Modo='N';
end;

procedure TFormOrdenCompra.chAgregaImpuestoClick(Sender: TObject);
begin
  inherited;
//  if DSBase.DataSet.DataSource<>nil then
  begin
    if DSBase.DataSet.State in [dsInsert,dsEdit] then
      begin
        DatosOrdenCompra.SumarDetalle;
        //DatosOrdenCompra.SumarCantidades;
        DatosOrdenCompra.CalcularTotales;
        // Borrar Los renglones con valor 0 (cero)....
        DatosOrdenCompra.CDSImpuestos.EnableControls;
        DatosOrdenCompra.CDSImpuestos.First;
        WHILE NOT (DatosOrdenCompra.CDSimpuestos.Eof) DO
          BEGIN
            IF (DatosOrdenCompra.CDSImpuestosImporte.AsFloat <= 0) OR (DatosOrdenCompra.CDSImpuestosTasa.AsFloat <= 0) THEN
              begin
                DatosOrdenCompra.CDSImpuestos.Delete;
                DatosOrdenCompra.CDSImpuestos.First;
              end
            else
              DatosOrdenCompra.CDSImpuestos.Next;
          END;
      end;
  end;
end;

procedure TFormOrdenCompra.ImprimirEtiquetasExecute(Sender: TObject);
begin
  inherited;
   if Not(Assigned(FormEtiquetasCompra)) then
    FormEtiquetasCompra:=TFormEtiquetasCompra.Create(self);
  FormEtiquetasCompra.CDSEtiquetas.CloneCursor(DatosOrdenCompra.CDSOrdenCompraDet,True,True);

  TFloatField(FormEtiquetasCompra.CDSEtiquetas.FieldByName('MUESTRAPRECIOVTA')).DisplayFormat  :=',0.00';
  TFloatField(FormEtiquetasCompra.CDSEtiquetas.FieldByName('CANTIDAD')).DisplayFormat          :=',0.00';

  FormEtiquetasCompra.dbgEtiquetas.Columns[0].FieldName:='CODIGOARTICULO';
  FormEtiquetasCompra.dbgEtiquetas.Columns[0].Title.Caption    :='Codigo';
  FormEtiquetasCompra.dbgEtiquetas.Columns[0].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[1].FieldName:='DETALLE';
  FormEtiquetasCompra.dbgEtiquetas.Columns[1].Title.Caption    :='Detalle';
  FormEtiquetasCompra.dbgEtiquetas.Columns[1].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[2].FieldName:='MUESTRACODIGOBARRA';
  FormEtiquetasCompra.dbgEtiquetas.Columns[2].Title.Caption    :='Codigo Barra';
  FormEtiquetasCompra.dbgEtiquetas.Columns[2].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[3].FieldName:='MUESTRAPRECIOVTA';
  FormEtiquetasCompra.dbgEtiquetas.Columns[3].Title.Caption    :='Precio Vta';
  FormEtiquetasCompra.dbgEtiquetas.Columns[3].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[4].FieldName:='CANTIDAD';
  FormEtiquetasCompra.dbgEtiquetas.Columns[4].Title.Caption    :='Cantidad';
  FormEtiquetasCompra.dbgEtiquetas.Columns[4].Title.Alignment  :=taCenter;

 // FormEtiquetasCompra.frDSEtiq. datafields
  FormEtiquetasCompra.ShowModal;
  FormEtiquetasCompra.BringToFront;
end;

procedure TFormOrdenCompra.ImprimirExecute(Sender: TObject);
var aux:String;
begin
  inherited;
  DatosOrdenCompra.CDSEmpresa.Close;
  DatosOrdenCompra.CDSEmpresa.Open;
  frOrdenCompra.PrintOptions.Printer:=PrNomCpbte;
  frOrdenCompra.SelectPrinter;

  //frOrdenCompra.PrepareReport;

//  if (DMMain_FD.QOpciones.Fields[0].AsString[1]='S') Then
//    frOrdenCompra.ShowReport
//  else
//    frOrdenCompra.Print;


  DatosOrdenCompra.QComprob.Close;
  DatosOrdenCompra.QComprob.ParamByName('id').Value :=DatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTE.Value;
  DatosOrdenCompra.QComprob.ParamByName('suc').Value:=DatosOrdenCompra.CDSOrdenCompCabSUCURSAL.Value;
  DatosOrdenCompra.QComprob.Open;

  Imprime:=DatosOrdenCompra.QComprobIMPRIME.Value;
  frOrdenCompra.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosOrdenCompra.QComprobREPORTE.AsString);
  frOrdenCompra.PrintOptions.Copies :=DatosOrdenCompra.QComprobCOPIAS.Value;

  frOrdenCompra.Variables['Transporte']:=''''+dbcTransporte.Text+'''';
  frOrdenCompra.Variables['Cantidad']  :=''''+edCantidad.Text+'''';


  if DatosOrdenCompra.CDSOrdenCompraVtos.RecordCount>0 Then
    begin
      Aux:='';
      DatosOrdenCompra.CDSOrdenCompraVtos.First;
      while not(DatosOrdenCompra.CDSOrdenCompraVtos.Eof) do
        begin
          aux:=aux+DatosOrdenCompra.CDSOrdenCompraVtosDIAS.AsString;
          DatosOrdenCompra.CDSOrdenCompraVtos.Next;
          if not(DatosOrdenCompra.CDSOrdenCompraVtos.Eof) Then
            Aux:=Aux+'-';
        end;
      Aux:=Aux+' días F.F';
      frOrdenCompra.Variables['Condicion']:=''''+Aux+'''';
    end
  else
    frOrdenCompra.Variables['Condicion']:=''''+DatosOrdenCompra.CDSOrdenCompCabMUESTRACONDCOMPRA.Value+'''';


  DatosOrdenCompra.QComprob.Close;
  if (Imprime='S') Then
    if (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString='A') or (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString='R') Then
      frOrdenCompra.ShowReport
    else
      ShowMessage('No se puede imprimir una Orden de Compra que no esta autorizada....');
  DatosOrdenCompra.CDSEmpresa.Close;

  if (Impresa) then
    begin
      spMarcarImpreso.Active:=False;
      spMarcarImpreso.Params[0].Value :=DatosOrdenCompra.CDSOrdenCompCabID_OC.Value;
      spMarcarImpreso.ExecProc;
      spMarcarImpreso.close;
    end;

end;

procedure TFormOrdenCompra.Label33Click(Sender: TObject);
begin
  inherited;
  pnComprobantesRec.Visible:=False;
end;

procedure TFormOrdenCompra.lbFactClick(Sender: TObject);
begin
  inherited;
  VerFacturas.Execute;
//  pnComprobantesRec.Visible:=False;
//  DatosOrdenCompra.CDSFacturaComp.Close;
//  DatosOrdenCompra.CDSFacturaComp.Params.ParamByName('id_ordencompra').Value:=DSBase.DataSet.FieldByName('id_oc').Value;
//  DatosOrdenCompra.CDSFacturaComp.Open;
//  if DatosOrdenCompra.CDSFacturaComp.RecordCount>0 then
//    begin
//      dbgComp.DataSource:=DatosOrdenCompra.DSFacturaComp;
//      pnComprobantesRec.Visible:=True;
//    end;
end;

procedure TFormOrdenCompra.lbRecepClick(Sender: TObject);
begin
  inherited;
  VerRecepciones.Execute;
//  pnComprobantesRec.Visible:=False;
//  DatosOrdenCompra.CDSRecepciones.Close;
//  DatosOrdenCompra.CDSRecepciones.Params.ParamByName('id_ordencompr').Value:=DSBase.DataSet.FieldByName('id_oc').Value;
//  DatosOrdenCompra.CDSRecepciones.Open;
//  if DatosOrdenCompra.CDSRecepciones.RecordCount>0 then
//    begin
//      dbgComp.DataSource:=DatosOrdenCompra.DSRecepciones;
//      pnComprobantesRec.Visible:=True;
//    end;
end;

procedure TFormOrdenCompra.LeerRecepcionesExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) Then
    begin
      if (Assigned(FormBorradorOC)) then
        FreeAndNil(FormBorradorOC);

      if Not(Assigned(FormBorradorOC)) then
        FormBorradorOC:=TFormBorradorOC.Create(Self);
      FormBorradorOC.id_oc:=DSBase.DataSet.FieldByName('id_oc').Value;
      formBorradorOC.ShowModal;
      if (FormBorradorOC.ModalResult=mrOk) and (Not(FormBorradorOC.CDSBorradorOC.IsEmpty)) then
        if MessageDlg('Limpiar borrador de Orden de compras.. ??',TMsgDlgType.mtConfirmation,mbYesNo,0,mbyes)=mryes then
          begin
            BorrarBorrador.Execute; // borrar
          end;
      if (Assigned(FormBorradorOC)) then
        FreeAndNil(FormBorradorOC);
    end;
end;

procedure TFormOrdenCompra.dbtCotizacionClick(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then
    begin
      if not(Assigned(FormCotizacion)) then
        FormCotizacion :=TFormCotizacion.Create(self);
      FormCotizacion.Moneda  := DBGrillaDetalle.DataSource.DataSet.FieldByName('id_moneda').Value;
      FormCotizacion.Comp_Vta:='C';
      FormCotizacion.ShowModal;
      if FormCotizacion.ModalResult=mrOk then
        begin
   //       if (DBGrillaDetalle.DataSource.DataSet.FieldByName('id_moneda').Value) = (DSBase.DataSet.FieldByName('moneda_cpbte').Value) then
          DatosOrdenCompra.CDSOrdenCompraDet.Edit;
          DatosOrdenCompra.CDSOrdenCompraDetCOTIZACION.AsFloat:=FormCotizacion.Cotizacion;
       //   else
          DatosOrdenCompra.RecotizarPrecios;
        end;
      FreeAndNil(FormCotizacion);
    end;

end;

procedure TFormOrdenCompra.dbtID_OC_NextClick(Sender: TObject);
begin
  inherited;
 if (DSBase.DataSet.State=dsBrowse) and
     (DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_NEXT.AsString<>'') and
     (DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_NEXT.AsInteger>0) then
    begin
      DatoNew:=DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_NEXT.AsString;
      TipoCpbte:='OC';
      Recuperar.Execute;
    end;
end;

procedure TFormOrdenCompra.dbtID_OC_PrevClick(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and
     (DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_PREV.AsString<>'') and
     (DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_PREV.AsInteger>0) then
    begin
      DatoNew:=DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_PREV.AsString;
      TipoCpbte:='OC';
      Recuperar.Execute;
    end;
end;

procedure TFormOrdenCompra.DesAnularExecute(Sender: TObject);
begin
  inherited;
  IF MessageDlg('Esta por hacer una operación de DesAnulación.. está seguro?...',mtInformation,[mbYes, mbNo], 0) = mrYes Then
    begin
      DatosOrdenCompra.CDSOrdenCompCab.Edit;
      DatosOrdenCompra.CDSOrdenCompCabESTADO.Value :='A';
      IF MessageDlg('Da DesAnulada ...???',mtInformation,[mbYes, mbNo], 0) = mrYes Then
        DatosOrdenCompra.CDSOrdenCompCabANULADO.Value:='N';
      Confirma.Execute;
    end;
end;

procedure TFormOrdenCompra.DetalleOpExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormDetalleOperacionesProvee)) Then
     FormDetalleOperacionesProvee:=TFormDetalleOperacionesProvee.Create(FormOrdenCompra);
  FormDetalleOperacionesProvee.codigo:=DatosOrdenCompra.CDSOrdenCompCabCODIGO.Value;
  FormDetalleOperacionesProvee.Grupo := -1;
  FormDetalleOperacionesProvee.Show;
end;

procedure TFormOrdenCompra.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled             := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Borrador.Enabled             := (DSBase.DataSet.State IN [dsInsert,dsEdit]) and (Modo='N');

  Anular.Enabled               := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  DBGrillaDetalle.ReadOnly     := DSBase.DataSet.State IN [dsBrowse];
  RxDBAutorizo.Enabled         := (Modo='A') and (DSBase.DataSet.State IN [dsEdit]);
  dbeFechaAutorizacion.Enabled := RxDBAutorizo.Enabled;
  chAgregaImpuesto.Enabled     := (DSBase.DataSet.State IN [dsEdit,dsInsert]) and
                                  ( (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='N') Or (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='A') or
                                  (Modo='N') or (Modo='A'))  ;
  CopiarOrdenCompra.Enabled    := (DSBase.DataSet.State IN [dsBrowse]) and (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='R');

  ControlDetalle.Enabled       := (DSBase.DataSet.State IN [dsEdit]) and (Not(DSBase.Dataset.IsEmpty));

  GeneraRecepcion.Enabled         := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  GenerarFactura.Enabled          := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  CambiarFechaRecepcion.Enabled   := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='R');
  Recibida.Enabled                := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value<>'R'); ;

  VolverAutorizada.Enabled := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='R');

  DatosOrdenCompra.CDSRecepciones.Close;
  DatosOrdenCompra.CDSRecepciones.Params.ParamByName('id_ordencompr').Value:=DSBase.DataSet.FieldByName('id_oc').Value;
  DatosOrdenCompra.CDSRecepciones.Open;
  if DatosOrdenCompra.CDSRecepciones.RecordCount>0 then
    VolverAutorizada.Enabled:=False;
  if VolverAutorizada.Enabled then
    begin
      DatosOrdenCompra.CDSFacturaComp.Close;
      DatosOrdenCompra.CDSFacturaComp.Params.ParamByName('id_ordencompra').Value:=DSBase.DataSet.FieldByName('id_oc').Value;
      DatosOrdenCompra.CDSFacturaComp.Open;
      if DatosOrdenCompra.CDSFacturaComp.RecordCount>0 then
        VolverAutorizada.Enabled:=False;
    end;

  VolverModoAutorizacion.Enabled := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));

  if Not(VolverAutorizada.Enabled) then
    VolverModoAutorizacion.Enabled:=False;

  if VolverModoAutorizacion.Enabled=False then
    VolverModoAutorizacion.Enabled := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='A');

  DBGrillaDetalle.ReadOnly  := DSBase.DataSet.State IN [dsBrowse];
  LeerRecepciones.Enabled   :=(DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));

  if CopiarOrdenCompra.Enabled then
    CopiarOrdenCompra.Enabled := DSBase.DataSet.FieldByName('NRO_OC_SIGUIEN').AsString='';

 end;

procedure TFormOrdenCompra.EnviarCorreoExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  frOrdenCompra.PrintOptions.Printer:=PrNomCpbte;
  frOrdenCompra.SelectPrinter;

  DatosOrdenCompra.QComprob.Close;
  DatosOrdenCompra.QComprob.ParamByName('id').Value :=DatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTE.Value;
  DatosOrdenCompra.QComprob.ParamByName('suc').Value:=DatosOrdenCompra.CDSOrdenCompCabSUCURSAL.Value;
 // DatosOrdenCompra.QComprob.ParamByName('desglozaIva').Value:='*';

  DatosOrdenCompra.QComprob.Open;

  frOrdenCompra.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosOrdenCompra.QComprobREPORTE.AsString);

  DatosOrdenCompra.QComprob.Close;
  frOrdenCompra.PrepareReport;

  frxPDFExport1.ShowDialog    := False;
  frxPDFExport1.EmbeddedFonts := True;
  frxPDFExport1.FileName      := (ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenCompa_'+DatosOrdenCompra.CDSOrdenCompCabNROCPBTE.AsString+'.pdf');

  frOrdenCompra.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;

//  if DatosVentas.CorreoDestino='' Then
//    begin
//      DMBuscadores.QBuscaCorreo.Close;
//      DMBuscadores.QBuscaCorreo.ParamByName('Codigo').Value:=DatosVentas.CDSVentaCabCODIGO.Value;
//      DMBuscadores.QBuscaCorreo.Open;
//      if Not(DMBuscadores.QBuscaCorreo.IsEmpty) Then
//        DatosVentas.CorreoDestino:=DMBuscadores.QBuscaCorreoCORREOELECTRONICO.Value
//      else
//        DatosVentas.CorreoDestino:='';
//      DMBuscadores.QBuscaCorreo.Close;
//    end;
  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);
  FormCorreo.CorreoOrigen        :=DirCorreo;
  FormCorreo.Remitente           :=Remitente;
  FormCorreo.edDireccion.Text    :=DatosOrdenCompra.CDSOrdenCompCabMUESTRACORREO.AsString;
  FormCorreo.Destinatario        :=DatosOrdenCompra.CDSOrdenCompCabNOMBRE.AsString;
  FormCorreo.Puerto              :=Puerto;
  FormCorreo.CorreoDestino       :=DatosOrdenCompra.CDSOrdenCompCabMUESTRACORREO.AsString;
  FormCorreo.NombreServidorCorreo:=NombreServidor;
  FormCorreo.NombreCuentaCorreo  :=NombreCuenta;
  FormCorreo.Clave               :=Clave;
  FormCorreo.Autenticacion       :=Autotenticacion;
  FormCorreo.Asunto              :='OrdenCompra - '+ DatosOrdenCompra.CDSOrdenCompCabLETRA.AsString+
                                   '-'+ DatosOrdenCompra.CDSOrdenCompCabSUC.AsString+
                                   '-'+ DatosOrdenCompra.CDSOrdenCompCabNUMERO.AsString+
                                   ' del '+ FormatDateTime('dd-mm-yy',DatosOrdenCompra.CDSOrdenCompCabFECHA.AsDateTime);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenCompa_'+DatosOrdenCompra.CDSOrdenCompCabNROCPBTE.AsString+'.pdf');
  FormCorreo.Show;
end;

procedure TFormOrdenCompra.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frOrdenCompra.DesignReport;
end;

procedure TFormOrdenCompra.Panel3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  if ((X > 42) and (X < 120)) Then
    begin
        if (( Y > 0 )and (y < 15)) and
           ((DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_PREV.AsString <>'') and
            (DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_PREV.AsInteger > 0))
          then
            panel3.Cursor:=crHandPoint
        else
          if (( Y > 16 )and (y < 36)) and
             ((DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_NEXT.AsString <>'') and
              (DatosOrdenCompra.CDSOrdenCompCabID_OCOMPRA_NEXT.AsInteger > 0))
            then
              panel3.Cursor:=crHandPoint
          else
             panel3.Cursor:=crDefault;
    end
  else
    panel3.Cursor:=crDefault;
  //sbEstado.Panels[0].Text:='X:'+IntToStr(X)+' Y:'+IntToStr(Y);
end;

procedure TFormOrdenCompra.RecepcionarOCompra(codigo: String; Cantidad: Double);
var P:TBookmark;
begin
  DatosOrdenCompra.CDSOrdenCompraDet.First;
  if DatosOrdenCompra.CDSOrdenCompraDet.Locate('CODIGOARTICULO',codigo,[]) then
    begin
      DatosOrdenCompra.CDSOrdenCompraDet.Edit;
      DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA,FormatFloat('0.000',Cantidad));
    end
  else
    begin
      DatosOrdenCompra.CDSOrdenCompraDet.Append;
      DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOSetText(DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO,Codigo);
      DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA,FormatFloat('0.000',Cantidad));
      DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA,FormatFloat('0.000',Cantidad));
      DatosOrdenCompra.CDSOrdenCompraDet.Post;
    end

end;

procedure TFormOrdenCompra.RecibidaExecute(Sender: TObject);
begin
  inherited;
  if not(DSBase.DataSet.IsEmpty) and (DSBase.DataSet.FieldByName('ESTADO').Value='A') then
    if MessageDlg('Da por recibida..???',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
      begin
        with DatosOrdenCompra do
        begin
          QRecibirOC.Close;
          QRecibirOC.ParamByName('id').Value        := CDSOrdenCompCabID_OC.Value;
          QRecibirOC.ParamByName('Fecha').AsDateTime:= Date;
          QRecibirOC.ExecSQL;
          QRecibirOC.Close;
        end;
        Recuperar.Execute;
      end;
end;

procedure TFormOrdenCompra.RecuperarExecute(Sender: TObject);
begin
  inherited;

  DatosOrdenCompra.CDSOrdenCompCab.close;
  DatosOrdenCompra.CDSOrdenCompCab.Params.ParamByName('TipoCpbte').Value := TipoCpbte;
  DatosOrdenCompra.CDSOrdenCompCab.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosOrdenCompra.CDSOrdenCompCab.Open;

  DatosOrdenCompra.CDSOrdenCompraDet.Close;
  DatosOrdenCompra.CDSOrdenCompraDet.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosOrdenCompra.CDSOrdenCompraDet.Open;

  DatosOrdenCompra.CDSOrdenCompraVtos.Close;
  DatosOrdenCompra.CDSOrdenCompraVtos.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosOrdenCompra.CDSOrdenCompraVtos.Open;

  DatosOrdenCompra.CDSImpuestos.Close;
  DatosOrdenCompra.CDSImpuestos.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosOrdenCompra.CDSImpuestos.Open;

  if DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='A' Then Modo:='R';

  pnPrincipal.Enabled       := True;
  pcDetalleFactura.Enabled  := True;
  DBGrillaDetalle.Enabled   := True;
  pnCabecera.Enabled        := False;
  pnComprobantesRec.Visible := False;

  DatosOrdenCompra.HabilitarLabel;

  if DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='C' Then
    begin
       if Anulado=nil Then
          Anulado:=TPanel.Create(Self);
       Anulado.Parent:=Self;
       Anulado.Caption:='ANULADA';
       Anulado.Top:= Trunc(FormOrdenCompra.Height*0.5)-20;
       Anulado.Left:=Trunc(FormOrdenCompra.Width*0.5)-100;
       Anulado.Height     := 40;
       Anulado.Width      := 200;
       Anulado.Font.Size  := 30;
       Anulado.Font.Color := clRed;
       Anulado.Font.Name  := 'Arial';
       Anulado.Font.Style := [fsBold];
       Anulado.Visible    := True;
       ANulado.BringToFront;
    end
  else
    if Anulado<>nil Then
      FreeAndNil(Anulado);

  if Modo='A' Then //Autorizacion
    begin
      Anular.Enabled := True;
      Buscar.Enabled := False;
      Prev.Enabled   := False;
      Next.Enabled   := False;
      if (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString='N') then
        begin
          Agregar.Enabled         :=True;
          Modificar.Enabled       :=True;
          Modificar.Caption       :='Autorizar';
          Anular.Enabled          :=True;
          if DBGrillaDetalle.ReadOnly then
            DBGrillaDetalle.ReadOnly:=False;
          dbgVtos.ReadOnly        :=False;
        end
      else
        begin
          Agregar.Enabled         :=True;
          Modificar.Enabled       :=False;
          Modificar.Caption       :='Modificar';
          Anular.Enabled          :=False;
          DBGrillaDetalle.ReadOnly:=True;
          dbgVtos.ReadOnly        :=True;
        end;
    end
  else
    if Modo='N' Then  //Nueva
      begin
        Anular.Enabled    :=True;
        Modificar.Caption :='Modificar';
        Buscar.Enabled    :=True;
   //     Prev.Enabled      :=True;
   //     Next.Enabled      :=True;
        if (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString ='N') then
          begin
            Modificar.Enabled        :=True;
            Agregar.Enabled          :=True;
            Anular.Enabled           :=True;
            if DBGrillaDetalle.ReadOnly then
              DBGrillaDetalle.ReadOnly :=False;
            dbgVtos.ReadOnly         :=False;
          end
        else
           begin
              Modificar.Enabled        := False;
              Agregar.Enabled          := True;
              Anular.Enabled           := False;
              DBGrillaDetalle.ReadOnly := True;
              dbgVtos.ReadOnly         := True;
            end;
      end
    else
      if Modo='R' Then //Recepcion
        begin
          Modificar.Caption := 'Recibir';
          Anular.Enabled    := False;
          Buscar.Enabled    := True;
          if (DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString ='A') then
            begin
              Modificar.Enabled:=True;
              Agregar.Enabled  :=True;
              Anular.Enabled   :=False;
              if DBGrillaDetalle.ReadOnly then
                DBGrillaDetalle.ReadOnly:=False;
              dbgVtos.ReadOnly          :=False;
            end
          else
            begin
              Modificar.Enabled       := False;
              Agregar.Enabled         := True;
              Anular.Enabled          := False;
              DBGrillaDetalle.ReadOnly:= True;
              dbgVtos.ReadOnly        := True;
            end;
        end
      else
       if Modo='I' Then  //Impresion
        begin
          Buscar.Enabled      := False;
      //    Prev.Enabled        := False;
      //    Next.Enabled        := False;
          pnPrincipal.Enabled := False;
          Modificar.Enabled   := False;
          Agregar.Enabled     := False;
          Anular.Enabled      := False;
        end;

  if DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString='N' Then
    lbEstado.Caption:='Orden C. Nueva'
  else
    if DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString='A' Then
      lbEstado.Caption:='Orden C. Autorizada'
    else
      if DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString='R' Then
        lbEstado.Caption:='Orden C. Recibida'
      else
        if DatosOrdenCompra.CDSOrdenCompCabESTADO.AsString='C' Then
          begin
            Modificar.Enabled   := False;
            pnPrincipal.Enabled := False;
            Modificar.Enabled   := False;
            Agregar.Enabled     := False;
            Anular.Enabled      := False;
            lbEstado.Caption    := '--';
          end;

  // de acuerdo al modo habilito las columnas y si se autoriza o no....

  if Modo='N' Then   // Nueva
    begin
      FormOrdenCompra.RxDBAutorizo.Enabled         := False;
      FormOrdenCompra.dbeFechaAutorizacion.Enabled := False;
      FormOrdenCompra.RxDBAutorizo.Color           := clBtnFace;
      FormOrdenCompra.dbeFechaAutorizacion.Color   := clBtnFace;
      with FormOrdenCompra.DBGrillaDetalle do
        begin
          Columns[3].Color:=clWindow;
          Columns[4].Color:=clInfoBk;
          Columns[5].Color:=clInfoBk;
        end;
    end
  else
    if Modo='A' Then  //AUtorizada
      begin
        FormOrdenCompra.RxDBAutorizo.Enabled         := True;
        FormOrdenCompra.dbeFechaAutorizacion.Enabled := True;
        FormOrdenCompra.RxDBAutorizo.Color           := clWindow;
        FormOrdenCompra.dbeFechaAutorizacion.Color   := clWindow;
        with FormOrdenCompra.DBGrillaDetalle do
          begin
            Columns[3].Color:=clInfoBk;
            Columns[4].Color:=clWindow;
            Columns[5].Color:=clInfoBk;
          end;
      end
    else
      if Modo='R' Then    // recepcion
        begin
          FormOrdenCompra.RxDBAutorizo.Enabled         :=False;
          FormOrdenCompra.dbeFechaAutorizacion.Enabled :=False;
          FormOrdenCompra.RxDBAutorizo.Color           :=clBtnFace;
          FormOrdenCompra.dbeFechaAutorizacion.Color   :=clBtnFace;
          with FormOrdenCompra.DBGrillaDetalle do
            begin
              Columns[3].Color:=clInfoBk;
              Columns[4].Color:=clInfoBk;
              Columns[5].Color:=clWindow;
            end;
        end
      else
        if Modo='I' Then
          begin
            FormOrdenCompra.RxDBAutorizo.Enabled         :=False;
            FormOrdenCompra.dbeFechaAutorizacion.Enabled :=False;
            FormOrdenCompra.RxDBAutorizo.Color           :=clBtnFace;
            FormOrdenCompra.dbeFechaAutorizacion.Color   :=clBtnFace;
            with FormOrdenCompra.DBGrillaDetalle do
              begin
                Columns[3].Color:=clInfoBk;
                Columns[4].Color:=clInfoBk;
                Columns[5].Color:=clInfoBk;
              end;
          end;
  pcDetalleFactura.Enabled := True;
  DatoNew                  := ''+DatoNew+'';

  SetTopeOC(DMMain_FD.OrdenCompraTope);

  SetDesdeHasta(DatosOrdenCompra.CDSOrdenCompCabFECHA.AsDateTime);

  DatosOrdenCompra.QSumaOC.Close;
  DatosOrdenCompra.QSumaOC.ParamByName('desde').Value:=FormOrdenCompra.Desde;
  DatosOrdenCompra.QSumaOC.ParamByName('hasta').Value:=FormOrdenCompra.Hasta;
  DatosOrdenCompra.QSumaOC.Open;
  if DatosOrdenCompra.QSumaOC.fields[0].AsString<>'' then
    FormOrdenCompra.SetTotalOC(DatosOrdenCompra.QSumaOC.fields[0].Value)
  else
    FormOrdenCompra.SetTotalOC(0);

  DatosOrdenCompra.QSumaTotal.Close;
  DatosOrdenCompra.QSumaTotal.ParamByName('desde').Value:=FormOrdenCompra.Desde;
  DatosOrdenCompra.QSumaTotal.ParamByName('hasta').Value:=FormOrdenCompra.Hasta;
  DatosOrdenCompra.QSumaTotal.Open;

  if DatosOrdenCompra.QSumaTotal.fields[0].AsString<>'' then
    FormOrdenCompra.SetTotalGral(DatosOrdenCompra.QSumaTotal.fields[0].Value)
  else
    FormOrdenCompra.SetTotalGral(0);

  DatosOrdenCompra.QSumaOCNuevas.Close;
  DatosOrdenCompra.QSumaOCNuevas.ParamByName('desde').Value:=FormOrdenCompra.Desde;
  DatosOrdenCompra.QSumaOCNuevas.ParamByName('hasta').Value:=FormOrdenCompra.Hasta;
  DatosOrdenCompra.QSumaOCNuevas.Open;

  if DatosOrdenCompra.QSumaOCNuevas.fields[0].AsString<>'' then
    FormOrdenCompra.SetTotalNuevas(DatosOrdenCompra.QSumaOCNuevas.fields[0].Value)
  else
    FormOrdenCompra.SetTotalNuevas(0);
  sbEstado.Panels[1].Text:='Pre.Nro:'+DatosOrdenCompra.CDSOrdenCompCabMUESTRANUMEROPRESOC.AsString;

  if DatosOrdenCompra.CDSOrdenCompCabFECHA_HORA.AsString='' then
    FormOrdenCompra.Caption:='O.C -- '+DatosOrdenCompra.CDSOrdenCompCabFECHA.AsString+'//'+Copy(DatosOrdenCompra.CDSOrdenCompCabUSUARIO.AsString,1,15)
  else
    FormOrdenCompra.Caption:='O.C -- '+DatosOrdenCompra.CDSOrdenCompCabFECHA_HORA.AsString+'//'+Copy(DatosOrdenCompra.CDSOrdenCompCabUSUARIO.AsString,1,15);

  DatosOrdenCompra.SumarCantidades;

  //*************************************************************
  // aca pido la copia del pendiente.....
  lbOCPendiente.Visible:= DMMain_FD.OrdenCompraPendientes and HayPendientes and (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value<>'R');
  //*************************************************************
  DesAnular.Enabled     := DatosOrdenCompra.CDSOrdenCompCabESTADO.Value<>'C';
  DBGrillaDetalle.Width := DBGrillaDetalle.Width+1;
  DBGrillaDetalle.Width := DBGrillaDetalle.Width-1;


  sbEstado.Panels[0].Text:='';

end;

procedure TFormOrdenCompra.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormOrdenCompra.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenCompra.CDSOrdenCompCabSUCURSAL.Clear;
      DatosOrdenCompra.CDSOrdenCompCabMUESTRASUCURSAL.Clear;
      DatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTE.Clear;
      DatosOrdenCompra.CDSOrdenCompCabMUESTRACOMPROBANTE.Clear;
      DatosOrdenCompra.CDSOrdenCompCabLETRA.Clear;
      DatosOrdenCompra.CDSOrdenCompCabSUC.Clear;
      DatosOrdenCompra.CDSOrdenCompCabNUMERO.Clear;
    end;

end;

procedure TFormOrdenCompra.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frOrdenCompra.DesignReport;
end;

procedure TFormOrdenCompra.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTE.Clear;
      DatosOrdenCompra.CDSOrdenCompCabMUESTRACOMPROBANTE.Clear;
      DatosOrdenCompra.CDSOrdenCompCabLETRA.Clear;
      DatosOrdenCompra.CDSOrdenCompCabSUC.Clear;
      DatosOrdenCompra.CDSOrdenCompCabNUMERO.Clear;
    end;
end;

procedure TFormOrdenCompra.RxDBECodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenCompra.CDSOrdenCompCabCODIGO.Clear;
      DatosOrdenCompra.CDSOrdenCompCabNOMBRE.Clear;
      DatosOrdenCompra.CDSOrdenCompCabCONDICIONCOMPRA.Clear;
      DatosOrdenCompra.CDSOrdenCompCabMUESTRACONDCOMPRA.Clear;
    end;

end;

procedure TFormOrdenCompra.RxDBECondCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenCompra.CDSOrdenCompCabCONDICIONCOMPRA.Clear;
      DatosOrdenCompra.CDSOrdenCompCabMUESTRACONDCOMPRA.Clear;
    end;
end;

procedure TFormOrdenCompra.RxDBEDepositoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenCompra.CDSOrdenCompCabDEPOSITO.Clear;
      DatosOrdenCompra.CDSOrdenCompCabMUESTRADEPOSITO.Clear;
    end;

end;

procedure TFormOrdenCompra.AnularExecute(Sender: TObject);
begin
  inherited;
  IF MessageDlg('Esta por hacer una operación de Anulación/Cancealción.. está seguro?...',mtInformation,[mbYes, mbNo], 0) = mrYes Then
    begin
      DatosOrdenCompra.CDSOrdenCompCab.Edit;
      DatosOrdenCompra.CDSOrdenCompCabESTADO.Value :='C';
      IF MessageDlg('Da Por Anulada ...???',mtInformation,[mbYes, mbNo], 0) = mrYes Then
        DatosOrdenCompra.CDSOrdenCompCabANULADO.Value:='S';
      Confirma.Execute;
    end;
end;

procedure TFormOrdenCompra.dbgVtosColEnter(Sender: TObject);
begin
  inherited;
  if dbgVtos.SelectedIndex>0 Then
    dbgVtos.SelectedIndex:=0;
end;

procedure TFormOrdenCompra.dbgVtosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((Key=vk_down) or (Key=vk_up)) and (DatosOrdenCompra.CDSOrdenCompraVtos.State in [dsEdit,dsInsert]) Then

    begin
      dbgVtos.DataSource.DataSet.Cancel;
//      Sysutils.Abort;
    end;
end;

procedure TFormOrdenCompra.frOrdenCompraPrintReport;
begin
  inherited;
  Impresa:=True;
end;

procedure TFormOrdenCompra.OmitirFacturaAutomticaClick(Sender: TObject);
begin
  inherited;
  OmitirFacturaAutomtica.Checked := Not(OmitirFacturaAutomtica.Checked);
  if OmitirFacturaAutomtica.Checked then
    OmitirRecepcionAutomatica.Checked := False;

end;

procedure TFormOrdenCompra.OmitirRecepcionAutomaticaClick(Sender: TObject);
begin
  inherited;
  OmitirRecepcionAutomatica.Checked := Not(OmitirRecepcionAutomatica.Checked);
  if OmitirRecepcionAutomatica.Checked then
    OmitirFacturaAutomtica.Checked := False;

end;

procedure TFormOrdenCompra.GeneraRecepcionExecute(Sender: TObject);
var
  SucursalComprobante :Integer;
  IDComprobante       :Integer;
begin
  inherited;
  DatosOrdenCompra.CDSRecepciones.Close;
  DatosOrdenCompra.CDSRecepciones.Params.ParamByName('id_ordencompr').Value:=DatosOrdenCompra.CDSOrdenCompCabID_OC.Value;
  DatosOrdenCompra.CDSRecepciones.Open;

  if DatosOrdenCompra.CDSRecepciones.RecordCount>0 then
    Raise Exception.Create('Ya hay una recepcion Generada...');

  DatosOrdenCompra.CDSRecepciones.Close;


  if Not(Assigned(FormBuscadorTipoCpbte)) then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
  FormBuscadorTipoCpbte.TipoCpbte1:='RM';
  FormBuscadorTipoCpbte.TipoCpbte2:='';
  FormBuscadorTipoCpbte.TipoCpbte3:='';
  FormBuscadorTipoCpbte.CV        :='C';
  FormBuscadorTipoCpbte.Sucursal  := DatosOrdenCompra.CDSOrdenCompCabSUCURSAL.Value;
  FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
  FormBuscadorTipoCpbte.ShowModal;
  SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
  IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
  if  FormBuscadorTipoCpbte.ModalResult=mrOk Then
    begin
      if Not(Assigned(FormRecepcionMercaderia)) Then
        FormRecepcionMercaderia:=TFormRecepcionMercaderia.Create(self);
      FormRecepcionMercaderia.SucursalPorDefecto:=FormBuscadorTipoCpbte.Sucursal;
      FormRecepcionMercaderia.Agregar.Execute;
      DatosRecepMerca.CDSRecepCabSUCURSALCOMPRASetText(DatosRecepMerca.CDSRecepCabSUCURSALCOMPRA,IntToStr(SucursalComprobante));
      DatosRecepMerca.CDSRecepCabID_TIPOCOMPROBANTESetText(DatosRecepMerca.CDSRecepCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
      DatosRecepMerca.CDSRecepCabCodigoSetText(DatosRecepMerca.CDSRecepCabCodigo,DatosOrdenCompra.CDSOrdenCompCabCODIGO.Value);
      DatosRecepMerca.CDSRecepCabORDENCOMPRA.Value   := DatosOrdenCompra.CDSOrdenCompCabNUMERO.Value;
      DatosRecepMerca.CDSRecepCabID_ORDENCOMPRA.Value:= DatosOrdenCompra.CDSOrdenCompCabID_OC.Value;

      DatosRecepMerca.CDSRecepCabDepositoSetText(DatosRecepMerca.CDSRecepCabDeposito,DatosOrdenCompra.CDSOrdenCompCabDEPOSITO.AsString);
      DatosOrdenCompra.CDSOrdenCompraDet.First;

      DatosRecepMerca.CDSRecepDet.AfterPost:=nil;
      while Not(DatosOrdenCompra.CDSOrdenCompraDet.Eof) do
        begin
          if DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat>0 Then
            BEGIN
              DatosRecepMerca.CDSRecepDet.Append;
              DatosRecepMerca.CDSRecepDetCodigoArticuloSetText(DatosRecepMerca.CDSRecepDetCodigoArticulo,DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO.AsString);
              DatosRecepMerca.CDSRecepDetUnitario_TotalSetText(DatosRecepMerca.CDSRecepDetUnitario_Total,DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTAL.AsString);
              DatosRecepMerca.CDSRecepDetCantidadSetText(DatosRecepMerca.CDSRecepDetCantidad,DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.AsString);
              DatosRecepMerca.CDSRecepDetUNIDAD.Value:=DatosOrdenCompra.CDSOrdenCompraDetUNIDAD.Value;
            end;
          DatosOrdenCompra.CDSOrdenCompraDet.Next;
        end;
      DatosRecepMerca.CDSRecepDet.AfterPost:= DatosRecepMerca.CDSRecepDetAfterPost;

      DatosRecepMerca.CDSRecepDet.Edit;
      if DatosRecepMerca.CDSRecepDet.State<>dsBrowse Then
        DatosRecepMerca.CDSRecepDet.Post;
      DatosRecepMerca.CDSRecepDet.First;
    end;
end;

procedure TFormOrdenCompra.GenerarFacturaExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenCompra.CDSRecepciones.Close;
  DatosOrdenCompra.CDSRecepciones.Params.ParamByName('id_ordencompr').Value:=DSBase.DataSet.FieldByName('id_oc').Value;
  DatosOrdenCompra.CDSRecepciones.Open;
  if DatosOrdenCompra.CDSRecepciones.RecordCount>0 then
    raise Exception.Create('Hay Rececpiones echas ... facturar desde las rececpiones');
  DatosOrdenCompra.CDSRecepciones.Close;

  if Not(Assigned(Formcompra_2)) Then
    FormCompra_2:=TFormCompra_2.Create(self);
  Formcompra_2.Agregar.Execute;
  DatosCompra.CDSCompraCabCodigoSetText(datoscompra.CDSCompraCabCodigo,DatosOrdenCompra.CDSOrdenCompCabCODIGO.Value);
  DatosCompra.CDSCompraCabORDENCOMPRA.Value:=DatosOrdenCompra.CDSOrdenCompCabNUMERO.Value;

  DatosCompra.CDSOCompra.Append;
  DatosCompra.CDSOCompraID_OC.Value     :=DatosOrdenCompra.CDSOrdenCompCabID_OC.AsInteger;
  DatosCompra.CDSOCompraNUMERO_OC.Value :=DatosOrdenCompra.CDSOrdenCompCabNROCPBTE.Value;
  DatosCompra.CDSOCompra.Post;

  DatosCompra.CDSCompraCabSucFacSetText(DatosCompra.CDSCompraCabSucFac,'9999');
  DatosCompra.CDSCompraCabNumeroFacSetText(DatosCompra.CDSCompraCabNumeroFac,'0');
  DatosCompra.CDSCompraCabFECHAFISCAL.Value:=DatosCompra.CDSCompraCabFECHACOMPRA.Value;
  DatosCompra.CDSCompraCabCondicionCompraSetText(DatosCompra.CDSCompraCabCondicionCompra,DatosOrdenCompra.CDSOrdenCompCabCONDICIONCOMPRA.AsString);
  DatosCompra.CDSCompraCabDepositoSetText(DatosCompra.CDSCompraCabDeposito,DatosOrdenCompra.CDSOrdenCompCabDEPOSITO.AsString);
  DatosOrdenCompra.CDSOrdenCompraDet.First;

  DatosCompra.CDSCompraDet.AfterPost  :=nil;
  DatosCompra.CDSCompraDet.AfterScroll:=nil;

  while Not(DatosOrdenCompra.CDSOrdenCompraDet.Eof) do
    begin
      if Trunc(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat*100)>0 then
        begin
          DatosCompra.CDSCompraDet.Append;
          DatosCompra.CDSCompraDetUNIDAD.Value  := DatosOrdenCompra.CDSOrdenCompraDetUNIDAD.Value;
          DatosCompra.CDSCompraDetCodigoArticuloSetText(DatosCompra.CDSCompraDetCodigoArticulo,DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO.AsString);
          DatosCompra.CDSCompraDetUNIDADES_TOTALSetText(DatosCompra.CDSCompraDetUNIDADES_TOTAL,DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTAL.AsString);
          DatosCompra.CDSCompraDetCantidadSetText(DatosCompra.CDSCompraDetCantidad,DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.AsString);
         end;
      DatosOrdenCompra.CDSOrdenCompraDet.Next;
    end;
  DatosCompra.CDSCompraDet.AfterPost  := DatosCompra.CDSCompraDetAfterPost;
  DatosCompra.CDSCompraDet.AfterScroll:= DatosCompra.CDSCompraDetAfterScroll;

  DatosCompra.CDSCompraDet.Edit;
  if DatosCompra.CDSCompraDet.State<>dsBrowse Then
    DatosCompra.CDSCompraDet.Post;
 // Close;

end;

procedure TFormOrdenCompra.DBGrillaDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (not(DBGrillaDetalle.DataSource.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=DBGrillaDetalle.DataSource.DataSet.FieldByName('codigoArticulo').AsString;
      formstock_2.recuperar.Execute;
      FormStock_2.Show;
    end;

end;

procedure TFormOrdenCompra.DBGrillaDetalleDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
 if (DatosOrdenCompra.CDSOrdenCompCab.State in [dsInsert,dsEdit]) Then
    begin
      DatosOrdenCompra.CDSOrdenCompraDet.Append;
      DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOSetText(DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO, (Source as TjvDBGrid).DataSource.DataSet.FieldByName('Codigo').AsString);
      DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA,'1');
      //DatosPresupuesto.CDSPresuDetUnitario_TotalSetText(DatosPresupuesto.CDSPresuDetUnitario_Total,(Source as TjvDBGrid).DataSource.DataSet.FieldByName('MuestraPrecio').Value);
      DatosOrdenCompra.CDSOrdenCompraDet.Post;
    end;
end;

procedure TFormOrdenCompra.DBGrillaDetalleDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if Source=FormBorradorPedido.dbgBorrador Then
    Accept:=True
  else
    Accept:=False;
end;

procedure TFormOrdenCompra.DBGrillaDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if DatosOrdenCompra.CDSOrdenCompraDetCANTIDADAUTORIZADA.AsFloat=DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat Then
    DBGrillaDetalle.Canvas.Font.Color:=clBlack;
  if DatosOrdenCompra.CDSOrdenCompraDetCANTIDADAUTORIZADA.AsFloat<DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat Then
    DBGrillaDetalle.Canvas.Font.Color:=clBlue;
  if DatosOrdenCompra.CDSOrdenCompraDetCANTIDADAUTORIZADA.AsFloat>DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat then
    DBGrillaDetalle.Canvas.Font.Color:=clGreen;
  if DatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat=0 Then
    DBGrillaDetalle.Canvas.Font.Color:=clRed;

  if (gdFocused in State)
    then
      begin
        DBGrillaDetalle.canvas.Font.color  := clWhite;
        DBGrillaDetalle.canvas.brush.color := clMenuHighlight;
      end;
   DBGrillaDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormOrdenCompra.BuscarAutorizaOCExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsEdit]) then
    begin
      DatosOrdenCompra.CDSBuscaAutoriza.Close;
      DatosOrdenCompra.CDSBuscaAutoriza.Open;
      comBuscadorAutorizar.Execute;
      if comBuscadorAutorizar.rOk Then
        DatosOrdenCOmpra.CDSOrdenCompCabAUTORIZOSetText(DatosOrdenCOmpra.CDSOrdenCompCabAUTORIZO,comBuscadorAutorizar.Id);
      DatosOrdenCompra.CDSBuscaAutoriza.Close;
    end;
end;

end.
