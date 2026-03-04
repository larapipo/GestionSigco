unit UFacturarRemitosAgrupados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, DBGrids, Db, JvLabel, JvDBControls, FMTBcd,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvGradient, Buttons, ToolWin, ExtCtrls, Variants, JvExDBGrids,
  JvDBGrid, DataExport, DataToXLS, DBCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, CheckLst,Math, JvAppStorage, JvAppIniStorage, System.Actions,
  Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls, JvExControls, JvDBLookup,
  Data.SqlExpr, CompBuscador,Data.DBXCommon,VirtualUI_SDK, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList ;

type
  TFormFacturaRemitoAgrupado = class(TFormABMBase)
    DSRtoCab: TDataSource;
    DSRtoDet: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DSDeposito: TDataSource;
    lbItems: TLabel;
    Facturar: TAction;
    Label4: TLabel;
    Label5: TLabel;
    DSPRtosCab: TDataSetProvider;
    CDSRtosCab: TClientDataSet;
    btFacturar: TBitBtn;
    Facturacion: TAction;
    rxcSucursal: TJvDBLookupCombo;
    rxcDeposito: TJvDBLookupCombo;
    DSSucursal: TDataSource;
    DSPComprobante: TDataSetProvider;
    CDSComprobante: TClientDataSet;
    CDSComprobanteID_COMPROBANTE: TIntegerField;
    CDSComprobanteTIPO_COMPROB: TStringField;
    CDSComprobanteCLASE_COMPROB: TStringField;
    CDSComprobanteDENOMINACION: TStringField;
    CDSComprobanteSUCURSAL: TIntegerField;
    CDSComprobanteLETRA: TStringField;
    CDSComprobantePREFIJO: TStringField;
    CDSComprobanteNUMERARCION_PROPIA: TStringField;
    CDSComprobanteNUMERO: TStringField;
    CDSComprobanteTOMA_NRO_DE: TIntegerField;
    CDSComprobanteAFECTA_IVA: TStringField;
    CDSComprobanteAFECTA_CC: TStringField;
    CDSComprobanteDESGLOZA_IVA: TStringField;
    CDSComprobanteCOMPRA_VENTA: TStringField;
    CDSComprobanteCOPIAS: TIntegerField;
    CDSComprobanteREPORTE: TStringField;
    CDSComprobanteIMPRIME: TStringField;
    CDSComprobanteFISCAL: TStringField;
    CDSComprobanteNOMBREIMPRESORA: TStringField;
    CDSComprobantePENDIENTEIMPRESION: TStringField;
    CDSComprobanteLINEAS_DETALLE: TSmallintField;
    CDSComprobanteCALCULA_IVA_ARTICULOS: TStringField;
    CDSComprobanteDEFECTO: TStringField;
    QRtoCab: TFDQuery;
    CDSRtosCabID_RTO: TIntegerField;
    CDSRtosCabCODIGO: TStringField;
    CDSRtosCabNOMBRE: TStringField;
    CDSRtosCabFECHAVTA: TSQLTimeStampField;
    CDSRtosCabSUCURSAL: TIntegerField;
    CDSRtosCabLDR: TIntegerField;
    CDSRtosCabCONDICIONVTA: TIntegerField;
    CDSRtosCabTIPOCPBTE: TStringField;
    CDSRtosCabNROCPBTE: TStringField;
    CDSRtosCabDEPOSITO: TIntegerField;
    CDSRtosCabNUMERORTO: TStringField;
    CDSRtosCabZONA: TIntegerField;
    CDSRtosCabNROFACT: TStringField;
    CDSRtosCabIDFACTURA: TIntegerField;
    CDSRtosCabLISTAPRECIO: TIntegerField;
    CDSRtosCabRENGLONES: TSmallintField;
    CDSRtosCabOBSERVACION1: TStringField;
    CDSRtosCabOBSERVACION2: TStringField;
    QRtoDet: TFDQuery;
    CDSRtosDet: TClientDataSet;
    DSPRtosDet: TDataSetProvider;
    CDSRtosDetID: TIntegerField;
    CDSRtosDetID_CABRTO: TIntegerField;
    CDSRtosDetTIPOCPBTE: TStringField;
    CDSRtosDetCLASECPBTE: TStringField;
    CDSRtosDetNROCPBTE: TStringField;
    CDSRtosDetRENGLON: TFloatField;
    CDSRtosDetFECHAVTA: TSQLTimeStampField;
    CDSRtosDetCODIGOARTICULO: TStringField;
    CDSRtosDetDETALLE: TStringField;
    CDSRtosDetUNIDAD: TStringField;
    CDSRtosDetCANTIDAD: TFloatField;
    CDSRtosDetDESGLOZAIVA: TStringField;
    CDSRtosDetMODO_GRAVAMEN: TStringField;
    CDSRtosDetIVA_TASA: TFloatField;
    CDSRtosDetTIPOIVA_TASA: TIntegerField;
    CDSRtosDetIVA_SOBRETASA: TFloatField;
    CDSRtosDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSRtosDetDEPOSITO: TIntegerField;
    CDSRtosDetMARGEN: TFloatField;
    CDSRtosDetAFECTA_STOCK: TStringField;
    CDSRtosDetCALCULA_SOBRETASA: TStringField;
    CDSRtosDetGRAVADO_IB: TStringField;
    CDSRtosDetID_MONEDA: TIntegerField;
    CDSRtosDetCOTIZACION: TFloatField;
    CDSRtosDetLOTE: TIntegerField;
    CDSRtosDetOBSERVACION: TStringField;
    CDSRtosDetNOTAVENTA_ID: TIntegerField;
    CDSRtosDetNOTAVENTA_ID_DET: TIntegerField;
    MarcarFacturado: TAction;
    dbgRemitos: TJvDBGrid;
    CDSRtosDetCOSTO_GRAVADO: TFloatField;
    CDSRtosDetCOSTO_EXENTO: TFloatField;
    CDSRtosDetCOSTO_TOTAL: TFloatField;
    CDSRtosDetUNITARIO_GRAVADO: TFloatField;
    CDSRtosDetIVA_UNITARIO: TFloatField;
    CDSRtosDetUNITARIO_EXENTO: TFloatField;
    CDSRtosDetUNITARIO_TOTAL: TFloatField;
    CDSRtosDetTOTAL_GRAVADO: TFloatField;
    CDSRtosDetIVA_TOTAL: TFloatField;
    CDSRtosDetTOTAL_EXENTO: TFloatField;
    CDSRtosDetTOTAL: TFloatField;
    CDSRtosDetDESCUENTO: TFloatField;
    CDSRtosCabTOTAL: TFloatField;
    chbAgrupar: TCheckBox;
    DSPCentroCosto: TDataSetProvider;
    CDSCentroCosto: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DSCentroCosto: TDataSource;
    chbUsarCtroCosto: TCheckBox;
    Label3: TLabel;
    cbCentroCosto: TJvDBLookupCombo;
    CDSRtosCabOBS: TStringField;
    QRtoCabID_RTO: TIntegerField;
    QRtoCabCODIGO: TStringField;
    QRtoCabNOMBRE: TStringField;
    QRtoCabFECHAVTA: TSQLTimeStampField;
    QRtoCabSUCURSAL: TIntegerField;
    QRtoCabLDR: TIntegerField;
    QRtoCabCONDICIONVTA: TIntegerField;
    QRtoCabTIPOCPBTE: TStringField;
    QRtoCabNROCPBTE: TStringField;
    QRtoCabDEPOSITO: TIntegerField;
    QRtoCabNUMERORTO: TStringField;
    QRtoCabZONA: TIntegerField;
    QRtoCabNROFACT: TStringField;
    QRtoCabIDFACTURA: TIntegerField;
    QRtoCabLISTAPRECIO: TIntegerField;
    QRtoCabRENGLONES: TSmallintField;
    QRtoCabOBSERVACION1: TStringField;
    QRtoCabOBSERVACION2: TStringField;
    QRtoCabTOTAL: TFloatField;
    btExcel: TBitBtn;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    QRtoCabMUESTRALDR: TStringField;
    QRtoCabMUESTRALDRDIR: TStringField;
    CDSRtosCabMUESTRALDR: TStringField;
    CDSRtosCabMUESTRALDRDIR: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    Label6: TLabel;
    QRtoCabTIPOIVA: TIntegerField;
    CDSRtosCabTIPOIVA: TIntegerField;
    DSPComprobantePorDefecto: TDataSetProvider;
    CDSComprobantePorDefecto: TClientDataSet;
    pnClientes: TJvPanel;
    Panel2: TPanel;
    Label7: TLabel;
    spClintes: TSpeedButton;
    lbClientes: TCheckListBox;
    btSelec: TBitBtn;
    btUnSelec: TBitBtn;
    BitBtn3: TBitBtn;
    JvDBStatusLabel1: TJvDBStatusLabel;
    CDSRtosDetPRESENTACION_CANT: TFloatField;
    CDSRtosDetCANTIDAD_UNIDADES: TFloatField;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QDepositoStk: TFDQuery;
    QStock: TFDQuery;
    QStockDESCUENTO: TFloatField;
    QStockCOSTO_TOTAL: TFloatField;
    QStockPRECIO: TFloatField;
    QStockCOSTO_EXENTO: TFloatField;
    QStockCOSTO_GRAVADO: TFloatField;
    QDepositoStkRECARGO: TFloatField;
    QDepositos: TFDQuery;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QSucursales: TFDQuery;
    QSucursalesCODIGO: TIntegerField;
    QSucursalesDETALLE: TStringField;
    QComprobantes: TFDQuery;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesDENOMINACION: TStringField;
    QComprobantesSUCURSAL: TIntegerField;
    QComprobantesLETRA: TStringField;
    QComprobantesPREFIJO: TStringField;
    QComprobantesNUMERARCION_PROPIA: TStringField;
    QComprobantesNUMERO: TStringField;
    QComprobantesTOMA_NRO_DE: TIntegerField;
    QComprobantesAFECTA_IVA: TStringField;
    QComprobantesAFECTA_CC: TStringField;
    QComprobantesDESGLOZA_IVA: TStringField;
    QComprobantesCOMPRA_VENTA: TStringField;
    QComprobantesCOPIAS: TIntegerField;
    QComprobantesREPORTE: TStringField;
    QComprobantesIMPRIME: TStringField;
    QComprobantesFISCAL: TStringField;
    QComprobantesNOMBREIMPRESORA: TStringField;
    QComprobantesPENDIENTEIMPRESION: TStringField;
    QComprobantesLINEAS_DETALLE: TSmallintField;
    QComprobantesCALCULA_IVA_ARTICULOS: TStringField;
    QComprobantesDEFECTO: TStringField;
    QComprobantesCAJA_DEFECTO: TIntegerField;
    QComprobantesDIVIDE_IVA: TStringField;
    QComprobantesFACTURAELECTRONICA: TStringField;
    QComprobantesEN_USO: TStringField;
    QComprobantesCODIGO_AFIP: TStringField;
    QComprobantesID_AJUSTECC: TIntegerField;
    QComprobantesCENTRO_COSTO: TIntegerField;
    QComprobantesFILTRO_COMPROBANTES: TStringField;
    QComprobantesDEPOSITO: TIntegerField;
    QComprobantesULTIMONRO: TIntegerField;
    QComprobantesEDITAR_NRO: TStringField;
    QFacturasCliente: TFDQuery;
    QFacturasClienteID_FC: TIntegerField;
    QFacturasClienteTIPOCPBTE: TStringField;
    QFacturasClienteCLASECPBTE: TStringField;
    QFacturasClienteLETRAFAC: TStringField;
    QFacturasClienteSUCFAC: TStringField;
    QFacturasClienteNUMEROFAC: TStringField;
    QFacturasClienteNROCPBTE: TStringField;
    QFacturasClienteCODIGO: TStringField;
    QFacturasClienteNOMBRE: TStringField;
    QFacturasClienteRAZONSOCIAL: TStringField;
    QFacturasClienteID_RTO: TIntegerField;
    QFacturasClienteTIPORTO: TStringField;
    QFacturasClienteCLASERTO: TStringField;
    QFacturasClienteNRORTO: TStringField;
    QFacturasClienteFECHARTO: TSQLTimeStampField;
    QTraerRecargoDeLista: TFDQuery;
    QTraerRecargoDeListaRECARGO: TFloatField;
    QSucursalVta: TFDQuery;
    QSucursalVtaRECARGO: TFloatField;
    mtRemitosFacturados: TFDMemTable;
    mtRemitosFacturadosID_RTO: TIntegerField;
    mtRemitosFacturadosNROFACT: TStringField;
    mtRemitosFacturadosNROREMITO: TStringField;
    mtRemitosFacturadosID_FAC: TIntegerField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rxcDepositoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgRemitosCellClick(Column: TColumn);
    procedure FacturarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FacturacionExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure rxcSucursalClick(Sender: TObject);
    procedure dbgRemitosDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSRtosCabCalcFields(DataSet: TDataSet);
    procedure btExcelClick(Sender: TObject);
    procedure pnClientesExit(Sender: TObject);
    procedure spClintesClick(Sender: TObject);
    procedure lbClientesClick(Sender: TObject);
//    procedure SpeedButton1Click(Sender: TObject);
//    procedure SpeedButton2Click(Sender: TObject);
    procedure btSelecClick(Sender: TObject);
    procedure btUnSelecClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgRemitosTitleBtnClick(Sender: TObject; ACol: LongInt;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    Cancelado:Boolean;
    SeHizoFact:Boolean;
    ListaRto:String;
    ItemTotal:Integer;
    Filtro:String;

    procedure AgregaDetalle;
    procedure AgregaDetalleAgrupado;
    procedure AgregaCabecera;
    function HayCodigosDiferentes:Boolean;
  end;

// lo pase a DMMain
//  type
//    TRtos=class
//      Id_Rto:Integer;
//      Id_Fac:Integer;
//      NroFact:String;
//    end;

var
  FormFacturaRemitoAgrupado: TFormFacturaRemitoAgrupado;
  // lo paso a DMMain
  //  ListadoRtosFacturados:TStringList;
  //  Rtos:TRtos;

implementation

uses DMVenta, UFactura_2, URemitos, UBuscadorTipoCpbte,UDMain_FD;

{$R *.DFM}

function TFormFacturaRemitoAgrupado.HayCodigosDiferentes:boolean;
var
  I: Integer;
codigo:String;
begin
  codigo:='*';Result:=False;
  for I := 0 to dbgRemitos.SelectedRows.Count - 1 do
    begin
      {$IF CompilerVersion < 24}
        dbgRemitos.DataSource.DataSet.GotoBookmark(Pointer(dbgRemitos.SelectedRows.Items[i]));
      {$ELSE}
        dbgRemitos.DataSource.DataSet.GotoBookmark((dbgRemitos.SelectedRows.Items[i]));
       {$ENDIF}


      if codigo='*' then
        codigo:=dbgRemitos.DataSource.DataSet.FieldByName('Codigo').Value;
      if codigo<>dbgRemitos.DataSource.DataSet.FieldByName('Codigo').Value then
        Result:=True;
    end;
end;

procedure TFormFacturaRemitoAgrupado.lbClientesClick(Sender: TObject);
var Cadena:String;
I:Integer;
begin
  inherited;
  filtro:='''******''';   Cadena:='';
  for i := 0 to lbClientes.Items.Count - 1 do
    begin
      if lbClientes.Checked[I] Then
        begin
          Cadena:='';
          Cadena:=''''+Trim(copy(lbClientes.Items[I],1,7))+'''';
          if Filtro='******' then
            filtro:=Cadena
          else
            filtro:=Filtro+','+Cadena;
        end;
    end;
  CDSRtosCab.Filtered := False;
  CDSRtosCab.Filter   := 'codigo in ('+Filtro+')';
  if Filtro<>'' then
    CDSRtosCab.Filtered := True;
  dbgRemitos.Width:=dbgRemitos.Width-1;
  dbgRemitos.Width:=dbgRemitos.Width+1;

end;

procedure TFormFacturaRemitoAgrupado.pnClientesExit(Sender: TObject);
begin
  inherited;
  pnClientes.Visible:=False;
end;


procedure TFormFacturaRemitoAgrupado.CDSRtosCabCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSRtosCabObs.Value:=CDSRtosCabOBSERVACION1.Value+#13+CDSRtosCabOBSERVACION2.Value;
end;

procedure TFormFacturaRemitoAgrupado.AgregaDetalle;
Var UnitarioTotal,Precio,PrecioRto:Extended;
    Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      QStock.Close;
      QStock.ParamByName('Codigo').Value  := CDSRtosDetCODIGOARTICULO.Value;
      QStock.ParamByName('deposito').Value:= CDSRtosDetDEPOSITO.Value;
      QStock.ParamByName('Lista').Value   := CDSRtosCabLISTAPRECIO.Value;
      QStock.ParamByName('Sucursal').Value:= CDSRtosCabSUCURSAL.Value;
      QStock.Open;
      //aca asigno los numeros de remitos que voy haciendo

      CDSVentaCabNRORTO.Value           := ListaRto;
      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSRtosDetCODIGOARTICULO.AsString);
      CDSVentaDetDetalle.Value          := CDSRtosDetDETALLE.Value;
      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSRtosDetCANTIDAD.AsString);
      CDSVentaDetDESGLOZAIVA.Value      := CDSRtosDetDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value         := CDSRtosDetDEPOSITO.Value;
      CDSVentaDetMARGEN.AsFloat         := CDSRtosDetMARGEN.AsFloat;
      CDSVentaDetCLASECPBTE.Value       := CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,CDSRtosDetDESCUENTO.AsString);
      CDSVentaDetLOTE.Value             := CDSRtosDetLOTE.Value;

      Precio       := QStockPRECIO.AsFloat;
      PrecioRto    := CDSRtosDetUNITARIO_TOTAL.AsFloat;

      if CDSVentaCabDESGLOZAIVA.Value='N' then
        begin
          Precio      := Precio * (1 + CDSRtosDetIVA_TASA.AsFloat * 0.01);
          PrecioRto   := PrecioRto + CDSRtosDetIVA_UNITARIO.AsFloat;
        end;

      if (Trunc(Precio * 1000)<>Trunc(PrecioRto * 1000)) and
         (VerificaCambioPrecio='S') Then
        begin
          if MessageDlg('Precio distinto al ingresado'+#13+
                        'Artículo      :'+CDSVentaDetDETALLE.AsString+#13+
                        'Precio Cargado:'+FormatFloat('0.00',PrecioRto)+#13+
                        'Nuevo Precio  :'+FormatFloat('0.00',Precio)+#13+#13+
                        'Modifica?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
            begin
              CDSVentaDetCosto_Gravado.AsFloat     := QStockCOSTO_GRAVADO.AsFloat;
              CDSVentaDetCosto_Exento.AsFloat      := QStockCOSTO_EXENTO.AsFloat;
              CDSVentaDetCosto_Total.AsFloat       := QStockCOSTO_TOTAL.AsFloat;

              DMMain_FD.CalculaPrecioVta_FD(CDSVentaCabINGRESA_LIBRO_IVA.AsString,DMMain_FD.IdListaProveedor,CDSVentaCabLISTAPRECIO.Value,CDSVentaCabSUCURSAL.Value,CDSVentaCabDEPOSITO.Value,
                                            CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.Value,
                                            CDSVentaDetCOTIZACION.AsFloat,
                                            CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                            Gravado,exento,Total,Iva,Margen,dscto,PFinal);
              // Verifico si el Comprobante calcual el Iva en los items
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

              if CDSVentaCabDESGLOZAIVA.Value='N' Then
                UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

              CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));

            end
          else
            begin
              CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtosDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtosDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtosDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

              CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtosDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtosDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtosDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

              if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
                begin
                  CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtosDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                  CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtosDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                end
              else
                begin
                  CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
                  CDSVentaDetIVA_TOTAL.AsFloat        :=0;
                end;

              UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

              if CDSVentaCabDESGLOZAIVA.Value='N' Then
                UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

              CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
           end;
        end
      else
        begin
          CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtosDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtosDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtosDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

          CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtosDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtosDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtosDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

          if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
            begin
              CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtosDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtosDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            end
          else
            begin
              CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
              CDSVentaDetIVA_TOTAL.AsFloat        :=0;
            end;

          UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

          if CDSVentaCabDESGLOZAIVA.Value='N' Then
            UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

          CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
        end;
      if DMMain_FD.RtoDescuentaStock then
        CDSVentaDetAFECTA_STOCK.Value:='N';
      QStock.Close;
      CDSVentaDet.Post;
    end;
end;

procedure TFormFacturaRemitoAgrupado.AgregaDetalleAgrupado;
Var UnitarioTotal,Precio,PrecioRto:Extended;
    Gravado,Exento,Iva,Total,Margen,Dscto,Can,Can_Unid,PFinal:Extended;
    Encontrado:Boolean;
begin
  inherited;
  with DatosVentas DO
    begin
      Encontrado:= CDSVentaDet.Locate('CODIGOARTICULO',CDSRtosDetCODIGOARTICULO.Value,[]);
      if Encontrado then
        begin
          Encontrado:=Trim(UpperCase(CDSVentaDetDETALLE.Value))=Trim(UpperCase(CDSRtosDetDETALLE.AsString));
        end;
      //if Not(CDSVentaDet.Locate('CODIGOARTICULO',CDSRtosDetCODIGOARTICULO.Value,[])) Then
      if Encontrado=False then
        begin
          CDSVentaDet.Append;
          QStock.Close;
          QStock.ParamByName('Codigo').Value  := CDSRtosDetCODIGOARTICULO.Value;
          QStock.ParamByName('deposito').Value:= CDSRtosDetDEPOSITO.Value;
          QStock.ParamByName('Lista').Value   := CDSRtosCabLISTAPRECIO.Value;
          QStock.ParamByName('Sucursal').Value:= CDSRtosCabSUCURSAL.Value;
          QStock.Open;
         //aca asigno los numeros de remitos que voy haciendo

          CDSVentaCabNRORTO.Value           := ListaRto;
          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSRtosDetCODIGOARTICULO.AsString);
          CDSVentaDetDetalle.Value          := CDSRtosDetDETALLE.Value;
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSRtosDetCANTIDAD.AsString);
          CDSVentaDetDESGLOZAIVA.Value      := CDSRtosDetDESGLOZAIVA.Value;
          CDSVentaDetDEPOSITO.Value         := CDSRtosDetDEPOSITO.Value;
          CDSVentaDetMARGEN.AsFloat         := CDSRtosDetMARGEN.AsFloat;
          CDSVentaDetCLASECPBTE.Value       := CDSVentaCabCLASECPBTE.Value;
          CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,CDSRtosDetDESCUENTO.AsString);
          CDSVentaDetLOTE.Value             := CDSRtosDetLOTE.Value;
          if (CDSRtosDetPRESENTACION_CANT.AsString<>'') and (CDSRtosDetPRESENTACION_CANT.AsFloat>0) then
            CDSVentaDetPRESENTACION_CANT.AsFloat:=CDSRtosDetPRESENTACION_CANT.AsFloat
          else
            CDSVentaDetPRESENTACION_CANT.AsFloat:=1;

          if (CDSRtosDetCANTIDAD_UNIDADES.AsString<>'') and (CDSRtosDetCANTIDAD_UNIDADES.AsFloat>0) then
            CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=CDSRtosDetCANTIDAD_UNIDADES.AsFloat
          else
            CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=1;

          Precio       := QStockPRECIO.AsFloat;
          PrecioRto    := CDSRtosDetUNITARIO_TOTAL.AsFloat;

          if CDSVentaCabDESGLOZAIVA.Value='N' then
            begin
              Precio      := Precio * (1 + CDSRtosDetIVA_TASA.AsFloat * 0.01);
              PrecioRto   := PrecioRto + CDSRtosDetIVA_UNITARIO.AsFloat;
            end;

          if (Trunc(Precio * 1000)<>Trunc(PrecioRto * 1000)) and
             (VerificaCambioPrecio='S') Then
            begin
              if MessageDlg('Precio distinto al ingresado'+#13+
                            'Artículo      :'+CDSVentaDetDETALLE.AsString+#13+
                            'Precio Cargado:'+FormatFloat('0.00',PrecioRto)+#13+
                            'Nuevo Precio  :'+FormatFloat('0.00',Precio)+#13+#13+
                            'Modifica?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
                begin
                  CDSVentaDetCosto_Gravado.AsFloat     := QStockCOSTO_GRAVADO.AsFloat;
                  CDSVentaDetCosto_Exento.AsFloat      := QStockCOSTO_EXENTO.AsFloat;
                  CDSVentaDetCosto_Total.AsFloat       := QStockCOSTO_TOTAL.AsFloat;

                  DMMain_FD.CalculaPrecioVta_FD(CDSVentaCabINGRESA_LIBRO_IVA.AsString,DMMain_FD.IdListaProveedor, CDSVentaCabLISTAPRECIO.Value,CDSVentaCabSUCURSAL.Value,CDSVentaCabDEPOSITO.Value,
                                                CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.Value,
                                                CDSVentaDetCOTIZACION.AsFloat,
                                                CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                                Gravado,exento,Total,Iva,Margen,dscto,PFinal);

               // Verifico si el Comprobante calcual el Iva en los items
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

                  if CDSVentaCabDESGLOZAIVA.Value='N' Then
                    UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

                  CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));

                end
              else
                begin
                  CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtosDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                  CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtosDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                  CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtosDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

                  CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtosDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                  CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtosDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                  CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtosDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;


                  if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
                    begin
                      CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtosDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                      CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtosDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                    end
                  else
                    begin
                     CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
                     CDSVentaDetIVA_TOTAL.AsFloat        :=0;
                   end;


                  UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

                  if CDSVentaCabDESGLOZAIVA.Value='N' Then
                    UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

                  CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
               end;
            end
          else
            begin
              CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtosDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtosDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtosDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

              CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtosDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtosDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtosDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

              if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
                begin
//                  CDSVentaDetIVA_UNITARIO.AsFloat     :=CDSRtosDetIVA_UNITARIO.ASFloat;
//                  CDSVentaDetIVA_TOTAL.AsFloat        :=CDSRtosDetIVA_TOTAL.ASFloat;
                  CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtosDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                  CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtosDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                end
              else
                begin
                  CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
                  CDSVentaDetIVA_TOTAL.AsFloat        :=0;
                end;

              UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

              if CDSVentaCabDESGLOZAIVA.Value='N' Then
                UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

              CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
            end;
        end
      else
        begin
          CDSVentaCabNRORTO.Value           := ListaRto;
          CDSVentaDet.Edit;
          can       :=CDSVentaDetCANTIDAD.AsFloat+CDSRtosDetCANTIDAD.AsFloat;
          Can_Unid  :=CDSVentaDetCANTIDAD_UNIDADES.AsFloat+CDSRtosDetCANTIDAD_UNIDADES.AsFloat;
          CDSVentaDetCANTIDAD_UNIDADES.AsFloat := Can_Unid;
          CDSVentaDetCantidadSetText(CDSVentaDetCANTIDAD,FormatFloat('0.00',can));
        end;
      if DMMain_FD.RtoDescuentaStock then
        CDSVentaDetAFECTA_STOCK.Value:='N';
      QStock.Close;

      CDSVentaDet.Post;
    end;
end;


procedure TFormFacturaRemitoAgrupado.btSelecClick(Sender: TObject);
var i:Integer;
Cadena:String;
begin
  inherited;
  Filtro:='''******''';
  for i := 0 to lbClientes.Items.Count - 1 do
    begin
      lbClientes.Checked[I]:=True;
      Cadena:='';
      Cadena:=''''+Trim(copy(lbClientes.Items[I],1,7))+'''';
      if Filtro='******' then
        filtro:=Cadena
      else
       filtro:=Filtro+','+Cadena;
    end;
  CDSRtosCab.Filtered := False;
  CDSRtosCab.Filter   := 'codigo in ('+Filtro+')';
  if Filtro<>'' then
    CDSRtosCab.Filtered := True;
 // pnClientes.Visible:=False;    
end;

procedure TFormFacturaRemitoAgrupado.btUnSelecClick(Sender: TObject);
var i:Integer;
Cadena:String;
begin
  inherited;
  Filtro:='''******''';
  for i := 0 to lbClientes.Items.Count - 1 do
    begin
      lbClientes.Checked[I]:=False;
    end;
  CDSRtosCab.Filtered := False;
  CDSRtosCab.Filter   := 'codigo in ('+Filtro+')';
  if Filtro<>'******' then
    CDSRtosCab.Filtered := True;
  //pnClientes.Visible:=False;    
end;

procedure TFormFacturaRemitoAgrupado.BitBtn3Click(Sender: TObject);
begin
  inherited;
  pnClientes.Visible:=False;
end;

procedure TFormFacturaRemitoAgrupado.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSRtosCab.IsEmpty) then
     begin
      SaveDialog1.DefaultExt:='XLS';
      SaveDialog1.FileName:='Remtios';

      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute then
          if SaveDialog1.FileName<>'' then
          begin
            if VirtualUI.Active then
              DataToXLS1.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    end;
end;

procedure TFormFacturaRemitoAgrupado.AgregaCabecera;
begin
  with DatosVentas DO
  begin
    if chbUsarCtroCosto.Checked then
      FormCpbte_2.SucursalPorDefecto:=cbCentroCosto.KeyValue
    else
      FormCpbte_2.SucursalPorDefecto:=CDSRtosCabSUCURSAL.AsInteger;

    if chbUsarCtroCosto.Checked then
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(cbCentroCosto.KeyValue))
    else
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,CDSRtosCabSUCURSAL.AsString);

    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSRtosCabCODIGO.AsString);

    if ClienteCtdo Then
      begin
        raise Exception.Create('Cliente de Contado No se puede hacer este Comprobante, o verificar en la ficha del mismo para habilitarlo...');
       // FormCpbte_2.Cancelar.Execute;
      end;
    CDSVentaCabLDRSetText(CDSVentaCabLDR,CDSRtosCabLDR.AsString);
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,CDSRtosCabDEPOSITO.AsString);
    CDSVentaCabANULADO.Value     :='N';
    CDSVentaCabNRORTO.Value      :='';

//  ***** Agregado Para elgri el tipo de comprbante **********
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='FC';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal     := CDSRtosCabSUCURSAL.AsInteger;
      FormBuscadorTipoCpbte.ShowModal;
      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
        begin
          CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(FormBuscadorTipoCpbte.Id_Cpbte));
          if CDSVentaCabLISTAPRECIO.AsString<>'' then
            CDSVentaCabLISTAPRECIO.Value :=CDSRtosCabLISTAPRECIO.Value;
          CDSVentaCabIMPRESO.Value     :='N';
          CDSVentaCabOBSERVACION1.Value:='';
          CDSVentaCabOBSERVACION2.Value:='';
          CDSVentaCabCPTE_MANUAL.Value :='N';
          CDSVentaCabREDUCIDA.Value    :='N';

          CDSVentaCabZONA.Value              :=CDSRtosCabZONA.Value;
          CDSVentaCabNROENTREGA.Value        :=1;
          CDSVentaCabIDREMITO.Value          :=CDSRtosCabID_RTO.Value;
          CDSVentaCabTIPO_REMITO.Value       :=CDSRtosCabTIPOCPBTE.Value;
          CDSVentaCabNRORTO.Value            :=CDSRtosCabNROCPBTE.Value;
          CDSVentaCabOBSERVACION1.Value      :=CDSVentaCabOBSERVACION1.Value+'/'+CDSRtosCabOBSERVACION1.Value;
          CDSVentaCabOBSERVACION2.Value      :=CDSVentaCabOBSERVACION2.Value+'/'+CDSRtosCabOBSERVACION2.Value;

          CDSVentaCabFECHA_HORA.AsDateTime  := Now;
          CDSVentaCabUSUARIO.Value          := DMMain_FD.UsuarioActivo;
           // por que si no me agreagaba el iva
          FormCpbte_2.DiscriminaIva:='S';
//          SeHizoFact:=True;
        end
      else
        Cancelado:=True;
    end;
  end;
end;


procedure TFormFacturaRemitoAgrupado.BuscarExecute(Sender: TObject);
var i:Integer;
Cadena:String;
begin
  inherited;
  CDSRtosCab.Close;
  CDSRtosCab.IndexDefs.Clear;
  CDSRtosCab.IndexName:='';
  CDSRtosCab.Params.ParamByName('Sucursal').Value:=rxcSucursal.KeyValue;
  CDSRtosCab.Params.ParamByName('Deposito').Value:=rxcDeposito.KeyValue;
  CDSRtosCab.Open;
  CDSRtosCab.EnableControls;
  pnPrincipal.Enabled:=true;

  lbClientes.Items.Clear;

  QClientes.Close;
  QClientes.ParamByName('Sucursal').Value:=rxcSucursal.KeyValue;
  QClientes.ParamByName('Deposito').Value:=rxcDeposito.KeyValue;
  QClientes.Open;
//
  while not(QClientes.Eof) do
    begin
      lbClientes.Items.Add(QClientes.fields[0].AsString+' - '+QClientes.fields[1].AsString );
      QClientes.Next;
    end;
  QClientes.Close;

  filtro:='''******''';   Cadena:='';
  for i := 0 to lbClientes.Items.Count - 1 do
    begin
      if lbClientes.Checked[I] Then
        begin
          Cadena:='';
          Cadena:=''''+Trim(copy(lbClientes.Items[I],1,7))+'''';
          if Filtro='''******''' then
            filtro:=Cadena
          else
            filtro:=Filtro+','+Cadena;
        end;
    end;
  if Filtro='''******''' then
    filtro:=Cadena;
  CDSRtosCab.Filtered := False;
  if Filtro<>'' then
    begin
      CDSRtosCab.Filter   := 'codigo in ('+Filtro+')';
      CDSRtosCab.Filtered := True;
    end;
  dbgRemitos.Width:=dbgRemitos.Width-1;
  dbgRemitos.Width:=dbgRemitos.Width+1;

end;

procedure TFormFacturaRemitoAgrupado.FormCreate(Sender: TObject);
var cadena:String;
i:integer;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  //renglones por actura desde remito ...revisar esto deberia ser desde el comprbante

  DMMain_FD.QOpciones.Close;
  DMMain_FD.Facturado:=False;

  AddClientDataSet(CDSRtosCab,DSPRtosCab);
  QSucursales.Open;
  QDepositos.Open;
  CDSCentroCosto.Open;
  rxcSucursal.KeyValue  := SucursalPorDefecto;
  rxcDeposito.KeyValue  := DepositoPorDefecto;
  cbCentroCosto.KeyValue:= SucursalPorDefecto;
  pnClientes.Visible:=False;
  // Levanto si el Rto descuen ta Stock
  //*************************************************************
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('opcion').Value:='STOCKRTO';
//  DMMain_FD.QOpciones.Open;
//  DMMain_FD.DescuentaStockRto :=False;
//  if Not(DMMain_FD.QOpciones.IsEmpty) Then
//    DMMain_FD.DescuentaStockRto := Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1)='S';
//  DMMain_FD.QOpciones.Close;

 // Buscar.Execute;
end;

procedure TFormFacturaRemitoAgrupado.rxcDepositoEnter(Sender: TObject);
begin
  inherited;
  QDepositos.Close;
//  QDeposito.ParamByName('sucursal').Value:=rxcSucursal.KeyValue;
  QDepositos.Open;
end;

procedure TFormFacturaRemitoAgrupado.rxcSucursalClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
  cbCentroCosto.KeyValue:=rxcSucursal.KeyValue;
end;

procedure TFormFacturaRemitoAgrupado.spClintesClick(Sender: TObject);
begin
  inherited;
  pnClientes.Visible:=Not(pnClientes.Visible);
end;

//procedure TFormFacturaRemitoAgrupado.SpeedButton1Click(Sender: TObject);
//var i:Integer;
//Cadena:String;
//begin
//  inherited;
//  Filtro:='';
//  for i := 0 to lbClientes.Items.Count - 1 do
//    begin
//      lbClientes.Checked[I]:=True;
//      Cadena:='';
//      Cadena:=Trim(copy(lbClientes.Items[I],1,7));
//      if Filtro='' then
//        filtro:=Cadena
//      else
//       filtro:=Filtro+','+Cadena;
//    end;
//  CDSRtosCab.Filtered := False;
//  CDSRtosCab.Filter   := 'codigo in ('+Filtro+')';
//  if Filtro<>'' then
//    CDSRtosCab.Filtered := True;
//end;
//
//procedure TFormFacturaRemitoAgrupado.SpeedButton2Click(Sender: TObject);
//var i:Integer;
//Cadena:String;
//begin
//  inherited;
//  Filtro:='';
//  for i := 0 to lbClientes.Items.Count - 1 do
//    begin
//      lbClientes.Checked[I]:=False;
//    end;
//  CDSRtosCab.Filtered := False;
//  CDSRtosCab.Filter   := 'codigo in ('+Filtro+')';
//  if Filtro<>'' then
//    CDSRtosCab.Filtered := True;
//end;

procedure TFormFacturaRemitoAgrupado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action:=caFree;
end;

procedure TFormFacturaRemitoAgrupado.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFacturaRemitoAgrupado:=nil;
end;

procedure TFormFacturaRemitoAgrupado.FormResize(Sender: TObject);
begin
  inherited;
  if (FormFacturaRemitoAgrupado<>nil) Then
    if (FormFacturaRemitoAgrupado.Width>1006) or (FormFacturaRemitoAgrupado.Width<1006)  then
      FormFacturaRemitoAgrupado.Width:=1006;
end;

procedure TFormFacturaRemitoAgrupado.FormShow(Sender: TObject);
var cadena:String;
i:Integer;
begin
  inherited;
  CDSRtosCab.Close;
  CDSRtosCab.Params.ParamByName('Sucursal').Value:=rxcSucursal.KeyValue;
  CDSRtosCab.Params.ParamByName('Deposito').Value:=rxcDeposito.KeyValue;
  CDSRtosCab.Open;
  CDSRtosCab.EnableControls;
  pnPrincipal.Enabled:=true;
  lbClientes.Items.Clear;

  QClientes.Close;
  QClientes.ParamByName('Sucursal').Value:=rxcSucursal.KeyValue;
  QClientes.ParamByName('Deposito').Value:=rxcDeposito.KeyValue;
  QClientes.Open;

  while not(QClientes.Eof) do
    begin
      lbClientes.Items.Add(QClientes.fields[0].AsString+' - '+QClientes.fields[1].AsString );
      QClientes.Next;
    end;
  QClientes.Close;


  Filtro:='''******''';
  for i := 0 to lbClientes.Items.Count - 1 do
    begin
      lbClientes.Checked[I]:=True;
      Cadena:='';
      Cadena:=''''+Trim(copy(lbClientes.Items[I],1,7))+'''';
      if Filtro='******' then
        filtro:=Cadena
      else
       filtro:=Filtro+','+Cadena;
    end;
  CDSRtosCab.Filtered := False;
  CDSRtosCab.Filter   := 'codigo in ('+Filtro+')';
  CDSRtosCab.Filtered := True;
  //Buscar.Execute;
end;

procedure TFormFacturaRemitoAgrupado.dbgRemitosCellClick(Column: TColumn);
VAR
puntero:TBookmark;
I: Integer;
begin
  inherited;
  lbItems.Caption:='';
  ItemTotal      :=0;

//  dbgRemitos.DataSource.DataSet.DisableControls;
//  puntero        :=CDSRtosCab.Bookmark;
//  dbgRemitos.DataSource.DataSet.First;
//  while not(dbgRemitos.DataSource.DataSet.Eof) Do
//    begin
//      if dbgRemitos.SelectedRows.CurrentRowSelected Then
//        ItemTotal:=ItemTotal+dbgRemitos.DataSource.DataSet.fieldByName('renglones').Value;
//      lbItems.Caption :=IntToStr(ItemTotal);
//      dbgRemitos.DataSource.DataSet.Next;
//    end;
//  CDSRtosCab.GotoBookmark(puntero);
//  CDSRtosCab.FreeBookmark(Puntero);
//  dbgRemitos.DataSource.DataSet.EnableControls;


//  for I := 0 to dbgRemitos.SelectedRows.Count-1 do
//    begin
//      if dbgRemitos.SelectedRows.CurrentRowSelected Then
//        ItemTotal:=ItemTotal+dbgRemitos.DataSource.DataSet.fieldByName('renglones').Value;
//      lbItems.Caption:=IntToStr(ItemTotal);
//    end;

//  ItemTotal := 0;  // Inicializamos el total
//
//  with dbgRemitos.DataSource.DataSet do
//  begin
//    DisableControls;  // Desactivamos la actualización visual de la grilla
//    try
//      // Recorremos las filas seleccionadas
//      for i := 0 to dbgRemitos.SelectedRows.Count - 1 do
//      begin
//        // Establecemos la posición en la fila seleccionada, pero sin cambiar la vista
//        dbgRemitos.DataSource.DataSet.Bookmark := dbgRemitos.SelectedRows.Items[i];
//
//        // Sumamos el valor del campo 'renglones'
//        ItemTotal := ItemTotal + FieldByName('renglones').AsInteger;
//      end;
//    finally
//      EnableControls;  // Restauramos el control de la grilla
//    end;
//  end;
// // Mostramos el total
//
//  lbItems.Caption := IntToStr(ItemTotal);

 ItemTotal := 0;  // Inicializamos el total

  with dbgRemitos.DataSource.DataSet do
  begin
    DisableControls;  // Evitamos parpadeos al realizar el cálculo
    try
      // Recorremos las filas seleccionadas sin mover el cursor ni la visualización
      for i := 0 to dbgRemitos.SelectedRows.Count - 1 do
      begin
        // Nos posicionamos en la fila seleccionada sin mover el cursor
        dbgRemitos.DataSource.DataSet.Bookmark := dbgRemitos.SelectedRows.Items[i];

        // Sumamos el valor del campo 'renglones' de esa fila seleccionada
        ItemTotal := ItemTotal + FieldByName('renglones').AsInteger;
      end;
    finally
      EnableControls;  // Restauramos el control de la grilla
    end;
  end;

  // Mostramos el total calculado
  lbItems.Caption := IntToStr(ItemTotal);


end;

procedure TFormFacturaRemitoAgrupado.dbgRemitosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRemitos)) then
    FormRemitos:=TformRemitos.Create(self);
  FormRemitos.DatoNew:=CDSRtosCabID_RTO.AsString;
  FormRemitos.TipoCpbte:='RE';
  FormRemitos.Recuperar.Execute;
end;

procedure TFormFacturaRemitoAgrupado.dbgRemitosTitleBtnClick(Sender: TObject;
  ACol: LongInt; Field: TField);
var campo:String;
begin
  inherited;
 try
   Campo := Field.FieldName;
   with dbgRemitos.DataSource.DataSet as TClientDataSet do
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

//procedure TFormFacturaRemitoAgrupado.dbgRemitosTitleClick(Column: TColumn);
//var campo:String;
//begin
//  inherited;
// try
//   Campo := Column.FieldName;
//   with dbgRemitos.DataSource.DataSet as TClientDataSet do
//   if IndexFieldNames <> Campo then
//     IndexFieldNames := Campo // Ascendente
//   else
//     begin
//       AddIndex(Campo, Campo, [], Campo); // Descendente
//       IndexName := Campo;
//     end;
// except // Para que no salte una excepción si la columna es un campo calculado.
// end;
//end;

procedure TFormFacturaRemitoAgrupado.FacturarExecute(Sender: TObject);
VAR Codigo:String;
Iniciado:Boolean;
i:Integer;

begin
  inherited;
  SeHizoFact  := False;
  ListaRto    := '';
  Iniciado    := False;
  Cancelado   := False;
  CDSRtosCab.First;
  mtRemitosFacturados.Close;
  mtRemitosFacturados.Open;
  mtRemitosFacturados.EmptyDataSet;

  //if dbgRemitos.SelectedRows.Count>0 then
  //  ListadoRtosFacturados:=TStringList.Create;

  for I := 0 to dbgRemitos.SelectedRows.Count - 1 do
    begin
      {$IF CompilerVersion < 24}
        dbgRemitos.DataSource.DataSet.GotoBookmark(Pointer(dbgRemitos.SelectedRows.Items[i]));
      {$ELSE}
        dbgRemitos.DataSource.DataSet.GotoBookmark((dbgRemitos.SelectedRows.Items[i]));
      {$ENDIF}

      if Iniciado=False Then
        begin
          Codigo :=CDSRtosCabCODIGO.AsString;
          FormCpbte_2.Agregar.Execute;
          AgregaCabecera;
          Iniciado:=True;
        end;
      if Cancelado=False then
        begin
          //************  Acumuluo en una Memory Table los remitos ....***
         // Rtos           := TRtos.Create;
          mtRemitosFacturados.Append;
          mtRemitosFacturadosID_RTO.Value    := CDSRtosCabID_RTO.Value;//Rtos.Id_Rto
          mtRemitosFacturadosID_FAC.Value    := DatosVentas.CDSVentaCabID_FC.Value;//Rtos.Id_Fac
          mtRemitosFacturadosNROFACT.Value   := DatosVentas.CDSVentaCabNROCPBTE.AsString;//Rtos.NroFact
          mtRemitosFacturadosNROREMITO.Value := CDSRtosCabNUMERORTO.AsString;//Rtos.NroRemito
          mtRemitosFacturados.Post;
          //************************************************************
          // acumuluo los numero de remitos y los guardo en esta variable
          // luego cuando cargo el detalle lo asigno a la CabNroRto
          if dbgRemitos.SelectedRows.Count<=16 then
            ListaRto:=ListaRto+(Copy(CDSRtosCabNUMERORTO.AsString,4,5))+'/' else
          if (dbgRemitos.SelectedRows.Count>16) and (dbgRemitos.SelectedRows.Count<=20) then
            ListaRto:=ListaRto+(Copy(CDSRtosCabNUMERORTO.AsString,5,4))+'/' else
          if (dbgRemitos.SelectedRows.Count>20) and (dbgRemitos.SelectedRows.Count<=25) then
            ListaRto:=ListaRto+(Copy(CDSRtosCabNUMERORTO.AsString,6,3))+'/' else
          if (dbgRemitos.SelectedRows.Count>25) then
            ListaRto:=ListaRto+(Copy(CDSRtosCabNUMERORTO.AsString,7,2))+'/';

          if Codigo<>CDSRtosCabCODIGO.AsString Then
            begin
              FormCpbte_2.Cancelar.Execute;
              FormCpbte_2.Close;
              ShowMessage(' Hay remitos, de clientes diferentes selecionados...');
              SeHizoFact:=False;
              Exit;
            end;
          CDSRtosDet.Close;
          CDSRtosDet.Params.ParamByName('id').Value:=CDSRtosCabID_RTO.Value;
          CDSRtosDet.Open;
          CDSRtosDet.First;
          while Not(CDSRtosDet.Eof) Do // Ingreso el detalle
            begin
              if (CDSRtosDetTOTAL.AsFloat>0) and (CDSRtosDetCANTIDAD.AsFloat>0)  then
                begin
                  if chbAgrupar.Checked=True then
                    AgregaDetalleAgrupado
                  else
                    AgregaDetalle;
                end;
              CDSRtosDet.Next;
            end;
          SeHizoFact:=True;
        end;
    end;
  if (Assigned(FormCpbte_2)) then
    begin
      mtRemitosFacturados.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\RemitosFacturados.xml');
      mtRemitosFacturados.Close;
     // FreeAndNil(ListadoRtosFacturados);
      FormCpbte_2.Show;
      //FormCpbte_2.BringToFront;
    end;
end;

procedure TFormFacturaRemitoAgrupado.FormActivate(Sender: TObject);
var i:Integer;
    Memo:TStringList;
begin
  inherited;
  if DMMain_FD.Facturado Then
    begin
      Buscar.Execute;
    end
  else
    if Not(CDSRtosCab.IsEmpty) Then
      begin
        CDSRtosCab.Cancel;
        dbgRemitos.SelectedRows.Clear;
        Buscar.Execute;
        CDSRtosCab.EnableControls;
      end;

end;

procedure TFormFacturaRemitoAgrupado.FacturacionExecute(Sender: TObject);
begin
  inherited;
  if (HayCodigosDiferentes=True) then
    raise Exception.Create(' Hay seleccionados remitos para distintos cliente, deben ser todo para un mismo cliente...');

  if (ItemTotal<=DMMain_FD.Renglones) Then
    begin
      DMMain_FD.Facturado:=False;
      if Not(CDSRtosCab.IsEmpty) Then
        begin
          if (Assigned(FormCpbte_2)) Then
            FreeAndNil(FormCpbte_2);
          if Not(Assigned(FormCpbte_2)) Then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          Facturar.Execute;
        end
      else
        ShowMessage('No hay Remitos para Facturar....');
    end
  else
    ShowMessage('Cantidad de Renglones por Factura Sobrepasada....');
end;

procedure TFormFacturaRemitoAgrupado.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Facturacion.Enabled:=Not(DSBase.DataSet.IsEmpty);
end;

end.

