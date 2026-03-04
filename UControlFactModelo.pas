unit UControlFactModelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBClient,
  Provider, DB, SqlExpr, DBXCommon, JvComponentBase, JvFormPlacement,
  ImgList, ActnList, ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, DBCtrls,Math,
  IBGenerator, frxClass, frxDBSet, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvOfficeButtons, System.ImageList,
  frCoreClasses;

type
  TFormControlFcModelo = class(TFormABMBase)
    QModeloCab: TFDQuery;
    QModeloDet: TFDQuery;
    DSPModeloDet: TDataSetProvider;
    DSPModeloCab: TDataSetProvider;
    CDSModeloCab: TClientDataSet;
    CDSModeloDet: TClientDataSet;
    dbgCabecera: TJvDBGrid;
    dbgDetalle: TJvDBGrid;
    DSModeloCab: TDataSource;
    Label1: TLabel;
    DSModeloDet: TDataSource;
    QModeloCabID_FC: TIntegerField;
    QModeloCabTIPOCPBTE: TStringField;
    QModeloCabCLASECPBTE: TStringField;
    QModeloCabLETRA: TStringField;
    QModeloCabCODIGO: TStringField;
    QModeloCabNOMBRE: TStringField;
    QModeloCabRAZONSOCIAL: TStringField;
    QModeloCabDIRECCION: TStringField;
    QModeloCabCPOSTAL: TStringField;
    QModeloCabLOCALIDAD: TStringField;
    QModeloCabTIPOIVA: TIntegerField;
    QModeloCabCUIT: TStringField;
    QModeloCabCONDICIONVTA: TIntegerField;
    QModeloCabNETOGRAV1: TFloatField;
    QModeloCabNETOGRAV2: TFloatField;
    QModeloCabDSTO: TFloatField;
    QModeloCabDSTOIMPORTE: TFloatField;
    QModeloCabNETOEXEN1: TFloatField;
    QModeloCabNETOEXEN2: TFloatField;
    QModeloCabTOTAL: TFloatField;
    QModeloCabSUCURSAL: TIntegerField;
    QModeloCabZONA: TIntegerField;
    QModeloCabLDR: TIntegerField;
    QModeloCabDEPOSITO: TIntegerField;
    QModeloCabCALCULA_SOBRETASA: TStringField;
    QModeloCabDESGLOZAIVA: TStringField;
    QModeloCabINGRESA_A_CTACTE: TStringField;
    QModeloCabINGRESA_LIBRO_IVA: TStringField;
    QModeloCabVENDEDOR: TStringField;
    QModeloCabGRUPO: TIntegerField;
    QModeloCabMUESTRACONDVENTA: TStringField;
    QModeloCabMUESTRADEPOSITO: TStringField;
    QModeloCabMUESTRASUCURSAL: TStringField;
    QModeloCabMUESTRALDR: TStringField;
    QModeloCabMUESTRAIVA: TStringField;
    QModeloCabMUESTRACOMPROBANTE: TStringField;
    QModeloCabID_TIPOCOMPROBANTE: TIntegerField;
    QModeloCabMUESTRAVENDEDOR: TStringField;
    CDSModeloCabID_FC: TIntegerField;
    CDSModeloCabTIPOCPBTE: TStringField;
    CDSModeloCabCLASECPBTE: TStringField;
    CDSModeloCabLETRA: TStringField;
    CDSModeloCabCODIGO: TStringField;
    CDSModeloCabNOMBRE: TStringField;
    CDSModeloCabRAZONSOCIAL: TStringField;
    CDSModeloCabDIRECCION: TStringField;
    CDSModeloCabCPOSTAL: TStringField;
    CDSModeloCabLOCALIDAD: TStringField;
    CDSModeloCabTIPOIVA: TIntegerField;
    CDSModeloCabCUIT: TStringField;
    CDSModeloCabCONDICIONVTA: TIntegerField;
    CDSModeloCabNETOGRAV1: TFloatField;
    CDSModeloCabNETOGRAV2: TFloatField;
    CDSModeloCabDSTO: TFloatField;
    CDSModeloCabDSTOIMPORTE: TFloatField;
    CDSModeloCabNETOEXEN1: TFloatField;
    CDSModeloCabNETOEXEN2: TFloatField;
    CDSModeloCabTOTAL: TFloatField;
    CDSModeloCabSUCURSAL: TIntegerField;
    CDSModeloCabZONA: TIntegerField;
    CDSModeloCabLDR: TIntegerField;
    CDSModeloCabDEPOSITO: TIntegerField;
    CDSModeloCabCALCULA_SOBRETASA: TStringField;
    CDSModeloCabDESGLOZAIVA: TStringField;
    CDSModeloCabINGRESA_A_CTACTE: TStringField;
    CDSModeloCabINGRESA_LIBRO_IVA: TStringField;
    CDSModeloCabVENDEDOR: TStringField;
    CDSModeloCabGRUPO: TIntegerField;
    CDSModeloCabMUESTRACONDVENTA: TStringField;
    CDSModeloCabMUESTRADEPOSITO: TStringField;
    CDSModeloCabMUESTRASUCURSAL: TStringField;
    CDSModeloCabMUESTRALDR: TStringField;
    CDSModeloCabMUESTRAIVA: TStringField;
    CDSModeloCabMUESTRACOMPROBANTE: TStringField;
    CDSModeloCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSModeloCabMUESTRAVENDEDOR: TStringField;
    QModeloDetID: TIntegerField;
    QModeloDetID_CABMODELO: TIntegerField;
    QModeloDetTIPOCPBTE: TStringField;
    QModeloDetCLASECPBTE: TStringField;
    QModeloDetRENGLON: TFloatField;
    QModeloDetCODIGOARTICULO: TStringField;
    QModeloDetDETALLE: TStringField;
    QModeloDetUNIDAD: TStringField;
    QModeloDetCANTIDAD: TFloatField;
    QModeloDetDESGLOZAIVA: TStringField;
    QModeloDetMODO_GRAVAMEN: TStringField;
    QModeloDetIVA_TASA: TFloatField;
    QModeloDetTIPOIVA_TASA: TIntegerField;
    QModeloDetIVA_SOBRETASA: TFloatField;
    QModeloDetTIPOIVA_SOBRETASA: TIntegerField;
    QModeloDetDESCUENTO: TFloatField;
    QModeloDetTOTAL: TFloatField;
    QModeloDetDEPOSITO: TIntegerField;
    QModeloDetMARGEN: TFloatField;
    QModeloDetAFECTA_STOCK: TStringField;
    QModeloDetCALCULA_SOBRETASA: TStringField;
    QModeloDetGRAVADO_IB: TStringField;
    QModeloDetID_MONEDA: TIntegerField;
    QModeloDetCOTIZACION: TFloatField;
    QModeloDetTOTAL_GRAVADO: TFloatField;
    QModeloDetTOTAL_EXENTO: TFloatField;
    CDSModeloDetID: TIntegerField;
    CDSModeloDetID_CABMODELO: TIntegerField;
    CDSModeloDetTIPOCPBTE: TStringField;
    CDSModeloDetCLASECPBTE: TStringField;
    CDSModeloDetRENGLON: TFloatField;
    CDSModeloDetCODIGOARTICULO: TStringField;
    CDSModeloDetDETALLE: TStringField;
    CDSModeloDetUNIDAD: TStringField;
    CDSModeloDetCANTIDAD: TFloatField;
    CDSModeloDetDESGLOZAIVA: TStringField;
    CDSModeloDetMODO_GRAVAMEN: TStringField;
    CDSModeloDetIVA_TASA: TFloatField;
    CDSModeloDetTIPOIVA_TASA: TIntegerField;
    CDSModeloDetIVA_SOBRETASA: TFloatField;
    CDSModeloDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSModeloDetDESCUENTO: TFloatField;
    CDSModeloDetTOTAL: TFloatField;
    CDSModeloDetDEPOSITO: TIntegerField;
    CDSModeloDetMARGEN: TFloatField;
    CDSModeloDetAFECTA_STOCK: TStringField;
    CDSModeloDetCALCULA_SOBRETASA: TStringField;
    CDSModeloDetGRAVADO_IB: TStringField;
    CDSModeloDetID_MONEDA: TIntegerField;
    CDSModeloDetCOTIZACION: TFloatField;
    CDSModeloDetTOTAL_GRAVADO: TFloatField;
    CDSModeloDetTOTAL_EXENTO: TFloatField;
    BuscarArticulo: TAction;
    Label2: TLabel;
    dbtTotal: TDBText;
    DSPStock: TDataSetProvider;
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
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFloatField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFloatField;
    CDSStockCOSTO_EXENTO_P: TFloatField;
    CDSStockCOSTO_TOTAL_P: TFloatField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRATASAPORCENTAJE: TFloatField;
    CDSStockMUESTRASOBRETASA: TStringField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    CDSStockMUESTRATASAIB: TFloatField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    CDSStockMUESTRATABLAPRECIO1: TFloatField;
    CDSStockMUESTRATABLAPRECIO2: TFloatField;
    DSPIva: TDataSetProvider;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFloatField;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    QListaPrecioPorDefecto: TFDQuery;
    QListaPrecioPorDefectoID: TIntegerField;
    QListaPrecioPorDefectoF_PAGO: TIntegerField;
    QImpuestos: TFDQuery;
    QImpuestosID_IMPUESTO: TIntegerField;
    QImpuestosID_FCMODELOCAB: TIntegerField;
    QImpuestosCODIGO_GRAVAMEN: TIntegerField;
    QImpuestosDETALLE: TStringField;
    QImpuestosNETO: TFloatField;
    QImpuestosTASA: TFloatField;
    QImpuestosIMPORTE: TFloatField;
    DSPImpuestos: TDataSetProvider;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_FCMODELOCAB: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    IBGFc_Det: TIBGenerator;
    JvDBStatusLabel1: TJvDBStatusLabel;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frReporte: TfrxReport;
    frDBDFc: TfrxDBDataset;
    QModeloDetUNITARIO_TOTAL: TFloatField;
    QModeloDetUNITARIO_GRAVADO: TFloatField;
    QModeloDetUNITARIO_EXENTO: TFloatField;
    QModeloDetCOSTO_GRAVADO: TFloatField;
    QModeloDetCOSTO_EXENTO: TFloatField;
    QModeloDetCOSTO_TOTAL: TFloatField;
    CDSModeloDetUNITARIO_TOTAL: TFloatField;
    CDSModeloDetUNITARIO_GRAVADO: TFloatField;
    CDSModeloDetUNITARIO_EXENTO: TFloatField;
    CDSModeloDetCOSTO_GRAVADO: TFloatField;
    CDSModeloDetCOSTO_EXENTO: TFloatField;
    CDSModeloDetCOSTO_TOTAL: TFloatField;
    QModeloDetIVA_UNITARIO: TFloatField;
    QModeloDetIVA_TOTAL: TFloatField;
    CDSModeloDetIVA_UNITARIO: TFloatField;
    CDSModeloDetIVA_TOTAL: TFloatField;
    btCoeficiente: TBitBtn;
    edCoeficiente: TJvCalcEdit;
    pnCabecera: TPanel;
    pnPie: TPanel;
    IBGFc_Impuestos: TIBGenerator;
    chDiscriminaIva: TAdvOfficeCheckBox;
    Splitter1: TSplitter;
    Label3: TLabel;
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSModeloDetCODIGOARTICULOSetText(Sender: TField;
      const Text: string);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure CDSModeloCabAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSModeloDetAfterPost(DataSet: TDataSet);
    procedure CDSModeloDetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSModeloDetUNITARIO_TOTALSetText(Sender: TField;
      const Text: string);
    procedure dbgDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure CDSModeloDetUNITARIO_TOTALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSModeloDetTOTALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSModeloDetNewRecord(DataSet: TDataSet);
    procedure dbgCabeceraDblClick(Sender: TObject);
    procedure dbgCabeceraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btCoeficienteClick(Sender: TObject);
    procedure CDSModeloCabBeforeDelete(DataSet: TDataSet);
    procedure CDSImpuestosNewRecord(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    Var_TasaIva:Real;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;
    PROCEDURE CalcularTotales;
    PROCEDURE SumarDetalle;
    { Public declarations }
  end;

var
  FormControlFcModelo: TFormControlFcModelo;

implementation

uses UBuscadorArticulos, ComposicionPrecio, UFacModelo,UDMain_FD;

{$R *.dfm}

PROCEDURE TFormControlFcModelo.CalcularTotales;
VAR
  Acumulador,Descuento,TotalOld,TotalNew,
   TotalGral,NetoTotal,Neto: Extended;
BEGIN
  CDSModeloCabTotal.Asfloat:= 0;
  Acumulador            := 0;
  Descuento             := CDSModeloCabDsto.AsFloat * 0.01;
  CDSModeloCabNETOGRAV2.AsFloat  := RoundTo(CDSModeloCabNetoGrav1.AsFloat * (1 - Descuento), -2);
  CDSModeloCabNETOEXEN2.AsFloat  := RoundTo(CDSModeloCabNetoExen1.AsFloat * (1 - Descuento), -2);

  CDSModeloCabDSTOIMPORTE.AsFloat := (CDSModeloCabNetoGrav1.AsFloat + CDSModeloCabNETOEXEN1.AsFloat) -
                                     (CDSModeloCabNetoGrav2.AsFloat + CDSModeloCabNETOEXEN2.AsFloat);

  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      TotalOld := CDSImpuestosNETO.AsFloat+CDSImpuestosIMPORTE.AsFloat;
      TotalNew := RoundTo(TotalOld * (1 - Descuento),-2);
      CDSImpuestos.Edit;
      CDSImpuestosNETO.AsFloat    := 0;
      CDSImpuestosNETO.AsFloat    := TotalOld - CDSImpuestosIMPORTE.AsFloat;
      if Trunc(CDSModeloCabDSTO.AsFloat*100)<>0 then
        begin
          CDSImpuestosNETO.AsFloat    := TotalNew / (1+CDSImpuestosTASA.AsFloat*0.01);
          CDSImpuestosIMPORTE.AsFloat := TotalNew - CDSImpuestosNETO.AsFloat ;
        end;
      Acumulador                  := Acumulador + CDSImpuestosIMPORTE.AsFloat;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.EnableControls;

  CDSModeloCabTotal.AsFloat := RoundTo(CDSModeloCabNetoGrav2.AsFloat +
                                    CDSModeloCabNetoExen2.AsFloat +
                                    Acumulador,-2);
  TotalGral := CDSModeloCabTotal.AsFloat;
  NetoTotal := CDSModeloCabNetoGrav2.AsFloat + CDSModeloCabNETOEXEN2.AsFloat;

  TRY
    if CDSModeloCabNetoGrav2.AsFloat>0 Then
      Var_TasaIVA:= RoundTo(((TotalGral/NetoTotal)-1) * 100,-2)
    else
      Var_TasaIva:=0;
  EXCEPT
    ON EZeroDivide DO
      Var_TasaIva:=0;
  END;
 // CDSVentaCabNetoGrav2.AsFloat  := CDSVentaCabNetoGrav1.AsFloat * ( 1 - CDSVentaCabDsto.AsFloat * 0.01);
 // CDSVentaCabNetoGrav1.AsFloat  := CDSVentaCabNetoGrav1.AsFloat;
  // Para que se refresca el OnGetTex de Descuento.... lo reasgino de nuevo
  CDSModeloCabDSTOIMPORTE.AsFloat := (CDSModeloCabNetoGrav1.AsFloat + CDSModeloCabNETOEXEN1.AsFloat) -
                                  (CDSModeloCabNetoGrav2.AsFloat + CDSModeloCabNETOEXEN2.AsFloat);
END;


PROCEDURE TFormControlFcModelo.SumarDetalle;
VAR
  Dscto: Real;
BEGIN
  CDSModeloDet.DisableControls;
  CDSModeloDet.First;
  IF CDSModeloCab.State = dsBrowse THEN
    CDSModeloCab.Edit;
  CDSModeloCabNetoGrav1.ASFloat:=0;
  CDSModeloCabNetoExen1.ASFloat:=0;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      CDSImpuestosNeto.AsFloat:=0;
      CDSImpuestosIMPORTE.AsFloat:=0;
      CDSImpuestos.Next;
    END;
  WHILE (NOT CDSModeloDet.Eof) DO
    BEGIN
      Dscto := 1 - CDSModeloDetDescuento.AsFloat / 100;
      IF (CDSModeloDetTIPOIVA_TASA.AsFloat <> 0) AND (NOT (VarIsNull(CDSModeloDetTIPOIVA_TASA.Value))) AND (CDSModeloDetMODO_GRAVAMEN.Value <> 'E') THEN
        BEGIN
         IF CDSImpuestos.Locate('Codigo_Gravamen',CDSModeloDetTipoIva_Tasa.Value, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    := CDSImpuestosNeto.AsFloat +CDSModeloDetTOTAL_GRAVADO.AsFloat ;
              CDSImpuestosTasa.AsFloat    := CDSModeloDetIVA_Tasa.AsFloat;
              CDSImpuestosImporte.AsFloat := CDSImpuestosIMPORTE.AsFloat + CDSModeloDetIVA_TOTAL.AsFloat;
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCODIGO_GRAVAMEN.Value     := CDSModeloDetTIPOIVA_TASA.AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSModeloDetTIPOIVA_TASA.AsInteger;
              CDSIva.Open;
              CDSImpuestosDETALLE.Value     := CDSIvaDESCRIPCION.Value;
              CDSImpuestosID_FCMODELOCAB.Value := CDSModeloDetID_CABMODELO.Value;
              CDSImpuestosNETO.AsFloat      := CDSImpuestosNeto.AsFloat + CDSModeloDetTOTAL_GRAVADO.AsFloat ;
              CDSImpuestosTASA.AsFloat      := CDSModeloDetIVA_TASA.AsFLoat;
              CDSImpuestosIMPORTE.AsFloat   := CDSImpuestosIMPORTE.AsFloat + CDSModeloDetIVA_TOTAL.AsFloat;
              CDSImpuestos.Post;
            END;

        {  IF (CDSModeloDetCALCULA_SOBRETASA.Value = 'S') and (CDSModeloDetDesglozaIVA.Value ='S') THEN
            BEGIN
              IF CDSImpuestos.Locate('Codigo_Gravamen', CDSModeloDetTIPOIVA_SOBRETASA.Value, []) THEN
                BEGIN
                  CDSImpuestos.Edit;
                  CDSImpuestosNeto.AsFloat   := CDSModeloDetUnitario_Gravado.AsFloat * Dscto * CDSModeloDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
                  CDSImpuestosTasa.AsFloat   := CDSModeloDetIVA_Tasa.AsFloat;
                  CDSImpuestosImporte.AsFloat:= CDSImpuestosNeto.AsFloat * ( CDSImpuestosTasa.AsFloat /100);
                  CDSImpuestos.Post;
                END
              ELSE
                BEGIN
                  CDSImpuestos.Insert;
                  CDSImpuestosCodigo_Gravamen.Value     := CDSModeloDetTipoIva_SobreTasa.AsInteger;
                  CDSIva.Close;
                  CDSIva.Params.ParamByName('id').Value := CDSModeloDetTipoIva_SobreTasa.AsInteger;
                  CDSIva.Open;
                  CDSImpuestosDetalle.Value            := CDSIvaDescripcion.Value;
                  CDSImpuestosID_FCMODELOCAB.Value     := CDSModeloDetID_CABMODELO.Value;
                  CDSImpuestosNeto.AsFloat    := CDSModeloDetUNITARIO_GRAVADO.AsFloat * Dscto * CDSModeloDetCANTIDAD.AsFloat + CDSImpuestosNETO.AsFloat;
                  CDSImpuestosTasa.AsFloat    := CDSModeloDetIVA_TASA.AsFloat;
                  CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * ( CDSImpuestosTASA.AsFloat / 100);
                  CDSImpuestos.Post;
                END;
            END;
         }
        END;
      CDSModeloCabNETOGRAV1.AsFloat := CDSModeloDetTOTAL_GRAVADO.AsFloat + CDSModeloCabNETOGRAV1.AsFloat;
      CDSModeloCabNETOEXEN1.AsFloat := CDSModeloDetTOTAL_EXENTO.AsFloat  + CDSModeloCabNetoExen1.AsFloat;

      CDSModeloDet.Next;
    END;
  CDSModeloDet.EnableControls;
  { aca voy a los calculos de los totoales de la factura }
END;


FUNCTION TFormControlFcModelo.ASignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
  Recargo: Variant;
  ListaPrecio:integer;
BEGIN
  QListaPrecioPorDefecto.CLose;
  QListaPrecioPorDefecto.Open;
  if Not(QListaPrecioPorDefecto.Fields[0].AsString='') Then
    ListaPrecio:=QListaPrecioPorDefecto.Fields[0].Value
  else
    ListaPrecio:=1;
  QListaPrecioPorDefecto.CLose;

  IF CDSModeloDet.State = dsBrowse THEN
    CDSModeloDet.Edit;
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value:=Dato;
      CDSStock.Open;
      IF NOT (CDSStock.IsEmpty) THEN
        BEGIN
          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          CDSModeloDetCANTIDAD.AsFloat         := 0;
          CDSModeloDetUNITARIO_TOTAL.AsFloat   := 0;
          CDSModeloDetUNITARIO_GRAVADO.AsFloat := 0;
          CDSModeloDetUNITARIO_EXENTO.AsFloat  := 0;
          CDSModeloDetTOTAL.AsFloat            := 0;
          CDSModeloDetDETALLE.AsString       := CDSStockDETALLE_STK.AsString;
          CDSModeloDetUNIDAD.Value           := CDSStockUNIDAD.Value;
          CDSModeloDetCOSTO_GRAVADO.AsFloat  := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
          CDSModeloDetCOSTO_EXENTO.AsFloat   := CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
          CDSModeloDetCOSTO_TOTAL.AsFloat    := CDSStockFIJACION_PRECIO_TOTAL.AsFloat;
          CDSModeloDetAFECTA_STOCK.Value     := CDSStockCONTROLASTOCK.Value;
          CDSModeloDetMODO_GRAVAMEN.Value    := CDSStockMODO_GRAVAMEN.Value;
          CDSModeloDetTIPOIVA_TASA.Value     := CDSStockTASA_IVA.Value;
          CDSModeloDetTIPOIVA_SOBRETASA.Value:= CDSStockSOBRETASA_IVA.Value;
          CDSModeloDetGRAVADO_IB.Value       := CDSStockGRAVADO_IB.Value;
          //Asigno el deposito que tengo en el encabezado...
          CDSModeloDetDEPOSITO.Value         := CDSModeloCabDeposito.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
          CDSModeloDetDESGLOZAIVA.Value      := CDSModeloCabDesglozaIva.Value;
          CDSModeloDetCALCULA_SOBRETASA.Value:= CDSModeloCabCalcula_SobreTasa.Value;
          // traigo los porcentajes de Iva
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value:= CDSModeloDetTIPOIVA_TASA.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSModeloDetIVA_Tasa.Value:= CDSIvaTasa.Value;
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value:= CDSModeloDetTipoIva_SobreTasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSModeloDetIVA_SOBRETASA.Value := CDSIvaTasa.Value;
          //Me fijo la moenda del Item
          CDSModeloDetID_MONEDA.Value:=CDSStockMONEDA.Value;

          QMonedas.Close;
          QMonedas.ParamByName('id').Value := CDSStockMONEDA.Value;
          QMonedas.Open;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSModeloDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
            CDSModeloDetCOTIZACION.AsFloat:=1;
          QMonedas.Close;

          CDSModeloDetCosto_Gravado.AsFloat := CDSModeloDetCosto_Gravado.AsFloat * CDSModeloDetCOTIZACION.AsFloat;
          CDSModeloDetCosto_Exento.AsFloat  := CDSModeloDetCosto_Exento.AsFloat * CDSModeloDetCOTIZACION.AsFloat;
          CDSModeloDetCosto_Total.AsFloat   := CDSModeloDetCosto_Total.AsFloat * CDSModeloDetCOTIZACION.AsFloat;


          DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor, ListaPrecio,CDSModeloCabSUCURSAL.Value,CDSModeloCabDEPOSITO.Value,
                                        CDSModeloDetCODIGOARTICULO.AsString,CDSModeloCabCODIGO.AsString,CDSModeloCabTIPOCPBTE.Value,
                                        CDSModeloDetCOTIZACION.AsFloat,
                                        1,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);



          CDSModeloDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          CDSModeloDetUNITARIO_EXENTO.AsFloat :=Exento;
          CDSModeloDetUNITARIO_TOTAL.AsFloat  :=Total;
          CDSModeloDetIVA_UNITARIO.AsFloat    :=Iva;

          CDSModeloDetMARGEN.ASFloat          :=Margen;
          CDSModeloDetDESCUENTO.ASFloat       :=Dscto;

          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;


procedure TFormControlFcModelo.btCoeficienteClick(Sender: TObject);
var aux:Extended;
begin
  inherited;
  CDSModeloCab.First;
  while not(CDSModeloCab.Eof) do
    begin
      CDSModeloDet.First;
      while not(CDSModeloDet.Eof) do
        begin
          Aux:=CDSModeloDetUNITARIO_TOTAL.AsFloat;// + CDSModeloDetIVA_UNITARIO.AsFloat;
          Aux:=Aux * edCoeficiente.Value;
          aux:=RoundTo(Aux,-2);
          if Frac(AUx)>0.5 then
            Aux:=Trunc(Aux)+1
          else
            Aux:=Trunc(Aux);
          CDSModeloDetUNITARIO_TOTALSetText(CDSModeloDetUNITARIO_TOTAL,FloatToStr(Aux) );
          CDSModeloDet.Next;
        end;
      CDSModeloCab.Next;
    end;
end;

procedure TFormControlFcModelo.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
      FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
      FormBuscadorArticulos.Esquema     :=-1;
      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        CDSModeloDetCodigoArticuloSetText(CDSModeloDetCodigoArticulo, FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormControlFcModelo.CDSImpuestosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSImpuestosId_Impuesto.Value   := IBGFc_Impuestos.IncrementFD(1);
  CDSImpuestosID_FCMODELOCAB.Value:= CDSModeloCabID_FC.Value;
end;

procedure TFormControlFcModelo.CDSModeloCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSModeloDet.CLose;
  CDSModeloDet.Params.ParamByName('id').Value := CDSModeloCabID_FC.Value;
  CDSModeloDet.Open;
  CDSImpuestos.Close;
  CDSImpuestos.Params.ParamByName('id').Value := CDSModeloCabID_FC.Value;
  CDSImpuestos.Open;

end;

procedure TFormControlFcModelo.CDSModeloCabBeforeDelete(DataSet: TDataSet);
begin
  //inherited;
  sysUtils.Abort;
  CDSModeloCab.Cancel;
end;

procedure TFormControlFcModelo.CDSModeloDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  SumarDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  CDSImpuestos.EnableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      IF (CDSImpuestosIMPORTE.AsFloat <= 0) OR ( CDSImpuestosTASA.AsFloat <= 0) THEN
        begin
          CDSImpuestos.Delete;
          CDSImpuestos.First;
        end
      else
        CDSImpuestos.Next;
    END;

  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSModeloCab.ApplyUpdates(0);
    CDSModeloDet.ApplyUpdates(0);
    CDSImpuestos.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Aplicaron los Cambios...!');
  end;

end;

procedure TFormControlFcModelo.CDSModeloDetCANTIDADSetText(Sender: TField;
  const Text: string);
VAR
  Aux1, Aux2, Aux3: Extended;
  TextAux:String;
begin
  if Text<>'' Then
    begin
      TextAux:=Text;
      if (TextAux[1]='-') Then Delete(TextAux,1,1);

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      Sender.AsString := TextAux;

      Aux1:= CDSModeloDetUNITARIO_EXENTO.AsFloat;
      Aux2:= CDSModeloDetUNITARIO_GRAVADO.AsFloat;

      if (CDSModeloDetModo_Gravamen.Value<>'') Then
        IF ((CDSModeloCabDesglozaIva.Value = 'N') or (FormControlFcModelo.DiscriminaIva='N')) and
          (CDSModeloDetModo_Gravamen.Value[1] in ['G','E']) THEN
              Aux2:= Aux2 + CDSModeloDetIVA_UNITARIO.AsFloat;

       Aux3:= Aux1 + Aux2;

      CDSModeloDetUnitario_TotalSetText(CDSModeloDetUNITARIO_TOTAL,FloatToStr(Aux3));
    end;

end;

procedure TFormControlFcModelo.CDSModeloDetCODIGOARTICULOSetText(Sender: TField;
  const Text: string);
VAR
  S: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSModeloDet.State=dsBrowse Then
        CDSModeloDet.edit;
      S:=Text;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));
      Sender.AsString:=S; ;

      IF AsignarArticulo(s) = False THEN
        BEGIN
          ShowMessage('Codigo de Artículo Inválido...!!!');
          Sender.AsString:= '';
          SysUtils.Abort;
      //wwCDSVentaDet.Cancel;
       END;
    end;
end;

procedure TFormControlFcModelo.CDSModeloDetNewRecord(DataSet: TDataSet);
begin
  inherited;
    BEGIN
      CDSModeloDetID.Value                 := IBGFc_Det.IncrementFD(1);
      CDSModeloDetRENGLON.AsInteger        := CDSModeloDet.RecordCount + 1;
      CDSModeloDetDETALLE.Value            := '';
      CDSModeloDetUNIDAD.Value             := '';
      CDSModeloDetCANTIDAD.AsFloat         := 0;
      CDSModeloDetCOSTO_EXENTO.AsFloat     := 0;
      CDSModeloDetCOSTO_GRAVADO.AsFloat    := 0;
      CDSModeloDetCOSTO_TOTAL.AsFloat      := 0;
      CDSModeloDetUNITARIO_EXENTO.AsFloat  := 0;
      CDSModeloDetUNITARIO_GRAVADO.AsFloat := 0;
      CDSModeloDetUNITARIO_TOTAL.AsFloat   := 0;
      CDSModeloDetTOTAL.AsFloat            := 0;
      CDSModeloDetDESCUENTO.AsFloat        := 0;
      CDSModeloDetIVA_TASA.AsFloat         := 0;
      CDSModeloDetIva_SobreTasa.AsFloat    := 0;
      CDSModeloDetDESGLOZAIVA.Value        := CDSModeloCabDESGLOZAIVA.Value;
      CDSModeloDetMODO_GRAVAMEN.Value      := '';
      CDSModeloDetTIPOIVA_TASA.AsFloat     := 0;
      CDSModeloDetID_CABMODELO.Value       := CDSModeloCabId_Fc.Value;
      CDSModeloDetTipoCpbte.AsString       := CDSModeloCabTipoCpbte.AsString;
      CDSModeloDetCLASECPBTE.AsString      := CDSModeloCabCLASECPBTE.AsString;
    END;
end;

procedure TFormControlFcModelo.CDSModeloDetTOTALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSModeloDetTOTAL.AsFloat;
  if (CDSModeloDetMODO_GRAVAMEN.Value<>'') and (CDSModeloDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
    if (CDSModeloCabDESGLOZAIVA.Value='S') and (chDiscriminaIva.Checked=False) then
      Aux1:= CDSModeloDetTOTAL.AsFloat + CDSModeloDetIVA_TOTAL.AsFloat
    else
      if (CDSModeloCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSModeloDetTOTAL.AsFloat + CDSModeloDetIVA_TOTAL.AsFloat;
  Text := FormatFloat(',0.00', Aux1);

end;

procedure TFormControlFcModelo.CDSModeloDetUNITARIO_TOTALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSModeloDetUNITARIO_TOTAL.AsFloat;
  if (CDSModeloDetMODO_GRAVAMEN.Value<>'') and (CDSModeloDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
    if (CDSModeloCabDESGLOZAIVA.Value='S') and (chDiscriminaIva.Checked=False) then
      Aux1:= CDSModeloDetUNITARIO_TOTAL.AsFloat + CDSModeloDetIVA_UNITARIO.AsFloat
    else
      if (CDSModeloCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSModeloDetUNITARIO_TOTAL.AsFloat + CDSModeloDetIVA_UNITARIO.AsFloat;

//  Aux1:= CDSModeloDetUNITARIO_TOTAL.AsFloat + CDSModeloDetIVA_UNITARIO.AsFloat;

  Text:= FormatFloat(',0.00',Aux1);
end;

procedure TFormControlFcModelo.CDSModeloDetUNITARIO_TOTALSetText(Sender: TField;
  const Text: string);
VAR Num, P_Exento, P_Gravado,Pt_Exento,
    Pt_Gravado,Pt_Final, Descuento,Cantidad,TasaIva,Aux3,ImporteIva:  Extended;
  TextAux,
  Decimales:String;
BEGIN
  if ((Text<>'') and (CDSModeloDetCODIGOARTICULO.AsString<>'')) Then
    begin
      TextAux:=Text;
      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      if CDSModeloDet.State=dsBrowse Then CDSModeloDet.Edit;

      Num:=StrToFloat(TextAux);

      IF CDSModeloDetMODO_GRAVAMEN.Value <> '' THEN
        CASE CDSModeloDetMODO_GRAVAMEN.Value[1] OF
          'E': CDSModeloDetUNITARIO_EXENTO.AsFloat := Num;
          'G': CDSModeloDetUNITARIO_GRAVADO.AsFloat:= Num;
          'M','I','Y':CDSModeloDetUNITARIO_GRAVADO.AsFloat:= Num-CDSModeloDetUNITARIO_EXENTO.AsFloat
        END;
      Cantidad  := CDSModeloDetCANTIDAD.AsFloat;
      Descuento := 1 - CDSModeloDetDESCUENTO.AsFloat * 0.01;
      TasaIva   := 1 + CDSModeloDetIVA_TASA.AsFloat * 0.01;

      P_Exento  := CDSModeloDetUNITARIO_EXENTO.AsFloat ;
      P_Gravado := CDSModeloDetUNITARIO_GRAVADO.AsFloat;

      // calculo el total de la linea
      Pt_Gravado :=  P_Gravado * Cantidad * Descuento;
      Pt_Exento  :=  P_Exento * Cantidad * Descuento;
      // calculo de IVA
      ImporteIva :=  (Pt_gravado * TasaIva)- Pt_Gravado;

      CDSModeloDetIVA_UNITARIO.AsFloat := (P_Gravado * TasaIva) - P_Gravado;

      if ((CDSModeloCabDESGLOZAIVA.Value='N') or (chDiscriminaIva.Checked=False) ) and (CDSModeloDetMODO_GRAVAMEN.AsString[1] in ['G','M']) Then
        begin
      //    if (CDSModeloDetMODO_GRAVAMEN.AsString[1] in ['M']) then
      //      CDSModeloDetUNITARIO_GRAVADO.AsFloat := CDSModeloDetUNITARIO_GRAVADO.AsFloat * TasaIva;
          P_Gravado:= CDSModeloDetUNITARIO_GRAVADO.AsFloat / TasaIva;
          CDSModeloDetIVA_UNITARIO.AsFloat := CDSModeloDetUNITARIO_GRAVADO.AsFloat - P_Gravado;
          // *** Calculo el total de la linea
          Pt_Final   :=  (P_Gravado + CDSModeloDetIVA_UNITARIO.ASFloat) * Cantidad * Descuento;
          Pt_Gravado :=  Pt_Final  / TasaIva;
          Pt_Exento  :=  P_Exento * Cantidad * Descuento;
          // Calculo de IVA
          ImporteIva :=  Pt_Final - Pt_gravado;
        end;

      CDSModeloDetUNITARIO_GRAVADO.AsFloat :=P_Gravado;

      CDSModeloDetTOTAL_GRAVADO.AsFloat := RoundTo(Pt_Gravado,-3);
      PT_Gravado                        := RoundTo(CDSModeloDetTOTAL_GRAVADO.AsFloat,-2);
      CDSModeloDetTOTAL_GRAVADO.AsFloat := Pt_Gravado;

      CDSModeloDetTOTAL_EXENTO.AsFloat  := RoundTo(Pt_Exento,-2);

      ImporteIva :=  RoundTo(ImporteIva,-3);
      CDSModeloDetIVA_TOTAL.AsFloat     :=  RoundTo(ImporteIva,-2);
      // esto pisa las 2 lineas anteriores no las borro para probar
      if ((CDSModeloCabDESGLOZAIVA.Value='N') ) and (CDSModeloDetMODO_GRAVAMEN.AsString[1] in ['G','M']) Then
        CDSModeloDetIVA_TOTAL.AsFloat     := (Pt_Final-CDSModeloDetTOTAL_EXENTO.AsFloat)-Pt_Gravado;


      if (CDSModeloDetMODO_GRAVAMEN.AsString[1] in ['M']) then
        begin
          if ((CDSModeloCabDESGLOZAIVA.Value='N')) Then
            begin
              if Trunc(CDSModeloDetTOTAL_GRAVADO.AsFloat + CDSModeloDetTOTAL_EXENTO.AsFloat + CDSModeloDetIVA_TOTAL.AsFloat) * 100 <>
                 Trunc((Sender.AsFloat*CDSModeloDetCANTIDAD.AsFloat)*100) then
                CDSModeloDetTOTAL_EXENTO.AsFloat:=CDSModeloDetTOTAL_EXENTO.AsFloat +
                ((Num*CDSModeloDetCANTIDAD.AsFloat)-(CDSModeloDetTOTAL_GRAVADO.AsFloat + CDSModeloDetTOTAL_EXENTO.AsFloat + CDSModeloDetIVA_TOTAL.AsFloat));
            end
          else
            begin
              if Trunc(CDSModeloDetTOTAL_GRAVADO.AsFloat + CDSModeloDetTOTAL_EXENTO.AsFloat ) * 100 <>
                 Trunc((Sender.AsFloat * CDSModeloDetCANTIDAD.AsFloat)*100) then
                CDSModeloDetTOTAL_EXENTO.AsFloat:=CDSModeloDetTOTAL_EXENTO.AsFloat +
                ((Num*CDSModeloDetCANTIDAD.AsFloat)-(CDSModeloDetTOTAL_GRAVADO.AsFloat + CDSModeloDetTOTAL_EXENTO.AsFloat ));
            end;
        end;

      CDSModeloDetTOTAL.AsFloat         :=  RoundTo((Pt_Gravado+Pt_Exento),-2);
      CDSModeloDetTOTAL.AsFloat         :=  CDSModeloDetTOTAL_GRAVADO.AsFloat+CDSModeloDetTOTAL_EXENTO.AsFloat;


      // **************** Calculo el Margen ******************
      if (CDSModeloDetCOSTO_TOTAL.AsFloat>0) and (CDSModeloDetUNITARIO_TOTAL.AsFloat>0) then
          CDSModeloDetMARGEN.AsFloat := RoundTo(((CDSModeloDetUNITARIO_TOTAL.AsFloat - CDSModeloDetCosto_Total.AsFloat)/
                                                 CDSModeloDetUNITARIO_TOTAL.AsFloat)*100,-2)
      else
        CDSModeloDetMARGEN.AsFloat:= 100;
      // *****************************************************

      Aux3:= (P_Gravado+P_Exento);

      Sender.AsString := FloatToStr(Aux3);

      if (CDSModeloDetMODO_GRAVAMEN.Value[1]='E') and (CDSModeloDetUNITARIO_GRAVADO.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSModeloDetUNITARIO_GRAVADO.AsFloat:=0;
          CDSModeloDetUNITARIO_EXENTO.AsFloat :=0;
          CDSModeloDetUNITARIO_TOTAL.AsFloat  :=0;
          CDSModeloDetTOTAL.AsFloat           :=0;
          raise Exception.Create('El artículo Figura Como Exento y tiene Costo Gravado...');
        end;
      if (CDSModeloDetMODO_GRAVAMEN.Value[1]='G') and (CDSModeloDetUNITARIO_EXENTO.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSModeloDetUNITARIO_GRAVADO.AsFloat:=0;
          CDSModeloDetUNITARIO_EXENTO.AsFloat :=0;
          CDSModeloDetUNITARIO_TOTAL.AsFloat  :=0;
          CDSModeloDetTOTAL.AsFloat           :=0;
          raise Exception.Create('El artículo Figura Como Gravado y tiene Costo exento...');
        end;
   end;
  Decimales:=(Copy('0.00',pos('.','0.00')+1,length('0.00')));
  if Length(Decimales)=2 then
    begin
      //Primero con 3 decimales y despues 2
      CDSModeloDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSModeloDetUNITARIO_GRAVADO.AsFloat,-3);
      CDSModeloDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSModeloDetUNITARIO_EXENTO.AsFloat,-3);
      CDSModeloDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSModeloDetUNITARIO_TOTAL.AsFloat,-3);
      CDSModeloDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSModeloDetIVA_UNITARIO.AsFloat,-3);

      CDSModeloDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSModeloDetUNITARIO_GRAVADO.AsFloat,-2);
      CDSModeloDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSModeloDetUNITARIO_EXENTO.AsFloat,-2);
      CDSModeloDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSModeloDetUNITARIO_TOTAL.AsFloat,-2);
      CDSModeloDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSModeloDetIVA_UNITARIO.AsFloat,-2);
    end;
  if Length(Decimales)=3 then
    begin
      CDSModeloDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSModeloDetUNITARIO_GRAVADO.AsFloat,-3);
      CDSModeloDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSModeloDetUNITARIO_EXENTO.AsFloat,-3);
      CDSModeloDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSModeloDetUNITARIO_TOTAL.AsFloat,-3);
      CDSModeloDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSModeloDetIVA_UNITARIO.AsFloat,-3);
    end;
  if CDSModeloDet.State<>dsBrowse then
     CDSModeloDet.Post;
   

end;

procedure TFormControlFcModelo.dbgCabeceraDblClick(Sender: TObject);
begin
  inherited;
  if Not(CDSModeloCab.IsEmpty) then
    begin
      if Not(Assigned(FormFacModelo)) then
        FormFacModelo:=TFormFacModelo.Create(Self);
      FormFacModelo.DatoNew:=CDSModeloCabID_FC.AsString;
      FormFacModelo.Recuperar.Execute;
      FormFacModelo.Show;  
    end;
  
end;

procedure TFormControlFcModelo.dbgCabeceraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgCabecera.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlFcModelo.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF DBGDetalle.SelectedIndex = 2 THEN
    DBGDetalle.SelectedIndex := 4;
  IF DBGDetalle.SelectedIndex = 3 THEN
    DBGDetalle.SelectedIndex := 4;
  IF DBGDetalle.SelectedIndex = 7 THEN
    DBGDetalle.SelectedIndex := 6;
  IF (DBGDetalle.SelectedIndex = 5) and (DBGDetalle.Fields[0].AsString<>'') THEN
    BEGIN
      IF (CDSModeloDet.State IN [dsEdit, dsInsert]) AND (CDSModeloDetModo_Gravamen.Value = 'M') THEN
        BEGIN
          FormComposicionPrecio              := TFormComposicionPrecio.Create(Application);
          FormComposicionPrecio.ValorGravado := CDSModeloDetUNITARIO_GRAVADO.AsFloat;
          FormComposicionPrecio.ValorExento  := CDSModeloDetUNITARIO_EXENTO.AsFloat;
          FormComposicionPrecio.ShowModal;
          // FreeAndNil(ComposicionPrecioForm);
          CDSModeloDetUNITARIO_EXENTO.AsFloat  := FormComposicionPrecio.ValorExento;
          CDSModeloDetUNITARIO_GRAVADO.AsFloat := FormComposicionPrecio.ValorGravado;
          CDSModeloDetUnitario_TotalSetText(CDSModeloDetUNITARIO_TOTAL,CDSModeloDetUNITARIO_TOTAL.AsString);
        END;
    END;


end;

procedure TFormControlFcModelo.dbgDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) then
    BEGIN
      if (DBGDetalle.SelectedIndex = 1) THEN
        DBGDetalle.SelectedIndex := 0
      else
        if (DBGDetalle.SelectedIndex = 4) THEN
          DBGDetalle.SelectedIndex := 1
        else
          if (DBGDetalle.SelectedIndex = 5) THEN
            DBGDetalle.SelectedIndex := 4
          else
            if (DBGDetalle.SelectedIndex = 6) THEN
              DBGDetalle.SelectedIndex := 5;
      key := 0;
    END;
end;

procedure TFormControlFcModelo.dbgDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgDetalle.SelectedIndex < 5) THEN
        dbgDetalle.SelectedIndex := dbgDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgDetalle.DataSource.DataSet.Eof THEN
            dbgDetalle.DataSource.DataSet.Append;
          dbgDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgDetalle.SelectedField = CDSModeloDetCodigoArticulo THEN
           BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        dbgDetalle.DataSource.DataSet.Cancel;
end;

procedure TFormControlFcModelo.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormControlFcModelo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSModeloCab.IndexFieldNames:='';
  CDSModeloCab.IndexDefs.Clear;
  CDSModeloCab.Close;
  CDSModeloDet.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormControlFcModelo.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;

  CDSModeloCab.Open;
end;

procedure TFormControlFcModelo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlFcModelo:=nil;
end;

procedure TFormControlFcModelo.FormResize(Sender: TObject);
begin
  inherited;
  if FormControlFcModelo<>nil then
    if FormControlFcModelo.Width<>786 then
      FormControlFcModelo.Width:=786;

end;

procedure TFormControlFcModelo.ImprimirExecute(Sender: TObject);
begin
  inherited;
 if Not(CDSModeloCab.IsEmpty) then
    begin
      frReporte.PrintOptions.Printer:=PrNomListados;
      frReporte.SelectPrinter;
      frReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\LstFcmodelos.fr3');
      DMMain_FD.QOpciones.Close;
      frReporte.ShowReport;
//      dbcCuentas.SetFocus;
    end;
end;

procedure TFormControlFcModelo.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

end.
