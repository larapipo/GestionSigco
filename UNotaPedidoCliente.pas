unit UNotaPedidoCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ExtCtrls, ComCtrls,
  JvComponentBase, JvExControls, JvGradient, JvNavigationPane,
  frxDMPExport, frxExportText, frxExportRTF, frxClass, frxExportPDF, 
  Menus, JvFormPlacement, JvLabel, JvDBControls, JvToolEdit, JvExMask, FMTBcd,
  SqlExpr, frxDBSet, ImgList,Variants, JvButton,IniFiles, System.Actions,
  JvAppStorage, JvAppIniStorage, Data.DB,
  Vcl.ActnList, Vcl.Buttons, Vcl.ToolWin, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog,
  System.ImageList, frCoreClasses;

type
  TFormNotaPedidoCliente = class(TFormABMBase)
    pcDetalleFactura: TPageControl;
    PagDetalles: TTabSheet;
    Bevel8: TBevel;
    Label17: TLabel;
    Bevel21: TBevel;
    DBText60: TDBText;
    dbtTotal: TDBText;
    Label1: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    dbeObservaciones2: TDBEdit;
    dbeObservaciones1: TDBEdit;
    DBGrillaDetalle: TDBGrid;
    Panel2: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBEdit1: TDBEdit;
    dbgExitencias: TDBGrid;
    PagPieCpbte: TTabSheet;
    Label6: TLabel;
    Label14: TLabel;
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
    Label4: TLabel;
    DBText2: TDBText;
    DBGrillaIva: TDBGrid;
    dbeDscto: TDBEdit;
    pnCabecera: TPanel;
    DBText66: TDBText;
    dbtMuestraComprob: TDBText;
    DBText73: TDBText;
    DBText4: TDBText;
    SpeedButton1: TSpeedButton;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeConVta: TDBEdit;
    dbeNombre: TDBEdit;
    dbeLdr: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeMuestraVendedor: TDBEdit;
    dbeDeposito: TDBEdit;
    BuscarCliente: TAction;
    BuscarLdr: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarCondVenta: TAction;
    BuscarTipoCpbte: TAction;
    BuscarArticulo: TAction;
    DBCheckManual: TDBCheckBox;
    BuscarVendedor: TAction;
    CopiaNP: TAction;
    GenerarRto: TAction;
    DBText13: TDBText;
    Anterior: TAction;
    Entrega: TAction;
    spCopiaNP: TSpeedButton;
    spHacerRto: TSpeedButton;
    ToolButton1: TToolButton;
    spFacturacion: TSpeedButton;
    GenerarFc: TAction;
    spCumplido: TSpeedButton;
    Cumplir: TAction;
    pnEstado: TPanel;
    lbestado: TLabel;
    DBText10: TDBText;
    Label8: TLabel;
    spPrint: TSpeedButton;
    Imprimir: TAction;
    FrCAbecera: TfrxDBDataset;
    frDetalle: TfrxDBDataset;
    frPedido: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DBText14: TDBText;
    DBText15: TDBText;
    Anular: TAction;
    lblPedido: TLabel;
    lblEntregado: TLabel;
    lblPendiente: TLabel;
    dbtPresupuestoN_NROCPBTE: TDBText;
    dbtDesIva: TDBText;
    DatosCabCliente: TAction;
    RxLabel5: TJvLabel;
    RxLabel9: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel61: TJvLabel;
    RxLabel62: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel4: TJvLabel;
    RxCCodigo: TJvDBComboEdit;
    RxCLdr: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCConVta: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    RxCDeposito: TJvDBComboEdit;
    dbeFechaVta: TJvDBDateEdit;
    pnPedidos: TPanel;
    RxLabel1: TJvLabel;
    DBText8: TDBText;
    RxLabel8: TJvLabel;
    DBText12: TDBText;
    DBText11: TDBText;
    ReCalcular: TAction;
    gbLista: TGroupBox;
    dbcLista: TDBLookupComboBox;
    Descumplir: TAction;
    PopupMenu1: TPopupMenu;
    GenerarRto1: TMenuItem;
    CopiarNdePedido1: TMenuItem;
    DarporCumplida1: TMenuItem;
    Descumplir1: TMenuItem;
    GenerarFactura1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Entrega1: TMenuItem;
    Anterior1: TMenuItem;
    SpeedButton2: TSpeedButton;
    VerificaHuerfanas: TAction;
    N3: TMenuItem;
    VerificaHuerfanas1: TMenuItem;
    chPreview: TCheckBox;
    DBText9: TDBText;
    JvLabel1: TJvLabel;
    N4: TMenuItem;
    VerCodigoAlternativo1: TMenuItem;
    ComBuscadorLdr: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    ComBuscadorVendedor: TComBuscador;
    ComBuscadorCondVta: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    DBText16: TDBText;
    BuscarPorReferencia: TAction;
    JvLabel2: TJvLabel;
    dbtFacturaOrigen: TDBText;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarLdrExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarCondVentaExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGrillaDetalleDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGrillaDetalleDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleExit(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure AgregarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure RxCCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCLdrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxcVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarVendedorExecute(Sender: TObject);
    procedure RxCDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCConVtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CopiaNPExecute(Sender: TObject);
    procedure GenerarRtoExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AnteriorExecute(Sender: TObject);
    procedure EntregaExecute(Sender: TObject);
    procedure GenerarFcExecute(Sender: TObject);
    procedure CumplirExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure AnularExecute(Sender: TObject);
    procedure DatosCabClienteExecute(Sender: TObject);
    procedure dbcListaClick(Sender: TObject);
    procedure ReCalcularExecute(Sender: TObject);
    procedure dbcListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DescumplirExecute(Sender: TObject);
    procedure VerificaHuerfanasExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NPedidoIni:TIniFile;
    SucursalComprobante:Integer;
    IDComprobante:Integer;
    Deposito:Integer;
    Anulado:Tpanel;
    ArchivoIni:TIniFile;
    procedure AgregarCabRto;
    procedure AgregarCabFactura;

    procedure AgregarDetRto;
    procedure AgregarDetFactura;

    function HayPendientes:Boolean;
  end;

var
  FormNotaPedidoCliente: TFormNotaPedidoCliente;

PROCEDURE UltimoComprobante;

implementation

uses DMNPedidoCliente, UBuscadorClientes, UBuscadorArticulos,
     ComposicionPrecio, UConsultaStock, UConsultaArticuloVendido, ULogin,
     UBuscadorCpbte, URemitos, DMRemitos, UFactura_2, DMVenta, UBuscadorTipoCpbte,
     UBuscadorDepositos, UDatosClienteCabeceraCpbte,
     DMStoreProcedureForm, DMBuscadoresForm, UBuscadorComprobantes, UDMain_FD,
  UStock_2, UBuscarPorNroReferencia;
{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosNPedidoClientes,DMStoreProcedure,DMStoreProcedure, FormNotaPedidoCliente DO
    BEGIN
      IF (DBCheckManual.Checked <> true) THEN
        BEGIN
          //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
          IF (CDSNotaPedidoCabLETRANP.AsString <> '') AND (CDSNotaPedidoCabCLASECPBTE.Value <> '') THEN
            BEGIN
              spNumeroCpbte.Close;
              spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSNotaPedidoCabLETRANP.AsString;
              spNumeroCpbte.ParamByName('Sucursal').Value    := CDSNotaPedidoCabSucursal.Value;
              spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSNotaPedidoCabCLASECPBTE.Value;
              spNumeroCpbte.ParamByName('TipoComp').Value    := CDSNotaPedidoCabTIPOCPBTE.AsString;
              spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
              spNumeroCpbte.ExecProc;
              IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
                BEGIN
                  IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                    Numero :=
                      StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
                  ELSE
                    Numero := 1;
                  CDSNotaPedidoCabSUCNPSetText(CDSNotaPedidoCabSUCNP,IntToStr(Numero));
                  IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                    Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
                  ELSE
                    Numero := 1;
                  CDSNotaPedidoCabNUMERONPSetText(CDSNotaPedidoCabNUMERONP,IntToStr(Numero));
                END;
            // el desgloza iva lo manejo segun el cliente. cuando levanto los datos del mismo
              CDSNotaPedidoCabDESGLOZAIVA.Value       := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
            //  wwCDSRtoCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
            //  wwCDSRtoCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
              CDSNotaPedidoCabTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
              CDSNotaPedidoCabCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
              Imprime                                 := spNumeroCpbte.ParamByName('Imprime').AsString;
              spNumeroCpbte.CLose;
            END;
          CDSNotaPedidoCabNroCpbte.AsString := CDSNotaPedidoCabLETRANP.AsString + CDSNotaPedidoCabSUCNP.AsString +
            CDSNotaPedidoCabNUMERONP.AsString;
        END;
    END;
END;

function TFormNotaPedidoCliente.HayPendientes:boolean;
var Faltante,Pedido,Entregado:real;
p:TBookmark;
begin
  Result   := True;
  Faltante := 0;
  Pedido   := 0;
  Entregado:= 0;
  p        := DatosNPedidoClientes.CDSNotaPedidoDet.GetBookmark;
  DatosNPedidoClientes.CDSNotaPedidoDet.DisableControls;
  DatosNPedidoClientes.CDSNotaPedidoDet.First;
  while not(DatosNPedidoClientes.CDSNotaPedidoDet.eof) do
    begin
      Faltante  := Faltante+DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_FALTANTE.AsFloat;
      Pedido    := Pedido+DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_PEDIDIA.AsFloat;
      Entregado := Entregado+DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_ENTREGADA.AsFloat;
      DatosNPedidoClientes.CDSNotaPedidoDet.Next;
    end;
  if Faltante<=0 then Result:=False;
  DatosNPedidoClientes.CDSNotaPedidoDet.GotoBookmark(p);
  DatosNPedidoClientes.CDSNotaPedidoDet.FreeBookmark(p);
  DatosNPedidoClientes.CDSNotaPedidoDet.EnableControls;

  lblEntregado.Caption := FormatFloat('0.00',Entregado);
  lblPedido.Caption    := FormatFloat('0.00',Pedido);
  lblPendiente.Caption := FormatFloat('0.00',Faltante);
end;

procedure TFormNotaPedidoCliente.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frPedido.PrintOptions.Printer:=PrNomCpbte;
  frPedido.SelectPrinter;


  DatosNPedidoClientes.QComprob.Close;
  DatosNPedidoClientes.QComprob.ParamByName('id').Value  := DatosNPedidoClientes.CDSNotaPedidoCabID_TIPOCOMPROBANTE.Value;
  DatosNPedidoClientes.QComprob.ParamByName('suc').Value := DatosNPedidoClientes.CDSNotaPedidoCabSUCURSAL.Value;
  DatosNPedidoClientes.QComprob.Open;

  frPedido.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosNPedidoClientes.QComprobREPORTE.AsString);
  frPedido.PrintOptions.Copies :=DatosNPedidoClientes.QComprobCOPIAS.Value;

  DatosNPedidoClientes.QComprob.Close;
  frPedido.PrepareReport;
  frPedido.PrintOptions.ShowDialog:=chPreview.Checked;

  if chPreview.Checked=True then
    frPedido.ShowReport
  else
    if chPreview.Checked=False then
      frPedido.print;
end;

procedure TFormNotaPedidoCliente.AgregarCabRto;
begin
  with DatosRemitos,DatosNPedidoClientes DO
  begin
    FormRemitos.SucursalPorDefecto:=SucursalComprobante;
    FormRemitos.DepositoPorDefecto:=Deposito;
    CDSRtoCabSucursalSetText(CDSRtoCabSucursal, IntToStr(SucursalComprobante));
    CDSRtoCabCodigoSetText(CDSRtoCabCodigo,CDSNotaPedidoCabCODIGO.AsString);
    CDSRtoCabLDRSetText(CDSRtoCabLDR,CDSNotaPedidoCabLDR.AsString);

    CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

    CDSRtoCabDepositoSetText(CDSRtoCabDeposito,IntToStr(Deposito));
    CDSRtoCabCondicionVtaSetText(CDSRtoCabCondicionVta,CDSNotaPedidoCabCONDICIONVTA.AsString);
    CDSRtoCabANULADO.Value      := 'N';

    CDSRtoCabIMPRESO.Value      := 'N';
    CDSRtoCabOBSERVACION1.Value := CDSNotaPedidoCabOBSERVACION1.Value;
    CDSRtoCabOBSERVACION2.Value := CDSNotaPedidoCabOBSERVACION2.Value;
    CDSRtoCabCPTE_MANUAL.Value  := 'N';

    CDSRtoCabZONA.Value                :=CDSNotaPedidoCabZONA.Value;

    CDSRtoCabNOTAPEDIDO_ID.Value       :=CDSNotaPedidoCabID.Value;
    CDSRtoCabNOTAPEDIDO_NROCPBTE.Value :=CDSNotaPedidoCabNROCPBTE.Value;
    if CDSNotaPedidoCabLISTAPRECIO.AsString<>'' then
      CDSRtoCabLISTAPRECIO.Value         :=CDSNotaPedidoCabLISTAPRECIO.Value;
    if CDSNotaPedidoCabVENDEDOR.AsString<>'' Then
      CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,CDSNotaPedidoCabVENDEDOR.AsString);
    CDSRtoCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;
    CDSRtoCabIDFACTURA.Value:=CDSNotaPedidoCabFACTURA_ID.Value;
    CDSRtoCabNROFACT.Value:=CDSNotaPedidoCabFACTURA_NROCPBTE.Value;
  end;
end;

procedure TFormNotaPedidoCliente.AgregarCabFactura;
begin
  with DatosVentas,DatosNPedidoClientes DO
  begin
    FormCpbte_2.SucursalPorDefecto:=SucursalComprobante;
    FormCpbte_2.DepositoPorDefecto:=Deposito;

    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(SucursalComprobante));
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSNotaPedidoCabCODIGO.AsString);
    CDSVentaCabLDRSetText(CDSVentaCabLDR,CDSNotaPedidoCabLDR.AsString);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(Deposito));
    CDSVentaCabCondicionVtaSetText(CDSVentaCabCondicionVta,CDSNotaPedidoCabCONDICIONVTA.AsString);
    CDSVentaCabANULADO.Value     :='N';
    CDSVentaCabNOMBRE.Value      := CDSNotaPedidoCabNOMBRE.Value;
    CDSVentaCabRAZONSOCIAL.Value := CDSNotaPedidoCabRAZONSOCIAL.Value;
    CDSVentaCabDIRECCION.Value   := CDSNotaPedidoCabDIRECCION.Value;
    CDSVentaCabIMPRESO.Value     := 'N';
    CDSVentaCabCUIT.Value        := CDSNotaPedidoCabCUIT.Value;
    CDSVentaCabLOCALIDAD.Value   := CDSNotaPedidoCabLOCALIDAD.Value;
    CDSVentaCabCPOSTAL.Value     := CDSNotaPedidoCabCPOSTAL.Value;

    CDSVentaCabOBSERVACION1.Value:=CDSNotaPedidoCabOBSERVACION1.Value;
    CDSVentaCabOBSERVACION2.Value:=CDSNotaPedidoCabOBSERVACION2.Value;
    CDSVentaCabCPTE_MANUAL.Value :='N';

    CDSVentaCabZONA.Value                :=CDSNotaPedidoCabZONA.Value;
   // wwCDSRtoCabNROENTREGA.Value        :=CDSNotaPedidoCabNROENTREGA.Value;
    CDSVentaCabNOTAPEDIDO_ID.Value       :=CDSNotaPedidoCabID.Value;
    CDSVentaCabNOTAPEDIDO_NROCPBTE.Value :=CDSNotaPedidoCabNROCPBTE.Value;
    if CDSNotaPedidoCabLISTAPRECIO.AsString<>'' then
      CDSVentaCabLISTAPRECIO.Value         :=CDSNotaPedidoCabLISTAPRECIO.Value;
    if CDSNotaPedidoCabVENDEDOR.AsString<>'' Then
      CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,CDSNotaPedidoCabVENDEDOR.AsString);

    CDSVentaCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;
    // por que si no me agreagaba el iva
    FormCpbte_2.DiscriminaIva:='S';

  end;
end;


procedure TFormNotaPedidoCliente.AgregarDetRto;
Var UnitarioTotal,Precio,coef:Extended;
PrecioPedido:Extended;
Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  with DatosRemitos DO
    begin
      CDSRtoDet.Append;
      DatosNPedidoClientes.QStockPrecio.Close;
      DatosNPedidoClientes.QStockPrecio.ParamByName('Codigo').Value  :=DatosNPedidoClientes.CDSNotaPedidoDetCODIGOARTICULO.Value;
      DatosNPedidoClientes.QStockPrecio.ParamByName('deposito').Value:=DatosNPedidoClientes.CDSNotaPedidoCabDEPOSITO.Value;
      DatosNPedidoClientes.QStockPrecio.ParamByName('Lista').Value   :=DatosNPedidoClientes.CDSNotaPedidoCabLISTAPRECIO.Value;
      DatosNPedidoClientes.QStockPrecio.ParamByName('Sucursal').Value:=DatosNPedidoClientes.CDSNotaPedidoCabSUCURSAL.Value;
      DatosNPedidoClientes.QStockPrecio.Open;
      //Busco el recargo de lista esto es ek coefciete ai existe por lo general es 1
      QCoefPrecio.Close;
      QCoefPrecio.ParamByName('codigo').Value  :=CDSRtoCabCODIGO.Value;
      QCoefPrecio.ParamByName('id_lista').Value:=CDSRtoCabLISTAPRECIO.Value;
      QCoefPrecio.Open;
      if QCoefPrecio.Fields[0].AsString='' Then
        coef:=1
      else
        coef:=QCoefPrecio.Fields[0].Value;
      QCoefPrecio.Close;
      //********************************************************************************
      Precio       := DatosNPedidoClientes.QStockPrecioPRECIO.AsFloat * coef;
      PrecioPedido := DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat;

      if CDSRtoCabDESGLOZAIVA.Value='N' then
        begin
          Precio      := Precio * (1 + DatosNPedidoClientes.CDSNotaPedidoDetIVA_TASA.AsFloat * 0.01);
          PrecioPedido:= PrecioPedido + DatosNPedidoClientes.CDSNotaPedidoDetIVA_UNITARIO.AsFloat;
        end;
      //
      CDSRtoDetCodigoArticuloSetText(CDSRtoDetCodigoArticulo,DatosNPedidoClientes.CDSNotaPedidoDetCODIGOARTICULO.AsString);
      CDSRtoDetDetalle.Value            := DatosNPedidoClientes.CDSNotaPedidoDetDETALLE.Value;
      CDSRtoDetCantidadSetText(CDSRtoDetCantidad,DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_ENTREGADA.AsString);
      CDSRtoDetDESGLOZAIVA.Value        := CDSRtoCabDESGLOZAIVA.Value;
      CDSRtoDetDEPOSITO.Value           := CDSRtoCabDeposito.Value;
      CDSRtoDetCLASECPBTE.Value         := CDSRtoCabCLASECPBTE.Value;
      CDSRtoDetTipoCpbte.Value          := CDSRtoCabTIPOCPBTE.Value;
      CDSRtoDetDescuento.AsFloat        := CDSRtoDetDESCUENTO.AsFloat;

      if (FormRemitos.Calcula_iva_articulo=False) then
        begin
          CDSRtoDetIVA_TASA.AsFloat      := 0;
          CDSRtoDetIVA_SobreTasa.AsFloat := 0;
        end;

      if StrToFloat(FormatFloat('0.00',Abs( Precio-PrecioPedido)))>0.01 Then
        begin
          if (VerificaCambioPrecio='S') Then
            begin
              if MessageDlg('Precio distinto al ingresado'+#13+
                             'Artículo      :'+CDSRtoDetDETALLE.AsString+#13+
                             'Precio Cargado:'+FormatFloat('0.00',PrecioPedido)+#13+
                             'Nuevo Precio  :'+FormatFloat('0.00',Precio)+#13+#13+
                             'Modifica?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
                begin
                   CDSRtoDetCosto_Gravado.AsFloat  := DatosNPedidoClientes.QStockPrecioCOSTO_GRAVADO.AsFloat;
                   CDSRtoDetCosto_Exento.AsFloat   := DatosNPedidoClientes.QStockPrecioCOSTO_EXENTO.AsFloat;
                   CDSRtoDetCosto_Total.AsFloat    := DatosNPedidoClientes.QStockPrecioCOSTO_TOTAL.AsFloat;


                   DMMain_FD.CalculaPrecioVta_FD('S',DMMain_FD.IdListaProveedor, CDSRtoCabLISTAPRECIO.AsInteger,CDSRtoCabSUCURSAL.AsInteger,CDSRtoCabDEPOSITO.AsInteger,
                                                CDSRtoDetCODIGOARTICULO.AsString,CDSRtoCabCODIGO.AsString,CDSRtoCabTIPOCPBTE.AsString,
                                                CDSRtoDetCOTIZACION.AsFloat,
                                                1,
                                                Gravado,exento,Total,Iva,Margen,dscto,PFinal);


                   CDSRtoDetUNITARIO_GRAVADO.AsFloat:=Gravado;
                   CDSRtoDetUNITARIO_EXENTO.AsFloat :=Exento;
                   CDSRtoDetUNITARIO_TOTAL.AsFloat  :=Total;
                   CDSRtoDetIVA_UNITARIO.AsFloat    :=Iva;
                   CDSRtoDetMARGEN.ASFloat          :=Margen;
                   CDSRtoDetDESCUENTO.ASFloat       :=Dscto;

                   //DatosRemitos.CalculaPrecioVta;

                   UnitarioTotal := CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;

                   if CDSRtoCabDESGLOZAIVA.Value='N' Then
                     UnitarioTotal:=CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;

                   CDSRtoDetUnitario_TotalSetText(CDSRtoDetUnitario_Total,FloatToStr(UnitarioTotal));

                end
              else
                begin
                  CDSRtoDetUNITARIO_GRAVADO.AsFloat :=DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat;
                  CDSRtoDetUNITARIO_EXENTO.AsFloat  :=DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;
                  CDSRtoDetUNITARIO_TOTAL.AsFloat   :=DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat;

                  CDSRtoDetCOSTO_GRAVADO.AsFloat    :=DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_GRAVADO.AsFloat;
                  CDSRtoDetCOSTO_EXENTO.AsFloat     :=DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_EXENTO.AsFloat;
                  CDSRtoDetCOSTO_TOTAL.AsFloat      :=DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_TOTAL.AsFloat;

                  CDSRtoDetIVA_UNITARIO.AsFloat:=DatosNPedidoClientes.CDSNotaPedidoDetIVA_UNITARIO.AsFloat;
                  CDSRtoDetIVA_TOTAL.AsFloat   :=DatosNPedidoClientes.CDSNotaPedidoDetIVA_TOTAL.AsFloat;

                  UnitarioTotal := CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;
                  if CDSRtoCabDESGLOZAIVA.Value='N' Then
                     UnitarioTotal:=CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;

                   CDSRtoDetUnitario_TotalSetText(CDSRtoDetUnitario_Total,FloatToStr(UnitarioTotal));
                end;
            end
          else
            begin
              CDSRtoDetCosto_Gravado.AsFloat     := DatosNPedidoClientes.QStockPrecioCOSTO_GRAVADO.AsFloat;
              CDSRtoDetCosto_Exento.AsFloat      := DatosNPedidoClientes.QStockPrecioCOSTO_EXENTO.AsFloat;
              CDSRtoDetCosto_Total.AsFloat       := DatosNPedidoClientes.QStockPrecioCOSTO_TOTAL.AsFloat;


              DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor, CDSRtoCabLISTAPRECIO.AsInteger,CDSRtoCabSUCURSAL.AsInteger,CDSRtoCabDEPOSITO.AsInteger,
                                            CDSRtoDetCODIGOARTICULO.AsString,CDSRtoCabCODIGO.AsString,CDSRtoCabTIPOCPBTE.AsString,
                                            CDSRtoDetCOTIZACION.AsFloat,
                                            1,
                                            Gravado,exento,Total,Iva,Margen,dscto,PFinal);

              CDSRtoDetUNITARIO_GRAVADO.AsFloat := Gravado;
              CDSRtoDetUNITARIO_EXENTO.AsFloat  := Exento;
              CDSRtoDetUNITARIO_TOTAL.AsFloat   := Total;
              CDSRtoDetIVA_UNITARIO.AsFloat     := Iva;
              CDSRtoDetMARGEN.ASFloat           := Margen;

//              DatosRemitos.CalculaPrecioVta;

              UnitarioTotal := CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;

              if CDSRtoCabDESGLOZAIVA.Value='N' Then
                UnitarioTotal:=CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;

            end;
        end
      else
        begin
          CDSRtoDetUNITARIO_GRAVADO.AsFloat := DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat;
          CDSRtoDetUNITARIO_EXENTO.AsFloat  := DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;
          CDSRtoDetUNITARIO_TOTAL.AsFloat   := DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat;

          CDSRtoDetCOSTO_GRAVADO.AsFloat    := DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_GRAVADO.AsFloat;
          CDSRtoDetCOSTO_EXENTO.AsFloat     := DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_EXENTO.AsFloat;
          CDSRtoDetCOSTO_TOTAL.AsFloat      := DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_TOTAL.AsFloat;

          CDSRtoDetIVA_UNITARIO.AsFloat     := DatosNPedidoClientes.CDSNotaPedidoDetIVA_UNITARIO.AsFloat;
          CDSRtoDetIVA_TOTAL.AsFloat        := DatosNPedidoClientes.CDSNotaPedidoDetIVA_TOTAL.AsFloat;

          if (FormRemitos.Calcula_iva_articulo=False) then
            begin
              CDSRtoDetIVA_UNITARIO.AsFloat     := 0;
              CDSRtoDetIVA_TOTAL.AsFloat        := 0;
            end;

          UnitarioTotal                     := CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;

          if CDSRtoCabDESGLOZAIVA.Value='N' Then
            UnitarioTotal:=CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;

          CDSRtoDetUnitario_TotalSetText(CDSRtoDetUnitario_Total,FloatToStr(UnitarioTotal));
        end;

      DatosNPedidoClientes.QStockPrecio.Close;
      CDSRtoDet.Post;
    end;
end;


procedure TFormNotaPedidoCliente.AgregarDetFactura;
Var UnitarioTotal,
Precio,PrecioPedido,Coef:Extended;
PrecioRto:Extended;
Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      DatosNPedidoClientes.QStockPrecio.Close;
      DatosNPedidoClientes.QStockPrecio.ParamByName('Codigo').Value  :=DatosNPedidoClientes.CDSNotaPedidoDetCODIGOARTICULO.Value;
      DatosNPedidoClientes.QStockPrecio.ParamByName('deposito').Value:=DatosNPedidoClientes.CDSNotaPedidoCabDEPOSITO.Value;
      DatosNPedidoClientes.QStockPrecio.ParamByName('Lista').Value   :=DatosNPedidoClientes.CDSNotaPedidoCabLISTAPRECIO.Value;
      DatosNPedidoClientes.QStockPrecio.ParamByName('Sucursal').Value:=DatosNPedidoClientes.CDSNotaPedidoCabSUCURSAL.Value;
      DatosNPedidoClientes.QStockPrecio.Open;

      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,DatosNPedidoClientes.CDSNotaPedidoDetCODIGOARTICULO.AsString);

      Precio       := DatosNPedidoClientes.QStockPrecioPRECIO.AsFloat;// * coef; // me trae el precio sin iva
      PrecioPedido := DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat;

      if (CDSVentaCabDESGLOZAIVA.Value='N') and (FormCpbte_2.Calcula_iva_articulo) then
        begin
          Precio      := Precio * (1 + DatosNPedidoClientes.CDSNotaPedidoDetIVA_TASA.AsFloat * 0.01);
          PrecioPedido:= PrecioPedido + DatosNPedidoClientes.CDSNotaPedidoDetIVA_UNITARIO.AsFloat;
        end;
    //
    //  CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,DatosNPedidoClientes.CDSNotaPedidoDetCODIGOARTICULO.AsString);
      CDSVentaDetDetalle.Value            :=DatosNPedidoClientes.CDSNotaPedidoDetDETALLE.Value;
      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_ENTREGADA.AsString);
      CDSVentaDetDESGLOZAIVA.Value        := CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value           := CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value         := CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetTipoCpbte.Value          := CDSVentaCabTIPOCPBTE.Value;
      CDSVentaDetDescuento.AsFloat        := CDSVentaDetDescuento.AsFloat;

      if StrToFloat(FormatFloat('0.00',Abs( Precio-PrecioPedido)))>0.01 Then
        begin
          if (VerificaCambioPrecio='S') Then
            begin
              if MessageDlg('Precio distinto al ingresado'+#13+
                             'Artículo      :'+CDSVentaDetDETALLE.AsString+#13+
                             'Precio Cargado:'+FormatFloat('0.00',PrecioPedido)+#13+
                             'Nuevo Precio  :'+FormatFloat('0.00',Precio)+#13+#13+
                             'Modifica?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
                begin
                  CDSVentaDetCosto_Gravado.AsFloat  := DatosNPedidoClientes.QStockPrecioCOSTO_GRAVADO.AsFloat;
                  CDSVentaDetCosto_Exento.AsFloat   := DatosNPedidoClientes.QStockPrecioCOSTO_EXENTO.AsFloat;
                  CDSVentaDetCosto_Total.AsFloat    := DatosNPedidoClientes.QStockPrecioCOSTO_TOTAL.AsFloat;

                  if (FormCpbte_2.Calcula_iva_articulo=False) then
                    CDSVentaDetIVA_Tasa.AsFloat:=0;

                  if (FormCpbte_2.Calcula_iva_articulo=True) and (FormCpbte_2.Divide_iva=True) then
                    CDSVentaDetIVA_Tasa.AsFloat := CDSVentaDetIVA_Tasa.AsFloat * 0.5;


                  DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor,CDSVentaCabLISTAPRECIO.AsInteger,CDSVentaCabSUCURSAL.AsInteger,CDSVentaCabDEPOSITO.AsInteger,
                                                CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.AsString,
                                                CDSVentaDetCOTIZACION.AsFloat,
                                                CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                                Gravado,exento,Total,Iva,Margen,dscto,PFinal);

                  if (FormCpbte_2.Divide_iva=True) then
                      Iva:=Iva/2;
                  if (FormCpbte_2.Calcula_iva_articulo=False) then
                      Iva:=0;

                  CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
                  CDSVentaDetUNITARIO_EXENTO.AsFloat :=Exento;
                  CDSVentaDetUNITARIO_TOTAL.AsFloat  :=Total;
                  CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
                  CDSVentaDetMARGEN.ASFloat          :=Margen;
                  CDSVentaDetDESCUENTO.ASFloat       :=Dscto;

                  UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

                  if CDSVentaCabDesglozaIVA.Value='N' Then
                    UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

                  CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));

                end
              else
                begin

                  CDSVentaDetUNITARIO_GRAVADO.AsFloat :=DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat;
                  CDSVentaDetUNITARIO_EXENTO.AsFloat  :=DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;
                  CDSVentaDetUNITARIO_TOTAL.AsFloat   :=DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat;

                  CDSVentaDetCOSTO_GRAVADO.AsFloat    :=DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_GRAVADO.AsFloat;
                  CDSVentaDetCOSTO_EXENTO.AsFloat     :=DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_EXENTO.AsFloat;
                  CDSVentaDetCOSTO_TOTAL.AsFloat      :=DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_TOTAL.AsFloat;

                  if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
                    begin
                      CDSVentaDetIVA_UNITARIO.AsFloat     :=DatosNPedidoClientes.CDSNotaPedidoDetIVA_UNITARIO.ASFloat;
                      CDSVentaDetIVA_TOTAL.AsFloat        :=DatosNPedidoClientes.CDSNotaPedidoDetIVA_TOTAL.ASFloat;
                    end
                  else
                    begin
                      CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
                      CDSVentaDetIVA_TOTAL.AsFloat        :=0;
                    end;

                  UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

                  if CDSVentaCabDesglozaIVA.Value='N' Then
                    UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

                  CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
                end;
            end
          else
            begin

              CDSVentaDetCosto_Gravado.AsFloat  := DatosNPedidoClientes.QStockPrecioCOSTO_GRAVADO.AsFloat;
              CDSVentaDetCosto_Exento.AsFloat   := DatosNPedidoClientes.QStockPrecioCOSTO_EXENTO.AsFloat;
              CDSVentaDetCosto_Total.AsFloat    := DatosNPedidoClientes.QStockPrecioCOSTO_TOTAL.AsFloat;

              if (FormCpbte_2.Calcula_iva_articulo=False) then
                CDSVentaDetIVA_Tasa.AsFloat:=0;

              if (FormCpbte_2.Calcula_iva_articulo=True) and (FormCpbte_2.Divide_iva=True) then
                CDSVentaDetIVA_Tasa.AsFloat := CDSVentaDetIVA_Tasa.AsFloat * 0.5;

              DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor,CDSVentaCabLISTAPRECIO.AsInteger,CDSVentaCabSUCURSAL.AsInteger,CDSVentaCabDEPOSITO.AsInteger,
                                            CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.AsString,
                                            CDSVentaDetCOTIZACION.AsFloat,
                                            CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                            Gravado,exento,Total,Iva,Margen,dscto,PFinal);

              CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
              CDSVentaDetUNITARIO_EXENTO.AsFloat :=Exento;
              CDSVentaDetUNITARIO_TOTAL.AsFloat  :=Total;
              CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
              CDSVentaDetMARGEN.ASFloat          :=Margen;
              CDSVentaDetDESCUENTO.ASFloat       :=Dscto;


              if (FormCpbte_2.Calcula_iva_articulo=False) then
                begin
                  CDSVentaDetIVA_Tasa.AsFloat     :=0;
                  CDSVentaDetIVA_UNITARIO.AsFloat :=0;

                end;

              if (FormCpbte_2.Calcula_iva_articulo=True) and (FormCpbte_2.Divide_iva=True) then
                CDSVentaDetIVA_Tasa.AsFloat := CDSVentaDetIVA_Tasa.AsFloat * 0.5;

              UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

              if CDSVentaCabDesglozaIVA.Value='N' Then
                UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

              CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));

//            CDSVentaDetUNITARIO_GRAVADO.AsFloat :=DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat;
//            CDSVentaDetUNITARIO_EXENTO.AsFloat  :=DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;
//            CDSVentaDetUNITARIO_TOTAL.AsFloat   :=DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat;
//
//            CDSVentaDetCOSTO_GRAVADO.AsFloat    :=DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_GRAVADO.AsFloat;
//            CDSVentaDetCOSTO_EXENTO.AsFloat     :=DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_EXENTO.AsFloat;
//            CDSVentaDetCOSTO_TOTAL.AsFloat      :=DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_TOTAL.AsFloat;
//
//            CDSVentaDetIVA_UNITARIO.AsFloat     :=DatosNPedidoClientes.CDSNotaPedidoDetIVA_UNITARIO.ASFloat;
//            CDSVentaDetIVA_TOTAL.AsFloat        :=DatosNPedidoClientes.CDSNotaPedidoDetIVA_TOTAL.ASFloat;
//
//            UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;
//
//            if CDSVentaCabDesglozaIVA.Value='N' Then
//              UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;
//
//            CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
            end;
        end
      else
        begin
          CDSVentaDetUNITARIO_GRAVADO.AsFloat :=(DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetUNITARIO_EXENTO.AsFloat  :=(DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetUNITARIO_TOTAL.AsFloat   :=(DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;

          CDSVentaDetCOSTO_GRAVADO.AsFloat    :=(DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCOSTO_EXENTO.AsFloat     :=(DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCOSTO_TOTAL.AsFloat      :=(DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;

          if (FormCpbte_2.Calcula_iva_articulo=False) then
            begin
              CDSVentaDetIVA_Tasa.AsFloat:=0;
              CDSVentaDetIVA_UNITARIO.AsFloat :=0;
            end;

          if (FormCpbte_2.Calcula_iva_articulo=True) and (FormCpbte_2.Divide_iva=True) then
            CDSVentaDetIVA_Tasa.AsFloat := CDSVentaDetIVA_Tasa.AsFloat * 0.5;

          if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
            begin
              CDSVentaDetIVA_UNITARIO.AsFloat     :=(DatosNPedidoClientes.CDSNotaPedidoDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetIVA_TOTAL.AsFloat        :=(DatosNPedidoClientes.CDSNotaPedidoDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;
            end
          else
            begin
              CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
              CDSVentaDetIVA_TOTAL.AsFloat        :=0;
            end;

          UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

          if CDSVentaCabDesglozaIVA.Value='N' Then
            UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

          CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));

        end;

      DatosNPedidoClientes.QStockPrecio.Close;
      CDSVentaDet.Post;
    end;
end;




procedure TFormNotaPedidoCliente.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     DatosNPedidoClientes.CDSNotaPedidoCabCODIGOSetText(DatosNPedidoClientes.CDSNotaPedidoCabCODIGO,FormBuscadorClientes.Codigo);
end;

procedure TFormNotaPedidoCliente.BuscarLdrExecute(Sender: TObject);
begin
  inherited;
  DatosNPedidoClientes.CDSBuscaLdr.Close;
  DatosNPedidoClientes.CDSBuscaLdr.Params.ParamByName('Codigo').Value := DatosNPedidoClientes.CDSNotaPedidoCabCodigo.Value;
  DatosNPedidoClientes.CDSBuscaLdr.Open;
  comBuscadorLdr.Execute;
  if comBuscadorLdr.rOk Then
      DatosNPedidoClientes.CDSNotaPedidoCabLDRSetText(DatosNPedidoClientes.CDSNotaPedidoCabLDR,IntToStr(comBuscadorLdr.Id));
  DatosNPedidoClientes.CDSBuscaLdr.Close;

end;

procedure TFormNotaPedidoCliente.BuscarPorReferenciaExecute(Sender: TObject);
begin
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Self);
  FormBuscarPorNroReferenica.CompraVta:='PC';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      if FormBuscarPorNroReferenica.Tipo='PC' then
        begin
          TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
          DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
          Recuperar.Execute;
        end;
   end
 else
    ShowMessage('No Hay Comprobante con ese Nro...');
end;

procedure TFormNotaPedidoCliente.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosNPedidoClientes.CDSBuscaSucursal.Close;
  DatosNPedidoClientes.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
      DatosNPedidoClientes.CDSNotaPedidoCabSUCURSALSetText(DatosNPedidoClientes.CDSNotaPedidoCabSucursal, IntToStr(comBuscadorSucursal.Id));
  DatosNPedidoClientes.CDSBuscaSucursal.Close;
end;

procedure TFormNotaPedidoCliente.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosNPedidoClientes.CDSBuscaDeposito.Close;
  DatosNPedidoClientes.CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
      DatosNPedidoClientes.CDSNotaPedidoCabDepositoSetText(DatosNPedidoClientes.CDSNotaPedidoCabDeposito, IntToStr(comBuscadorDeposito.Id));
  DatosNPedidoClientes.CDSBuscaDeposito.Close;

end;

procedure TFormNotaPedidoCliente.BuscarCondVentaExecute(Sender: TObject);
begin
  inherited;
  DatosNPedidoClientes.CDSBuscaCondVenta.Close;
  DatosNPedidoClientes.CDSBuscaCondVenta.Params.ParamByName('Codigo').Value := DatosNPedidoClientes.CDSNotaPedidoCabCodigo.Value;
  DatosNPedidoClientes.CDSBuscaCondVenta.Open;
  comBuscadorCondVta.Execute;
  if comBuscadorCondVta.rOk Then
    DatosNPedidoClientes.CDSNotaPedidoCabCondicionVtaSetText(DatosNPedidoClientes.CDSNotaPedidoCabCondicionVta, IntToStr(comBuscadorCondVta.Id));
  DatosNPedidoClientes.CDSCondVenta.Close;
end;

procedure TFormNotaPedidoCliente.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and ' +
                                            ' compra_venta = ''V'' and (tipo_comprob= ''PC'') ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value         := DatosNPedidoClientes.CDSNotaPedidoCabSUCURSAL.Value;
  DMBuscadores.CDSBuscaComprob.Open;

  if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;

  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
      DatosNPedidoClientes.CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(DatosNPedidoClientes.CDSNotaPedidoCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;
  DMBuscadores.CDSBuscaComprob.Close;
end;

procedure TFormNotaPedidoCliente.BorrarExecute(Sender: TObject);
begin
  DatosNPedidoClientes.QBuscaPedidoFC.Close;
  DatosNPedidoClientes.QBuscaPedidoFC.ParamByName('id_pedido').Value:=DatosNPedidoClientes.CDSNotaPedidoCabID.Value;
  DatosNPedidoClientes.QBuscaPedidoFC.Open;
  if DatosNPedidoClientes.QBuscaPedidoFC.Fields[0].AsString<>'' Then
    raise Exception.Create('Pedido Facturado en '+DatosNPedidoClientes.QBuscaPedidoFCNROCPBTE.AsString);
  DatosNPedidoClientes.QBuscaPedidoFC.Close;

  DatosNPedidoClientes.QBuscaPedidoRT.Close;
  DatosNPedidoClientes.QBuscaPedidoRT.ParamByName('id_pedido').Value:=DatosNPedidoClientes.CDSNotaPedidoCabID.Value;
  DatosNPedidoClientes.QBuscaPedidoRT.Open;
  if DatosNPedidoClientes.QBuscaPedidoRT.Fields[0].AsString<>'' Then
    raise Exception.Create('Pedido Entregado en '+DatosNPedidoClientes.QBuscaPedidoRTNROCPBTE.AsString);
  DatosNPedidoClientes.QBuscaPedidoRT.Close;

  if DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='N' then
   inherited;

end;

procedure TFormNotaPedidoCliente.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
     // FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.Param3:=3;

      FormBuscadorArticulos.ListaPrecio:= DatosNPedidoClientes.CDSNotaPedidoCabLISTAPRECIO.Value;
      FormBuscadorArticulos.Esquema    := -1;
      FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        DatosNPedidoClientes.CDSNotaPedidoDetCodigoArticuloSetText(DatosNPedidoClientes.CDSNotaPedidoDetCodigoArticulo,FormBuscadorArticulos.Codigo);
  end;
end;

procedure TFormNotaPedidoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  NPedidoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NPedido.ini');
  //*************************************************************
  NPedidoIni.WriteBool('Modo', 'Modo', chPreview.Checked);
  NPedidoIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo1.Checked);
  NPedidoIni.Free;
  Action:=caFree;
end;

procedure TFormNotaPedidoCliente.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  IF NOT (Assigned(DatosNPedidoClientes)) THEN
    DatosNPedidoClientes := TDatosNPedidoClientes.Create(Application);
  if DSBase.DataSet=nil Then
    DSBase.DataSet:=DatosNPedidoClientes.CDSNotaPedidoCab;
  with DatosNPedidoClientes DO
    begin
      AddClientDataSet(CDSNotaPedidoCab,DSPNotaPedidoCab);
      AddClientDataSet(CDSNotaPedidoDet,DSPNotaPedidoDet);
      AddClientDataSet(CDSNotaPedidoImp,DSPNotaPedidoImp);


      CDSNotaPedidoCab.close;
      CDSNotaPedidoCab.Params.ParamByName('TipoCpbte').Clear;
      CDSNotaPedidoCab.Params.ParamByName('id').Clear;
      CDSNotaPedidoCab.Open;

      CDSNotaPedidoDet.Close;
      CDSNotaPedidoDet.Params.ParamByName('id').Clear;
      CDSNotaPedidoDet.Open;

      CDSNotaPedidoImp.Close;
      CDSNotaPedidoImp.Params.ParamByName('id').Clear;
      CDSNotaPedidoImp.Open;

     // CDSNotaPedidoCab.EmptyDataSet;
     // CDSNotaPedidoDet.EmptyDataSet;
     // CDSNotaPedidoImp.EmptyDataSet;

      DatosNPedidoClientes.CDSListaPrecios.Close;
      if DMMain_FD.UsuarioAdministrador Then
        DatosNPedidoClientes.CDSListaPrecios.Params.ParamByName('uso').Value:='*'
      else
        DatosNPedidoClientes.CDSListaPrecios.Params.ParamByName('uso').Value:='S';
      DatosNPedidoClientes.CDSListaPrecios.OPen;

      AplicarMascarasNumericas;
    end;

  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura y no puede cambiar de lista
  // Precio Unitario
  //  DBGrillaDetalle.Columns[5].ReadOnly:=NOt(DMMain.ModificaPrecioVta);
  // Descuento
  //  DBGrillaDetalle.Columns[6].ReadOnly:=Not(DMMain.AplicaDescuento);
   dbeDscto.Enabled         := DMMain_FD.AplicaDescuento;
   gbLista.Enabled          := DMMain_FD.ModificaListaPrecios;
  //***************************************************************

   pcDetalleFactura.ActivePageIndex:=0;

   ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NPedido.ini');
   VerCodigoAlternativo1.Checked:= ArchivoIni.ReadBool('codigo', 'codigo', False);
   chPreview.Checked            := ArchivoIni.ReadBool('Modo', 'Modo', True);
   ArchivoIni.Free;
   AutoSize:=False;

  Tabla:='NPedidoCab_Cliente';
  Campo:='id';
end;

procedure TFormNotaPedidoCliente.DatosCabClienteExecute(Sender: TObject);
begin
  inherited;
{  if Not(Assigned(FormDatosClienteCabeceraCpbte)) Then
    FormDatosClienteCabeceraCpbte:=TFormDatosClienteCabeceraCpbte.Create(Application);
  FormDatosClienteCabeceraCpbte.Tag :=6;
  FormDatosClienteCabeceraCpbte.ShowModal;  }

  DMMain_FD.ModificarDatosCliente(DSBase);
end;

procedure TFormNotaPedidoCliente.dbcListaClick(Sender: TObject);
begin
  inherited;
 if (dbcLista.KeyValue<>Null) Then
    begin
      if (FormNotaPedidoCliente.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1) Then
        DatosNPedidoClientes.CDSNotaPedidoCabCONDICIONVTASetText(DatosNPedidoClientes.CDSNotaPedidoCabCONDICIONVTA,FormNotaPedidoCliente.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
      Recalcular.Execute;
    end;
end;

procedure TFormNotaPedidoCliente.dbcListaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_back) or (Key=VK_delete) Then
    begin
      DatosNPedidoClientes.CDSNotaPedidoCabLISTAPRECIO.Clear;
      Recalcular.Execute;
    end;
end;

procedure TFormNotaPedidoCliente.DBGrillaDetalleColEnter(Sender: TObject);
begin
  inherited;
  if DBGrillaDetalle.SelectedIndex=4 Then
    begin
      if (DMMain_FD.VerStock) and
         (DatosNPedidoClientes.CDSNotaPedidoDetAfecta_Stock.Value='S') and
          (Not(DSBase.State in [dsBrowse])) Then
        begin
          DatosNPedidoClientes.CDSExistencia.Close;
          DatosNPedidoClientes.CDSExistencia.Params.ParamByName('Unidad').Value:='V';
          DatosNPedidoClientes.CDSExistencia.Params.ParamByName('Codigo').Value:=DatosNPedidoClientes.CDSNotaPedidoDetCodigoArticulo.Value;
          DatosNPedidoClientes.CDSExistencia.Params.ParamByName('fisico').Value:=1;
          DatosNPedidoClientes.CDSExistencia.Params.ParamByName('usuario').AsFloat:=DMMain_FD.UsuarioActivoId;
          DatosNPedidoClientes.CDSExistencia.Open;
          dbgExitencias.Visible:=True;
        end;
    end
  else
    dbgExitencias.Visible:=False;

  IF DBGrillaDetalle.SelectedIndex = 0 THEN
    DBGrillaDetalle.SelectedIndex := 1;

  if DSBase.State=dsInsert Then    // si es nueva
    begin
      IF DBGrillaDetalle.SelectedIndex = 3 THEN
        DBGrillaDetalle.SelectedIndex := 4 else
      IF DBGrillaDetalle.SelectedIndex = 7 THEN
        DBGrillaDetalle.SelectedIndex := 5 else
      IF DBGrillaDetalle.SelectedIndex = 6 THEN
        DBGrillaDetalle.SelectedIndex := 8;
    end
  else
    if DSBase.State=dsEdit Then   // si la estoy preparando
      begin
        IF DBGrillaDetalle.SelectedIndex = 3 THEN
          DBGrillaDetalle.SelectedIndex := 5 else
        IF DBGrillaDetalle.SelectedIndex = 4 THEN
          DBGrillaDetalle.SelectedIndex := 5 else
        IF DBGrillaDetalle.SelectedIndex = 6 THEN
          DBGrillaDetalle.SelectedIndex := 8 else
        IF DBGrillaDetalle.SelectedIndex = 8 THEN
          DBGrillaDetalle.SelectedIndex := 5;

      end;

//  IF (DBGrillaDetalle.SelectedIndex = 7) and
//     (DBGrillaDetalle.Fields[0].AsString<>'') THEN
//    BEGIN
//      IF (DatosNPedidoClientes.CDSNotaPedidoDet.State IN [dsEdit, dsInsert]) AND
//        (DatosNPedidoClientes.CDSNotaPedidoDetModo_Gravamen.Value = 'M') THEN
//        BEGIN
//          FormComposicionPrecio              := TFormComposicionPrecio.Create(Application);
//          FormComposicionPrecio.ValorGravado := DatosNPedidoClientes.CDSNotaPedidoDetUnitario_Gravado.AsFloat;
//          FormComposicionPrecio.ValorExento  := DatosNPedidoClientes.CDSNotaPedidoDetUnitario_Exento.AsFloat;
//          FormComposicionPrecio.ShowModal;
//          // FreeAndNil(ComposicionPrecioForm);
//          DatosNPedidoClientes.CDSNotaPedidoDetUnitario_Exento.AsFloat  := FormComposicionPrecio.ValorExento;
//          DatosNPedidoClientes.CDSNotaPedidoDetUnitario_Gravado.AsFloat := FormComposicionPrecio.ValorGravado;
//          DatosNPedidoClientes.CDSNotaPedidoDetUnitario_TotalSetText(DatosNPedidoClientes.CDSNotaPedidoDetUnitario_Total, DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTAL.AsString);
//        END;
//    END;

end;

procedure TFormNotaPedidoCliente.DBGrillaDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (not(DBGrillaDetalle.DataSource.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=DBGrillaDetalle.DataSource.DataSet.FieldByName('codigoArticulo').Value;
      formstock_2.recuperar.Execute;
      FormStock_2.Show;
    end;
end;

procedure TFormNotaPedidoCliente.DBGrillaDetalleDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
 if (DatosNPedidoClientes.CDSNotaPedidoCab.State in [dsInsert,dsEdit]) Then
    begin
      DatosNPedidoClientes.CDSNotaPedidoDet.Append;
      DatosNPedidoClientes.CDSNotaPedidoDetCODIGOARTICULOSetText(DatosNPedidoClientes.CDSNotaPedidoDetCODIGOARTICULO,(Source as TDBGrid).DataSource.DataSet.FieldByName('Codigo_stk').AsString);
      DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_PEDIDIA,'1');
      DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTALSetText(DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTAL,(Source as TDBGrid).DataSource.DataSet.FieldByName('MuestraPrecio').Value);
    end;
end;

procedure TFormNotaPedidoCliente.DBGrillaDetalleDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
 if Source=FormConsultaStock.dbgStock Then
    Accept:=True
  else
    Accept:=False;
end;

procedure TFormNotaPedidoCliente.DBGrillaDetalleDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($CCCCFF);
begin
  inherited;
  if Trunc(DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_FALTANTE.AsFloat*100)=0 then
    begin
//      if (gdFocused in State) then
//        DBGrillaDetalle.Canvas.Font.Color:=clWhite
//      else
        DBGrillaDetalle.Canvas.Font.Color:=clGreen;
    end
  else
    DBGrillaDetalle.Canvas.Font.Color:=clBlack;

  if (DatosNPedidoClientes.CDSNotaPedidoDetUnitario_Total.AsFloat < DatosNPedidoClientes.CDSNotaPedidoDetCOSTO_TOTAL.AsFloat) Then
//    if (gdFocused in State) then
//      begin
//        DBGrillaDetalle.canvas.brush.color := clNavy;
//        DBGrillaDetalle.canvas.Font.color  := clWhite;
//      end
//    else
      begin
        DBGrillaDetalle.canvas.brush.color := clPaleRed;
     end;
    //Esta línea es nueva

    if (gdFocused in State) then
      begin
        DBGrillaDetalle.canvas.brush.color := clNavy;
        DBGrillaDetalle.canvas.Font.color  := clWhite;
      end;

    DBGrillaDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormNotaPedidoCliente.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  if DBGrillaDetalle.SelectedIndex<1 then
    DBGrillaDetalle.SelectedIndex:=1;

  //  sbEstado.SimpleText:=' F-11: Lista los movimientos del artículo elegido';
end;

procedure TFormNotaPedidoCliente.DBGrillaDetalleExit(Sender: TObject);
begin
  inherited;
 sbEstado.SimpleText:='';
end;

procedure TFormNotaPedidoCliente.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
    BEGIN
      if (DBGrillaDetalle.SelectedIndex = 2) THEN
        DBGrillaDetalle.SelectedIndex := 1
      else
        if (DBGrillaDetalle.SelectedIndex = 4) THEN
          DBGrillaDetalle.SelectedIndex := 2
        else
          if (DBGrillaDetalle.SelectedIndex = 5) THEN
            DBGrillaDetalle.SelectedIndex := 4
          else
            if (DBGrillaDetalle.SelectedIndex = 8) THEN
              DBGrillaDetalle.SelectedIndex := 5;
      key := 0;
    END;
  IF (Key = VK_F11) and (DatosNPedidoClientes.CDSNotaPedidoDetCodigoArticulo.AsString<>'') THEN
    BEGIN
      IF NOT (Assigned(FormArticulosVendidos)) THEN
        BEGIN
          FormArticulosVendidos                 := TFormArticulosVendidos.Create(Application);
          FormArticulosVendidos.CodigoCliente   := DatosNPedidoClientes.CDSNotaPedidoCabCodigo.Value;
          FormArticulosVendidos.CodigoArticulo  := DatosNPedidoClientes.CDSNotaPedidoDetCodigoArticulo.Value;
          FormArticulosVendidos.ShowModal;
        END;
    END;
//  if ((key= Vk_F3) and ((DMMain.ModificaPrecioVta=False) or (DMMain.AplicaDescuento=False)) and (DBGrillaDetalle.SelectedIndex in [5,6])) Then
//    begin
//      if not (Assigned(FormLogin)) then
//        FormLogin := TFormLogin.Create(FormNotaPedidoCliente);
//      FormLogin.ShowModal;
//     DBGrillaDetalle.Columns[5].ReadOnly:=Not(FormLogin.Tag=1);
//     DBGrillaDetalle.Columns[6].ReadOnly:=Not(FormLogin.Tag=1);
//      key:=0;
//    end;


end;

procedure TFormNotaPedidoCliente.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      if (DSBase.State=dsEdit) and (DBGrillaDetalle.SelectedIndex=5) Then
        DBGrillaDetalle.SelectedIndex:=8;
      IF (DBGrillaDetalle.SelectedIndex < 8) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 1;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
        begin
          IF DBGrillaDetalle.SelectedField = DatosNPedidoClientes.CDSNotaPedidoDetCodigoArticulo THEN
            BuscarArticulo.Execute;
        end;
    END
    else if (key=#27) then DBGrillaDetalle.DataSource.DataSet.Cancel;

end;

procedure TFormNotaPedidoCliente.DescumplirExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Está por Sacar de Cumplida la Nota de Pedido, .... esta seguro?', mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      DatoNew     :=IntToStr(DatosNPedidoClientes.CDSNotaPedidoCabID.Value);
      TipoCpbte   :=DatosNPedidoClientes.CDSNotaPedidoCabTIPOCPBTE.Value;
      DatosNPedidoClientes.spDesmarcarNP.Close;
      DatosNPedidoClientes.spDesmarcarNP.ParamByName('ID').Value:=DatosNPedidoClientes.CDSNotaPedidoCabID.Value;
      if HayPendientes then
        DatosNPedidoClientes.spDesmarcarNP.ParamByName('ESTADO').AsString:='P'
      else
        DatosNPedidoClientes.spDesmarcarNP.ParamByName('ESTADO').AsString:='N';
      DatosNPedidoClientes.spDesmarcarNP.ExecProc;
      DatosNPedidoClientes.spDesmarcarNP.Close;
      Recuperar.Execute;
   end;
end;

procedure TFormNotaPedidoCliente.AgregarExecute(Sender: TObject);
begin
 // if Anulado<>nil Then FreeAndNil(Anulado);
  DatosNPedidoClientes.CDSNotaPedidoCab.close;
  DatosNPedidoClientes.CDSNotaPedidoCab.Params.ParamByName('TipoCpbte').Clear;
  DatosNPedidoClientes.CDSNotaPedidoCab.Params.ParamByName('id').Clear;
  DatosNPedidoClientes.CDSNotaPedidoCab.Open;

  DatosNPedidoClientes.CDSNotaPedidoDet.Close;
  DatosNPedidoClientes.CDSNotaPedidoDet.Params.ParamByName('id').Clear;
  DatosNPedidoClientes.CDSNotaPedidoDet.Open;

  DatosNPedidoClientes.CDSNotaPedidoImp.Close;
  DatosNPedidoClientes.CDSNotaPedidoImp.Params.ParamByName('id').Clear;
  DatosNPedidoClientes.CDSNotaPedidoImp.Open;

  inherited;
  if Anulado<>nil Then FreeAndNil(Anulado);
  pnCabecera.Enabled:=True;
 
  pcDetalleFactura.ActivePageIndex := 0;
  RxCCodigo.SetFocus;
  RxCCodigo.SelectAll;

end;

procedure TFormNotaPedidoCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  FormNotaPedidoCliente:=nil;
end;

procedure TFormNotaPedidoCliente.FormResize(Sender: TObject);
begin
  inherited;
  if FormNotaPedidoCliente<>nil then
    if FormNotaPedidoCliente.Width<>804 then
      FormNotaPedidoCliente.Width:=804;

end;

procedure TFormNotaPedidoCliente.FormShow(Sender: TObject);
begin
  inherited;
  NPedidoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NPedido.ini');
  //*************************************************************
  chPreview.Checked        := NPedidoIni.ReadBool('Modo', 'Modo', False);
  NPedidoIni.Free;
end;

procedure TFormNotaPedidoCliente.CancelarExecute(Sender: TObject);
begin
  if Anulado<>nil Then FreeAndNil(Anulado);
  DatosNPedidoClientes.CDSNotaPedidoCab.close;
  DatosNPedidoClientes.CDSNotaPedidoCab.Params.ParamByName('TipoCpbte').Clear;
  DatosNPedidoClientes.CDSNotaPedidoCab.Params.ParamByName('id').Clear;
  DatosNPedidoClientes.CDSNotaPedidoCab.Open;

  DatosNPedidoClientes.CDSNotaPedidoDet.Close;
  DatosNPedidoClientes.CDSNotaPedidoDet.Params.ParamByName('id').Clear;
  DatosNPedidoClientes.CDSNotaPedidoDet.Open;

  DatosNPedidoClientes.CDSNotaPedidoImp.Close;
  DatosNPedidoClientes.CDSNotaPedidoImp.Params.ParamByName('id').Clear;
  DatosNPedidoClientes.CDSNotaPedidoImp.Open;
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormNotaPedidoCliente.ModificarExecute(Sender: TObject);
begin
  if (DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.AsString<>'') and
     (DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.Value>0) then
  Raise Exception.Create('Comprobante con entrega previa... genere un nuvo pedido y vuelva a procesar...');  
  inherited;
  pnCabecera.Enabled:=False;
end;

procedure TFormNotaPedidoCliente.RxCCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosNPedidoClientes.CDSNotaPedidoCabCODIGO.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabNOMBRE.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabLDR.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabMUESTRALDR.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabCONDICIONVTA.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabMUESTRACONDVENTA.Clear;
    end;
end;

procedure TFormNotaPedidoCliente.RxCSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosNPedidoClientes.CDSNotaPedidoCabSUCURSAL.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabMUESTRASUCURSAL.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabID_TIPOCOMPROBANTE.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabMUESTRACOMPROBANTE.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabLETRANP.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabSUCNP.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabNUMERONP.Clear;
    end;
end;

procedure TFormNotaPedidoCliente.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosNPedidoClientes.CDSNotaPedidoCabID_TIPOCOMPROBANTE.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabMUESTRACOMPROBANTE.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabLETRANP.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabSUCNP.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabNUMERONP.Clear;
    end;
end;

procedure TFormNotaPedidoCliente.RxCLdrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosNPedidoClientes.CDSNotaPedidoCabLDR.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabMUESTRALDR.Clear;
    end;
end;

procedure TFormNotaPedidoCliente.rxcVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if DMMain_FD.ModificaVendedor Then
    if (key=vk_delete) or (Key=VK_back) Then
      begin
        DatosNPedidoClientes.CDSNotaPedidoCabVENDEDOR.Clear;
        DatosNPedidoClientes.CDSNotaPedidoCabMUESTRAVENDEDOR.Clear;
      end;
end;

procedure TFormNotaPedidoCliente.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frPedido.DesignReport;
end;

procedure TFormNotaPedidoCliente.VerCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked            := Not(VerCodigoAlternativo1.Checked);
//  DatosNPedidoClientes.VerCodigoAlternativo:= VerCodigoAlternativo1.Checked;
  DBGrillaDetalle.Refresh;
end;

procedure TFormNotaPedidoCliente.VerificaHuerfanasExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('va hacer un control de N.P Huerfanas, .... esta seguro?', mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      DatoNew     :=IntToStr(DatosNPedidoClientes.CDSNotaPedidoCabID.Value);
      TipoCpbte   :=DatosNPedidoClientes.CDSNotaPedidoCabTIPOCPBTE.Value;
      DatosNPedidoClientes.spVerificaHuerfanas.Close;
      DatosNPedidoClientes.spVerificaHuerfanas.ExecProc;
      DatosNPedidoClientes.spVerificaHuerfanas.Close;
      Recuperar.Execute;
    end;
end;

procedure TFormNotaPedidoCliente.BuscarVendedorExecute(Sender: TObject);
begin
  inherited;
  DatosNPedidoClientes.CDSBuscaVendedor.Close;
  DatosNPedidoClientes.CDSBuscaVendedor.Open;
  comBuscadorVendedor.Execute;
  if comBuscadorVendedor.rOk Then
    DatosNPedidoClientes.CDSNotaPedidoCabVENDEDORSetText(DatosNPedidoClientes.CDSNotaPedidoCabVENDEDOR,comBuscadorVendedor.Id);
  DatosNPedidoClientes.CDSBuscaVendedor.Close;
end;

procedure TFormNotaPedidoCliente.RxCDepositoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosNPedidoClientes.CDSNotaPedidoCabDEPOSITO.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabMUESTRADEPOSITO.Clear;
    end;
end;

procedure TFormNotaPedidoCliente.RxCConVtaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosNPedidoClientes.CDSNotaPedidoCabCONDICIONVTA.Clear;
      DatosNPedidoClientes.CDSNotaPedidoCabMUESTRACONDVENTA.Clear;
    end;
end;

procedure TFormNotaPedidoCliente.pcDetalleFacturaEnter(Sender: TObject);
begin
  inherited;
  IF  ((RxCCodigo.Text = '') OR
      (RxCLdr.Text = '') OR
      (RxCSucursal.Text = '') OR
      (RxCDeposito.Text = '') OR
      (DatosNPedidoClientes.CDSNotaPedidoCabMUESTRACOMPROBANTE.Value='') OR
      (RxCConVta.TExt='') OR
      (dbeSuc.Text = '') OR
      (dbeNumero.Text = '') OR
      (dbeFechaVta.Text = '')) and (DSBase.DataSet.State in [dsInsert,dsEdit]) THEN
      BEGIN
        ShowMessage('Datos en la Cabecera Incompletos....');
        IF pcDetalleFactura.ActivePageIndex <> 0 THEN
          pcDetalleFactura.ActivePageIndex := 0;
        pnCabecera.Enabled := True;
        RxCCodigo.SetFocus;
      END
    else
      begin
        pnCabecera.Enabled       := False;
        pcDetalleFactura.Enabled := True;
      end;

end;

procedure TFormNotaPedidoCliente.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 30;
  FormBuscaCpbte.TipoCpbte1:='PC';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;

end;

procedure TFormNotaPedidoCliente.ReCalcularExecute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  Puntero:=DatosNPedidoClientes.CDSNotaPedidoDet.GetBookmark;
  DatosNPedidoClientes.CDSNotaPedidoDet.First;
  DatosNPedidoClientes.CDSNotaPedidoDet.DisableControls;
  while Not(DatosNPedidoClientes.CDSNotaPedidoDet.Eof) DO
    begin
      Puntero2:=DatosNPedidoClientes.CDSNotaPedidoDet.GetBookmark;
      DatosNPedidoClientes.CDSNotaPedidoDet.edit;

      with DatosNPedidoClientes Do
      DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor, CDSNotaPedidoCabLISTAPRECIO.AsInteger,CDSNotaPedidoCabSUCURSAL.AsInteger,CDSNotaPedidoCabDEPOSITO.AsInteger,
                                    CDSNotaPedidoDetCODIGOARTICULO.AsString,CDSNotaPedidoCabCODIGO.AsString,CDSNotaPedidoCabTIPOCPBTE.AsString,
                                    CDSNotaPedidoDetCOTIZACION.AsFloat,
                                    1,
                                    Gravado,exento,Total,Iva,Margen,dscto,PFinal);



      DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat:=Gravado;
      DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat :=Exento;
      DatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat  :=Total;
      DatosNPedidoClientes.CDSNotaPedidoDetIVA_UNITARIO.AsFloat    :=Iva;
      DatosNPedidoClientes.CDSNotaPedidoDetMARGEN.ASFloat          :=Margen;
      DatosNPedidoClientes.CDSNotaPedidoDetDESCUENTO.ASFloat       :=Dscto;

      DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_PEDIDIA,DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_PEDIDIA.AsString);
      DatosNPedidoClientes.CDSNotaPedidoDet.GotoBookmark(Puntero2);
      DatosNPedidoClientes.CDSNotaPedidoDet.FreeBookmark(Puntero2);
      DatosNPedidoClientes.CDSNotaPedidoDet.Next;
    end;
  DatosNPedidoClientes.CDSNotaPedidoDet.GotoBookmark(Puntero);
  DatosNPedidoClientes.CDSNotaPedidoDet.FreeBookmark(Puntero);
  DatosNPedidoClientes.CDSNotaPedidoDet.EnableControls;
end;


procedure TFormNotaPedidoCliente.RecuperarExecute(Sender: TObject);
begin
   inherited;

   DatosNPedidoClientes.CDSNotaPedidoCab.close;
   DatosNPedidoClientes.CDSNotaPedidoCab.Params.ParamByName('TipoCpbte').Value :=TipoCpbte;
   DatosNPedidoClientes.CDSNotaPedidoCab.Params.ParamByName('id').Value        :=StrToInt(DatoNew);
   DatosNPedidoClientes.CDSNotaPedidoCab.Open;

   DatosNPedidoClientes.CDSNotaPedidoDet.Close;
   DatosNPedidoClientes.CDSNotaPedidoDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
   DatosNPedidoClientes.CDSNotaPedidoDet.Open;

   DatosNPedidoClientes.CDSNotaPedidoImp.Close;
   DatosNPedidoClientes.CDSNotaPedidoImp.Params.ParamByName('id').Value:=StrToInt(DatoNew);
   DatosNPedidoClientes.CDSNotaPedidoImp.Open;

   DatoNew := ''+DatoNew+'';
   DatosNPedidoClientes.QComprob.Close;
   DatosNPedidoClientes.QComprob.ParamByName('id').Value :=DatosNPedidoClientes.CDSNotaPedidoCabID_TIPOCOMPROBANTE.Value;
   DatosNPedidoClientes.QComprob.ParamByName('Suc').Value:=DatosNPedidoClientes.CDSNotaPedidoCabSUCURSAL.Value;
   DatosNPedidoClientes.QComprob.Open;
   DatosNPedidoClientes.Renglones:=DatosNPedidoClientes.QComprobLINEAS_DETALLE.Value;
   DatosNPedidoClientes.QComprob.Close;
   if DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='N' Then
     begin
       lbEstado.Caption:='Nuevo/Pendiente';
       Modificar.Enabled:=True;
       Borrar.Enabled   :=True;
     end
   else
     if DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='C' Then
       begin
         lbEstado.Caption:='Cumplido';
         Modificar.Enabled:=False;
         Borrar.Enabled   :=False;
       end
     else
       if DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='A' Then
         begin
           lbEstado.Caption:='Anulado';
           Modificar.Enabled:=False;
           Borrar.Enabled   :=False;
         end
     else
       if DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='P' Then
         begin
           lbEstado.Caption:='Pendiente';
           Modificar.Enabled:=True;
           Borrar.Enabled   :=False;
         end
       else
         if DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='X' Then
           begin
             lbEstado.Caption:='Vencido';
             Modificar.Enabled:=False;
             Borrar.Enabled   :=False;
           end
         ;
    if (DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.AsString<>'') and (Modificar.Enabled=True) then
      Modificar.Enabled:=False;

    if (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='A') or
       (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='X') or
       (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='C')  Then
      begin
         if Anulado=nil Then
            Anulado:=TPanel.Create(Self);
         Anulado.Parent:=Self;
         if (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='A') then
           Anulado.Caption:='ANULADA'
         else
           if (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='C') then
             Anulado.Caption:='CUMPLIDO'
           else
             if (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='X') then
                Anulado.Caption:='VENCIDO';
         Anulado.Top:= Trunc(FormNotaPedidoCliente.Height*0.5)-80;
         Anulado.Left:=Trunc(FormNotaPedidoCliente.Width*0.5)-125;
         Anulado.Height:=40;
         Anulado.Width :=250;
         Anulado.Font.Size:=30;
         Anulado.Font.Color:=clRed;
         Anulado.Font.Name:='Arial';
         Anulado.Font.Style:=[fsBold];
         Anulado.Visible:=True;
         ANulado.BringToFront;
      end
    else
      if Anulado<>nil Then
        begin
          FreeAndNil(Anulado);
        end;
  HayPendientes;
  DBGrillaIva.Visible := DatosNPedidoClientes.CDSNotaPedidoCabDESGLOZAIVA.Value = 'S';
  Modificar.Enabled   := (DMMain_FD.BMNotaPedido and ( (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='N') or (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='P')));
  Borrar.Enabled      := (DMMain_FD.BMNotaPedido and (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value ='N'));
end;

procedure TFormNotaPedidoCliente.ConfirmaExecute(Sender: TObject);
begin
  DatoNew     :=IntToStr(DatosNPedidoClientes.CDSNotaPedidoCabID.Value);
  TipoCpbte   :=DatosNPedidoClientes.CDSNotaPedidoCabTIPOCPBTE.Value;

 if (DMMain_FD.UsaFirma) and (Not(DMMain_FD.UsuarioActivo='master'))  then
    begin
      if Not(Assigned(FormLogin)) then
        FormLogin := TFormLogin.Create(Self);
      FormLogin.Usuario:=DMMain_FD.UsuarioActivo;
      FormLogin.Modo :=1;
      FormLogin.ShowModal;
      if FormLogin.Tag=0 then
        raise Exception.Create('Usuario no Valido de sesion....')
      else
        DatosNPedidoClientes.CDSNotaPedidoCabUSUARIO.Value:= FormLogin.Usuario;
    end;


  if dsbase.State in [dsEdit] then
    begin
      if HayPendientes then
        DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value:='P'
      else
        if MessageDlg('Estarían completadas las cantidades del pedido, lo da por cumplido?',mtConfirmation,mbYesNo,0)= mrYes then
          DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value:='C';
    end;
  if DatosNPedidoClientes.CDSNotaPedidoDet.State in [dsInsert,dsEdit] Then
    DatosNPedidoClientes.CDSNotaPedidoDet.Post;
  DatosNPedidoClientes.CDSNotaPedidoCabRENGLONES.Value:=DatosNPedidoClientes.CDSNotaPedidoDet.RecordCount;
  inherited;
  Recuperar.Execute;

end;

procedure TFormNotaPedidoCliente.CopiaNPExecute(Sender: TObject);
var i,id_old:Integer;
Nombre:String;
NroCpbte:String;
begin
  inherited;

  if DatosNPedidoClientes.CDSNotaPedidoCab.IsEmpty Then
     Raise Exception.Create('No hay Datos para procesar....');

  if DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.AsString='' Then
     Raise Exception.Create('Aún no se envió esta mercadería.... Genere el rto y/o Fac y vuelva a intentar.');

  if Not(DatosNPedidoClientes.GeneraCopiaNP(DatosNPedidoClientes.CDSNotaPedidoDet)) Then
     Raise Exception.Create('No hay Items pendientes de entrega'+#13+
                            'No se permite duplicar la N.P...');


  id_Old:=DatosNPedidoClientes.CDSNotaPedidoCabID.Value;
  DatosNPedidoClientes.CDSNotaPedidoCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NPCab.XML');
  DatosNPedidoClientes.CDSNotaPedidoDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NPDet.XML');

  DatosNPedidoClientes.CDSNPCabXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NPCab.xml');
  DatosNPedidoClientes.CDSNPDetXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NPDet.xml');

  DatosNPedidoClientes.spMarcarNP.Close;
  DatosNPedidoClientes.spMarcarNP.ParamByName('ID').Value:=DatosNPedidoClientes.CDSNotaPedidoCabID.Value;
  DatosNPedidoClientes.spMarcarNP.ExecProc;
  DatosNPedidoClientes.spMarcarNP.Close;

  Agregar.Execute;
  //DuplicarFc:=True;
  For i:=0 to DatosNPedidoClientes.CDSNPCabXML.FieldCount-1 do
    begin
      if (DatosNPedidoClientes.CDSNotaPedidoCab.FindField(DatosNPedidoClientes.CDSNPCabXML.Fields[i].FieldName)<>nil) Then
        begin
          try
            Nombre:=DatosNPedidoClientes.CDSNPCabXML.Fields[i].FieldName;
            if (Nombre<>'ID') Then
              DatosNPedidoClientes.CDSNotaPedidoCab.FieldByName(Nombre).Value:=DatosNPedidoClientes.CDSNPCabXML.FieldByName(Nombre).Value;
            if Nombre='ORIGEN_NROCPBTE' Then
              NroCpbte:=DatosNPedidoClientes.CDSNPCabXML.FieldByName('NroCpbte').AsString;
            if nombre='ID_TIPOCOMPROBANTE' Then
              DatosNPedidoClientes.CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(DatosNPedidoClientes.CDSNotaPedidoCabID_TIPOCOMPROBANTE,DatosNPedidoClientes.CDSNPCabXML.fieldByName(Nombre).AsString)
           Except
             ShowMessage(nombre);
           end;
        end;
    end;
   DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value:='N';
   DatosNPedidoClientes.CDSNotaPedidoCabORIGEN_ID_NOTA_PEDIDO.Value:= id_old;
   DatosNPedidoClientes.CDSNotaPedidoCabORIGEN_TIPOCPBTE.Value     := 'PC';
   DatosNPedidoClientes.CDSNotaPedidoCabORIGEN_NROCPBTE.Value      := NroCpbte;
   DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.Clear;
   DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_TIPOCPBTE.Clear;
   DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_NROCPBTE.Clear;
   DatosNPedidoClientes.CDSNotaPedidoCabNROCPBTE.Value:=DatosNPedidoClientes.CDSNotaPedidoCabLETRANP.Value+
                                                        DatosNPedidoClientes.CDSNotaPedidoCabSUCNP.Value+
                                                        DatosNPedidoClientes.CDSNotaPedidoCabNUMERONP.Value;

 //  DatosNPedidoClientes.CDSNotaPedidoCabc VentaCabCPTE_MANUAL.Value:='N';
   while not(DatosNPedidoClientes.CDSNPDetXML.Eof) do
     begin
       if (DatosNPedidoClientes.CDSNPDetXML.FieldByName('CANTIDAD_FALTANTE').Value>0) Then
         begin
           DatosNPedidoClientes.CDSNotaPedidoDet.Insert;
           For i:=0 to DatosNPedidoClientes.CDSNPDetXML.FieldCount-1 do
             begin
               if (DatosNPedidoClientes.CDSNotaPedidoDet.FindField(DatosNPedidoClientes.CDSNPDetXML.Fields[i].FieldName)<>nil) Then
                 begin
                   Nombre:=DatosNPedidoClientes.CDSNPDetXML.Fields[i].FieldName;
                   if Nombre<>'ID' Then
                     DatosNPedidoClientes.CDSNotaPedidoDet.FieldByName(Nombre).Value:=DatosNPedidoClientes.CDSNPDetXML.FieldByName(Nombre).Value;
                 end;
             end;
           DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_PEDIDIA.AsFloat  := DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_FALTANTE.AsFloat;
           DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_ENTREGADA.AsFloat:= 0;
           DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_FALTANTE.AsFloat := DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_FALTANTE.AsFloat;
           DatosNPedidoClientes.CDSNotaPedidoDetID_CABNP.Value:=DatosNPedidoClientes.CDSNotaPedidoCabID.Value;
           DatosNPedidoClientes.CDSNotaPedidoDetNROCPBTE.Value:=DatosNPedidoClientes.CDSNotaPedidoCabNROCPBTE.Value;
           DatosNPedidoClientes.CDSNotaPedidoDet.Post;
         end;
       DatosNPedidoClientes.CDSNPDetXML.Next;
     end;
end;

procedure TFormNotaPedidoCliente.CumplirExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Está por dar finalizada la Nota de Pedido, .... esta seguro?', mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      DatoNew     :=IntToStr(DatosNPedidoClientes.CDSNotaPedidoCabID.Value);
      TipoCpbte   :=DatosNPedidoClientes.CDSNotaPedidoCabTIPOCPBTE.Value;
      DatosNPedidoClientes.spMarcarNP.Close;
      DatosNPedidoClientes.spMarcarNP.ParamByName('ID').Value:=DatosNPedidoClientes.CDSNotaPedidoCabID.Value;
      DatosNPedidoClientes.spMarcarNP.ExecProc;
      DatosNPedidoClientes.spMarcarNP.Close;
      Recuperar.Execute;
   end;
end;

procedure TFormNotaPedidoCliente.GenerarRtoExecute(Sender: TObject);
begin
  inherited;
  if Assigned(FormCpbte_2) and (FormCpbte_2.DSBase.State<>dsBrowse) then
    begin
      ShowMessage('Hace el Rto ....???');
      Exit;
    end;
  
  if DatosNPedidoClientes.CDSNotaPedidoCab.IsEmpty Then
     Raise Exception.Create('No hay Datos para procesar....');

 if DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.AsString<>'' Then
     Raise Exception.Create('Ya fué Entregada la mercadería , genere otro pedido y vuelva a procesar ....');

  if DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='A' Then
    Raise Exception.Create('Nota de pedido Anulada, no se puede hacer esta Operacion...');

  if DatosNPedidoClientes.HayParaFacturar(DatosNPedidoClientes.CDSNotaPedidoDet) Then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='RE';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal  :=DatosNPedidoClientes.CDSNotaPedidoCabSUCURSAL.Value;
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
      IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
        begin
        //  flag:=DatosNPedidoClientes.HayParaFacturar(DatosNPedidoClientes.CDSNotaPedidoDet);
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
          FormBuscadorDepositos.Deposito:=  DatosNPedidoClientes.CDSNotaPedidoCabDEPOSITO.Value;
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              Deposito    :=FormBuscadorDepositos.Deposito;
              DatoNew     :=IntToStr(DatosNPedidoClientes.CDSNotaPedidoCabID.Value);
              TipoCpbte   :=DatosNPedidoClientes.CDSNotaPedidoCabTIPOCPBTE.Value;
              if Not(Assigned(FormRemitos)) Then
                FormRemitos:=TFormRemitos.Create(Application);
              FormRemitos.Show;
              // si el estado del remito ya esta en modo insert, salto el agregar.
              if (FormRemitos.DSBase.State=dsBrowse) then
                begin
                  if not(FormRemitos.DSBase.State in [dsInsert]) then
                    begin
                      FormRemitos.Agregar.Execute;
                      AgregarCabRto;
                    end;
                  DatosNPedidoClientes.CDSNotaPedidoDet.First;
                  while Not(DatosNPedidoClientes.CDSNotaPedidoDet.Eof) Do // Ingreso el detalle
                    begin
                      if DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_ENTREGADA.AsFloat>0 Then
                        AgregarDetRto;
                      DatosNPedidoClientes.CDSNotaPedidoDet.Next;
                    end;
                end
              else
                ShowMessage('Hay un comprobante abierto....cancele y vuelve a hacer.....');
            end;
        end;
     // if Not(DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]) Then
     //   Recuperar.Execute;
    end
  else
     ShowMessage('No hay cantidades de entrega para Generar el Rto......!!!');

end;

procedure TFormNotaPedidoCliente.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Buscar.Enabled            := DSBase.DataSet.State IN [dsBrowse];
  DBGrillaDetalle.ReadOnly  := DSBase.DataSet.State =dsBrowse;
  dbeObservaciones1.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeObservaciones2.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDscto.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDscto.Enabled          := DMMain_FD.AplicaDescuento;
  pnPrincipal.Enabled       := True;
  pcDetalleFactura.Enabled  := True;
  pnCabecera.Enabled        := DSBase.DataSet.State IN [dsInsert];
  dbcLista.Enabled          :=DSBase.DataSet.State IN [dsInsert, dsEdit];
  if (DSBase.DataSet.State IN [dsBrowse]) and (dbgExitencias.Visible=True) Then
    dbgExitencias.Visible:= False;
  rxcVendedor.Enabled:= DMMain_FD.ModificaVendedor;
  CopiaNP.Enabled    := False;
  GenerarRto.Enabled := False;
  GenerarFc.Enabled  := False;
  Cumplir.Enabled    := False;
  Imprimir.Enabled   := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  if DSBase.DataSet.State IN [dsBrowse] then
    begin

      CopiaNP.Enabled    :=DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='P';
      GenerarRto.Enabled :=(DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='N') or
                           (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='P') or
                           (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='C');
      GenerarFc.Enabled:=GenerarRto.Enabled;
      Cumplir.Enabled    :=(DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value<>'A') and
                           (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value<>'C');

    end;
 // Modificar.Enabled:=DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='N';


end;

procedure TFormNotaPedidoCliente.FormActivate(Sender: TObject);
begin
  inherited;
//  if Not(DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]) Then
//    Recuperar.Execute;

  if DSBase.DataSet.State = dsBrowse then
    begin
      if (DSBase.DataSet.IsEmpty=False) and (FormNotaPedidoCliente<>Nil) then
        Recuperar.Execute;
    end;
 // if (DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='C') and
 //    (DatosNPedidoClientes.GeneraCopiaNP(DatosNPedidoClientes.CDSNotaPedidoDet)) Then
 //    if MessageDlg('Se realizo una entrega.. hay items que no acusan entrega, la N.P:'+DatosNPedidoClientes.CDSNotaPedidoCabNROCPBTE.AsString+#13+
 //               'Gebera una N.P nueva por el faltante?',mtInformation,[mbYes,mbNo],0)=mrYes Then
 //   CopiaNP.Execute;
end;

procedure TFormNotaPedidoCliente.AnteriorExecute(Sender: TObject);
begin
  inherited;
  if DatosNPedidoClientes.CDSNotaPedidoCabORIGEN_ID_NOTA_PEDIDO.AsString<>'' Then
    begin
      DatoNew  :=DatosNPedidoClientes.CDSNotaPedidoCabORIGEN_ID_NOTA_PEDIDO.AsString;
      TipoCpbte:=DatosNPedidoClientes.CDSNotaPedidoCabORIGEN_TIPOCPBTE.AsString;
      Recuperar.Execute;
    end;
end;

procedure TFormNotaPedidoCliente.AnularExecute(Sender: TObject);
begin
  inherited;
 if MessageDlg('Está por Anular la Nota de Pedido, .... esta seguro?', mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      DatoNew     :=IntToStr(DatosNPedidoClientes.CDSNotaPedidoCabID.Value);
      TipoCpbte   :=DatosNPedidoClientes.CDSNotaPedidoCabTIPOCPBTE.Value;
      DatosNPedidoClientes.spAnular.Close;
      DatosNPedidoClientes.spAnular.ParamByName('ID').Value:=DatosNPedidoClientes.CDSNotaPedidoCabID.Value;
      DatosNPedidoClientes.spAnular.ExecProc;
      DatosNPedidoClientes.spAnular.Close;
      Recuperar.Execute;
   end;

end;

procedure TFormNotaPedidoCliente.EntregaExecute(Sender: TObject);
begin
  inherited;
  if (DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.AsString<>'') and
     (DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_TIPOCPBTE.Value='RE') Then
    begin
      if Not(Assigned(FormRemitos)) Then
        FormRemitos:=TFormRemitos.Create(FormNotaPedidoCliente);
      FormRemitos.DatoNew  :=DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.AsString;
      FormRemitos.TipoCpbte:=DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_TIPOCPBTE.Value;
      FormRemitos.Recuperar.Execute;
      FormRemitos.Show;
    end
  else
    if (DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.AsString<>'') and
       (DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_TIPOCPBTE.Value='FC') Then
      begin
        if Not(Assigned(FormCpbte_2)) Then
          FormCpbte_2:=TFormCpbte_2.Create(FormNotaPedidoCliente);
        FormCpbte_2.DatoNew  :=DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.AsString;
        FormCpbte_2.TipoCpbte:=DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_TIPOCPBTE.Value;
        FormCpbte_2.Recuperar.Execute;
        FormCpbte_2.Show;
      end;


end;

procedure TFormNotaPedidoCliente.GenerarFcExecute(Sender: TObject);
begin
  inherited;
  if Assigned(FormRemitos) and (FormRemitos.DSBase.State<>dsBrowse) then
    begin
      ShowMessage('Hay un remito en curso... confirme o cierre el remito.......');
      Exit;
    end;

  if DatosNPedidoClientes.CDSNotaPedidoCab.IsEmpty Then
     Raise Exception.Create('No hay Datos para procesar....');

 if DatosNPedidoClientes.CDSNotaPedidoCabENTREGA_ID_CPBTE.AsString<>'' Then
     Raise Exception.Create('Ya fué Entregada la mercadería , genere otro pedido y vuelva a procesar ....');

  if DatosNPedidoClientes.CDSNotaPedidoCabESTADO.Value='A' Then
    Raise Exception.Create('Nota de pedido Anulada, no se puede hacer esta Operacion...');

  if DatosNPedidoClientes.HayParaFacturar(DatosNPedidoClientes.CDSNotaPedidoDet) Then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1    := 'FC';
      FormBuscadorTipoCpbte.TipoCpbte2    := '';
      FormBuscadorTipoCpbte.TipoCpbte3    := '';
      FormBuscadorTipoCpbte.CV            := 'V';
      FormBuscadorTipoCpbte.Sucursal      := DatosNPedidoClientes.CDSNotaPedidoCabSUCURSAL.Value;
      FormBuscadorTipoCpbte.DiscriminaIVA := DatosNPedidoClientes.CDSNotaPedidoCabDESGLOZAIVA.Value;

      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
      IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
        begin
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
          FormBuscadorDepositos.Deposito:=  DatosNPedidoClientes.CDSNotaPedidoCabDEPOSITO.Value;
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              Deposito   := FormBuscadorDepositos.Deposito;
              DatoNew    := IntToStr(DatosNPedidoClientes.CDSNotaPedidoCabID.Value);
              TipoCpbte  := DatosNPedidoClientes.CDSNotaPedidoCabTIPOCPBTE.Value;
              if Not(Assigned(FormCpbte_2)) Then
                FormCpbte_2:=TFormCpbte_2.Create(self);
              FormCpbte_2.Show;
              if FormCpbte_2.DSBase.State=dsBrowse then
                begin
                  FormCpbte_2.Agregar.Execute;
                  AgregarCabFactura;
                  DatosNPedidoClientes.CDSNotaPedidoDet.First;
                  while Not(DatosNPedidoClientes.CDSNotaPedidoDet.Eof) Do // Ingreso el detalle
                    begin
                      if DatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_ENTREGADA.AsFloat>0 Then
                        AgregarDetFactura;
                      DatosNPedidoClientes.CDSNotaPedidoDet.Next;
                   end;
                end
              else
                ShowMessage('Hay un comprobante abierto.... verifique y vuelva a intentar...');  
            end;
        end;
     // if Not(DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]) Then
     //   Recuperar.Execute;
    end
  else
    ShowMessage('No hay cantidades de entrega para Generar la Factura.....!!!');

end;

end.
