unit UConsolidacionAcopioRtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,VirtualUI_sdk,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,System.Types,System.StrUtils,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  cxDBData, cxCalc, cxCheckBox, FireDAC.Comp.Client, JvBaseDlg, JvDesktopAlert,
  frxClass, frxExportBaseDialog, frxExportPDF, Vcl.Menus, frxDBSet,
  frCoreClasses, JvMemoryDataset, Datasnap.Provider, Datasnap.DBClient,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, JvToolEdit, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.Mask, JvExMask,
  JvBaseEdits, FireDAC.Comp.DataSet, CompBuscador, JvAppStorage,
  JvAppIniStorage, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvExControls, JvLabel, JvDBControls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,System.Math,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue,cxGridExportLink;


type
  TFormConsolidacionAcopioRemitos = class(TFormABMBase)
    CDSAcopios: TClientDataSet;
    DSPAcopios: TDataSetProvider;
    DSAcopios: TDataSource;
    DSPRtos: TDataSetProvider;
    CDSRtos: TClientDataSet;
    DSRtos: TDataSource;
    MDatos: TJvMemoryData;
    MDatosCODIGO: TStringField;
    MDatosDETALLE: TStringField;
    MDatosACOPIO: TFloatField;
    MDatosREMITO: TFloatField;
    MDatosFACTURAR: TFloatField;
    MDatosPRECIO: TFloatField;
    DSDatos: TDataSource;
    pcDatos: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    dbgAcopios: TJvDBGrid;
    pag3: TTabSheet;
    dbgRemitos: TJvDBGrid;
    CDSRtosID: TIntegerField;
    CDSRtosID_CABRTO: TIntegerField;
    CDSRtosTIPOCPBTE: TStringField;
    CDSRtosCLASECPBTE: TStringField;
    CDSRtosNROCPBTE: TStringField;
    CDSRtosFECHAVTA: TSQLTimeStampField;
    CDSRtosCODIGOARTICULO: TStringField;
    CDSRtosDETALLE: TStringField;
    CDSRtosUNIDAD: TStringField;
    CDSRtosCOSTO_GRAVADO: TFloatField;
    CDSRtosCOSTO_EXENTO: TFloatField;
    CDSRtosCOSTO_TOTAL: TFloatField;
    CDSRtosUNITARIO_GRAVADO: TFloatField;
    CDSRtosIVA_UNITARIO: TFloatField;
    CDSRtosUNITARIO_EXENTO: TFloatField;
    CDSRtosUNITARIO_TOTAL: TFloatField;
    CDSRtosDESGLOZAIVA: TStringField;
    CDSRtosMODO_GRAVAMEN: TStringField;
    CDSRtosTIPOIVA_TASA: TIntegerField;
    CDSRtosTIPOIVA_SOBRETASA: TIntegerField;
    CDSRtosDEPOSITO: TIntegerField;
    CDSRtosAFECTA_STOCK: TStringField;
    CDSRtosCALCULA_SOBRETASA: TStringField;
    CDSRtosGRAVADO_IB: TStringField;
    CDSRtosID_MONEDA: TIntegerField;
    CDSRtosLOTE: TIntegerField;
    CDSRtosOBSERVACION: TStringField;
    CDSRtosNOTAVENTA_ID: TIntegerField;
    CDSRtosNOTAVENTA_ID_DET: TIntegerField;
    CDSRtosCODIGOBARRA: TStringField;
    CDSRtosPRECIO_EDITABLE: TStringField;
    CDSAcopiosID: TIntegerField;
    CDSAcopiosID_CAB: TIntegerField;
    CDSAcopiosCODIGO: TStringField;
    CDSAcopiosDETALLE: TStringField;
    CDSAcopiosFECHA_ULTIMAENTREGA: TSQLTimeStampField;
    CDSAcopiosCUMPLIDO: TStringField;
    CDSAcopiosFECHA: TSQLTimeStampField;
    CDSAcopiosNROACOPIO: TStringField;
    CDSAcopiosID_FACTURA: TIntegerField;
    CDSAcopiosFECHAFC: TSQLTimeStampField;
    CDSAcopiosTIPOFC: TStringField;
    CDSAcopiosNROFC: TStringField;
    DSListaPrecios: TDataSource;
    MDatosTOTAL: TFloatField;
    pnCabecera: TPanel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    gbLista: TGroupBox;
    dbcLista: TDBLookupComboBox;
    Label1: TLabel;
    ToolButton1: TToolButton;
    btFacturar: TBitBtn;
    Facturar: TAction;
    edTotal: TJvCalcEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1ACOPIO: TcxGridDBColumn;
    cxGrid1DBTableView1REMITO: TcxGridDBColumn;
    cxGrid1DBTableView1FACTURAR: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1SELECCCION: TcxGridDBColumn;
    btImprimir: TBitBtn;
    frxReporte: TfrxReport;
    frxDBDatos: TfrxDBDataset;
    btFcCtod: TBitBtn;
    FacturarCtdo: TAction;
    edCompraAnticipada: TJvCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    frxDBRemitos: TfrxDBDataset;
    MDatosDEVOLUCIONES: TFloatField;
    cxGrid1DBTableView1DEVOLUCIONES: TcxGridDBColumn;
    ConsolidaDev: TAction;
    PopupMenu1: TPopupMenu;
    ConsolidaDev1: TMenuItem;
    CDSRtosDEVOLUCION: TStringField;
    Remitar: TAction;
    Remitar1: TMenuItem;
    N1: TMenuItem;
    edDevoluciones: TJvCalcEdit;
    Label4: TLabel;
    frxDBAcopio: TfrxDBDataset;
    SpeedButton1: TSpeedButton;
    ConsolidaDevolucion1: TMenuItem;
    Label5: TLabel;
    Label6: TLabel;
    edParcial: TJvCalcEdit;
    MDatosSELECCCION: TBooleanField;
    frxPDFExport1: TfrxPDFExport;
    dskAviso: TJvDesktopAlert;
    lbCondicionIva: TLabel;
    lbCuit: TLabel;
    lbDireccion: TLabel;
    lbDiscrimina: TLabel;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QArt: TFDQuery;
    QArtCODIGO_STK: TStringField;
    QStockPrecio_Vta: TFDQuery;
    QStockPrecio_VtaDESCUENTO: TFloatField;
    QStockPrecio_VtaCOSTO_TOTAL: TFloatField;
    QStockPrecio_VtaPRECIO: TFloatField;
    QStockPrecio_VtaCOSTO_EXENTO: TFloatField;
    QStockPrecio_VtaCOSTO_GRAVADO: TFloatField;
    QAcopios: TFDQuery;
    CDSAcopiosCANTIDAD: TFloatField;
    CDSAcopiosENTREGADO: TFloatField;
    CDSAcopiosSALDO: TFloatField;
    QRtos: TFDQuery;
    CDSRtosRENGLON: TFloatField;
    CDSRtosCANTIDAD: TFloatField;
    CDSRtosTOTAL_GRAVADO: TFloatField;
    CDSRtosIVA_TOTAL: TFloatField;
    CDSRtosTOTAL_EXENTO: TFloatField;
    CDSRtosTOTAL: TFloatField;
    CDSRtosIVA_TASA: TFloatField;
    CDSRtosIVA_SOBRETASA: TFloatField;
    CDSRtosDESCUENTO: TFloatField;
    CDSRtosMARGEN: TFloatField;
    CDSRtosCOTIZACION: TFloatField;
    CDSRtosCANT_FACTURA: TFloatField;
    QListaPrecios: TFDQuery;
    QListaPreciosID: TIntegerField;
    QListaPreciosNOMBRE: TStringField;
    QListaPreciosF_PAGO: TIntegerField;
    QPrecio: TFDQuery;
    QPrecioPRECIO: TFloatField;
    QPrecioCONTENIDO_COMPRA: TFloatField;
    QMarcarAcopios: TFDQuery;
    QClientesDISCRIMINAIVA: TStringField;
    QClientesDETALLE: TStringField;
    QClientesAVISO: TStringField;
    spCerrarAcopios: TFDStoredProc;
    Panel2: TPanel;
    Panel3: TPanel;
    QMarcarEntregado: TFDQuery;
    QMarcarDetRtos: TFDQuery;
    spCerrarRemtios: TFDStoredProc;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CDSAcopiosCODIGOCLIENTE: TStringField;
    CDSAcopiosNOMBRE: TStringField;
    CDSAcopiosRAZON_SOCIAL: TStringField;
    CDSAcopiosDIRECCION_COMERCIAL: TStringField;
    N2: TMenuItem;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    ExportarXLS1: TMenuItem;
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarExecute(Sender: TObject);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgRemitosDblClick(Sender: TObject);
    procedure dbgAcopiosDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbcListaClick(Sender: TObject);
    procedure btFacturarClick(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgConsolidadoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MDatosNewRecord(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dbgAcopiosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btFcCtodClick(Sender: TObject);
    procedure FacturarCtdoExecute(Sender: TObject);
    procedure MDatosSELECCCIONSetText(Sender: TField; const Text: string);
    procedure ConsolidaDevExecute(Sender: TObject);
    procedure dbgRemitosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSRtosDEVOLUCIONGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure MDatosAfterScroll(DataSet: TDataSet);
    procedure RemitarExecute(Sender: TObject);
    procedure ConsolidaDev1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MDatosAfterPost(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SucursalComprobante:Integer;
    IDComprobante:Integer;
    Deposito:Integer;
    procedure AgregaCabeceraCtdo;
    procedure AgregaDetalleCtdo;

    procedure AgregarCabRto;
    procedure AgregarDetRto;

    procedure AgregaDetalle;

    procedure AgregaCabecera;
    procedure TraerPrecios;
    procedure Sumar;
    procedure MarcarRtos;

  end;

var
  FormConsolidacionAcopioRemitos: TFormConsolidacionAcopioRemitos;

implementation

{$R *.dfm}
uses UDMain_FD, UBuscadorClientes, URemitos, UAcopio, DMVenta, UFactura_2,
  UBuscadorTipoCpbte, UBuscadorDepositos, UFacturaCtdo_2, DMVentaCtdo,
  DMRemitos, UControlNroRto, UBuscadorAcopios, UBuscadorAcopiosActivos,
  URtoEntregaAcopio;


procedure TFormConsolidacionAcopioRemitos.AgregarCabRto;
begin
  with DatosRemitos DO
  begin
    CDSRtoCabSucursalSetText(CDSRtoCabSucursal, IntToStr(SucursalComprobante));
    CDSRtoCabCodigoSetText(CDSRtoCabCodigo,ceCliente.Text);
  //  CDSRtoCabLDRSetText(CDSRtoCabLDR,CDSVentaCabLDR.AsString);
    CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSRtoCabDepositoSetText(CDSRtoCabDeposito,IntToStr(DepositoPorDefecto));
    //CDSRtoCabCondicionVtaSetText(CDSRtoCabCondicionVta,CDSVentaCabCONDICIONVTA.AsString);
    CDSRtoCabANULADO.Value     :='N';
    CDSRtoCabIMPRESO.Value     :='N';
    CDSRtoCabOBSERVACION1.Value:=' De Consolidacion de Acopios';
//    CDSRtoCabOBSERVACION2.Value:=CDSVentaCabOBSERVACION2.Value;
    CDSRtoCabCPTE_MANUAL.Value :='N';
    //CDSRtoCabZONA.Value                :=CDSVentaCabZONA.Value;
   // wwCDSRtoCabNROENTREGA.Value        :=CDSNotaPedidoCabNROENTREGA.Value;
    //CDSRtoCabIDFACTURA.Value       := CDSVentaCabID_FC.Value;
    //CDSRtoCabNROFACT.Value         := CDSVentaCabNROCPBTE.Value;
    CDSRtoCabLISTAPRECIO.Value     := dbcLista.KeyValue;
   // CDSRtoCabVENDEDOR.Value        := CDSVentaCabVENDEDOR.AsString;
    CDSRtoCabUSUARIO.Value         :=DMMain_FD.UsuarioActivo;
  end;
end;


procedure TFormConsolidacionAcopioRemitos.AgregarDetRto;
var UnitarioTotal:Extended;
begin
  inherited;
  with DatosRemitos DO
    begin
      CDSRtoDet.Append;
      QArt.Close;
      QArt.ParamByName('codigo').AsString:=MDatosCODIGO.Value;
      QArt.Open;
      if QArtCODIGO_STK.AsString<>'' then
        begin
          QStockPrecio_Vta.Close;
          QStockPrecio_Vta.ParamByName('Codigo').Value  :=MDatosCODIGO.Value;
          QStockPrecio_Vta.ParamByName('deposito').Value:=DepositoPorDefecto;// CDSRtosDetDEPOSITO.Value;
          QStockPrecio_Vta.ParamByName('Lista').Value   :=dbcLista.KeyValue; // CDSRtosCabLISTAPRECIO.Value;
          QStockPrecio_Vta.ParamByName('Sucursal').Value:=SucursalPorDefecto;// CDSRtosCabSUCURSAL.Value;
          QStockPrecio_Vta.Open;
          CDSRtoDetDESCUENTO.Value := QStockPrecio_VtaDESCUENTO.Value;
          CDSRtoDetCodigoArticuloSetText(CDSRtoDetCodigoArticulo,MDatosCODIGO.AsString);
        end
      else
        begin
          QStockPrecio_Vta.Close;
          QStockPrecio_Vta.ParamByName('Codigo').Value  :=MDatosCODIGO.Value;
          QStockPrecio_Vta.ParamByName('deposito').Value:=DepositoPorDefecto;// CDSRtosDetDEPOSITO.Value;
          QStockPrecio_Vta.ParamByName('Lista').Value   :=dbcLista.KeyValue; // CDSRtosCabLISTAPRECIO.Value;
          QStockPrecio_Vta.ParamByName('Sucursal').Value:=SucursalPorDefecto;// CDSRtosCabSUCURSAL.Value;
          QStockPrecio_Vta.Open;

          CDSRtoDetDESCUENTO.Value := QStockPrecio_VtaDESCUENTO.Value;
        end;
      QArt.Close;

      CDSRtoDetCantidadSetText(CDSRtoDetCantidad,FormatFloat('0.00',MDatosFACTURAR.AsFloat*-1));
      CDSRtoDetDESGLOZAIVA.Value      :=CDSRtoCabDESGLOZAIVA.Value;
      CDSRtoDetDEPOSITO.Value         :=CDSRtoCabDeposito.Value;
      CDSRtoDetCLASECPBTE.Value       :=CDSRtoCabCLASECPBTE.Value;
      QStockPrecio_Vta.Close;

      CDSRtoDet.Post;
    end;
end;



procedure TFormConsolidacionAcopioRemitos.AgregaCabeceraCtdo;
var continua:boolean;
begin
  with DatosVentasCtdo DO
  begin
    Continua:=True;

    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(SucursalComprobante));

    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,ceCliente.Text);
//    if CDSRtosCabID_FACTURAPORDEFECTO.AsString<>'' then
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(idComprobante));

    if Continua Then
      begin

        CDSVentaCabANULADO.Value      := 'N';
        CDSVentaCabIMPRESO.Value      := 'N';
        CDSVentaCabCPTE_MANUAL.Value  := 'N';
        CDSVentaCabREDUCIDA.Value     := 'N';
        //seleciona lista de precio
        CDSVentaCabLISTAPRECIO.Value  := dbcLista.KeyValue;// CDSRtosCabLISTAPRECIO.Value;
        CDSVentaCabFECHA_HORA.AsDateTime:= Now;
        CDSVentaCabUSUARIO.Value        := DMMain_FD.UsuarioActivo;
        // por que si no me agreagaba el iva
        FormCpbteCtdo_2.DiscriminaIva:='S';
      end
    else
      FormCpbteCtdo_2.Cancelar.Execute;
  end;
end;

procedure TFormConsolidacionAcopioRemitos.AgregaDetalleCtdo;
Var UnitarioTotal,Precio,PrecioRto:Extended;
    Gravado,Exento,Iva,Total,Margen,Dscto:Extended;
    Estado: TValueRelationship;
begin
  inherited;
  with DatosVentasCtdo DO
    begin
      CDSVentaDet.Append;
      QArt.Close;
      QArt.ParamByName('codigo').AsString:=MDatosCODIGO.Value;
      QArt.Open;
      if QArtCODIGO_STK.AsString<>'' then
        begin
          QStockPrecio_Vta.Close;
          QStockPrecio_Vta.ParamByName('Codigo').Value  :=MDatosCODIGO.Value;
          QStockPrecio_Vta.ParamByName('deposito').Value:=DepositoPorDefecto;// CDSRtosDetDEPOSITO.Value;
          QStockPrecio_Vta.ParamByName('Lista').Value   :=dbcLista.KeyValue; // CDSRtosCabLISTAPRECIO.Value;
          QStockPrecio_Vta.ParamByName('Sucursal').Value:=SucursalPorDefecto;// CDSRtosCabSUCURSAL.Value;
          QStockPrecio_Vta.Open;
          CDSVentaDetDESCUENTO.Value := QStockPrecio_VtaDESCUENTO.Value;
          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,MDatosCODIGO.AsString);
        end
      else
        begin
          QStockPrecio_Vta.Close;
          QStockPrecio_Vta.ParamByName('Codigo').Value  :=MDatosCODIGO.Value;
          QStockPrecio_Vta.ParamByName('deposito').Value:=DepositoPorDefecto;// CDSRtosDetDEPOSITO.Value;
          QStockPrecio_Vta.ParamByName('Lista').Value   :=dbcLista.KeyValue; // CDSRtosCabLISTAPRECIO.Value;
          QStockPrecio_Vta.ParamByName('Sucursal').Value:=SucursalPorDefecto;// CDSRtosCabSUCURSAL.Value;
          QStockPrecio_Vta.Open;

          CDSVentaDetDESCUENTO.Value := QStockPrecio_VtaDESCUENTO.Value;
        end;
      QArt.Close;

      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,MDatosFACTURAR.ASString);
      CDSVentaDetDESGLOZAIVA.Value      :=CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
      QStockPrecio_Vta.Close;
      if DMMain_FD.RtoDescuentaStock then
        CDSVentaDetAFECTA_STOCK.Value:='N';

      CDSVentaDet.Post;
    end;
end;

procedure TFormConsolidacionAcopioRemitos.SpeedButton1Click(Sender: TObject);
VAR Enter:Char;
begin
  inherited;
  if not(Assigned(FormBuscadorAcopiosActivos)) then
    FormBuscadorAcopiosActivos:=TFormBuscadorAcopiosActivos.Create(Self);
  FormBuscadorAcopiosActivos.Estado:='N';
  FormBuscadorAcopiosActivos.cbEstado.ItemIndex:=1;
  FormBuscadorAcopiosActivos.cbEstado.Enabled  :=True;
  FormBuscadorAcopiosActivos.ShowModal;
  if FormBuscadorAcopiosActivos.ModalResult=mrOk then
    begin
      Enter:=#13;
      ceCliente.Text:=FormBuscadorAcopiosActivos.Codigo;
      ceClienteKeyPress(Sender,enter);
      //Recuperar.Execute;
    end;

end;

procedure TFormConsolidacionAcopioRemitos.Sumar;
var p:TBookmark;
begin
  edTotal.Value           :=0;
  edParcial.Value         :=0;
  edCompraAnticipada.Value:=0;
  edDevoluciones.Value    :=0;
  p:=MDatos.GetBookmark;
  MDatos.DisableControls;
  MDatos.First;
  while not(MDatos.Eof) do
    begin
      if MDatosSELECCCION.Value=True then
        edParcial.Value:=edParcial.Value+MDatosTOTAL.Value;
      if MDatosTOTAL.Value>0 then
        edTotal.Value:=edTotal.Value + MDatosTOTAL.Value
      else
        edCompraAnticipada.Value:=edCompraAnticipada.Value + abs(MDatosTOTAL.Value);
      edDevoluciones.Value := edDevoluciones.Value+MdatosDEVOLUCIONES.AsFloat;
      MDatos.Next;
    end;
  MDatos.GotoBookmark(p);
  MDatos.FreeBookmark(p);
  MDatos.EnableControls;
end;

procedure TFormConsolidacionAcopioRemitos.MarcarRtos;
begin
  if MessageDlg('Este proceso hace la marcación de los remitos y acopios involucrados... esta seguro de ello??',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
  begin
    Screen.Cursor        := HourGlassCursor;
    sbEstado.SimplePanel := True;
    sbEstado.SimpleText  := 'Marcando Remitos y Acopios....';

    if CDSRtos.State<>dsBrowse then CDSRtos.Post;

    if CDSAcopios.State<>dsBrowse then CDSAcopios.Post;


    DMMain_FD.fdcGestion.StartTransaction;
    try
      CDSRtos.First;
      while Not(CDSRtos.Eof)  do
        begin
          spCerrarRemtios.Close;
          spCerrarRemtios.ParamByName('ID_rto').AsInteger   := CDSRtosID_CABRTO.Value;
          spCerrarRemtios.ExecProc;
          spCerrarRemtios.Close;
          CDSRtos.Next;
        end;

      CDSAcopios.First;
      while Not(CDSAcopios.Eof)  do
        begin
          spCerrarAcopios.Close;
          spCerrarAcopios.ParamByName('ID_ACOPIO').AsInteger   := CDSAcopiosID_CAB.Value;
          spCerrarAcopios.ParamByName('DEPOSITO').AsInteger    := DepositoPorDefecto;
          spCerrarAcopios.ParamByName('USUARIO').AsString      := DMMain_FD.UsuarioActivo;
          spCerrarAcopios.ExecProc;
          spCerrarAcopios.Close;
          CDSAcopios.Next;
        end;

      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se pudo hacer el cambio..');
    end;
    sbEstado.SimpleText :='';

    Screen.Cursor:=DefaultCursor;
  end;
  Buscar.Execute;
end;


procedure TFormConsolidacionAcopioRemitos.MDatosAfterPost(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormConsolidacionAcopioRemitos.MDatosAfterScroll(DataSet: TDataSet);
var T:TcxGridColumnOptions;
begin
  inherited;
  if MDatosFACTURAR.Value<=0 then
    cxGrid1DBTableView1SELECCCION.Options.Editing:=False
  else
    cxGrid1DBTableView1SELECCCION.Options.Editing:=True;
end;

procedure TFormConsolidacionAcopioRemitos.MDatosNewRecord(DataSet: TDataSet);
begin
  inherited;
  MDatosDEVOLUCIONES.Value := 0;
  MDatosACOPIO.Value       := 0;
  MDatosFACTURAR.Value     := 0;
  MDatosPRECIO.Value       := 0;
  MDatosTOTAL.Value        := 0;

  MDatosSELECCCION.Value   := False;
end;

procedure TFormConsolidacionAcopioRemitos.MDatosSELECCCIONSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if MDatos.State=dsBrowse Then MDatos.Edit;
  Sender.ASString:=Text;
  if IsZero(MDatosFACTURAR.Value,0.01) then
    Sender.AsString:='False'
  else
    Sender.AsString:='True';
end;

procedure TFormConsolidacionAcopioRemitos.RemitarExecute(Sender: TObject);
begin
  inherited;
//  if Not(IsZero(edTotal.Value)) then
//    Raise Exception.create('Hay items sin Facturar....');
//  if Not(IsZero(edDevoluciones.Value)) then
//    Raise Exception.create('Hay Devoluciones que resolver....');

 
  if Not(MDatos.IsEmpty) {and (dbgConsolidado.SelCount>0)} Then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='RE';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal  := SucursalPorDefecto;// DatosVentas.CDSVentaCabSUCURSAL.Value;
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
      IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;

      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
        begin
          if Not(Assigned(FormRemitos)) Then
            FormRemitos:=TFormRemitos.Create(self);
          FormRemitos.Agregar.Execute;
          AgregarCabRto;
          if Not(Assigned(FormControlNroRto)) then
            FormControlNroRto:=TFormControlNroRto.Create(Application);
          FormControlNroRto.Let:= DatosRemitos.CDSRtoCabLETRARTO.Value;
          FormControlNroRto.Suc:= DatosRemitos.CDSRtoCabSUCRTO.Value;
          FormControlNroRto.Num:= DatosRemitos.CDSRtoCabNUMERORTO.Value;
          FormControlNroRto.ShowMOdal;
          if (FormControlNroRto.ModalResult=mrOk) then
            begin
              if (FormControlNroRto.Let<> DatosRemitos.CDSRtoCabLETRARTO.Value) or
                 (FormControlNroRto.Suc<> DatosRemitos.CDSRtoCabSUCRTO.Value) or
                 (FormControlNroRto.Num<> DatosRemitos.CDSRtoCabNUMERORTO.Value) Then
              DatosRemitos.CDSRtoCabCPTE_MANUAL.Value:='S';
              DatosRemitos.CDSRtoCabLETRARTO.Value:=FormControlNroRto.Let;
              DatosRemitos.CDSRtoCabSUCRTOSetText(DatosRemitos.CDSRtoCabSUCRTO,FormControlNroRto.Suc);
              DatosRemitos.CDSRtoCabNUMERORTOSetText(DatosRemitos.CDSRtoCabNUMERORTO,FormControlNroRto.Num);
            end;
          Mdatos.First;
          while Not(MDatos.Eof)  do
            begin
               if (MDatosFACTURAR.AsFloat<0) and (MDatosDEVOLUCIONES.AsFloat<=0) then
                 AgregarDetRto;
               MDatos.Next;
             end;
          FormRemitos.Show;
          //FormRemitos.Confirma.Execute;
        end;
     end
   else
     ShowMessage('Ya tiene Rto esta factura....');
 end;

procedure TFormConsolidacionAcopioRemitos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormConsolidacionAcopioRemitos.AgregaDetalle;
Var UnitarioTotal,Precio,PrecioRto:Extended;
    Gravado,Exento,Iva,Total,Margen,Dscto:Extended;
    Estado: TValueRelationship;
begin
  inherited;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      QArt.Close;
      QArt.ParamByName('codigo').AsString:=MDatosCODIGO.Value;
      QArt.Open;
      if QArtCODIGO_STK.AsString<>'' then
        begin
          QStockPrecio_Vta.Close;
          QStockPrecio_Vta.ParamByName('Codigo').Value  := MDatosCODIGO.Value;
          QStockPrecio_Vta.ParamByName('deposito').Value:= DepositoPorDefecto;// CDSRtosDetDEPOSITO.Value;
          QStockPrecio_Vta.ParamByName('Lista').Value   := dbcLista.KeyValue; // CDSRtosCabLISTAPRECIO.Value;
          QStockPrecio_Vta.ParamByName('Sucursal').Value:= SucursalPorDefecto;// CDSRtosCabSUCURSAL.Value;
          QStockPrecio_Vta.Open;
          CDSVentaDetDESCUENTO.Value := QStockPrecio_VtaDESCUENTO.Value;
          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,MDatosCODIGO.AsString);
        end
      else
        begin

          QStockPrecio_Vta.Close;
          QStockPrecio_Vta.ParamByName('Codigo').Value  :=MDatosCODIGO.Value;
          QStockPrecio_Vta.ParamByName('deposito').Value:=DepositoPorDefecto;// CDSRtosDetDEPOSITO.Value;
          QStockPrecio_Vta.ParamByName('Lista').Value   :=dbcLista.KeyValue; // CDSRtosCabLISTAPRECIO.Value;
          QStockPrecio_Vta.ParamByName('Sucursal').Value:=SucursalPorDefecto;// CDSRtosCabSUCURSAL.Value;
          QStockPrecio_Vta.Open;

          CDSVentaDetDESCUENTO.Value := QStockPrecio_VtaDESCUENTO.Value;
        end;
      QArt.Close;

      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,MDatosFACTURAR.ASString);
      CDSVentaDetDESGLOZAIVA.Value      :=CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
      if DMMain_FD.RtoDescuentaStock then
        CDSVentaDetAFECTA_STOCK.Value:='N';
      QStockPrecio_Vta.Close;
      CDSVentaDet.Post;
    end;
end;

procedure TFormConsolidacionAcopioRemitos.AgregaCabecera;
Var Continua:Boolean;
begin
  with DatosVentas DO
  begin
    Continua:=True;

    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(SucursalComprobante));
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,ceCliente.Text);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(idComprobante));
    if Continua Then
      begin
        //Traigo La primera condicion de vta por defecto
        if DMMain_FD.GetCondicionVtaPorDefecto(Trim(ceCliente.Text))>-1 Then
          CDSVentaCabCONDICIONVTASetText(CDSVentaCabCONDICIONVTA,IntToStr(DMMain_FD.GetCondicionVtaPorDefecto(Trim(ceCliente.Text))))
        else
          begin
            ShowMessage('No tiene Condiciones de Vta. cargadas....');
            CDSVentaCabCONDICIONVTA.Clear;
            CDSVentaCabMUESTRACONDVENTA.Clear;
          end;

       // CDSCondVenta.Close;

        CDSVentaCabANULADO.Value         := 'N';
        CDSVentaCabIMPRESO.Value         := 'N';
        CDSVentaCabCPTE_MANUAL.Value     := 'N';
        CDSVentaCabREDUCIDA.Value        := 'N';
        //seleciona lista de precio
        CDSVentaCabLISTAPRECIO.Value     := dbcLista.KeyValue;// CDSRtosCabLISTAPRECIO.Value;
        CDSVentaCabFECHA_HORA.AsDateTime := Now;
        CDSVentaCabUSUARIO.Value         := DMMain_FD.UsuarioActivo;
        // por que si no me agreagaba el iva
        FormCpbte_2.DiscriminaIva:='S';
      end
    else
      FormCpbte_2.Cancelar.Execute;
  end;
end;

procedure TFormConsolidacionAcopioRemitos.TraerPrecios;
var p:TBookmark;
begin
  p:=MDatos.GetBookmark;
  MDatos.DisableControls;
  MDatos.First;
  while not(MDatos.Eof) do
    begin
      QPrecio.Close;
      QPrecio.ParamByName('articulo').Value:=MDatosCODIGO.Value;
      QPrecio.ParamByName('lista').Value   :=dbcLista.KeyValue;
      QPrecio.Open;
      Mdatos.Edit;
      if Not(QPrecio.IsEmpty) then
        begin
          MDatosPRECIO.AsFloat:=QPrecioPRECIO.AsFloat;
          if (QPrecioCONTENIDO_COMPRA.AsString<>'') and (QPrecioCONTENIDO_COMPRA.AsFloat>0) then
            MDatosPRECIO.AsFloat:=QPrecioPRECIO.AsFloat/QPrecioCONTENIDO_COMPRA.AsFLoat;
        end
      else
        MDatosPrecio.ASFloat:=0;
      MDatosTOTAL.Value:=MDatosPRECIO.AsFloat*MDatosFACTURAR.ASFloat;
      MDatos.Next;
    end;
  MDatos.GotoBookmark(p);
  MDatos.FreeBookmark(p);
  QPrecio.Close;
  MDatos.EnableControls;
  Sumar;
end;


procedure TFormConsolidacionAcopioRemitos.btFacturarClick(Sender: TObject);
var EstadoIVA:String;
begin
  if Not(MDatos.IsEmpty) {and (dbgConsolidado.SelCount>0)} Then
    begin
     if Mdatos.State<>dsBrowse then Mdatos.Post;
     if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1    := 'FC';
      FormBuscadorTipoCpbte.TipoCpbte2    := '';
      FormBuscadorTipoCpbte.TipoCpbte3    := '';
      FormBuscadorTipoCpbte.CV            := 'V';
      FormBuscadorTipoCpbte.Sucursal      := SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA := lbDiscrimina.Caption;// 'N';//DatosRemitos.CDSRtoCabDESGLOZAIVA.Value;
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos := TFormBuscadorDepositos.Create(Application);
          FormBuscadorDepositos.Deposito:=  DepositoPorDefecto;// DatosRemitos.CDSRtoCabDEPOSITO.Value;
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              Deposito    :=FormBuscadorDepositos.Deposito;
              if Not(Assigned(FormCpbte_2)) Then
                FormCpbte_2:=TFormCpbte_2.Create(Self);
              FormCpbte_2.SucursalPorDefecto := SucursalComprobante;
              FormCpbte_2.DepositoPorDefecto := Deposito;
              EstadoIva                      := FormCpbte_2.DiscriminaIva;
              Facturar.Execute;
              FormCpbte_2.DiscriminaIva      := EstadoIva;
              FormCpbte_2.Show;
              FormCpbte_2.DBGrillaDetalle.SetFocus;
            end;
        end;
    end
  else
    ShowMessage('No hay Datos para Facturar....');


end;

procedure TFormConsolidacionAcopioRemitos.btFcCtodClick(Sender: TObject);
var EstadoIVA:String;
begin
  if Not(MDatos.IsEmpty) {and (dbgConsolidado.SelCount>0)} Then
    begin
     if Mdatos.State<>dsBrowse then Mdatos.Post;
     if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
      FormBuscadorTipoCpbte.TipoCpbte1    := 'FO';
      FormBuscadorTipoCpbte.TipoCpbte2    := '';
      FormBuscadorTipoCpbte.TipoCpbte3    := '';
      FormBuscadorTipoCpbte.CV            := 'V';
      FormBuscadorTipoCpbte.Sucursal      := SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA := lbDiscrimina.Caption;//'N';//DatosRemitos.CDSRtoCabDESGLOZAIVA.Value;
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
      IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
          FormBuscadorDepositos.Deposito:=  DepositoPorDefecto;// DatosRemitos.CDSRtoCabDEPOSITO.Value;
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              Deposito    :=FormBuscadorDepositos.Deposito;
              if Not(Assigned(FormCpbteCtdo_2)) Then
                FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
              FormCpbteCtdo_2.SucursalPorDefecto:=SucursalComprobante;
              FormCpbteCtdo_2.DepositoPorDefecto:=Deposito;
              EstadoIva:=FormCpbteCtdo_2.DiscriminaIva;
              FacturarCtdo.Execute;
              FormCpbteCtdo_2.DiscriminaIva:=EstadoIva;
              FormCpbteCtdo_2.Show;
              FormCpbteCtdo_2.DBGrillaDetalle.SetFocus;
            end;
        end;
    end
  else
    ShowMessage('No hay Datos para Facturar....');

end;

procedure TFormConsolidacionAcopioRemitos.btImprimirClick(Sender: TObject);
begin
  inherited;
  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ResumenAcopio.fr3');
  frxReporte.Variables['Devoluciones']:=''''+edDevoluciones.Text+'''';
  frxReporte.Variables['Anticipos']   :=''''+edCompraAnticipada.Text+'''';
  frxReporte.Variables['ACobrar']     :=''''+edTotal.Text+'''';
  frxReporte.Variables['Codigoliente']:=''''+ceCliente.Text+'''';
  frxReporte.Variables['NomCliente']  :=''''+edNombreCliente.Text+'''';
  //CDSMovCC.IndexFieldNames:='FECHAVTA;TIPOCPBTE;NROCPBTE';
  // frCtaCte.PrepareReport;
  frxReporte.ShowReport;
  ceCliente.SetFocus;
  ceCliente.SelectAll;
end;

procedure TFormConsolidacionAcopioRemitos.BuscarExecute(Sender: TObject);
var Sobrante:Extended;
begin
 // inherited;
  Buscar.Enabled:=False;

  CDSAcopios.Close;
  CDSAcopios.Params.ParamByName('codigo').Value := Trim(ceCliente.Text);
  CDSAcopios.Open;

  CDSAcopios.First;

  CDSRtos.Close;
  CDSRtos.Params.ParamByName('codigo').Value     := Trim(ceCliente.Text);
  CDSRtos.Open;

  MDatos.Close;
  MDatos.AfterScroll:=nil;
  Mdatos.Open;
  while Not(MDatos.Eof) do
    Mdatos.Delete;
  MDatos.EmptyTable;

  CDSAcopios.First;
  while Not(CDSAcopios.Eof) do
    begin
      if Not(MDatos.Locate('CODIGO',CDSAcopiosCODIGO.AsString,[])) Then
        begin
          MDatos.Append;
          MDatosCODIGO.Value  := CDSAcopiosCODIGO.Value;
          MDatosDETALLE.Value := CDSAcopiosDETALLE.Value;
          MDatosACOPIO.Value  := CDSAcopiosCANTIDAD.AsFloat;
          MDatosREMITO.Value  := 0;
          MDatosFACTURAR.Value:= MDatosREMITO.ASFloat-MDatosACOPIO.ASFloat;
          //if MDatosFACTURAR.Value<0 then MDatosFACTURAR.Value:=0;

          MDatosPRECIO.Value  := 0;
          MDatosDEVOLUCIONES.Value:=0;
          MDatos.Post;
        end
      else
        begin
          MDatos.Edit;
          MDatosACOPIO.Value  := MDatosACOPIO.Value + CDSAcopiosCANTIDAD.AsFloat;
          MDatosREMITO.Value  := 0;
          MDatosFACTURAR.Value:= MDatosREMITO.ASFloat-MDatosACOPIO.ASFloat;
          //if MDatosFACTURAR.Value<0 then MDatosFACTURAR.Value:=0;

          MDatosPRECIO.Value  := 0;
          MDatos.Post;
        end;
      CDSAcopios.Next;
    end;
  Application.ProcessMessages;
  CDSRtos.EnableControls;
  CDSRtos.First;
  if CDSRtos.RecordCount>0 then
    begin
      while Not(CDSRtos.Eof) do
        begin
          if (CDSRtosCANTIDAD.AsFloat>0) and (CDSRtosDEVOLUCION.Value='N') then
            begin
              if (MDatos.Locate('CODIGO',CDSRtosCODIGOARTICULO.AsString,[])) then
                begin
                  if (MDatosACOPIO.Value>0) and (MDatosFACTURAR.value<0) Then
                    begin
                      Sobrante:=0;
                      MDatos.Edit;
                      MDatosREMITO.Value  := MDatosREMITO.Value   + CDSRtosCANT_FACTURA.ASFloat;
                      MDatosFACTURAR.Value:= MDatosREMITO.ASFloat - MDatosACOPIO.ASFloat;

                      Sobrante := MDatosFACTURAR.ASFloat;
                      if Sobrante>0 then
                        begin
                          MDatosREMITO.Value  := MDatosACOPIO.Value;
                          MDatosFACTURAR.Value:= 0;
                        end;
                      MDatosPRECIO.Value  :=0;
                      MDatos.Post;

                      if Sobrante>0 then
                        begin
                          MDatos.Append;
                          MDatosCODIGO.Value  :=CDSRtosCODIGOARTICULO.Value;
                          MDatosDETALLE.Value :=CDSRtosDETALLE.Value;
                          MDatosACOPIO.Value  :=0;
                          MDatosREMITO.Value  :=Abs(Sobrante);//MDatosREMITO.Value+CDSRtosCANT_FACTURA.ASFloat;
                          MDatosFACTURAR.Value:=Abs(Sobrante);//MDatosREMITO.ASFloat-MDatosACOPIO.ASFloat;
                          MDatosPRECIO.Value  :=0;
                          MDatos.Post;
                        end;
                    end
                  else
                    if (MDatosACOPIO.Value<=0) and  (MDatosFACTURAR.value>0) Then
                      begin
                        MDatos.Edit;
                        MDatosREMITO.Value  :=MDatosREMITO.Value+CDSRtosCANT_FACTURA.ASFloat;
                        MDatosFACTURAR.Value:=MDatosREMITO.ASFloat-MDatosACOPIO.ASFloat;
                        MDatosPRECIO.Value  :=0;
                        MDatos.Post;
                      end
                    else
                      if (MDatosACOPIO.Value>=0) and  (MDatosFACTURAR.value<=0) Then
                        begin
                          MDatos.Append;
                          MDatosCODIGO.Value  :=CDSRtosCODIGOARTICULO.Value;
                          MDatosDETALLE.Value :=CDSRtosDETALLE.Value;
                          MDatosACOPIO.Value  :=0;
                          MDatosREMITO.Value  :=MDatosREMITO.Value+CDSRtosCANT_FACTURA.ASFloat;
                          MDatosFACTURAR.Value:=MDatosREMITO.ASFloat-MDatosACOPIO.ASFloat;
                          MDatosPRECIO.Value  :=0;
                          MDatos.Post;
                        end;
                end
              else
                begin
                  MDatos.Append;
                  MDatosCODIGO.Value  :=CDSRtosCODIGOARTICULO.Value;
                  MDatosDETALLE.Value :=CDSRtosDETALLE.Value;
                  MDatosACOPIO.Value  :=0;
                  MDatosREMITO.Value  :=MDatosREMITO.Value+CDSRtosCANT_FACTURA.ASFloat;
                  MDatosFACTURAR.Value:=MDatosREMITO.ASFloat-MDatosACOPIO.ASFloat;
                  MDatosPRECIO.Value  :=0;
                  MDatos.Post;
                end;
            end;
          CDSRtos.Next;
        end;
    end;

  Mdatos.Filtered := False;
  MDatos.Filter   := 'DEVOLUCIONES > 0 ';
  MDatos.Filtered := True;
  CDSRtos.First;
  if CDSRtos.RecordCount>0 then
    begin
      while Not(CDSRtos.Eof) do
        begin
          if (CDSRtosCANTIDAD.AsFloat>0) and (CDSRtosDEVOLUCION.Value='S') then
            begin
              if Not(MDatos.Locate('CODIGO',CDSRtosCODIGOARTICULO.AsString,[])) then
                begin
                  MDatos.Append;
                  MDatosCODIGO.Value       := CDSRtosCODIGOARTICULO.Value;
                  MDatosDETALLE.Value      := CDSRtosDETALLE.Value;
                  MDatosACOPIO.Value       := 0;
                  MDatosREMITO.Value       := 0;//MDatosREMITO.Value+Abs(CDSRtosCANT_FACTURA.ASFloat);
                  MDatosFACTURAR.Value     := MDatosACOPIO.ASFloat-Abs(CDSRtosCANT_FACTURA.ASFloat);
                  MDatosDEVOLUCIONES.Value := MDatosDEVOLUCIONES.ASFloat+Abs(CDSRtosCANT_FACTURA.ASFloat);
                  MDatosPRECIO.Value       :=0;
                end
              else
                begin
                  MDatos.Edit;
                  MDatosACOPIO.Value       := 0;
                  MDatosREMITO.Value       := 0;//MDatosREMITO.Value+Abs(CDSRtosCANT_FACTURA.ASFloat);
                  MDatosFACTURAR.Value     := MDatosFACTURAR.Value - MDatosACOPIO.ASFloat-Abs(CDSRtosCANT_FACTURA.ASFloat);
                  MDatosDEVOLUCIONES.Value := MDatosDEVOLUCIONES.ASFloat+Abs(CDSRtosCANT_FACTURA.ASFloat);
                  MDatosPRECIO.Value       := 0;
                end;
              MDatos.Post;
            end;
          CDSRtos.Next;
        end;
    end;
  Mdatos.Filtered:=False;
  MDatos.Filter:='';

  TraerPrecios;
  MDatos.EnableControls;
  MDatos.AfterScroll       := MDatosAfterScroll;
  pcDatos.ActivePageIndex  := 0;
  Buscar.Enabled           := True;
  dbgRemitos.Width         := dbgRemitos.Width-1;
  dbgRemitos.Width         := dbgRemitos.Width+1;

 end;

procedure TFormConsolidacionAcopioRemitos.Button1Click(Sender: TObject);
begin
  inherited;
  MarcarRtos;
  Buscar.Execute;
end;

procedure TFormConsolidacionAcopioRemitos.CDSRtosDEVOLUCIONGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='S' then
    Text:='Dev.'
  else
    Text:='';
  DisplayText:=True;  
  
end;

procedure TFormConsolidacionAcopioRemitos.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
 IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      edNombreCliente.Text := QClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      lbDiscrimina.Caption   :=QClientesDISCRIMINAIVA.Value;
      lbDireccion.Caption    :=QClientesDIRECCION_COMERCIAL.Value;
      lbCondicionIva.Caption :=QClientesDETALLE.Value;
      lbCuit.Caption         :=QClientesNRO_DE_CUIT.Value;

      if Trim(QClientesAVISO.AsString)<>'' then
            begin
              dskAviso.MessageText:=QClientesAVISO.AsString;
              dskAviso.Execute;
            end;

      Buscar.Execute;

    END;
end;

procedure TFormConsolidacionAcopioRemitos.ceClienteKeyPress(Sender: TObject;  var Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      edNombreCliente.Text   := QClientesNOMBRE.Value;
      lbDiscrimina.Caption   := QClientesDISCRIMINAIVA.Value;
      lbDireccion.Caption    := QClientesDIRECCION_COMERCIAL.Value;
      lbCondicionIva.Caption := QClientesDETALLE.Value;
      lbCuit.Caption         := QClientesNRO_DE_CUIT.Value;

      if Trim(QClientesAVISO.AsString)<>'' then
            begin
              dskAviso.MessageText:=QClientesAVISO.AsString;
              dskAviso.Execute;
            end;

     // ceCliente.SetFocus;
     // ceCliente.SelectAll;
      Buscar.Execute;
    END;
END;


procedure TFormConsolidacionAcopioRemitos.ConsolidaDev1Click(Sender: TObject);
begin
  inherited;
  if Not(IsZero(edTotal.Value)) then
    Raise Exception.create('Hay items sin Facturar....');
  if Not(IsZero(edDevoluciones.Value)) then
    Raise Exception.create('Hay Devoluciones que resolver....');
  if Not(IsZero(edCompraAnticipada.Value)) then
    Raise Exception.create('Se debe terminar las entregas... ');

  MarcarRtos;
end;

procedure TFormConsolidacionAcopioRemitos.ConsolidaDevExecute(Sender: TObject);
var EstadoIVA:String;
begin
  inherited;
  MDatos.Filtered := False;
  MDatos.Filter   := 'DEVOLUCIONES > 0 ';
  MDatos.Filtered := True;
  MDatos.First;
  if Not(MDatos.IsEmpty) {and (dbgConsolidado.SelCount>0)} Then
    begin
      if MDatos.RecNo>1 then
        begin
          while Not(MDatos.Eof) do
            begin
              if Not(Assigned(FormBuscadorTipoCpbte)) then
                FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
              FormBuscadorTipoCpbte.TipoCpbte1    := 'NC';
              FormBuscadorTipoCpbte.TipoCpbte2    := '';
              FormBuscadorTipoCpbte.TipoCpbte3    := '';
              FormBuscadorTipoCpbte.CV            := 'V';
              FormBuscadorTipoCpbte.Sucursal      := SucursalPorDefecto;
              FormBuscadorTipoCpbte.DiscriminaIVA := 'N';//DatosRemitos.CDSRtoCabDESGLOZAIVA.Value;
              FormBuscadorTipoCpbte.ShowModal;
              SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
              IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
              if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
                begin
                  if Not(Assigned(FormBuscadorDepositos)) then
                    FormBuscadorDepositos       := TFormBuscadorDepositos.Create(Application);
                  FormBuscadorDepositos.Deposito:= DepositoPorDefecto;// DatosRemitos.CDSRtoCabDEPOSITO.Value;
                  FormBuscadorDepositos.ShowModal;
                  if (FormBuscadorDepositos.ModalResult=mrok) Then
                    begin
                      Deposito    :=FormBuscadorDepositos.Deposito;
                      if Not(Assigned(FormCpbte_2)) Then
                        FormCpbte_2:=TFormCpbte_2.Create(Self);
                      FormCpbte_2.SucursalPorDefecto:=SucursalComprobante;
                      FormCpbte_2.DepositoPorDefecto:=Deposito;
                      EstadoIva:=FormCpbte_2.DiscriminaIva;
                      Facturar.Execute;
                      FormCpbte_2.DiscriminaIva:=EstadoIva;
                      FormCpbte_2.Show;
                      FormCpbte_2.DBGrillaDetalle.SetFocus;
                    end;
                end;
            end;
        end
      else
        begin
          if Not(Assigned(FormBuscadorTipoCpbte)) then
            FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
          FormBuscadorTipoCpbte.TipoCpbte1    := 'NC';
          FormBuscadorTipoCpbte.TipoCpbte2    := '';
          FormBuscadorTipoCpbte.TipoCpbte3    := '';
          FormBuscadorTipoCpbte.CV            := 'V';
          FormBuscadorTipoCpbte.Sucursal      := SucursalPorDefecto;
          FormBuscadorTipoCpbte.DiscriminaIVA := 'N';//DatosRemitos.CDSRtoCabDESGLOZAIVA.Value;
          FormBuscadorTipoCpbte.ShowModal;
          SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
          IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
          if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
            begin
              if Not(Assigned(FormBuscadorDepositos)) then
                FormBuscadorDepositos       := TFormBuscadorDepositos.Create(Application);
              FormBuscadorDepositos.Deposito:= DepositoPorDefecto;// DatosRemitos.CDSRtoCabDEPOSITO.Value;
              FormBuscadorDepositos.ShowModal;
              if (FormBuscadorDepositos.ModalResult=mrok) Then
                begin
                  Deposito    :=FormBuscadorDepositos.Deposito;
                  if Not(Assigned(FormCpbte_2)) Then
                    FormCpbte_2:=TFormCpbte_2.Create(Self);
                  FormCpbte_2.SucursalPorDefecto:=SucursalComprobante;
                  FormCpbte_2.DepositoPorDefecto:=Deposito;
                  EstadoIva:=FormCpbte_2.DiscriminaIva;
                  Facturar.Execute;
                  FormCpbte_2.DiscriminaIva:=EstadoIva;
                  FormCpbte_2.Show;
                  FormCpbte_2.DBGrillaDetalle.SetFocus;
                end;
            end;
        end;
    end
  else
    ShowMessage('No hay Datos para Facturar....');
  MDatos.Filtered := False;
  MDatos.Filter   := '';
end;

procedure TFormConsolidacionAcopioRemitos.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  colIndex,ColIndex2: integer;
  enCero :boolean;
begin
    colIndex  := cxGrid1DBTableView1FACTURAR.Index;
    colIndex2 := cxGrid1DBTableView1DEVOLUCIONES.Index;
//     AviewInfo.GridRecord.Values[colIndex]=0;
    if AViewInfo.Selected then
//  if AViewInfo.Item.Focused then
      begin
        ACanvas.Font.Color  := clWhite;
        ACanvas.Brush.Color := clBlue;
      end
    else
      begin
        if AviewInfo.GridRecord.Values[colIndex]=0 then
          ACanvas.Font.Color := clGreen else
        if AviewInfo.GridRecord.Values[colIndex]<0 then
          ACanvas.Font.Color := clRed else
        if AviewInfo.GridRecord.Values[colIndex]>0 then
          begin
            ACanvas.Font.Color := clBlack;
            ACanvas.font.Style :=[fsBold];
          end;
        if (AviewInfo.GridRecord.Values[colIndex]<0) and (AviewInfo.GridRecord.Values[ColIndex2]>0) then
          begin
            ACanvas.Font.Color := clBlue;
            ACanvas.font.Style :=[fsBold];
          end;
      end;
end;

procedure TFormConsolidacionAcopioRemitos.dbcListaClick(Sender: TObject);
begin
  inherited;
  TraerPrecios;
end;

procedure TFormConsolidacionAcopioRemitos.dbgAcopiosDblClick(Sender: TObject);
begin
  inherited;
 if CDSAcopiosID_CAB.AsString<>'' then
    begin
      if Not(Assigned(FormAcopio)) then
        FormAcopio:=TFormAcopio.Create(Self);
      FormAcopio.DatoNew:=CDSAcopiosID_CAB.AsString;
     // FormAcopio.TipoCpbte:='RE';
      FormAcopio.Recuperar.Execute;
      FormAcopio.Show;
    end;
end;

procedure TFormConsolidacionAcopioRemitos.dbgAcopiosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (CDSAcopiosSALDO.AsFloat>0) then
    dbgAcopios.Canvas.Font.Color := clDefault
  else
    dbgAcopios.Canvas.Font.Color := clBlue;

  if gdSelected	in state Then
    begin
      dbgAcopios.Canvas.brush.Color :=clNavy;
      dbgAcopios.Canvas.Font.Color  :=clWhite;
    end;
  dbgAcopios.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormConsolidacionAcopioRemitos.dbgConsolidadoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
//  if (MDatosTOTAL.AsFloat>0) then
//    dbgConsolidado.Canvas.Font.Style := [fsbold]
//  else
//    dbgConsolidado.Canvas.Font.Style := [];
//
//
//  dbgConsolidado.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormConsolidacionAcopioRemitos.dbgRemitosDblClick(Sender: TObject);
begin
  inherited;
  if CDSRtosID_CABRTO.AsString<>'' then
    begin
      if Not(Assigned(FormRemitos)) then
        FormRemitos:=TFormRemitos.Create(Self);
      FormRemitos.DatoNew:=CDSRtosID_CABRTO.AsString;
      FormRemitos.TipoCpbte:='RE';
      FormRemitos.Recuperar.Execute;
      FormRemitos.Show;
    end;
end;

procedure TFormConsolidacionAcopioRemitos.dbgRemitosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if gdSelected	in state Then
    begin
      dbgRemitos.Canvas.brush.Color :=clBlue;
      dbgRemitos.Canvas.Font.Color  :=clWhite;
    end
  else
    if CDSRtosDEVOLUCION.AsString='S' then
      dbgRemitos.Canvas.Font.Color:=clBlue;
  dbgRemitos.DefaultDrawColumnCell(rect,DataCol,Column,State);
end;

procedure TFormConsolidacionAcopioRemitos.ExportarXLSExecute(Sender: TObject);
var
  Col: TcxGridDBColumn;
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:='ConsolidacionAcopios_'+edNombreCliente.text+'_'+FormatDateTime('MMYYYY',Date);
  SaveDialog1.DefaultExt:='xls';
  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
   if SaveDialog1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
           SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGrid1)
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGrid1);

//      Col := cxGrid1DBTableView1FACTURAR; // tu columna
//      Col.PropertiesClass := TcxCurrencyEditProperties;
//      with TcxCurrencyEditProperties(Col.Properties) do
//        begin
//          DisplayFormat := '#,##0.00';   // formato visual
//          DecimalPlaces := 2;
//          UseThousandSeparator := True;
//        end;

       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog1.FileName);
     end;
end;

procedure TFormConsolidacionAcopioRemitos.FacturarCtdoExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  if (FormCpbteCtdo_2.DSBase.State=dsBrowse) then
    begin
      //DMMain_FD.ControlaLista:=False;
      FormCpbteCtdo_2.Agregar.Execute;
      AgregaCabeceraCtdo;
      MDatos.First;
      MDatos.DisableControls;
      while Not(Mdatos.Eof) do
        begin
          if MDatosSELECCCION.Value=True then
            begin
              if (MDatosFACTURAR.AsFloat > 0) then
                AgregaDetalleCtdo;
            end;
          MDatos.Next;
        end;
      MDatos.EnableControls;
    end
  else
    ShowMessage('Hay un Comprobante abierto sin confirmar...');
end;


procedure TFormConsolidacionAcopioRemitos.FacturarExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  if (FormCpbte_2.DSBase.State=dsBrowse) then
    begin
  //    DMMain_FD.ControlaLista:=False;
      FormCpbte_2.Agregar.Execute;
      AgregaCabecera;
      MDatos.First;
      MDatos.DisableControls;

      if DatosVentas.CDSVentaCabTIPOCPBTE.Value<>'NC' then
        begin
          while Not(Mdatos.Eof) do
            begin
              if MDatosSELECCCION.Value=True then
                begin
                  if (MDatosFACTURAR.AsFloat > 0)  then
                    AgregaDetalle;
                end;
              MDatos.Next;
            end;
        end
      else
        if DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC' then
          while Not(Mdatos.Eof) do
            begin
              if  (MDatosDEVOLUCIONES.AsFloat > 0)  then
                AgregaDetalle;
              MDatos.Next;
            end;
      MDatos.EnableControls;
      MDatos.First;
      MDatos.DisableControls;
    end
  else
    ShowMessage('Hay un Comprobante abierto sin confirmar...');
end;

procedure TFormConsolidacionAcopioRemitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormConsolidacionAcopioRemitos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  pcDatos.ActivePageIndex:=0;
end;

procedure TFormConsolidacionAcopioRemitos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormConsolidacionAcopioRemitos:=NIL;
end;

procedure TFormConsolidacionAcopioRemitos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Not(ActiveControl is TJvComboEdit) then
  inherited;

end;

procedure TFormConsolidacionAcopioRemitos.FormResize(Sender: TObject);
begin
  inherited;
  if FormConsolidacionAcopioRemitos<>nil then
    if FormConsolidacionAcopioRemitos.Width<>993 then
      FormConsolidacionAcopioRemitos.Width:=993;
end;

procedure TFormConsolidacionAcopioRemitos.FormShow(Sender: TObject);
begin
  inherited;
  QListaPrecios.Close;
  QListaPrecios.Open;
  //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
  dbcLista.KeyValue:=DMMain_FD.ListaPorDefecto(SucursalPorDefecto);
  //***********************************************************
  //***********************************************************
 // ceCliente.SetFocus;
 // ceCliente.SelectAll;
end;

end.
