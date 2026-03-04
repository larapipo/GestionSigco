unit UFacturarPlantillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, JvExControls, JvDBLookup, StdCtrls, Grids, DBGrids,
  ImgList, ActnList, ComCtrls, JvLabel, JvDBControls,strUtils,
  JvGradient, Buttons, ToolWin, ExtCtrls, DBClient, Provider, Mask, JvExMask,
  JvToolEdit, CheckLst, Spin, DBCtrls, frxClass, frxDBSet, frxBarcode,IniFiles,
  frxExportPDF, DBXCommon, JvExStdCtrls, JvCombobox, JvDBCombobox,Math, Menus,
  JvExExtCtrls, JvExtComponent, JvPanel, JvAppStorage, JvAppIniStorage,
  System.Actions, Data.SqlExpr, Data.DB, JvExDBGrids, JvDBGrid, JvComponentBase,
  JvFormPlacement, CompBuscador, JvDBLookupTreeView, AdvDBLookupComboBox,
  slstbox, dbslstbox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormFacturaPlantillas = class(TFormABMBase)
    Label1: TLabel;
    Label4: TLabel;
    dbgPlantillas: TJvDBGrid;
    QGruposPlantillas: TFDQuery;
    DSPGrupoPlantillas: TDataSetProvider;
    CDSGrupoPlantillas: TClientDataSet;
    CDSGrupoPlantillasID: TIntegerField;
    CDSGrupoPlantillasDETALLE: TStringField;
    DSGruposPlantillas: TDataSource;
    dbcGrupos: TJvDBLookupCombo;
    DSPlantillas: TDataSource;
    DSPPlantillas: TDataSetProvider;
    CDSPlantillas: TClientDataSet;
    CDSPlantillasCODIGO: TStringField;
    CDSPlantillasMUESTRANOMBRE: TStringField;
    CDSPlantillasMUESTRAPLANTILLA: TStringField;
    Facturar: TAction;
    Label2: TLabel;
    edFechaEmision: TJvDateEdit;
    CDSPlantillasID_FACTURAPORDEFECTO: TIntegerField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobREPORTE: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobFISCAL: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QComprobCALCULA_IVA_ARTICULOS: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobID_COMPROBANTE: TIntegerField;
    CDSPlantillasMUESTRACOMPROB: TStringField;
    QPlantillaDet: TFDQuery;
    QPlantillaDetID: TIntegerField;
    QPlantillaDetID_CAB: TIntegerField;
    QPlantillaDetCODIGO: TStringField;
    QPlantillaDetDETALLE: TStringField;
    QPlantillaDetCANTIDAD: TFloatField;
    QPlantillaDetPRECIO: TFloatField;
    QPlantillaDetP_TOTAL: TFloatField;
    DSPPlantillaDet: TDataSetProvider;
    CDSPlantillaDet: TClientDataSet;
    CDSPlantillaDetID: TIntegerField;
    CDSPlantillaDetID_CAB: TIntegerField;
    CDSPlantillaDetCODIGO: TStringField;
    CDSPlantillaDetDETALLE: TStringField;
    CDSPlantillaDetCANTIDAD: TFloatField;
    CDSPlantillaDetPRECIO: TFloatField;
    CDSPlantillaDetP_TOTAL: TFloatField;
    DSPComprob: TDataSetProvider;
    CDSComprob: TClientDataSet;
    CDSComprobID_COMPROBANTE: TIntegerField;
    CDSComprobTIPO_COMPROB: TStringField;
    CDSComprobCLASE_COMPROB: TStringField;
    CDSComprobDENOMINACION: TStringField;
    CDSComprobLETRA: TStringField;
    CDSComprobREPORTE: TStringField;
    CDSComprobCOPIAS: TIntegerField;
    CDSComprobFISCAL: TStringField;
    CDSComprobNOMBREIMPRESORA: TStringField;
    CDSComprobDESGLOZA_IVA: TStringField;
    CDSComprobLINEAS_DETALLE: TSmallintField;
    CDSComprobCALCULA_IVA_ARTICULOS: TStringField;
    CDSComprobNUMERARCION_PROPIA: TStringField;
    ToolButton1: TToolButton;
    btFacturar: TBitBtn;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    dbcSucursal: TJvDBLookupCombo;
    DSSucursal: TDataSource;
    Label3: TLabel;
    spSelect: TSpeedButton;
    spunselect: TSpeedButton;
    CDSPlantillasMES_ABONOANUAL: TIntegerField;
    CDSPlantillasMUESTRATIPOABONO: TStringField;
    CDSPlantillasTIPOABONO: TStringField;
    Facturar2: TAction;
    edMeses: TSpinEdit;
    btFacturacionLote: TBitBtn;
    QVerificaPeridoFacturado: TFDQuery;
    Label5: TLabel;
    QRegFacturas: TFDQuery;
    DSPRegFacturas: TDataSetProvider;
    CDSRegFacturas: TClientDataSet;
    QRegFacturasLOTE: TIntegerField;
    QRegFacturasID_FAC: TIntegerField;
    QRegFacturasCLIENTE: TStringField;
    QRegFacturasFECHA: TSQLTimeStampField;
    QRegFacturasIMPORTE: TFloatField;
    QRegFacturasSALDO_CC: TFloatField;
    QRegFacturasTIPOCPBTE: TStringField;
    QRegFacturasCLACPBTE: TStringField;
    QRegFacturasNROCPBTE: TStringField;
    CDSRegFacturasLOTE: TIntegerField;
    CDSRegFacturasID_FAC: TIntegerField;
    CDSRegFacturasCLIENTE: TStringField;
    CDSRegFacturasFECHA: TSQLTimeStampField;
    CDSRegFacturasIMPORTE: TFloatField;
    CDSRegFacturasSALDO_CC: TFloatField;
    CDSRegFacturasTIPOCPBTE: TStringField;
    CDSRegFacturasCLACPBTE: TStringField;
    CDSRegFacturasNROCPBTE: TStringField;
    DSRegFacturas: TDataSource;
    QLotes: TFDQuery;
    DSPLotes: TDataSetProvider;
    CDSLotes: TClientDataSet;
    DSLotes: TDataSource;
    Label6: TLabel;
    CDSLotesLOTE: TIntegerField;
    btBorrarLote: TBitBtn;
    QUltimoLote: TFDQuery;
    QLotesLOTE: TIntegerField;
    QUltimoLoteMAX: TIntegerField;
    ToolButton2: TToolButton;
    ExportarTXT: TAction;
    btImprimir: TBitBtn;
    frReporte: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    frDBDetalle: TfrxDBDataset;
    QRegFacturasMUESTRANOMBRE: TStringField;
    QRegFacturasMUESTRADIRECCION: TStringField;
    CDSRegFacturasMUESTRANOMBRE: TStringField;
    CDSRegFacturasMUESTRADIRECCION: TStringField;
    Imprimir: TAction;
    spBorraAplicaciones: TFDStoredProc;
    BorrarAplicaciones: TAction;
    QBuscaAplicaiones: TFDQuery;
    edNroRipsa: TEdit;
    Label7: TLabel;
    QRegFacturasCODIGOBARRA_2: TStringField;
    QRegFacturasCODIGOBARRA: TStringField;
    CDSRegFacturasCODIGOBARRA_2: TStringField;
    CDSRegFacturasCODIGOBARRA: TStringField;
    frxPDFExport1: TfrxPDFExport;
    QSaldoCtaCte: TFDQuery;
    QSaldoCtaCteSUM: TFloatField;
    QPlantillaDetPRECIOS_CONIVA: TStringField;
    CDSPlantillaDetPRECIOS_CONIVA: TStringField;
    Label8: TLabel;
    dbcVendedores: TJvDBLookupCombo;
    Label9: TLabel;
    dbcTipoAbono: TJvComboBox;
    CDSPlantillasVENDEDOR: TStringField;
    DSPersonal: TDataSource;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCODIGO: TStringField;
    DSPPersonal: TDataSetProvider;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    QVerificaExistencia: TFDQuery;
    QPlantillasFuturas: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    DSPPlantillasFuturas: TDataSetProvider;
    CDSPlantillasFuturas: TClientDataSet;
    DSPlantillasFuturas: TDataSource;
    QPlantillaDetTASA: TFloatField;
    CDSPlantillaDetTASA: TFloatField;
    Label10: TLabel;
    cbCobrador: TJvDBLookupCombo;
    DSCobrador: TDataSource;
    CDSCobrador: TClientDataSet;
    StringField13: TStringField;
    StringField14: TStringField;
    DSPCobrador: TDataSetProvider;
    QRegFacturasCOBRADOR: TStringField;
    QRegFacturasMUESTRACOBRADOR: TStringField;
    CDSRegFacturasCOBRADOR: TStringField;
    CDSRegFacturasMUESTRACOBRADOR: TStringField;
    QRegFacturasMUESTRADIRECCIONPOSTAL: TStringField;
    QRegFacturasMUESTRACALLE1: TStringField;
    QRegFacturasMUESTRACALLE2: TStringField;
    CDSRegFacturasMUESTRADIRECCIONPOSTAL: TStringField;
    CDSRegFacturasMUESTRACALLE1: TStringField;
    CDSRegFacturasMUESTRACALLE2: TStringField;
    QPlantillasFuturasMUESTRACOMPROBANTE: TStringField;
    QPlantillasFuturasZONA: TIntegerField;
    QRegFacturasZONA: TIntegerField;
    QRegFacturasMUESTRAZONA: TStringField;
    CDSRegFacturasZONA: TIntegerField;
    CDSRegFacturasMUESTRAZONA: TStringField;
    QGruposPlantillasID: TIntegerField;
    QGruposPlantillasDETALLE: TStringField;
    QGruposPlantillasTOTAL: TFloatField;
    QGruposPlantillasPRECIOS_CONIVA: TStringField;
    CDSPlantillasFuturasCODIGO: TStringField;
    CDSPlantillasFuturasMUESTRANOMBRE: TStringField;
    CDSPlantillasFuturasMUESTRAPLANTILLA: TStringField;
    CDSPlantillasFuturasID_FACTURAPORDEFECTO: TIntegerField;
    CDSPlantillasFuturasTIPOABONO: TStringField;
    CDSPlantillasFuturasMES_ABONOANUAL: TIntegerField;
    CDSPlantillasFuturasVENDEDOR: TStringField;
    CDSPlantillasFuturasMUESTRACOMPROBANTE: TStringField;
    CDSPlantillasFuturasZONA: TIntegerField;
    CDSPlantillasMUESTRACOMPROBANTE: TStringField;
    CDSPlantillasZONA: TIntegerField;
    Label11: TLabel;
    cbZonas: TJvDBLookupCombo;
    DSZonas: TDataSource;
    CDSZonas: TClientDataSet;
    DSPZonas: TDataSetProvider;
    CDSZonasID_ZONA: TIntegerField;
    CDSZonasDETALLE: TStringField;
    CDSLotesLOTE_CADENA: TStringField;
    btNovedades: TBitBtn;
    CDSPlantillasMES_ADICIONAL: TIntegerField;
    CDSPlantillasCON_HOSTING: TStringField;
    QDetallesAdicionales: TFDQuery;
    DSPdetallesAdicionales: TDataSetProvider;
    CDSDetallesAdicionales: TClientDataSet;
    CDSDetallesAdicionalesCODIGO: TStringField;
    CDSDetallesAdicionalesDETALLE: TStringField;
    CDSDetallesAdicionalesIMPORTE: TFloatField;
    ReCalculaSaldo: TAction;
    QActualizaSaldo: TFDQuery;
    spBuscaLote: TSpeedButton;
    PopupMenu1: TPopupMenu;
    ReCalculaSaldo1: TMenuItem;
    VerCtaCte: TAction;
    VerCtaCte1: TMenuItem;
    QPlantillasNo: TFDQuery;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    IntegerField5: TIntegerField;
    StringField9: TStringField;
    IntegerField6: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField12: TStringField;
    DSPPlantillasNo: TDataSetProvider;
    CDSPlantillasNo: TClientDataSet;
    DSPlantillaNo: TDataSource;
    Label12: TLabel;
    CDSPlantillasNoCODIGO: TStringField;
    CDSPlantillasNoMUESTRANOMBRE: TStringField;
    CDSPlantillasNoID: TIntegerField;
    CDSPlantillasNoMUESTRAPLANTILLA: TStringField;
    CDSPlantillasNoID_FACTURAPORDEFECTO: TIntegerField;
    CDSPlantillasNoTIPOABONO: TStringField;
    CDSPlantillasNoMES_ABONOANUAL: TIntegerField;
    CDSPlantillasNoVENDEDOR: TStringField;
    CDSPlantillasNoMUESTRACOMPROBANTE: TStringField;
    CDSPlantillasNoZONA: TIntegerField;
    CDSPlantillasNoMES_ADICIONAL: TIntegerField;
    CDSPlantillasNoCON_HOSTING: TStringField;
    CDSPlantillasMES_SEMESTRAL: TIntegerField;
    QPlantillasFuturasMES_SEMESTRAL: TIntegerField;
    CDSPlantillasFuturasMES_SEMESTRAL: TIntegerField;
    CDSPlantillasCOBRADOR: TStringField;
    CDSPlantillasNOMBRECOBRADOR: TStringField;
    Cobrador: TDBText;
    CDSPlantillasPLANTILLA_CIVA: TStringField;
    spBorrarFactura: TFDStoredProc;
    QSaldoGeneral: TFDQuery;
    DBText1: TDBText;
    Label13: TLabel;
    CDSLotesLOTE_PLA: TStringField;
    dbcLotes: TJvDBLookupCombo;
    dbgFacturas: TDBGrid;
    QPlantillas: TFDQuery;
    QPlantillasCODIGO: TStringField;
    QPlantillasMUESTRANOMBRE: TStringField;
    QPlantillasID_FACTURAPORDEFECTO: TIntegerField;
    QPlantillasTIPOABONO: TStringField;
    QPlantillasMES_ABONOANUAL: TIntegerField;
    QPlantillasMES_SEMESTRAL: TIntegerField;
    QPlantillasMUESTRACOMPROBANTE: TStringField;
    QPlantillasID_PLANTILLA: TIntegerField;
    QPlantillasMUESTRAPLANTILLA: TStringField;
    QPlantillasVENDEDOR: TStringField;
    QPlantillasZONA: TIntegerField;
    QPlantillasMES_ADICIONAL: TIntegerField;
    QPlantillasCON_HOSTING: TStringField;
    QPlantillasCOBRADOR: TStringField;
    QPlantillasPLANTILLA_CIVA: TStringField;
    QPlantillasNOMBRECOBRADOR: TStringField;
    CDSPlantillasID_PLANTILLA: TIntegerField;
    QPlantillasFuturasID_PLANTILLA: TIntegerField;
    CDSPlantillasFuturasID_PLANTILLA: TIntegerField;
    pnCabecera: TPanel;
    pnDetalle: TPanel;
    pnPie: TPanel;
    rgTipoCC: TRadioGroup;
    QVerificaExistenciaCOUNT: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure spSelectClick(Sender: TObject);
    procedure spunselectClick(Sender: TObject);
    procedure dbgPlantillasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure CDSPlantillasCalcFields(DataSet: TDataSet);
    procedure Facturar2Execute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure dbcLotesClick(Sender: TObject);
    procedure btBorrarLoteClick(Sender: TObject);
    procedure dbgFacturasDblClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BorrarAplicacionesExecute(Sender: TObject);
    procedure edNroRipsaExit(Sender: TObject);
    procedure dbcTipoAbonoChange(Sender: TObject);
    procedure dbgPlantillasDblClick(Sender: TObject);
    procedure cbCobradorClick(Sender: TObject);
    procedure CDSLotesCalcFields(DataSet: TDataSet);
    procedure btNovedadesClick(Sender: TObject);
    procedure ReCalculaSaldoExecute(Sender: TObject);
    procedure spBuscaLoteClick(Sender: TObject);
    procedure VerCtaCteExecute(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure CDSPlantillasID_FACTURAPORDEFECTOChange(Sender: TField);
    procedure dbgPlantillasColEnter(Sender: TObject);
    procedure dbgFacturasTitleClick(Column: TColumn);
    procedure dbcGruposKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
    Cancelar:Boolean;
    PROCEDURE AgregaCabecera(Dato:String);
    procedure AgregaDetalle;
    procedure AgregaDetalleAdicionales;


  end;

var
  FormFacturaPlantillas: TFormFacturaPlantillas;

implementation

uses DMVenta, UFactura_2, UDMain_FD,  UClientes_2,DMBuscadoresForm,
     DMStoreProcedureForm, ULogin, UNovedadesFacturacion, UCtaCteVta,
     UPlantillasNoFacturadas;

{$R *.dfm}

procedure TFormFacturaPlantillas.AgregaDetalleAdicionales;
Var UnitarioTotal:extended;
begin
  inherited;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSDetallesAdicionalesCODIGO.AsString);

      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');

      CDSVentaDetDESGLOZAIVA.Value      :=CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
      CDSVentaDetMARGEN.AsFloat         :=0;
      CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;


      if (CDSPlantillaDetPRECIOS_CONIVA.Value='S') Then
        begin
          if (CDSVentaCabDESGLOZAIVA.Value='S') then
            UnitarioTotal:=CDSDetallesAdicionalesIMPORTE.AsFloat/(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)
          else
            UnitarioTotal:=CDSDetallesAdicionalesIMPORTE.AsFloat;
        end
      else
        if (CDSPlantillaDetPRECIOS_CONIVA.Value='N') Then
          begin
            if (CDSVentaDetDESGLOZAIVA.Value='N') then
               UnitarioTotal:=CDSDetallesAdicionalesIMPORTE.AsFloat*(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)
             else
               UnitarioTotal:=CDSDetallesAdicionalesIMPORTE.AsFloat;
          end;


      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));

    // ******* Busco y Aplico Precio Especial cliente
      DMStoreProcedure.QPrecioEspecial.CLose;
      DMStoreProcedure.QPrecioEspecial.ParamByName('cliente').AsString  := CDSPlantillasCODIGO.AsString;
      DMStoreProcedure.QPrecioEspecial.ParamByName('articulo').AsString := CDSPlantillaDetCODIGO.AsString;
      DMStoreProcedure.QPrecioEspecial.Open;
      if Not(DMStoreProcedure.QPrecioEspecial.IsEmpty) Then
        begin
          if (IsZero(Trunc(DMStoreProcedure.QPrecioEspecialDESCUENTO.AsFloat*100))) then
            begin
              CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,'0');

              if (CDSPlantillaDetPRECIOS_CONIVA.Value='S') Then
                begin
                  if (CDSVentaCabDESGLOZAIVA.Value='S') then
                    UnitarioTotal:=DMStoreProcedure.QPrecioEspecialPRECIOPACTADO.AsFloat/(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)
                  else
                    UnitarioTotal:=DMStoreProcedure.QPrecioEspecialPRECIOPACTADO.AsFloat;
                end
              else
                if (CDSPlantillaDetPRECIOS_CONIVA.Value='N') Then
                  begin
                    if (CDSVentaDetDESGLOZAIVA.Value='N') then
                       UnitarioTotal:=DMStoreProcedure.QPrecioEspecialPRECIOPACTADO.AsFloat*(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)
                     else
                       UnitarioTotal:=DMStoreProcedure.QPrecioEspecialPRECIOPACTADO.AsFloat;
                  end;

              CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
            end
          else
            CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,FloatToStr(RoundTo(DMStoreProcedure.QPrecioEspecialDESCUENTO.AsFloat,-2)));
        end;
      DMStoreProcedure.QPrecioEspecial.CLose;

      CDSVentaDet.Post;
    end;
end;


procedure TFormFacturaPlantillas.AgregaCabecera(Dato:String);
begin
  with DatosVentas DO
    begin
      CDSVentaCabFECHAVTA.AsDateTime := edFechaEmision.Date;
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(dbcSucursal.KeyValue));
      CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSPlantillasCODIGO.AsString);

      if (Trim(CDSPlantillasID_FACTURAPORDEFECTO.AsString)<>'') and (Trim(CDSPlantillasMUESTRACOMPROB.AsString)<>'') then
        CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,CDSPlantillasID_FACTURAPORDEFECTO.AsString);
//    CDSVentaCabLDRSetText(CDSVentaCabLDR,'0');

      IF (DMMain_FD.GetCondicionVtaPorDefecto(CDSPlantillasCODIGO.AsString)>-1) THEN
        CDSVentaCabCondicionVtaSetText(CDSVentaCabCondicionVta,IntToStr(DMMain_FD.GetCondicionVtaPorDefecto(CDSPlantillasCODIGO.AsString)));

      CDSVentaCabANULADO.Value      := 'N';
      CDSVentaCabIMPRESO.Value      := 'N';
      CDSVentaCabOBSERVACION1.Value := Dato;
      CDSVentaCabOBSERVACION2.Value := '';
      CDSVentaCabCPTE_MANUAL.Value  := 'N';
      CDSVentaCabREDUCIDA.Value     := 'N';

      CDSVentaCabZONA.Value         := 0;
      CDSVentaCabNROENTREGA.Value   := 1;
      CDSVentaCabIDREMITO.Clear;
      CDSVentaCabTIPO_REMITO.Clear;
      CDSVentaCabNRORTO.Value       := '';
      //seleciona lista de precio
      CDSVentaCabLISTAPRECIO.Clear;
      CDSVentaCabFECHA_HORA.AsDateTime  := Now;
      CDSVentaCabUSUARIO.Value          := DMMain_FD.UsuarioActivo;
      CDSVentaCabTIPO_VTA.Value :='S';//<<< del tipo servicio
      // por que si no me agreagaba el iva
      // esta linea es del 31/03/2015 FormCpbte_2.DiscriminaIva:='S';
      FormCpbte_2.DiscriminaIva:='S';
    end;

end;

procedure TFormFacturaPlantillas.AgregaDetalle;
Var UnitarioTotal:extended;
begin
  inherited;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSPlantillaDetCODIGO.AsString);

      if CDSPlantillasTIPOABONO.Value='A' then
        CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'12')
      else
        if CDSPlantillasTIPOABONO.Value='S' then
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'6')
        else
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSPlantillaDetCANTIDAD.AsString);

      CDSVentaDetDESGLOZAIVA.Value      :=CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
      CDSVentaDetMARGEN.AsFloat         :=0;
      CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
 //     CDSVentaDetUNITARIO_GRAVADO.AsFloat := CDSPlantillaDetPRECIO.AsFloat /(1+ CDSVentaDetIVA_Tasa.AsFloat*0.01);

 //     CDSVentaDetUNITARIO_EXENTO.AsFloat  := 0;

 //     CDSVentaDetCOSTO_GRAVADO.AsFloat    := CDSPlantillaDetPRECIO.AsFloat /(1+CDSVentaDetIVA_Tasa.AsFloat*0.01);
 //
 //     CDSVentaDetCOSTO_EXENTO.AsFloat     := 0;

 //     CDSVentaDetCOSTO_TOTAL.AsFloat      := CDSPlantillaDetPRECIO.AsFloat /(1+CDSVentaDetIVA_Tasa.AsFloat*0.01);

      if (CDSPlantillaDetPRECIOS_CONIVA.Value='S') Then
        begin
          if (CDSVentaCabDESGLOZAIVA.Value='S') then
            UnitarioTotal:=CDSPlantillaDetPRECIO.AsFloat/(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)
          else
            UnitarioTotal:=CDSPlantillaDetPRECIO.AsFloat;

          // control para ripsa. por el IVA esto viene desde el cliente
          if (CDSPlantillasPLANTILLA_CIVA.AsString ='S') and (CDSVentaCabINGRESA_LIBRO_IVA.AsString ='S') then
            if (CDSVentaCabDESGLOZAIVA.Value='S') then
              UnitarioTotal:=CDSPlantillaDetPRECIO.AsFloat/(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)
            else
              UnitarioTotal:=CDSPlantillaDetPRECIO.AsFloat;///(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)

        end
      else
        if (CDSPlantillaDetPRECIOS_CONIVA.Value='N') Then
          begin
            if (CDSVentaCabDESGLOZAIVA.Value='N') then
               UnitarioTotal:=CDSPlantillaDetPRECIO.AsFloat*(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)
            else
               UnitarioTotal:=CDSPlantillaDetPRECIO.AsFloat;

            // control para si tomo on el monto. por el IVA esto viene desde el cliente
            if  (CDSPlantillasPLANTILLA_CIVA.AsString ='S') and (CDSVentaCabINGRESA_LIBRO_IVA.Value='S') then
              if (CDSVentaCabDESGLOZAIVA.Value='N') then
                UnitarioTotal:=CDSPlantillaDetPRECIO.AsFloat*(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)
              else
                UnitarioTotal:=CDSPlantillaDetPRECIO.AsFloat;

          end;

//      if CDSVentaCabDesglozaIVA.Value='S' Then
//        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal/(1+CDSVentaDetIVA_Tasa.AsFloat*0.01)))
//      else
//        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));

      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));

    // ******* Busco y Aplico Precio Especial cliente
      DMStoreProcedure.QPrecioEspecial.CLose;
      DMStoreProcedure.QPrecioEspecial.ParamByName('cliente').AsString  := CDSPlantillasCODIGO.AsString;
      DMStoreProcedure.QPrecioEspecial.ParamByName('articulo').AsString := CDSPlantillaDetCODIGO.AsString;
      DMStoreProcedure.QPrecioEspecial.Open;
      if Not(DMStoreProcedure.QPrecioEspecial.IsEmpty) Then
        begin
          if (IsZero(DMStoreProcedure.QPrecioEspecialDESCUENTO.AsFloat)) then
            begin
              CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,'0');

              if (CDSPlantillaDetPRECIOS_CONIVA.Value='S') Then
                begin
                  if (CDSVentaCabDESGLOZAIVA.Value='S') then
                    UnitarioTotal:=DMStoreProcedure.QPrecioEspecialPRECIOPACTADO.AsFloat/(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)
                  else
                    UnitarioTotal:=DMStoreProcedure.QPrecioEspecialPRECIOPACTADO.AsFloat;
                end
              else
                if (CDSPlantillaDetPRECIOS_CONIVA.Value='N') Then
                  begin
                    if (CDSVentaDetDESGLOZAIVA.Value='N') then
                       UnitarioTotal:=DMStoreProcedure.QPrecioEspecialPRECIOPACTADO.AsFloat*(1+CDSVentaDetIVA_TASA.ASFloat * 0.01)
                     else
                       UnitarioTotal:=DMStoreProcedure.QPrecioEspecialPRECIOPACTADO.AsFloat;
                  end;

              CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
            end
          else
            CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,FloatToStr(RoundTo(DMStoreProcedure.QPrecioEspecialDESCUENTO.AsFloat,-2)));
        end;
      DMStoreProcedure.QPrecioEspecial.CLose;

      CDSVentaDet.Post;
    end;
end;


procedure TFormFacturaPlantillas.btBorrarLoteClick(Sender: TObject);
var id:Integer;
begin
  inherited;
  if dbcLotes.KeyValue<=0 then
    raise Exception.Create('No se selecciono ningun Lote ........');
  if CDSRegFacturas.IsEmpty then
    raise Exception.Create('No Hay datos a borrar ........');

  if MessageDlg(' Va Hacer una operacion de Borrado.... esta seguro??',mtConfirmation,mbYesNo,1)=mrYes Then
  begin
    if not (Assigned(FormLogin)) then
      FormLogin := TFormLogin.Create(FormCpbte_2);
    FormLogin.ShowModal;
    if (FormLogin.Tag=1) Then
      begin
        DMMain_FD.fdcGestion.StartTransaction;
        try
          if Not(CDSRegFacturas.IsEmpty) then
            begin
              CDSRegFacturas.First;
              while not(CDSRegFacturas.Eof) and (CDSRegFacturas.RecordCount>0) do
                begin
                  QBuscaAplicaiones.Close;
                  QBuscaAplicaiones.ParamByName('id').Value  :=CDSRegFacturasID_FAC.Value;
                  QBuscaAplicaiones.ParamByName('Tipo').Value:=CDSRegFacturasTIPOCPBTE.Value;
                  QBuscaAplicaiones.Open;
                  if (QBuscaAplicaiones.Fields[0].Value>0) Then
                    begin
                      spBorraAplicaciones.Close;
                      spBorraAplicaciones.ParamByName('ID').Value  :=CDSRegFacturasID_FAC.Value;
                      spBorraAplicaciones.ParamByName('TIPO').Value:=CDSRegFacturasTIPOCPBTE.Value;
                      spBorraAplicaciones.ExecProc;
                      spBorraAplicaciones.Close;
                      sbEstado.SimplePanel:=True;
                      sbEstado.SimpleText:='Borrando Aplicaciones....';
                      Application.ProcessMessages;

                    end;
                  QBuscaAplicaiones.Close;
                  id:=CDSRegFacturasID_FAC.Value;

                  DMMain_FD.LogFileFD(0,2,'Borrado desde Facturacion por Plantilla Fac.:'+CDSRegFacturasNROCPBTE.AsString+
                                      ' A nombre de '+CDSRegFacturasMUESTRANOMBRE.AsString,'FACPLAN');

                  CDSRegFacturas.Delete;
                  CDSRegFacturas.ApplyUpdates(0);
      //            CDSRegFacturas.First;
                  sbEstado.SimpleText:='';

                  spBorrarFactura.Close;
                  spBorrarFactura.ParamByName('id').Value:=id;
                  spBorrarFactura.ExecProc;
                  spBorrarFactura.Close;

                  Application.ProcessMessages;

                end;
              DMMain_FD.fdcGestion.Commit;
            end
          else
            ShowMessage('Sin Datos para Borrar....');
        Except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se Borrarorn los items........!');
        end;
        CDSLotes.Close;
        CDSLotes.Open;
      end;
  end;

end;

procedure TFormFacturaPlantillas.BorrarAplicacionesExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spBorraAplicaciones.Close;
    spBorraAplicaciones.ParamByName('TIPO').Value:=CDSRegFacturasTIPOCPBTE.Value;
    spBorraAplicaciones.ParamByName('ID').Value  :=CDSRegFacturasID_FAC.Value;
    spBorraAplicaciones.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spBorraAplicaciones.Close;
  Except
    spBorraAplicaciones.Close;
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Borrarorn las aplicaciones de pago en la factura....!');
  end;
end;

procedure TFormFacturaPlantillas.btNovedadesClick(Sender: TObject);
begin
  inherited;
  FormNovedadesFacturacion.Visible:= Not(FormNovedadesFacturacion.Visible);
end;

procedure TFormFacturaPlantillas.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSComprob.Close;
  CDSComprob.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSComprob.Open;

  CDSPlantillas.Close;
  CDSPlantillas.IndexDefs.Clear;
  CDSPlantillas.IndexName:='';
  CDSPlantillas.Params.ParamByName('plantilla').Value         := dbcGrupos.KeyValue;
  CDSPlantillas.Params.ParamByName('sucursal').Value          := dbcSucursal.KeyValue;
  CDSPlantillas.Params.ParamByName('FechaFacturacion').Value  := edFechaEmision.Date;
  CDSPlantillas.Params.ParamByName('vendedor').Value          := dbcVendedores.KeyValue;
  CDSPlantillas.Open;

  CDSPlantillasNo.Close;
  CDSPlantillasNo.Params.ParamByName('plantilla').Value         := dbcGrupos.KeyValue;
  CDSPlantillasNo.Params.ParamByName('sucursal').Value          := dbcSucursal.KeyValue;
  CDSPlantillasNo.Params.ParamByName('FechaFacturacion').Value  := edFechaEmision.Date;
  CDSPlantillasNo.Params.ParamByName('vendedor').Value          := dbcVendedores.KeyValue;
  CDSPlantillasNo.Open;

  CDSLotes.Filtered:=False;
  CDSLotes.Filter  :='LOTE_PLA='+ IntToStr(dbcGrupos.KeyValue);
  CDSLotes.Filtered:=dbcGrupos.KeyValue>0;
  dbcLotes.KeyValue:=-1;
  CDSRegFacturas.Close;
  CDSRegFacturas.Params.ParamByName('lote').Clear;
  CDSRegFacturas.Open;
end;

procedure TFormFacturaPlantillas.CancelarExecute(Sender: TObject);
begin
//  inherited;
  Cancelar:=True;

end;

procedure TFormFacturaPlantillas.CDSLotesCalcFields(DataSet: TDataSet);
var aux:String;
i:Integer;
begin
  inherited;
  Aux:= IntToStr(CDSLotesLOTE.Value);
  Aux:= AnsiRightStr(IntToStr(CDSLotesLOTE.Value),6);
  CDSLotesLOTE_CADENA.AsString:=Aux;
  Aux:='';
  Aux:= IntToStr(CDSLotesLOTE.Value);
  for i := 0 to 5 do
    Delete(Aux,length(Aux),1);
  CDSLotesLOTE_PLA.AsString:=Aux;

end;

procedure TFormFacturaPlantillas.CDSPlantillasCalcFields(DataSet: TDataSet);
begin
  inherited;
  case CDSPlantillasTIPOABONO.Value[1] of
    'M':CDSPlantillasMUESTRATIPOABONO.Value:='Mensual';
    'A':CDSPlantillasMUESTRATIPOABONO.Value:='Anual';
    'S':CDSPlantillasMUESTRATIPOABONO.Value:='Semestral';
   end;
end;

procedure TFormFacturaPlantillas.CDSPlantillasID_FACTURAPORDEFECTOChange(
  Sender: TField);
var CompNew,CompOld:String;
begin
  inherited;
  ShowMessage('Modifica Comprobante');
  begin
    if Not(VarIsNull(CDSPlantillasID_FACTURAPORDEFECTO.NewValue)) then
      CompNew:=IntToStr(CDSPlantillasID_FACTURAPORDEFECTO.NewValue)
    else
      CompNew:='--';
    if Not(VarIsNull(CDSPlantillasID_FACTURAPORDEFECTO.OldValue)) then
      CompOld:=IntToStr(CDSPlantillasID_FACTURAPORDEFECTO.OldValue)
    else
      CompOld:='--';

    DMMain_FD.LogFileFD(1,2,'Modif.Comprabante Fac.por Plantilla Cliente:'+
                        CDSPlantillasMUESTRANOMBRE.Value+'('+CompOld+'>>'+CompNew+')',
                        'FACPLAN');
  end;
end;

procedure TFormFacturaPlantillas.dbcGruposKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_BACK) or (key=VK_DELETE) then
    begin
      dbcGrupos.KeyValue:=-1;
      Buscar.Execute;
    end;
end;

procedure TFormFacturaPlantillas.dbcLotesClick(Sender: TObject);
begin
  inherited;
  CDSRegFacturas.Close;
  CDSRegFacturas.Params.ParamByName('lote').Value:=dbcLotes.KeyValue;
  CDSRegFacturas.Open;
end;

procedure TFormFacturaPlantillas.dbcTipoAbonoChange(Sender: TObject);
begin
  inherited;
  CDSPlantillas.Filtered:=False;
  case dbcTipoAbono.ItemIndex of
   0: CDSPlantillas.Filter  :='';
   1: CDSPlantillas.Filter  :=' TIPOABONO = ''M'' ';
   2: CDSPlantillas.Filter  :=' TIPOABONO = ''A'' ';
   3: CDSPlantillas.Filter  :=' TIPOABONO = ''S'' ';
  end;
  CDSPlantillas.Filtered:= CDSPlantillas.Filter <> '';
end;

procedure TFormFacturaPlantillas.dbgFacturasDblClick(Sender: TObject);
begin
  inherited;
  if (CDSRegFacturasTIPOCPBTE.AsString='FC') or
     (CDSRegFacturasTIPOCPBTE.AsString='NC') or
     (CDSRegFacturasTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2  := TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew   := CDSRegFacturasID_FAC.AsString;
      FormCpbte_2.TipoCpbte := CDSRegFacturasTIPOCPBTE.Value;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end;

end;



procedure TFormFacturaPlantillas.dbgFacturasTitleClick(Column: TColumn);
var Campo:String;
begin
  inherited;
 // if ACol>=1 then
  begin
    try
    Campo := Column.FieldName;
    with dbgFacturas.DataSource.DataSet as TClientDataSet do
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
end;

procedure TFormFacturaPlantillas.dbgPlantillasColEnter(Sender: TObject);
begin
  inherited;
  if (dbgPlantillas.SelectedIndex<2) or (dbgPlantillas.SelectedIndex>2) Then
    dbgPlantillas.SelectedIndex:=2

end;

procedure TFormFacturaPlantillas.dbgPlantillasDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormClientes_2)) then
    FreeAndNil(FormClientes_2);

  if Not(Assigned(FormClientes_2)) then
    FormClientes_2:=TFormClientes_2.Create(Self);
  FormClientes_2.DatoNew:=CDSPlantillasCODIGO.AsString;
  FormClientes_2.Recuperar.Execute;
  FormClientes_2.Show;
  
end;

procedure TFormFacturaPlantillas.dbgPlantillasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
  //if ACol>=1 then
  begin
    try
    Campo := Field.FieldName;
    with dbgPlantillas.DataSource.DataSet as TClientDataSet do
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
end;

procedure TFormFacturaPlantillas.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormFacturaPlantillas.edNroRipsaExit(Sender: TObject);
begin
  inherited;
  edNroRipsa.Text:=Copy('0000',1,4-Length(edNroRipsa.Text))+ edNroRipsa.Text;
end;

procedure TFormFacturaPlantillas.Facturar2Execute(Sender: TObject);
var Lote,i,x:integer;
anio,mes,dia:word;
MesStr,AnioStr,Periodo:String;
FechaAux:TDateTime;
begin
  inherited;
  if Not(Assigned(FormCpbte_2)) Then
    FormCpbte_2:=TFormCpbte_2.Create(Self);
  FechaAux              := edFechaEmision.Date;

  for i:=0 to dbgPlantillas.SelectedRows.Count-1 do
    begin
      sbEstado.SimpleText:='';
      Application.ProcessMessages;
      if Cancelar then
        begin
          dbgPlantillas.UnselectAll;
          sbEstado.SimpleText:='';
          Exit;
        end;

      edFechaEmision.Date:=FechaAux;
      {$IF CompilerVersion < 24}
        dbgPlantillas.DataSource.DataSet.GotoBookmark(Pointer(dbgPlantillas.SelectedRows.Items[i]));
      {$ELSE}
        dbgPlantillas.DataSource.DataSet.GotoBookmark((dbgPlantillas.SelectedRows.Items[i]));
      {$ENDIF}

      for x := 1 to edMeses.Value do
        begin
          sbEstado.SimpleText:='Procesando mes :'+ intToStr(mes)+'-'+
                                CDSPlantillasMUESTRANOMBRE.AsString;
          Application.ProcessMessages;
          edFechaEmision.Date:=IncMonth(edFechaEmision.Date,1);
          DecodeDate(edFechaEmision.Date,anio,mes,dia);

          if (dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString='M') or
             ((dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString='A') and
             (dbgPlantillas.DataSource.DataSet.FieldByName('Mes_AbonoAnual').Value = mes)) then
          begin
            MesStr:=Copy('00',1,2-Length(IntToStr(Mes)))+IntToStr(Mes);
            if dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString='A' then
              MesStr:='00';
            AnioStr:=IntToStr(anio);
            Periodo:=AnioStr+MesStr;
            QVerificaPeridoFacturado.Close;
            QVerificaPeridoFacturado.ParamByName('codigo').Value :=CDSPlantillasCODIGO.Value;
            QVerificaPeridoFacturado.ParamByName('periodo').Value:=Periodo;
            QVerificaPeridoFacturado.Open;
            if (QVerificaPeridoFacturado.Fields[0].AsString='') then
              begin
                FormCpbte_2.Agregar.Execute;
                DatosVentas.CDSVentaCabABONO_PERIODO.Value:=Periodo;
                if dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString='M' then
                  AgregaCabecera('Abono Mensual Correspondiente:'+IntToStr(Mes)+'/'+IntToStr(anio))
                else
                  AgregaCabecera('Abono Anual Correspondiente:'+IntToStr(anio));
                CDSPlantillaDet.Close;
                CDSPlantillaDet.Params.ParamByName('id').Value:= dbgPlantillas.DataSource.DataSet.FieldByName('id').Value;
                CDSPlantillaDet.Open;
                CDSPlantillaDet.First;
                while Not(CDSPlantillaDet.Eof) Do // Ingreso el detalle
                  begin
                    AgregaDetalle;
                    CDSPlantillaDet.Next;
                  end;
                Lote := StrToInt(AnioStr+MesStr);

                CDSRegFacturas.Append;
                CDSRegFacturasLOTE.Value      := Lote;
                CDSRegFacturasID_FAC.Value    := FormCpbte_2.DSBase.DataSet.FieldByName('id_fc').Value;
                CDSRegFacturasCLIENTE.Value   := FormCpbte_2.DSBase.DataSet.FieldByName('codigo').Value;
                CDSRegFacturasFECHA.AsDateTime:= FormCpbte_2.DSBase.DataSet.FieldByName('fechavta').Value;
                CDSRegFacturasIMPORTE.AsFloat := FormCpbte_2.DSBase.DataSet.FieldByName('total').AsFloat;
                CDSRegFacturasSALDO_CC.AsFloat:= FormCpbte_2.DSBase.DataSet.FieldByName('saldo_actual_cc').Value;
                CDSRegFacturasTIPOCPBTE.Value := FormCpbte_2.DSBase.DataSet.FieldByName('tipocpbte').Value;
                CDSRegFacturasCLACPBTE.Value  := FormCpbte_2.DSBase.DataSet.FieldByName('clasecpbte').Value;
                CDSRegFacturasNROCPBTE.Value  := FormCpbte_2.DSBase.DataSet.FieldByName('nrocpbte').Value;

                FormCpbte_2.Confirma.Execute;
                CDSRegFacturasNROCPBTE.Value  :=FormCpbte_2.DSBase.DataSet.FieldByName('nrocpbte').Value;

                CDSRegFacturas.Post;
                CDSRegFacturas.ApplyUpdates(0);

              end;
          end;
      end;
  end;
  sbEstado.SimpleText:='';
  dbgPlantillas.UnselectAll;
  Application.ProcessMessages;
  FormCpbte_2.Salir.Execute;
end;

procedure TFormFacturaPlantillas.FacturarExecute(Sender: TObject);
var Lote,i,Z,Acum,AuxInt,AuxInt2,Verificador:Int64;
anio,mes,dia:word;
Aux,LoteStr,Cadena,Importe,Motivo:String;
SaldoCC:Extended;
EstadoDescuento,EstadoLista,Facturar:Boolean;
Lista:TListItem;
begin
  inherited;
  Cancelar                   := False;
  EstadoDescuento            := DMMain_FD.AplicaDescuento;
  DMMain_FD.AplicaDescuento  := True;
  FormNovedadesFacturacion.lwNovedades.Clear;
  EstadoLista                := DMMain_FD.GetControlaLista;
//  DMMain_FD.ControlaLista    := False;

  Screen.Cursor:=crHourGlass;
  DecodeDate(edFechaEmision.Date,anio,mes,dia);

  CDSRegFacturas.Close;
  CDSREgFacturas.IndexFieldNames:='';
  CDSRegFacturas.IndexDefs.Clear;
  CDSRegFacturas.Params.ParamByName('lote').Clear;
  CDSRegFacturas.Open;

  CDSDetallesAdicionales.Close;
  CDSDetallesAdicionales.Open;

  QUltimoLote.Close;
  QUltimoLote.Open;
  if QUltimoLote.Fields[0].AsString<>'' then
    Lote:=QUltimoLote.Fields[0].Value+1
  else
    Lote:=1;
  QUltimoLote.Close;

  Aux    := Copy('00',1,2-Length(IntToStr(mes)))+IntToStr(mes);
  LoteStr:= IntToStr(dbcGrupos.KeyValue) + IntToStr(anio)+Aux;
  Lote   := StrToInt(LoteStr);

  if Not(Assigned(FormCpbte_2)) Then
    FormCpbte_2:=TFormCpbte_2.Create(Self);
  FormCpbte_2.DiscriminaIva :='S';    // fuerzo al modo del comprobante si en confi. local puso ver con iva incluido

  Application.ProcessMessages;
  for i:=0 to dbgPlantillas.SelectedRows.Count-1 do
    begin
      //  eto ers viejo no lo borro para ver como era
      //  CDSModeloCab.GotoBookmark(dbgFacturasModelos.SelectedRows);
      // ************************************************************
      Motivo:='';
      {$IF CompilerVersion < 24}
        dbgPlantillas.DataSource.DataSet.GotoBookmark(Pointer(dbgPlantillas.SelectedRows.Items[i]));
      {$ELSE}
        dbgPlantillas.DataSource.DataSet.GotoBookmark((dbgPlantillas.SelectedRows.Items[i]));
      {$ENDIF}


      QVerificaExistencia.Close;
      QVerificaExistencia.ParamByName('cliente').Value := dbgPlantillas.DataSource.DataSet.FieldByName('Codigo').AsString;
      QVerificaExistencia.ParamByName('lote').Value    := Lote;
      QVerificaExistencia.Open;

      Facturar:=QVerificaExistencia.Fields[0].Value=0;

      if Facturar=False then Motivo:='Ya Facturado...';

      if Cancelar=True then Facturar:=False;

      if Facturar and
          ( (dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString[1]='M') or

           ((dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString[1] in ['A']) and (dbgPlantillas.DataSource.DataSet.FieldByName('Mes_AbonoAnual').Value = mes)) or

           ((dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString[1] in ['S']) and (dbgPlantillas.DataSource.DataSet.FieldByName('Mes_AbonoAnual').Value = mes)) or
           ((dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString[1] in ['S']) and (dbgPlantillas.DataSource.DataSet.FieldByName('Mes_Semestral').Value = mes)) )  then
        begin
          FormCpbte_2.DiscriminaIva :='S'; //<<<< re afirmo la condicion del comprobante ... Arriba esta tambien anunciado
          FormCpbte_2.Agregar.Execute;
          if dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString='M' then
            AgregaCabecera('Abono Mensual Correspondiente:'+IntToStr(Mes)+'/'+IntToStr(anio))
          else
            if dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString='A' then
               AgregaCabecera('Abono Anual Correspondiente:'+IntToStr(anio))
            else
              if dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString='S' then
                 AgregaCabecera('Abono Semestral Correspondiente:'+IntToStr(anio));


          Application.ProcessMessages;

          CDSPlantillaDet.Close;
          CDSPlantillaDet.Params.ParamByName('id').Value:= dbgPlantillas.DataSource.DataSet.FieldByName('id_plantilla').Value;
          CDSPlantillaDet.Open;
          CDSPlantillaDet.First;
          while Not(CDSPlantillaDet.Eof) Do //<<<Ingreso el detalle
            begin
              AgregaDetalle;
              CDSPlantillaDet.Next;
            end;

          if (CDSPlantillasCON_HOSTING.Value='S') and (CDSPlantillasMES_ADICIONAL.Value=mes) and (CDSDetallesAdicionales.RecordCount>0) then
            begin
              CDSDetallesAdicionales.First;
              while Not(CDSDetallesAdicionales.Eof) Do // Ingreso el detalle
                begin
                  AgregaDetalleAdicionales;
                  CDSDetallesAdicionales.Next;
                end;
            end;

          QSaldoCtaCte.Close;
          QSaldoCtaCte.ParamByName('codigo').Value:=FormCpbte_2.DSBase.DataSet.FieldByName('codigo').Value;
          case rgTipoCC.ItemIndex of
            0:QSaldoCtaCte.ParamByName('tipovta').Value:='*';
            1:QSaldoCtaCte.ParamByName('tipovta').Value:='S';
            2:QSaldoCtaCte.ParamByName('tipovta').Value:='M';
            3:begin
                QSAldoGeneral.Close;
                QSAldoGeneral.ParamByName('codigo').Value:=FormCpbte_2.DSBase.DataSet.FieldByName('codigo').Value;
                QSAldoGeneral.Open;
              end;
           end;
          QSaldoCtaCte.Open;

          if QSaldoCtaCte.Fields[0].AsString<>'' then
            SaldoCC:=QSaldoCtaCte.Fields[0].AsFloat
          else
            SaldoCC:=0;
          QSaldoCtaCte.Close;

          if rgTipoCC.ItemIndex=3 then SaldoCC:=QSaldoGeneral.Fields[0].AsFloat;
          QSAldoGeneral.Close;

          SaldoCC:= SaldoCC + FormCpbte_2.DSBase.DataSet.FieldByName('total').AsFloat;

          CDSRegFacturas.Append;
          CDSRegFacturasLOTE.Value        := Lote;
          CDSRegFacturasID_FAC.Value      := FormCpbte_2.DSBase.DataSet.FieldByName('id_fc').Value;
          CDSRegFacturasCLIENTE.Value     := FormCpbte_2.DSBase.DataSet.FieldByName('codigo').Value;
          CDSRegFacturasFECHA.AsDateTime  := FormCpbte_2.DSBase.DataSet.FieldByName('fechavta').Value;
          CDSRegFacturasIMPORTE.AsFloat   := FormCpbte_2.DSBase.DataSet.FieldByName('total').AsFloat;
          CDSRegFacturasZONA.Value        := FormCpbte_2.DSBase.DataSet.FieldByName('ZONA').Value;
          CDSRegFacturasMUESTRAZONA.Value := FormCpbte_2.DSBase.DataSet.FieldByName('MuestraZona').Value;
          // modificado el 29/05/2014 en Premium para acumular el saldo
          CDSRegFacturasSALDO_CC.AsFloat:= SaldoCC ;
          // esto se cambio para traer solo el saldo de servicions--- FormCpbte_2.DSBase.DataSet.FieldByName('saldo_actual_cc').Value;
          CDSRegFacturasTIPOCPBTE.Value := FormCpbte_2.DSBase.DataSet.FieldByName('tipocpbte').Value;
          CDSRegFacturasCLACPBTE.Value  := FormCpbte_2.DSBase.DataSet.FieldByName('clasecpbte').Value;
          CDSRegFacturasNROCPBTE.Value  := FormCpbte_2.DSBase.DataSet.FieldByName('nrocpbte').Value;
          // inicio el codigo barra
          Cadena:='';
          Importe:=FormatFloat('000000.00',CDSRegFacturasIMPORTE.AsFloat);
          while not(Pos('.',Importe)=0) do
            delete(importe,Pos('.',Importe),1);
          Cadena:=Copy('0000',1,4-Length(Trim(edNroRipsa.Text)))+Trim(edNroRipsa.Text);
          Cadena:=Cadena+CDSRegFacturasCLIENTE.Value;
          Cadena:=Cadena+copy(CDSRegFacturasNROCPBTE.Value,2,12);
          Cadena:=Cadena+Importe;
          Acum:=0;
          for Z := 1 to Length(Cadena)  do
            begin
              if Z=1 then
                begin
                  AuxInt:= StrToInt(Cadena[Z]) * 1;
                  Acum  := Acum+AuxInt;
                end
              else
                if (Z=2) or (Z=6) or (Z=10)or (Z=14)or (Z=18)or (Z=22)or (Z=26) or (Z=30) then
                  begin
                    AuxInt:= StrToInt(Cadena[Z]) * 3;
                    Acum  := Acum+AuxInt;
                  end
                else
                  if (Z=3) or (Z=7) or (Z=11)or (Z=15)or (Z=19)or (Z=23)or (Z=27)  then
                    begin
                      AuxInt:= StrToInt(Cadena[Z]) * 5;
                      Acum  := Acum+AuxInt;
                    end
                  else
                    if (Z=4) or (Z=8) or (Z=12)or (Z=16)or (Z=20)or (Z=24)or (Z=28) then
                      begin
                        AuxInt:= StrToInt(Cadena[Z]) * 7;
                        Acum  := Acum+AuxInt;
                      end
                    else
                      if (Z=5) or (Z=9) or (Z=13)or (Z=17)or (Z=21)or (Z=25)or (Z=29) then
                        begin
                          AuxInt:= StrToInt(Cadena[Z]) * 9;
                          Acum  := Acum+AuxInt;
                        end;
            end;
          AuxInt  := Acum div 2;
          AuxInt2 := AuxInt div 10;

          Verificador:= AuxInt-(AuxInt2*10);

          CDSRegFacturasCODIGOBARRA.Value:=Cadena+IntToStr(Verificador);

          Cadena:='';
          if (CDSRegFacturasSALDO_CC.AsFloat>0) then
            Importe:=FormatFloat('000000.00',CDSRegFacturasSALDO_CC.AsFloat)
          else
            Importe:=FormatFloat('000000.00',CDSRegFacturasIMPORTE.AsFloat);
          while not(Pos('.',Importe)=0) do
            delete(importe,Pos('.',Importe),1);
          Cadena:=Copy('0000',1,4-Length(Trim(edNroRipsa.Text)))+Trim(edNroRipsa.Text);
          Cadena:=Cadena+CDSRegFacturasCLIENTE.Value;
          Cadena:=Cadena+'000000000000';
          Cadena:=Cadena+Importe;
          Acum:=0;
          for Z := 1 to Length(Cadena)  do
            begin
              if Z=1 then
                begin
                  AuxInt:=StrToInt(Cadena[Z]) * 1;
                  Acum:=Acum+AuxInt;
                end
              else
                if (Z=2) or (Z=6) or (Z=10)or (Z=14)or (Z=18)or (Z=22)or (Z=26) or (Z=30) then
                  begin
                    AuxInt:= StrToInt(Cadena[Z]) * 3;
                    Acum  := Acum+AuxInt;
                  end
                else
                  if (Z=3) or (Z=7) or (Z=11)or (Z=15)or (Z=19)or (Z=23)or (Z=27)  then
                    begin
                      AuxInt:= StrToInt(Cadena[Z]) * 5;
                      Acum  := Acum+AuxInt;
                    end
                  else
                    if (Z=4) or (Z=8) or (Z=12)or (Z=16)or (Z=20)or (Z=24)or (Z=28) then
                      begin
                        AuxInt:= StrToInt(Cadena[Z]) * 7;
                        Acum  := Acum+AuxInt;
                      end
                    else
                      if (Z=5) or (Z=9) or (Z=13)or (Z=17)or (Z=21)or (Z=25)or (Z=29) then
                        begin
                          AuxInt:= StrToInt(Cadena[Z]) * 9;
                          Acum  := Acum+AuxInt;
                        end;
            end;
          AuxInt  := Acum div 2;
          AuxInt2 := AuxInt div 10;

          Verificador:= AuxInt-(AuxInt2*10);

          CDSRegFacturasCODIGOBARRA_2.Value:=Cadena+IntToStr(Verificador);

          FormCpbte_2.Confirma.Execute;

          if FormCpbte_2.Generado then
            begin
              if CDSRegFacturas.State=dsBrowse then
                CDSRegFacturas.Edit;
              CDSRegFacturasNROCPBTE.Value  :=FormCpbte_2.DSBase.DataSet.FieldByName('nrocpbte').Value;
              CDSRegFacturas.Post;
              CDSRegFacturas.ApplyUpdates(0);
            end
          else
            begin
              Lista:=FormNovedadesFacturacion.lwNovedades.Items.Add;
              Lista.Caption:=CDSPlantillasMUESTRANOMBRE.AsString;
              Lista.SubItems.Add(CDSPlantillasMUESTRAPLANTILLA.AsString);
              Lista.SubItems.Add(CDSPlantillasMUESTRACOMPROB.AsString+' - '+Motivo);

              CDSRegFacturas.Cancel;
              CDSRegFacturas.EmptyDataSet;
            end;

        end
      else
        begin
          Lista:=FormNovedadesFacturacion.lwNovedades.Items.Add;
          Lista.Caption:=CDSPlantillasMUESTRANOMBRE.AsString;
          Lista.SubItems.Add(CDSPlantillasMUESTRAPLANTILLA.AsString);
          if dbgPlantillas.DataSource.DataSet.FieldByName('TipoAbono').AsString[1]<>'M' Then
            Motivo:=Motivo+' Es anual o Semestral';

          Lista.SubItems.Add(CDSPlantillasMUESTRACOMPROB.AsString+' - Fallo de Proceso'+Motivo);
        end;
    end;

  FormCpbte_2.Salir.Execute;
  CDSLotes.Close;
  CDSLotes.Open;
  CDSRegFacturas.Close;
  CDSRegFacturas.Params.ParamByName('lote').Value:=Lote;
  CDSRegFacturas.Open;
  Screen.Cursor:=crDefault;

 // DMMain_FD.ControlaLista:=EstadoLista;

  Application.ProcessMessages;
  if FormNovedadesFacturacion.lwNovedades.Items.Count>0 then
     FormNovedadesFacturacion.Visible:=True;
 // DMMain_FD.AplicaDescuento:=EstadoDescuento;

end;

procedure TFormFacturaPlantillas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSZonas.Close;
  inherited;
 //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'FcPlantilla.ini');
  ArchivoIni.WriteString('ripsa', 'numero', edNroRipsa.Text);
  ArchivoIni.WriteInteger('CtaCte', 'saldo', rgTipoCC.ItemIndex);

  ArchivoIni.Free;
  //*************************************************************

  CDSGrupoPlantillas.Close;
  CDSBuscaSucursal.Close;
  Action:=caFree;
end;

procedure TFormFacturaPlantillas.FormCreate(Sender: TObject);
begin
  inherited;
  CDSComprob.Close;
  CDSComprob.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSComprob.Open;
  CDSGrupoPlantillas.Close;
  CDSGrupoPlantillas.Open;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  CDSLotes.Close;
  CDSLotes.Open;
  CDSPersonal.Close;
  CDSPersonal.Open;
  CDSCobrador.Close;
  CDSCobrador.Open;
  CDSZonas.Open;

 //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'FcPlantilla.ini');
  edNroRipsa.Text   := ArchivoIni.ReadString('ripsa', 'numero', '0000');
  rgTipoCC.ItemIndex:= ArchivoIni.ReadInteger('CtaCte', 'saldo', 1);
  ArchivoIni.Free;
  //*************************************************************
  dbcSucursal.KeyValue:=SucursalPorDefecto;

  if Not(Assigned(FormNovedadesFacturacion)) then
    FormNovedadesFacturacion:=TFormNovedadesFacturacion.Create(Self);

  if Not(Assigned(FormPlantillasNoFacturables)) then
    FormPlantillasNoFacturables:=TFormPlantillasNoFacturables.Create(Self);

  FormNovedadesFacturacion.lwNovedades.Clear;

  FormPlantillasNoFacturables.Visible:=False;

  AutoSize:=False;
 // DBSectionListBox1.i
end;

procedure TFormFacturaPlantillas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFacturaPlantillas:=nil;
end;

procedure TFormFacturaPlantillas.FormResize(Sender: TObject);
begin
  inherited;
  if FormFacturaPlantillas<>nil then
    if FormFacturaPlantillas.Width<>1128 then
      FormFacturaPlantillas.Width:=1128;
end;

procedure TFormFacturaPlantillas.FormShow(Sender: TObject);
begin
  inherited;
  edFechaEmision.Date:=Date;
end;

procedure TFormFacturaPlantillas.ImprimirExecute(Sender: TObject);
begin
  inherited;
  CDSRegFacturas.IndexFieldNames:='MUESTRANOMBRE';
  frReporte.PrintOptions.Printer:=PrNomListados;
  frReporte.SelectPrinter;
  frReporte.LoadFromFile(DMMain_FD.PathReportesLst+ '\DetalleFac_x_Plantilla.fr3');
  frReporte.ShowReport;
end;

procedure TFormFacturaPlantillas.Label12Click(Sender: TObject);
begin
  inherited;
  FormPlantillasNoFacturables.Visible:=Not(FormPlantillasNoFacturables.Visible);
end;

procedure TFormFacturaPlantillas.Label1Click(Sender: TObject);
begin
  inherited;
  if CDSGrupoPlantillas.IndexFieldNames='DETALLE' then
    CDSGrupoPlantillas.IndexFieldNames:='ID'
  else
    CDSGrupoPlantillas.IndexFieldNames:='DETALLE';

end;

procedure TFormFacturaPlantillas.ReCalculaSaldoExecute(Sender: TObject);
begin
  inherited;
  QActualizaSaldo.Close;
  case rgTipoCC.ItemIndex of
    0:QActualizaSaldo.ParamByName('tipovta').Value:='*';
    1:QActualizaSaldo.ParamByName('tipovta').Value:='S';
    2:QActualizaSaldo.ParamByName('tipovta').Value:='M';
  end;
  QActualizaSaldo.ParamByName('fecha').AsDate:= edFechaEmision.Date;
  QActualizaSaldo.ParamByName('id').Value    := CDSRegFacturasID_FAC.Value;
  QActualizaSaldo.ExecSQL;
  QActualizaSaldo.Close;

  CDSRegFacturas.Close;
  CDSRegFacturas.Params.ParamByName('lote').Value:=dbcLotes.KeyValue;
  CDSRegFacturas.Open;

end;

procedure TFormFacturaPlantillas.cbCobradorClick(Sender: TObject);
begin
  inherited;
  CDSRegFacturas.Filtered:=False;
  if (cbCobrador.KeyValue<>'******') or (cbZonas.KeyValue>-1) then
    BEGIN
      if (cbCobrador.KeyValue<>'******') and (cbZonas.KeyValue>-1)  then
         CDSRegFacturas.Filter:='COBRADOR = '+''''+cbCobrador.KeyValue+''''+' and zona= '+cbZonas.KeyValue
      else
        if (cbCobrador.KeyValue<>'******') and (cbZonas.KeyValue<0)  then
          CDSRegFacturas.Filter:='COBRADOR = '+''''+cbCobrador.KeyValue+''''
      else
        if (cbCobrador.KeyValue='******') and (cbZonas.KeyValue>-1)  then
          CDSRegFacturas.Filter:=' zona= '+cbZonas.KeyValue
      else
        if (cbCobrador.KeyValue='******') and (cbZonas.KeyValue<0)  then
          CDSRegFacturas.Filter:='';




      CDSRegFacturas.Filtered:=True;
    END;

end;

procedure TFormFacturaPlantillas.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

procedure TFormFacturaPlantillas.spBuscaLoteClick(Sender: TObject);
begin
  inherited;
  CDSRegFacturas.Close;
  CDSRegFacturas.Params.ParamByName('lote').Value:=dbcLotes.KeyValue;
  CDSRegFacturas.Open;
end;

procedure TFormFacturaPlantillas.spSelectClick(Sender: TObject);
begin
  inherited;
  dbgPlantillas.SelectAll;
end;

procedure TFormFacturaPlantillas.spunselectClick(Sender: TObject);
begin
  inherited;
  dbgPlantillas.UnselectAll;
end;

procedure TFormFacturaPlantillas.VerCtaCteExecute(Sender: TObject);
var Enter:Char;
begin
  inherited;
  Enter:=#13;
  if Not(Assigned(FormCtaCteVta)) then
    FormCtaCteVta:=TFormCtaCteVta.Create(self);
  FormCtaCteVta.ceCliente.text:=CDSRegFacturasCLIENTE.Value;
  FormCtaCteVta.ceCliente.onKeyPress(FormCtaCteVta.ceCliente,Enter);
  
end;

end.
