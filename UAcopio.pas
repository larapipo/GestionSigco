unit UAcopio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Mask, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  IBGenerator, frxClass, frxExportPDF, frxDBSet, Menus, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.FMTBcd, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Data.SqlExpr, CompBuscador, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportBaseDialog, JvExMask, JvToolEdit, cxContainer, cxLabel, System.StrUtils,
  JvDBGridFooter, cxDBLabel, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  dxSkinWXI, frCoreClasses;

type
  TFormAcopio = class(TFormABMBase)
    CDSMercCab: TClientDataSet;
    DSPMercCab: TDataSetProvider;
    CDSMercDet: TClientDataSet;
    DSPMercDet: TDataSetProvider;
    pnCabecera: TPanel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DSMercDet: TDataSource;
    ibgCab: TIBGenerator;
    ibgDet: TIBGenerator;
    frxReporte: TfrxReport;
    frDet: TfrxDBDataset;
    frCab: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    DSPRtoCab: TDataSetProvider;
    CDSRtoCab: TClientDataSet;
    DSRtoCab: TDataSource;
    dbgEntregas: TDBGrid;
    Label5: TLabel;
    DSPRtoDet: TDataSetProvider;
    CDSRtoDet: TClientDataSet;
    DSRtoDet: TDataSource;
    lbNroFactura: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    RecuperaRto: TAction;
    PopupMenu1: TPopupMenu;
    RecuperaRto1: TMenuItem;
    DBText1: TDBText;
    RecalcularSaldos: TAction;
    RecalcularSaldos1: TMenuItem;
    pcDetalles: TPageControl;
    pagAcopio: TTabSheet;
    pagOrigen: TTabSheet;
    DSPDetalleAcopiado: TDataSetProvider;
    CDSDetalleAcopiado: TClientDataSet;
    DSDetalleAcopiado: TDataSource;
    dbgDetalleAcopiado: TJvDBGrid;
    DSPEntregas: TDataSetProvider;
    CDSEntregas: TClientDataSet;
    DSEntregas: TDataSource;
    pagDetEntregas: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    N1: TMenuItem;
    ReconstruirTotalMov: TAction;
    ReconstruirtotaldeMovimientos1: TMenuItem;
    QRtoCab: TFDQuery;
    CDSRtoCabID: TIntegerField;
    CDSRtoCabNUMERO: TStringField;
    CDSRtoCabTIPOCPBTE: TStringField;
    CDSRtoCabCLASECPBTE: TStringField;
    CDSRtoCabDEPOSITO: TIntegerField;
    CDSRtoCabFECHA: TSQLTimeStampField;
    CDSRtoCabCLIENTE: TStringField;
    CDSRtoCabNOMBRE: TStringField;
    CDSRtoCabDIRECCION: TStringField;
    CDSRtoCabCPOSTAL: TStringField;
    CDSRtoCabLOCALIDAD: TStringField;
    CDSRtoCabID_FACTURA: TIntegerField;
    CDSRtoCabNRO_FACTURA: TStringField;
    CDSRtoCabOBS1: TStringField;
    CDSRtoCabOBS2: TStringField;
    CDSRtoCabFECHA_HORA: TSQLTimeStampField;
    CDSRtoCabUSUARIO: TStringField;
    QRtoDet: TFDQuery;
    CDSRtoDetID: TIntegerField;
    CDSRtoDetID_CAB: TIntegerField;
    CDSRtoDetFECHA: TSQLTimeStampField;
    CDSRtoDetTIPOCPBTE: TStringField;
    CDSRtoDetCLASECPBTE: TStringField;
    CDSRtoDetDEPOSITO: TIntegerField;
    CDSRtoDetCODIGO: TStringField;
    CDSRtoDetDETALLE: TStringField;
    CDSRtoDetCANTIDAD: TFloatField;
    CDSRtoDetID_MERCA_ACOPIO_DET: TIntegerField;
    CDSRtoDetNROCPBTE: TStringField;
    CDSRtoDetPRESENTACION_CANT: TFloatField;
    CDSRtoDetCANTIDAD_UNIDAD: TFloatField;
    QMercCab: TFDQuery;
    CDSMercCabID: TIntegerField;
    CDSMercCabFECHA: TSQLTimeStampField;
    CDSMercCabCLIENTE: TStringField;
    CDSMercCabNOMBRE: TStringField;
    CDSMercCabDIRECCION: TStringField;
    CDSMercCabCPOSTAL: TStringField;
    CDSMercCabLOCALIDAD: TStringField;
    CDSMercCabNROCPBTE: TStringField;
    CDSMercCabID_FACTURA: TIntegerField;
    CDSMercCabCUMPLIDO: TStringField;
    CDSMercCabOBS1: TStringField;
    CDSMercCabOBS2: TStringField;
    QMercDet: TFDQuery;
    QDetalleAcopiado: TFDQuery;
    QEntregas: TFDQuery;
    CDSEntregasID: TIntegerField;
    CDSEntregasID_CAB: TIntegerField;
    CDSEntregasFECHA: TSQLTimeStampField;
    CDSEntregasTIPOCPBTE: TStringField;
    CDSEntregasCLASECPBTE: TStringField;
    CDSEntregasDEPOSITO: TIntegerField;
    CDSEntregasCODIGO: TStringField;
    CDSEntregasDETALLE: TStringField;
    CDSEntregasCANTIDAD: TFloatField;
    CDSEntregasID_MERCA_ACOPIO_DET: TIntegerField;
    CDSEntregasNROCPBTE: TStringField;
    CDSEntregasPRESENTACION_CANT: TFloatField;
    CDSEntregasCANTIDAD_UNIDAD: TFloatField;
    CDSDetalleAcopiadoCODIGOARTICULO: TStringField;
    CDSDetalleAcopiadoDETALLE: TStringField;
    CDSDetalleAcopiadoCANTIDAD: TFloatField;
    CDSMercDetID: TIntegerField;
    CDSMercDetID_CAB: TIntegerField;
    CDSMercDetCODIGO: TStringField;
    CDSMercDetDETALLE: TStringField;
    CDSMercDetCANTIDAD: TFloatField;
    CDSMercDetENTREGADO: TFloatField;
    CDSMercDetSALDO: TFloatField;
    CDSMercDetFECHA_ULTIMAENTREGA: TSQLTimeStampField;
    CDSMercDetCUMPLIDO: TStringField;
    CDSMercDetID_FCDET: TIntegerField;
    CDSDetalleAcopiadoTOTAL: TFloatField;
    CDSDetalleAcopiadoTOTAL_GRAVADO: TFloatField;
    dbeFecha: TJvDBDateEdit;
    dbcCliente: TJvDBComboEdit;
    BuscarCliente: TAction;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_EXENTO_STK: TFMTBCDField;
    CDSStockCOSTO_GRAVADO_STK: TFMTBCDField;
    CDSStockCOSTO_TOTAL_STK: TFMTBCDField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFMTBCDField;
    CDSStockFIJACION_PRECIO_EXENTO: TFMTBCDField;
    CDSStockFIJACION_PRECIO_TOTAL: TFMTBCDField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFMTBCDField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFMTBCDField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFMTBCDField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFMTBCDField;
    CDSStockCOSTO_EXENTO_P: TFMTBCDField;
    CDSStockCOSTO_TOTAL_P: TFMTBCDField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFMTBCDField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockCONTENIDO_COMPRA: TFMTBCDField;
    CDSStockCOSTO_IVA: TFMTBCDField;
    CDSStockCOSTO_FINAL: TFMTBCDField;
    CDSStockFIJACION_PRECIO_IVA: TFMTBCDField;
    CDSStockFIJACION_PRECIO_FINAL: TFMTBCDField;
    CDSStockPORCENTAJE_SOBRECOSTO: TFMTBCDField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRATASAPORCENTAJE: TFMTBCDField;
    CDSStockMUESTRASOBRETASA: TStringField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFMTBCDField;
    CDSStockMUESTRATASAIB: TFMTBCDField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    CDSStockMUESTRATABLAPRECIO1: TFMTBCDField;
    CDSStockMUESTRATABLAPRECIO2: TFMTBCDField;
    CDSStockCOMANDA: TStringField;
    CDSStockRUBRO_GASTO: TStringField;
    CDSStockRUBRO_CTA_GASTO: TStringField;
    CDSStockPUBLICAR_WEB: TStringField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSStockGARANTIAOFICIAL: TStringField;
    CDSStockIMPRIMIR_LSTPRECIOS: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    CDSStockIVA_MODIFICADO: TStringField;
    CDSStockSIGLAS: TStringField;
    CDSStockPRESENTACION_2_CANT: TFMTBCDField;
    CDSStockTASA_MANUFACTURA: TStringField;
    CDSStockPLU: TStringField;
    CDSStockACOPIABLE: TStringField;
    CDSStockCIKO_TIPO: TIntegerField;
    CDSStockLARGO_1: TFloatField;
    CDSStockLARGO_2: TFloatField;
    CDSStockLARGO_3: TFloatField;
    CDSStockROTURA_1: TFloatField;
    CDSStockROTURA_2: TFloatField;
    CDSStockCIMA: TFloatField;
    CDSStockBASE: TFloatField;
    CDSStockVOLUMEN: TFloatField;
    CDSStockPESO: TFloatField;
    CDSStockDIAMETRO_OLLA: TFloatField;
    CDSStockALTO_ACC: TFloatField;
    CDSStockMODO_IVA: TStringField;
    CDSStockTIPOADICIONAL: TStringField;
    CDSStockPESO_CALCULADO: TFloatField;
    CDSStockPLU_SECCION: TIntegerField;
    CDSStockCOMBO: TStringField;
    DSPStock: TDataSetProvider;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    BuscarArticulo: TAction;
    dbgDetalle: TJvDBGrid;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    cxDBLabel1: TcxDBLabel;
    CDSDetalleAcopiadoTotalAcopio: TAggregateField;
    CDSDetalleAcopiadoNetoAcopio: TAggregateField;
    Label6: TLabel;
    CorregirAcopio: TAction;
    CorregirAcopio1: TMenuItem;
    spCorregirAcopio: TFDStoredProc;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    QRtoCabID: TIntegerField;
    QRtoCabNUMERO: TStringField;
    QRtoCabTIPOCPBTE: TStringField;
    QRtoCabCLASECPBTE: TStringField;
    QRtoCabDEPOSITO: TIntegerField;
    QRtoCabFECHA: TSQLTimeStampField;
    QRtoCabCLIENTE: TStringField;
    QRtoCabNOMBRE: TStringField;
    QRtoCabDIRECCION: TStringField;
    QRtoCabCPOSTAL: TStringField;
    QRtoCabLOCALIDAD: TStringField;
    QRtoCabID_FACTURA: TIntegerField;
    QRtoCabNRO_FACTURA: TStringField;
    QRtoCabOBS1: TStringField;
    QRtoCabOBS2: TStringField;
    QRtoCabFECHA_HORA: TSQLTimeStampField;
    QRtoCabUSUARIO: TStringField;
    QRtoCabID_MERCA_ACOPIO_CAB: TIntegerField;
    QRtoCabID_REMITO: TIntegerField;
    QRtoDetID: TIntegerField;
    QRtoDetID_CAB: TIntegerField;
    QRtoDetFECHA: TSQLTimeStampField;
    QRtoDetTIPOCPBTE: TStringField;
    QRtoDetCLASECPBTE: TStringField;
    QRtoDetDEPOSITO: TIntegerField;
    QRtoDetCODIGO: TStringField;
    QRtoDetDETALLE: TStringField;
    QRtoDetCANTIDAD: TFloatField;
    QRtoDetID_MERCA_ACOPIO_DET: TIntegerField;
    QRtoDetNROCPBTE: TStringField;
    QRtoDetPRESENTACION_CANT: TFloatField;
    QRtoDetCANTIDAD_UNIDAD: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure CDSMercCabNewRecord(DataSet: TDataSet);
    procedure CDSMercDetNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BorrarExecute(Sender: TObject);
    procedure dbgEntregasDblClick(Sender: TObject);
    procedure lbNroFacturaClick(Sender: TObject);
    procedure DSBaseDataChange(Sender: TObject; Field: TField);
    procedure RecuperaRtoExecute(Sender: TObject);
    procedure CDSRtoCabAfterScroll(DataSet: TDataSet);
    procedure RecalcularSaldosExecute(Sender: TObject);
    procedure ReconstruirTotalMovExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure CDSMercCabCLIENTESetText(Sender: TField; const Text: string);
    function  AsignarArticulo(cod:string):boolean;
    function  AsignarCliente(cod:string) :Boolean;
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSMercDetCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSMercDetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSMercCabBeforeCancel(DataSet: TDataSet);
    procedure CDSMercCabBeforeClose(DataSet: TDataSet);
    procedure dbgDetalleEnter(Sender: TObject);
    procedure dbgDetalleCanEditCell(Grid: TJvDBGrid; Field: TField;
      var AllowEdit: Boolean);
    procedure dbgDetalleExit(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure CDSDetalleAcopiadoBeforeOpen(DataSet: TDataSet);
    procedure DSRtoCabDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure CorregirAcopioExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
 //   procedure DBText1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
  private
    { Private declarations }
   Cumplido      : Tpanel;
   NetoTotal     : Double;
   Total         : Double;
  public
    { Public declarations }
  end;

var
  FormAcopio: TFormAcopio;

implementation

uses UBuscadorAcopios, URtoEntregaAcopio, UBuscarPorNroReferencia,
  UFactura_2, UFacturaCtdo_2, UDMain_FD, DMAcopio, UBuscadorClientes, UBuscadorArticulos,
  UStock_2;

{$R *.dfm}

procedure TFormAcopio.AgregarExecute(Sender: TObject);
begin
  CDSMercCab.Close;
  CDSMercCab.Params.ParamByName('id').Clear;
  CDSMercCab.Open;

  CDSMercDet.Close;
  CDSMercDet.Params.ParamByName('id').Clear;
  CDSMercDet.Open;

  CDSRtoCab.Close;
  CDSRtoCab.Params.ParamByName('id').Clear;
  CDSRtoCab.Open;

  CDSRtoDet.Close;
  CDSRtoDet.Params.ParamByName('codigo').Clear;
  CDSRtoDet.Params.ParamByName('id_acopio').Clear;
  CDSRtoDet.Open;

  CDSDetalleAcopiado.Close;
  CDSDetalleAcopiado.Params.ParamByName('id').clear;
  CDSDetalleAcopiado.Open;

  CDSEntregas.Close;
  CDSEntregas.Params.ParamByName('idfactura').Clear;
  CDSEntregas.Open;

  inherited;
end;

procedure TFormAcopio.BorrarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    begin
      if CDSRtoCab.RecordCount<=0 Then
        begin
          if Cumplido<>nil Then FreeAndNil(Cumplido);
          inherited;
        end
      else
        ShowMessage('Hay entregas asociadas...');
     end
  else
    ShowMessage('No esta Autorizado para esta operación...');
end;

procedure TFormAcopio.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
      FormBuscadorArticulos.Param1      := 1;
      FormBuscadorArticulos.Param2      := 3;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
      FormBuscadorArticulos.Esquema     :=-1;
      FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        CDSMercDetCODIGO.Text           := FormBuscadorArticulos.Codigo;
  end;
end;

procedure TFormAcopio.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     CDSMercCabCLIENTE.Text           :=FormBuscadorClientes.Codigo;
end;

procedure TFormAcopio.BuscarExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormBuscadorAcopios)) then
    FormBuscadorAcopios:=TFormBuscadorAcopios.Create(Self);
  FormBuscadorAcopios.cbEstado.ItemIndex:=1;
  FormBuscadorAcopios.ShowModal;
  if FormBuscadorAcopios.ModalResult=mrOk then
    begin
      DatoNew:=IntToStr(FormBuscadorAcopios.Id);
      Recuperar.Execute;
    end;
end;
function TFormAcopio.AsignarArticulo(cod:string) :Boolean;
begin
  try
    if CDSMercDet.State=dsBrowse then
      CDSMercDet.Edit;

    CDSStock.Close;
    CDSStock.Params.ParamByName('codigo').AsString  :=  cod;
    CDSStock.Open;
    if Not CDSStock.IsEmpty then
      begin
        CDSMercDetDETALLE.AsString  :=  CDSStockDETALLE_STK.AsString;
        Result    :=  True;
      end
    else
      Result      :=  False;
  except
    CDSStock.Close;
    Result        :=  False;
  end;
end;

function TFormAcopio.AsignarCliente(cod:string) :Boolean;
begin
  try
    CDSClientes.Close;
    CDSClientes.Params.ParamByName('codigo').asstring  :=  cod;
    CDSClientes.Open;
    if not CDSClientes.IsEmpty then
      begin
        if CDSMercCab.State = dsInsert then
          begin
            CDSMercCabNOMBRE.AsString     :=  CDSClientesNOMBRE.AsString;
            CDSMercCabDIRECCION.AsString  :=  CDSClientesDIRECCION_COMERCIAL.AsString;
            CDSMercCabLOCALIDAD.AsString  :=  CDSClientesLOCALIDAD.AsString;
            CDSMercCabCPOSTAL.AsString    :=  CDSClientesCPOSTAL.AsString;
            Result    :=  True;
          end;
      end
    else
      Result      :=  False;
  except
    CDSClientes.Close;
    Result        :=  False;
  end;
end;


procedure TFormAcopio.CDSDetalleAcopiadoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  NetoTotal :=  0.0;
  Total     :=  0.0;
end;

procedure TFormAcopio.CDSMercCabBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  CDSMercDet.Cancel;
  CDSRtoCab.Close;

end;

procedure TFormAcopio.CDSMercCabBeforeClose(DataSet: TDataSet);
begin
  inherited;
  CDSMercDet.Close;
end;

procedure TFormAcopio.CDSMercCabCLIENTESetText(Sender: TField;
  const Text: string);
VAR
  Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString:= '';
          if dbcCliente.Enabled then dbcCliente.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      dbcCliente.Text:=Aux;
    end;
END;

procedure TFormAcopio.CDSMercCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSMercCabID.Value              :=  ibgCab.IncrementFD(1);
  CDSMercCabFECHA.AsDateTime      :=  Date;
  CDSMercCabCUMPLIDO.Value        :=  'N';     //INICIADO
end;

procedure TFormAcopio.CDSMercDetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (CDSMercDetCODIGO.AsString<>'') Then
    begin
      CDSMercDetCANTIDAD.AsFloat  :=  Sender.Asfloat;
      CDSMercDetSALDO.AsFloat     :=  CDSMercDetCANTIDAD.AsFloat;
    end;
end;

procedure TFormAcopio.CDSMercDetCODIGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // Quitar enter de la cadena....
      AnsiReplaceStr(Text, #13, '');
      Sender.AsString := DMMain_FD.SearchCodigo(Text,DSMercDet,false);

      IF not AsignarArticulo(Sender.AsString) THEN
        BEGIN
         // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1:=1;
          FormBuscadorArticulos.Param2:=3;
          FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
          FormBuscadorArticulos.Esquema     :=-1;
          FormBuscadorArticulos.Dato              := Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSMercDet.State = dsBrowse THEN
                CDSMercDet.Edit;
              CDSMercDetCODIGOSetText(CDSMercDetCODIGO,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;

  END;
end;

procedure TFormAcopio.CDSMercDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSMercDetID.Value         := ibgDet.IncrementFD(1);
  CDSMercDetID_CAB.Value     := CDSMercCabID.Value;
  CDSMercDetENTREGADO.AsFloat:= 0;
  CDSMercDetCUMPLIDO.Value   := 'N';
  CDSMercDetFECHA_ULTIMAENTREGA.Clear;
end;

procedure TFormAcopio.CDSRtoCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSRtoDet.Close;
  CDSRtoDet.Params.ParamByName('codigo').Value   :=CDSMercCabCLIENTE.Value;
  CDSRtoDet.Params.ParamByName('id_acopio').Value:=CDSMercCabID.Value;
  CDSRtoDet.Open;
end;

procedure TFormAcopio.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMercCabID.AsString;
  inherited;
  Recuperar.Execute;
 // spAcopiarMerca.Close;
//  spAcopiarMerca.Params.ParamByName('id_rto_acopio').Value:=CDSMercCabID.Value;
//  spAcopiarMerca.ExecProc;

end;

procedure TFormAcopio.CorregirAcopioExecute(Sender: TObject);
begin
  inherited;
  if (CDSMercCab.Active) and (not CDSMercCab.IsEmpty) then
    begin  DMMain_FD.fdcGestion.StartTransaction;
      try
        spCorregirAcopio.Close;
        spCorregirAcopio.ParamByName('id_acopio').Value   :=  CDSMercCabID.AsInteger;
        spCorregirAcopio.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        spCorregirAcopio.Close;
      except on E: exception do
        begin
          DMMain_FD.fdcGestion.Rollback;
          showmessage(E.Message);
        end;
      end;

      Recuperar.Execute;
    end;
end;

//procedure TFormAcopio.DBText1Click(Sender: TObject);
//var Q:TFdQuery;
//Tipo:String;
//begin
//  inherited;
//  Q:=TFDQuery.Create(nil);
//  Q.Connection:=DMMain_FD.fdcGestion;
//  Q.SQL.Text:='Select from fcvtacab c where c.id_fc='+ IntToStr(CDSMercCabID_FACTURA.AsInteger);
//  Q.Open;
//  if q.Fields[0].AsString<>'' then
//    Tipo:=q.Fields[0].AsString
//  else
//    Tipo:='';
//  Q.Close;
//  FreeAndNil(q);
//
//  if Tipo='FC' then
//    begin
//      if Not(Assigned(FormCpbte_2)) then
//        FormCpbte_2:=TFormCpbte_2.Create(Application);
//      FormCpbte_2.DatoNew  :=IntToStr( CDSMercCabID_FACTURA.Value);
//      FormCpbte_2.TipoCpbte:='FC';
//      FormCpbte_2.Recuperar.Execute;
//      FormCpbte_2.Show;
//    end
//  else
//    if Tipo='FO' then
//      begin
//        if Not(Assigned(FormCpbteCtdo_2)) then
//          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Application);
//        FormCpbteCtdo_2.DatoNew  :=IntToStr( CDSMercCabID_FACTURA.Value);
//        FormCpbteCtdo_2.TipoCpbte:='FO';
//        FormCpbteCtdo_2.Recuperar.Execute;
//        FormCpbteCtdo_2.Show;
//    end;
//
//end;

procedure TFormAcopio.DSBaseDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnCabecera.Enabled:=True;
end;

procedure TFormAcopio.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
  pnPrincipal.Enabled     :=  True;
  pnCabecera.Enabled      :=  DSBase.State in [dsInsert, dsEdit];
  dbgDetalle.ReadOnly     :=  DSBase.State in [dsInsert, dsEdit];
//  Agregar.Enabled     :=  false; //DSBase.State = dsBrowse;
//  Cancelar.Enabled    :=  false;  //DSBase.State in [dsInsert, dsEdit];
//  Confirma.Enabled    :=  False; //DSBase.State in [dsInsert, dsEdit];
  Buscar.Enabled          :=  DSBase.State = dsBrowse;
  Modificar.Enabled       :=  false; //(not DSBase.DataSet.IsEmpty) and ((DSBase.DataSet.FieldByName('ID_FACTURA').IsNull)
                                 //                            or (DSBase.DataSet.FieldByName('ID_FACTURA').AsInteger <= 0));

  Prev.Enabled            :=  (not DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]);
  Next.Enabled            :=  Prev.Enabled;

  Borrar.Enabled          :=  (DSBase.State = dsBrowse) and (not DSBase.DataSet.IsEmpty)
                               and (DSBase.DataSet.FieldByName('CUMPLIDO').AsString<>'S');
  Imprimir.Enabled        :=  (DSBase.State = dsBrowse) and (not DSBase.DataSet.IsEmpty);

  CorregirAcopio.Enabled  :=  (DSBase.State = dsBrowse) and (not DSBase.DataSet.IsEmpty);
end;

procedure TFormAcopio.DSRtoCabDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  Borrar.Enabled := (CDSMercCabCUMPLIDO.AsString<>'S') and (CDSRtoCab.IsEmpty);
end;

procedure TFormAcopio.FormActivate(Sender: TObject);
begin
  inherited;
  if (FormAcopio<>nil) and (Not(DSBase.DataSet.IsEmpty)) then
    Recuperar.Execute;
end;

procedure TFormAcopio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAcopio.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize:=fALSE;
  AddClientDataSet(CDSMercCab,DSPMercCab);
  AddClientDataSet(CDSMercDet,DSPMercDet);
  CDSMercCab.Open;
  CDSMercDet.Open;
  Tabla:='MERCA_ENACOPIO_CAB';
  Campo:='id';
  pcDetalles.ActivePageIndex:=0;
end;

procedure TFormAcopio.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAcopio:=nil;
end;

procedure TFormAcopio.FormResize(Sender: TObject);
begin
  inherited;
  if FormAcopio<>nil then
    if FormAcopio.Width<>733 then
      FormAcopio.Width:=733;
end;

procedure TFormAcopio.FormShow(Sender: TObject);
begin
  inherited;
  Autosize:=False;
end;

procedure TFormAcopio.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if not DSBase.DataSet.IsEmpty then
    begin
      frxReporte.LoadFromFile(DMMain_FD.PathReportesLst + '\Acopio.fr3');
      frxReporte.PrepareReport;
      frxReporte.ShowReport;
    end;
end;

procedure TFormAcopio.lbNroFacturaClick(Sender: TObject);
begin
  inherited;
 IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(self);
  FormBuscarPorNroReferenica.CompraVta:='V';
  FormBuscarPorNroReferenica.edNumero.Text:=CDSMercCabID_FACTURA.ASString;
  FormBuscarPorNroReferenica.btOk.Click;

//  FormBuscarPorNroReferenica.Show;

  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      if FormBuscarPorNroReferenica.Tipo<>'FO' then
        begin
         if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew:=IntToStr(FormBuscarPorNroReferenica.id);
          FormCpbte_2.TipoCpbte:=FormBuscarPorNroReferenica.Tipo;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
        begin
          if Not(Assigned(FormCpbteCtdo_2)) then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.DatoNew:=IntToStr(FormBuscarPorNroReferenica.id);
          FormCpbteCtdo_2.TipoCpbte:='FO';
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
        end;
    end
  else
    ShowMessage('No Hay Comprobante con ese Nro...');
  FormBuscarPorNroReferenica.Close;

end;

procedure TFormAcopio.NextExecute(Sender: TObject);
begin
  if Ne.Visible then
    begin
      if (DatoNew<>'') and (Not(DSBase.DataSet.IsEmpty)) Then
        begin
          DatoOld:=DatoNew;
          QBrowse2.Close;
          QBrowse2.SQL.Clear;
          QBrowse2.SQL.Add('select min('+''+campo+''+') from '+''+tabla+''+' where '+''+campo+''+' > '+''''+DatoNew+''''+''+Condicion+'');
          QBrowse2.Open;
          if QBrowse2.Fields[0].AsString='' Then
            begin
              QBrowse2.Close;
              QBrowse2.SQL.Clear;
              QBrowse2.SQL.Add('select min('+''+campo+''+') from '+''+tabla+''+' where '+''+campo+''+' < '+''''+DatoOld+''''+''+Condicion+'');
              QBrowse2.Open;
            end;
          DatoNew:=QBrowse2.Fields[0].AsString;
          if DatoNew='' Then DatoNew:=DatoOld;
          QBrowse2.Close;
          Recuperar.Execute;
        end;
    end;
end;

procedure TFormAcopio.PrevExecute(Sender: TObject);
begin
  if Pr.Visible then
    BEGIN
      if (DatoNew<>'') and (Not(DSBase.DataSet.IsEmpty)) Then
        begin
          DatoOld:=DatoNew;
          QBrowse2.Close;
          QBrowse2.SQL.Clear;
          QBrowse2.SQL.Add('select max('+''+campo+''+') from '+''+tabla+''+' where '+''+campo+''+' < '+''''+DatoNew+''''+''+Condicion+'');
          QBrowse2.Open;
          if QBrowse2.Fields[0].AsString='' Then
            begin
              QBrowse2.Close;
              QBrowse2.SQL.Clear;
              QBrowse2.SQL.Add('select max('+''+campo+''+') from '+''+tabla+''+' where '+''+campo+''+' > '+''''+DatoOld+''''+''+Condicion+'');
              QBrowse2.Open;
            end;
          DatoNew:=QBrowse2.Fields[0].AsString;
          if DatoNew='' Then DatoNew:=DatoOld;
          QBrowse2.Close;
          Recuperar.Execute;
        end;
    end;
end;

procedure TFormAcopio.dbgDetalleCanEditCell(Grid: TJvDBGrid; Field: TField;
  var AllowEdit: Boolean);
begin
  inherited;
  if (Field.FieldName='DETALLE')
  or ((Field.FieldName = 'CANTIDAD')
      and (CDSMercDetCODIGO.AsString = '')) then
    AllowEdit :=  False
  else
    AllowEdit :=  True;
end;

procedure TFormAcopio.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (not(dbgDetalle.DataSource.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=DBGDetalle.DataSource.DataSet.FieldByName('codigo').AsString;
      formstock_2.recuperar.Execute;
      FormStock_2.Show;
    end;
end;

procedure TFormAcopio.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  dbgDetalle.Canvas.Font.Style:=[];
  dbgDetalle.Canvas.Font.Color:=clBlack;
//
  if (CDSMercDetCUMPLIDO.Value='N') then
    dbgDetalle.Canvas.Font.Style:=[fsBold];
//
  if (CDSMercDetSALDO.ASFloat>0) then
    dbgDetalle.Canvas.Font.Color:=clRed;
//
//
//  if (gdSelected in state) Then
//    begin
//      dbgDetalle.Canvas.Font.Color:=clWhite;
//      dbgDetalle.Canvas.Brush.Color:=clNavy;
//    end;
//
//
  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;


procedure TFormAcopio.dbgDetalleEnter(Sender: TObject);
begin
  inherited;
  dbgDetalle.SelectedIndex:=1;
end;

procedure TFormAcopio.dbgDetalleExit(Sender: TObject);
begin
  inherited;
  if (CDSMercDet.State in [dsInsert, dsEdit]) and (CDSMercDetCODIGO.AsString = '') then
      CDSMercDet.Cancel;
end;

procedure TFormAcopio.dbgEntregasDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRtoEntregaAcopio)) then
    FormRtoEntregaAcopio:=TFormRtoEntregaAcopio.Create(Self);
  FormRtoEntregaAcopio.DatoNew:=CDSRtoCabID.AsString;
  FormRtoEntregaAcopio.Recuperar.Execute;
  FormRtoEntregaAcopio.Show;  
end;

procedure TFormAcopio.RecalcularSaldosExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Esta por hacer un recalculo de los saldos.. esta seguro?..',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
    begin
      CDSMercDet.First;
      while Not(CDSMercDet.Eof) do
        begin
          CDSMercDet.Edit;
          CDSMercDetENTREGADO.AsFloat:=0;
          CDSMercDetSALDO.AsFloat    :=CDSMercDetCANTIDAD.AsFloat;
          CDSMercDet.Next;
        end;
      CDSRtoCab.First;
      while Not(CDSRtoCab.Eof) do
        begin
          CDSRtoDet.First;
          while Not(CDSRtoDet.Eof) do
            begin
              if CDSMercDet.Locate('CODIGO',CDSRtoDetCODIGO.AsString,[]) Then
                begin
                  CDSMercDet.Edit;
                  CDSMercDetENTREGADO.AsFloat:=CDSMercDetENTREGADO.AsFloat + CDSRtoDetCANTIDAD.AsFloat;
                  CDSMercDetSALDO.AsFloat    :=CDSMercDetCANTIDAD.AsFloat - CDSMercDetENTREGADO.AsFloat;
                  CDSMercDet.Post;
                end;
              CDSRtoDet.Next;
            end;
          CDSRtoCab.Next;
        end;
    end;
end;

procedure TFormAcopio.ReconstruirTotalMovExecute(Sender: TObject);
begin
  inherited;
   if MessageDlg('Esta por hacer un Reconstruccion Total de los Movimientos.. esta seguro?..',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
    begin
 //     Modificar.Execute;
      CDSMercDet.First;
      while Not(CDSMercDet.Eof) do
        begin
          CDSMercDet.Edit;
          CDSMercDetENTREGADO.AsFloat:= 0;
          CDSMercDetSALDO.AsFloat    := 0;
          CDSMercDetCANTIDAD.AsFloat := 0;
          CDSMercDet.Next;
        end;

      CDSDetalleAcopiado.First;
      while Not(CDSDetalleAcopiado.Eof) do
        begin
          if CDSMercDet.Locate('CODIGO',CDSDetalleAcopiadoCODIGOARTICULO.AsString,[]) Then
            begin
              CDSMercDet.Edit;
              CDSMercDetENTREGADO.AsFloat:= 0;
              CDSMercDetCANTIDAD.Value   := CDSDetalleAcopiadoCANTIDAD.AsFloat;
              CDSMercDetSALDO.AsFloat    := CDSDetalleAcopiadoCANTIDAD.AsFloat;
              CDSMercDet.Post;
            end;
           CDSDetalleAcopiado.Next;
         end;

      CDSEntregas.First;
      while Not(CDSEntregas.Eof) do
        begin
          if CDSMercDet.Locate('CODIGO',CDSEntregasCODIGO.AsString,[]) Then
            begin
              CDSMercDet.Edit;
              CDSMercDetENTREGADO.AsFloat := CDSMercDetENTREGADO.AsFloat + CDSEntregasCANTIDAD.AsFloat;
              CDSMercDetSALDO.AsFloat     := CDSMercDetCANTIDAD.AsFloat  - CDSMercDetENTREGADO.AsFloat;
              CDSMercDet.Post;

            end;
          CDSEntregas.Next;
        end;
     CDSMercDet.ApplyUpdates(0);
  //    Confirma.Execute;
    end;
  Recuperar.Execute;
end;

procedure TFormAcopio.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSMercCab.Close;
  CDSMercCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSMercCab.Open;

  CDSMercDet.Close;
  CDSMercDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSMercDet.Open;

  CDSRtoCab.Close;
  CDSRtoCab.Params.ParamByName('id').Value:=CDSMercCabID_FACTURA.Value;
  CDSRtoCab.Open;

  CDSDetalleAcopiado.Close;
  CDSDetalleAcopiado.Params.ParamByName('id').Value:=CDSMercCabID_FACTURA.Value;
  CDSDetalleAcopiado.Open;

  CDSEntregas.Close;
  CDSEntregas.Params.ParamByName('idfactura').Value:=CDSMercCabID_FACTURA.Value;
  CDSEntregas.Open;

  if CDSMercCabCUMPLIDO.Value='S' Then
    begin
       if Cumplido=nil Then
          Cumplido:=TPanel.Create(Self);
       Cumplido.Parent:=Self;
       Cumplido.Caption:='CUMPLIDO';
       Cumplido.Top:= Trunc(FormAcopio.Height*0.5)-20;
       Cumplido.Left:=Trunc(FormAcopio.Width*0.5)-120;
       Cumplido.Height:=40;
       Cumplido.Width :=240;
       Cumplido.Font.Size:=30;
       Cumplido.Font.Color:=clRed;
       Cumplido.Font.Name:='Arial';
       Cumplido.Font.Style:=[fsBold];
       Cumplido.Visible:=True;
       Cumplido.BringToFront;
    end
  else
    if Cumplido<>nil Then
      begin
        FreeAndNil(Cumplido);
      end;

  //LFinalizado.Visible   :=  DSBase.DataSet.FieldByName('CUMPLIDO').AsString = 'S';

end;

procedure TFormAcopio.RecuperaRtoExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSMercCab.IsEmpty) then
    begin
      Modificar.Execute;
      CDSMercDet.first;
      while not(CDSMercDet.Eof) do
        begin
          CDSMercDet.Edit;
          CDSMercDetCUMPLIDO.Value    :='N';
          CDSMercDetENTREGADO.AsFloat :=0;
          CDSMercDetSALDO.Value       :=CDSMercDetCANTIDAD.Value;
          CDSMercDet.Next;
        end;

      if CDSMercCab.State=dsBrowse then
         CDSMercCab.Edit;
      if CDSMercCabCUMPLIDO.Value='N' then
        CDSMercCabCUMPLIDO.Value:='S'
        else
          if CDSMercCabCUMPLIDO.Value='S' then
            CDSMercCabCUMPLIDO.Value:='N'
          else
            if CDSMercCabCUMPLIDO.Value='I' then
              CDSMercCabCUMPLIDO.Value:='N';
      Confirma.Execute;
    end;


end;


end.
