unit UListadoCpbteVtaPorTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, ComCtrls, StdCtrls, Mask,StrUtils,
  JvComponentBase, ImgList, DB,DateUtils,VirtualUI_SDK,
  ActnList, JvExControls, JvGradient, Buttons, ToolWin,
  ExtCtrls,Librerias,   Grids, DBGrids, frxClass, frxDBSet, DBClient,
  Provider, JvDBLookup, frxExportCSV, frxExportText,
  frxExportImage, frxExportRTF, frxExportXML, frxExportPDF, JvFormPlacement,
  JvBaseEdits, System.Actions, JvAppStorage, JvAppIniStorage, Data.FMTBcd,
  JvToolEdit, JvExMask, JvLabel, Data.SqlExpr, JvDBControls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DataExport, DataToXLS, AdvGroupBox, AdvOfficeButtons, frxExportBaseDialog,
  frxExportXLS, frxExportBIFF, System.ImageList, frCoreClasses;

type
  TFormListadoCpbteVtaPorTipo = class(TFormABMBase)
    UpDown1: TUpDown;
    dbgCab: TDBGrid;
    dbgDet: TDBGrid;
    DSFacDet: TDataSource;
    DSFacCab: TDataSource;
    DSTipoCpbte: TDataSource;
    Imprimir: TAction;
    frCpbte: TfrxReport;
    frDBFcCab: TfrxDBDataset;
    frDBFcDet: TfrxDBDataset;
    BitBtn1: TBitBtn;
    frDBFcImpuestos: TfrxDBDataset;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    edNombreCliente: TEdit;
    BuscaCliente: TAction;
    dbcSucursal: TJvDBLookupCombo;
    Label1: TLabel;
    cbTipoCpbte: TJvDBLookupCombo;
    btCorreo: TSpeedButton;
    Correo: TAction;
    frxPDFExport1: TfrxPDFExport;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    ceCliente: TJvComboEdit;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLIMITE_CREDITO: TFMTBCDField;
    CDSClientesSALDOINICIAL: TFMTBCDField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesULTIMOPAGO: TSQLTimeStampField;
    CDSClientesLISTAPRECIOS: TIntegerField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesTIPODOCUMENTO: TSmallintField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
    CDSClientesPERCIBIR_IB: TStringField;
    CDSClientesINSCRIPTO_MULTICONVENIO: TStringField;
    CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    CDSClientesCONTACTO: TStringField;
    CDSClientesTELEFONO_CONTACTO: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSClientesCATEGORIA: TIntegerField;
    CDSClientesLONGITUD: TStringField;
    CDSClientesLATITUD: TStringField;
    CDSClientesDIRECCION_CALLE: TStringField;
    CDSClientesDIRECCION_NUMERO: TStringField;
    CDSClientesDIRECCION_PISO: TStringField;
    CDSClientesDIRECCION_DEPTO: TStringField;
    CDSClientesDEUDAMAYOR30: TStringField;
    CDSClientesMUESTRATELEDISCADO: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSFacCab: TClientDataSet;
    DSPFacCab: TDataSetProvider;
    CDSFacCabID_FC: TIntegerField;
    CDSFacCabTIPOCPBTE: TStringField;
    CDSFacCabCLASECPBTE: TStringField;
    CDSFacCabCODIGO: TStringField;
    CDSFacCabNROCPBTE: TStringField;
    CDSFacCabLETRAFAC: TStringField;
    CDSFacCabSUCFAC: TStringField;
    CDSFacCabNUMEROFAC: TStringField;
    CDSFacCabNOMBRE: TStringField;
    CDSFacCabRAZONSOCIAL: TStringField;
    CDSFacCabDIRECCION: TStringField;
    CDSFacCabCPOSTAL: TStringField;
    CDSFacCabLOCALIDAD: TStringField;
    CDSFacCabTIPOIVA: TIntegerField;
    CDSFacCabCUIT: TStringField;
    CDSFacCabLISTAPRECIO: TIntegerField;
    CDSFacCabCONDICIONVTA: TIntegerField;
    CDSFacCabANULADO: TStringField;
    CDSFacCabNRORTO: TStringField;
    CDSFacCabIMPRESO: TStringField;
    CDSFacCabOBSERVACION1: TStringField;
    CDSFacCabOBSERVACION2: TStringField;
    CDSFacCabCPTE_MANUAL: TStringField;
    CDSFacCabSUCURSAL: TIntegerField;
    CDSFacCabFACTURANRO: TStringField;
    CDSFacCabZONA: TIntegerField;
    CDSFacCabLDR: TIntegerField;
    CDSFacCabDEPOSITO: TIntegerField;
    CDSFacCabCALCULA_SOBRETASA: TStringField;
    CDSFacCabDESGLOZAIVA: TStringField;
    CDSFacCabNROENTREGA: TIntegerField;
    CDSFacCabINGRESA_A_CTACTE: TStringField;
    CDSFacCabINGRESA_LIBRO_IVA: TStringField;
    CDSFacCabTIPO_REMITO: TStringField;
    CDSFacCabIDREMITO: TIntegerField;
    CDSFacCabREDUCIDA: TStringField;
    CDSFacCabLIQUIDADA: TStringField;
    CDSFacCabVENDEDOR: TStringField;
    CDSFacCabUSUARIO: TStringField;
    CDSFacCabNC_CONTADO: TStringField;
    CDSFacCabCAJA_POR_DEFECTO: TIntegerField;
    CDSFacCabNRO_Z: TIntegerField;
    CDSFacCabPERCIBE_IB: TStringField;
    CDSFacCabRENGLONES: TSmallintField;
    CDSFacCabNOTAPEDIDO_ID: TIntegerField;
    CDSFacCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSFacCabID_FC_CLON: TIntegerField;
    CDSFacCabPRESUPUESTO_ID: TIntegerField;
    CDSFacCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSFacCabMONEDA_CPBTE: TIntegerField;
    CDSFacCabPOR_CTA_Y_ORDEN: TStringField;
    CDSFacCabPROVEEDOR: TStringField;
    CDSFacCabTIPO_VTA: TStringField;
    CDSFacCabID_RECEPCION_GTIA: TIntegerField;
    CDSFacCabJURIDICION: TIntegerField;
    CDSFacCabJURIDICION_LOCALIDAD: TIntegerField;
    CDSFacCabMUESTRASUCURSAL: TStringField;
    DSPFacDet: TDataSetProvider;
    CDSFacDet: TClientDataSet;
    CDSFacDetID: TIntegerField;
    CDSFacDetID_CABFAC: TIntegerField;
    CDSFacDetTIPOCPBTE: TStringField;
    CDSFacDetCLASECPBTE: TStringField;
    CDSFacDetNROCPBTE: TStringField;
    CDSFacDetCODIGOARTICULO: TStringField;
    CDSFacDetDETALLE: TStringField;
    CDSFacDetUNIDAD: TStringField;
    CDSFacDetDESGLOZAIVA: TStringField;
    CDSFacDetMODO_GRAVAMEN: TStringField;
    CDSFacDetTIPOIVA_TASA: TIntegerField;
    CDSFacDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSFacDetDEPOSITO: TIntegerField;
    CDSFacDetAFECTA_STOCK: TStringField;
    CDSFacDetCALCULA_SOBRETASA: TStringField;
    CDSFacDetGRAVADO_IB: TStringField;
    CDSFacDetCON_NRO_SERIE: TStringField;
    CDSFacDetCON_CODIGO_BARRA: TStringField;
    CDSFacDetTIPOIB_TASA: TIntegerField;
    CDSFacDetLOTE: TIntegerField;
    CDSFacDetPRECIO_EDITABLE: TStringField;
    CDSFacDetID_MONEDA: TIntegerField;
    CDSFacDetDETALLE_ADICIONAL: TStringField;
    CDSFacDetGRUPO_DETALLE: TIntegerField;
    CDSFacDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    CDSFacDetCTA_ORDEN_NROCPBTE: TStringField;
    CDSFacDetCTA_ORDEN_TIPOCPBTE: TStringField;
    CDSFacDetCTA_ORDEN_CALSECPBTE: TStringField;
    CDSImpuestos: TClientDataSet;
    DSPImpuestos: TDataSetProvider;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_FCVTACAB: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    edTotal: TJvCalcEdit;
    CDSFacDetMESES_GTIA: TIntegerField;
    QFacC: TFDQuery;
    CDSFacCabN_OPERACION2: TFloatField;
    CDSFacCabNETOGRAV1: TFloatField;
    CDSFacCabNETOGRAV2: TFloatField;
    CDSFacCabNETONOGRAV1: TFloatField;
    CDSFacCabNETONOGRAV2: TFloatField;
    CDSFacCabDSTOIMPORTE: TFloatField;
    CDSFacCabNETOEXEN1: TFloatField;
    CDSFacCabNETOEXEN2: TFloatField;
    CDSFacCabTOTAL: TFloatField;
    CDSFacCabDEBE: TFloatField;
    CDSFacCabDSTO: TFloatField;
    CDSFacCabCAE: TStringField;
    CDSFacCabFACTURA_ELECTRONICA: TStringField;
    CDSFacCabCOMSIONVENDEDOR: TFloatField;
    CDSFacCabSALDO_ACTUAL_CC: TFloatField;
    CDSFacCabVALORES_RECIBIDOS: TFloatField;
    CDSFacCabPERCEPCION_IB_TASA: TFloatField;
    CDSFacCabPERCEPCION_IB_IMPORTE: TFloatField;
    CDSFacCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSFacCabMONEDA_CPBTE_COTIZACION: TFloatField;
    QFacD: TFDQuery;
    CDSFacDetCANTIDAD: TFloatField;
    CDSFacDetIVA_TASA: TFloatField;
    CDSFacDetIVA_SOBRETASA: TFloatField;
    CDSFacDetDESCUENTO: TFloatField;
    CDSFacDetUNIDADES_GRAVADO: TFloatField;
    CDSFacDetUNIDADES_EXENTO: TFloatField;
    CDSFacDetUNIDADES_TOTAL: TFloatField;
    CDSFacDetCOSTO_GRAVADO: TFloatField;
    CDSFacDetCOSTO_EXENTO: TFloatField;
    CDSFacDetCOSTO_TOTAL: TFloatField;
    CDSFacDetUNITARIO_GRAVADO: TFloatField;
    CDSFacDetIVA_UNITARIO: TFloatField;
    CDSFacDetUNITARIO_EXENTO: TFloatField;
    CDSFacDetUNITARIO_TOTAL: TFloatField;
    CDSFacDetTOTAL_EXENTO: TFloatField;
    CDSFacDetTOTAL_GRAVADO: TFloatField;
    CDSFacDetIVA_TOTAL: TFloatField;
    CDSFacDetRENGLON: TFloatField;
    CDSFacDetTOTAL: TFloatField;
    CDSFacDetMARGEN: TFloatField;
    CDSFacDetCODIGOBARRA: TStringField;
    CDSFacDetDE_PRODUCCION: TStringField;
    CDSFacDetUNITARIO_TOTAL_OLD: TFloatField;
    CDSFacDetUNITARIO_IVA_OLD: TFloatField;
    CDSFacDetUNI_C_REC: TStringField;
    CDSFacDetITEM_OCOMPRA: TIntegerField;
    CDSFacDetCONTROL_TRAZABILIDAD: TStringField;
    CDSFacDetCANTIDAD_UNIDADES: TFloatField;
    CDSFacDetPRESENTACION_CANT: TFloatField;
    CDSFacDetIB_TASA: TFloatField;
    CDSFacDetCOTIZACION: TFloatField;
    QFcImp: TFDQuery;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    QTipoCpbte: TFDQuery;
    QTipoCpbteID_TIPO: TIntegerField;
    QTipoCpbteDETALLE: TStringField;
    QTipoCpbteSIGLA: TStringField;
    QTipoCpbteDESGLOZA_IVA: TStringField;
    QTipoCpbteAFECTA_CC: TStringField;
    QTipoCpbteAFECTA_LIBRO_IVA: TStringField;
    QTipoCpbteTIPO_DE_OPERACION: TStringField;
    pnCabecera: TPanel;
    CDSFacCabCODIGO_AFIP: TStringField;
    BitBtn2: TBitBtn;
    DataToXLS1: TDataToXLS;
    CDSFacCabFECHAAMERICANA: TStringField;
    CDSFacCabIMPUESTOS: TFloatField;
    ExportarAFIP: TAction;
    SaveDialog: TSaveDialog;
    CDSFacCabFECHAVTA: TSQLTimeStampField;
    CDSFacCabFECHAVTO: TSQLTimeStampField;
    CDSFacCabFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSFacCabFECHA_HORA: TSQLTimeStampField;
    CDSFacCabFECHA_FISCAL: TSQLTimeStampField;
    CDSFacCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSFacDetFECHAVTA: TSQLTimeStampField;
    chTodosLosClientes: TAdvOfficeCheckBox;
    rgTipo: TAdvOfficeRadioGroup;
    frxXMLExport1: TfrxXMLExport;
    frxBIFFExport1: TfrxBIFFExport;
    frxXLSExport1: TfrxXLSExport;
    rgModo: TAdvOfficeRadioGroup;
    JvDBStatusLabel1: TJvDBStatusLabel;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure chTodosLosClientesClick(Sender: TObject);
    procedure BuscaClienteExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure CorreoExecute(Sender: TObject);
    procedure CDSFacCabAfterScroll(DataSet: TDataSet);
    procedure dbgCabDblClick(Sender: TObject);
    procedure CDSFacDetTOTALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure CDSFacCabCalcFields(DataSet: TDataSet);
    procedure ExportarAFIPExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure rgModoClick(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Sumar;
  end;

var
  FormListadoCpbteVtaPorTipo: TFormListadoCpbteVtaPorTipo;

implementation

uses UBuscadorClientes, UCorreo, DMBuscadoresForm, UFacturaCtdo_2,
     UFactura_2, UTiketVta,UDMain_FD;

{$R *.dfm}

procedure TFormListadoCpbteVtaPorTipo.sumar;
var p:TBookmark;
begin
  edTotal.Value:=0;
  p:=CDSFacCab.GetBookmark;
  CDSFacCab.DisableControls;
  CDSFacCab.First;
  while not(CDSFacCab.Eof) do
    begin
      edTotal.Value:=edTotal.Value+CDSFacCabTOTAL.AsFloat;
      CDSFacCab.Next;
    end;
  CDSFacCab.GotoBookmark(p);
  CDSFacCab.FreeBookmark(p);
  CDSFacCab.EnableControls;
end;

procedure TFormListadoCpbteVtaPorTipo.rgModoClick(
  Sender: TObject);
begin
  inherited;
  CDSFacCab.Filtered:=False;
  case rgModo.ItemIndex of
    0:CDSFacCab.Filter:='';
    1:CDSFacCab.Filter:='INGRESA_LIBRO_IVA=''S''';
    2:CDSFacCab.Filter:='INGRESA_LIBRO_IVA=''N''';
  end;

  if rgModo.ItemIndex >0 Then
    CDSFacCab.Filtered:=True;

end;

procedure TFormListadoCpbteVtaPorTipo.BuscaClienteExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text := FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value :=FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
          Buscar.Execute;
        END;
    end;

end;

procedure TFormListadoCpbteVtaPorTipo.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSFacCab.Close;
  CDSFacCab.Params.ParamByName('tipo').Value  :=cbTipoCpbte.KeyValue;
  CDSFacCab.Params.ParamByName('desde').Value :=Desde.Date;
  CDSFacCab.Params.ParamByName('hasta').Value :=Hasta.Date;
  CDSFacCab.Params.ParamByName('sucursal').Value :=dbcSucursal.KeyValue;
  case rgTipo.ItemIndex of
    0:CDSFacCab.Params.ParamByName('tipovta').Value  :='*';
    1:CDSFacCab.Params.ParamByName('tipovta').Value  :='S';
    2:CDSFacCab.Params.ParamByName('tipovta').Value  :='M';
  end;

  CDSFacCab.Params.ParamByName('tipo').Value  :=cbTipoCpbte.KeyValue;

  if (chTodosLosClientes.Checked=True) then
    CDSFacCab.Params.ParamByName('codigo').Value:='******'
  else
    CDSFacCab.Params.ParamByName('codigo').Value:=ceCliente.Text;

  CDSFacCab.Open;
  Sumar;

  CDSFacDet.Close;
  CDSFacDet.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSFacDet.Open;

  CDSImpuestos.Close;
  CDSImpuestos.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSImpuestos.Open;

end;

procedure TFormListadoCpbteVtaPorTipo.CDSFacCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSFacDet.Close;
  CDSFacDet.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSFacDet.Open;

  CDSImpuestos.Close;
  CDSImpuestos.Params.ParamByName('id').Value:=CDSFacCabID_FC.Value;
  CDSImpuestos.Open;
end;

procedure TFormListadoCpbteVtaPorTipo.CDSFacCabCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSFacCabFECHAAMERICANA.AsString:= FormatDateTime('yyyymmdd',CDSFacCabFECHAVTA.AsDateTime);
  CDSFacCabIMPUESTOS.AsFloat      := StrToFloat(FormatFloat('0.00',CDSFacCabTOTAL.Value-CDSFacCabNETONOGRAV2.Value));
end;

procedure TFormListadoCpbteVtaPorTipo.CDSFacDetTOTALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if CDSFacCabDESGLOZAIVA.Value='N' then
    Text:=FormatFloat(',0.00',CDSFacDetTOTAL.AsFloat+CDSFacDetIVA_TOTAL.AsFloat)
  else
    Text:=FormatFloat(',0.00',CDSFacDetTOTAL.AsFloat);


end;

procedure TFormListadoCpbteVtaPorTipo.ceClienteKeyPress(Sender: TObject;
  var Key: Char);            
var  Dato: STRING;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        edNombreCliente.Text := CDSClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      Buscar.Execute;
    END;
end;

procedure TFormListadoCpbteVtaPorTipo.chTodosLosClientesClick(Sender: TObject);
begin
  inherited;
  if ( chTodosLosClientes.Checked=True ) then
    begin
      ceCliente.Color   := clBtnFace;
      ceCliente.Enabled := False;
      Correo.Enabled    := False;
    end
  else
    begin
      ceCliente.Color   := clWindow;
      ceCliente.Enabled := True;
      Correo.Enabled    := True;
    end;
end;

procedure TFormListadoCpbteVtaPorTipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormListadoCpbteVtaPorTipo.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormListadoCpbteVtaPorTipo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoCpbteVtaPorTipo:=nil;
end;

procedure TFormListadoCpbteVtaPorTipo.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoCpbteVtaPorTipo<>nil then
    if FormListadoCpbteVtaPorTipo.Width<>883 then
      FormListadoCpbteVtaPorTipo.Width:=883;

end;

procedure TFormListadoCpbteVtaPorTipo.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  QTipoCpbte.OPen;
  CDSSucursal.Open;
  dbcSucursal.KeyValue:= SucursalPorDefecto;
  dbcSucursal.Enabled := DMMain_FD.ModificaSucursal;
end;

procedure TFormListadoCpbteVtaPorTipo.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoCpbteVtaPorTipo.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frCpbte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCpbtePorTipo.fr3');
  frCpbte.Variables['Desde']  :=''''+Desde.Text+'''';
  frCpbte.Variables['Hasta']  :=''''+hasta.Text+'''';
  frCpbte.Variables['Cliente']:=''''+edNombreCliente.Text+'''';
  frCpbte.ShowReport;
end;

procedure TFormListadoCpbteVtaPorTipo.CorreoExecute(Sender: TObject);
begin
  inherited;
 if CDSFacCab.IsEmpty Then
    Raise Exception.Create(' No hay datos para mandar...');
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  frCpbte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCpbtePorTipo.fr3');
  frCpbte.Variables['Desde']:=''''+Desde.Text+'''';
  frCpbte.Variables['Hasta']:=''''+hasta.Text+'''';
  frCpbte.Variables['Cliente']:=''''+edNombreCliente.Text+'''';

  frCpbte.PrepareReport;

  frxPDFExport1.ShowDialog:=False;
  frxPDFExport1.FileName:=ExtractFilePath(ParamStr(0))+'Archivos Temporales\Detalle_'+edNombreCliente.Text+'.pdf';
  frCpbte.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);

  FormCorreo.CorreoDestino       := DMMain_FD.GetCorreoCliente_1(Trim(ceCliente.Text));
  FormCorreo.CCopia              := DMMain_FD.GetCorreoCliente_2(Trim(ceCliente.Text));
  FormCorreo.CorreoOrigen        := DirCorreo;
  FormCorreo.Remitente           := Remitente;
  FormCorreo.Destinatario        := edNombreCliente.Text;
  FormCorreo.CorreoDestino       := Trim(CDSClientesCORREOELECTRONICO.AsString);
  FormCorreo.Puerto              := Puerto;
  FormCorreo.NombreServidorCorreo:= NombreServidor;
  FormCorreo.NombreCuentaCorreo  := NombreCuenta;
  FormCorreo.Clave               := Clave;
  FormCorreo.Autenticacion       := Autotenticacion;
  FormCorreo.Asunto              := 'Detalle Facturas '+ FormatDateTime('dd-mm-yy',hasta.Date);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Detalle_'+edNombreCliente.Text+'.pdf');
  FormCorreo.Show;

end;

procedure TFormListadoCpbteVtaPorTipo.dbgCabDblClick(Sender: TObject);
begin
  inherited;
  if CDSFacCab.IsEmpty then
    raise Exception.Create('No hya datos para consultar');
  if CDSFacCabTIPOCPBTE.Value='FO' then
    begin
      if Not(Assigned(FormCpbteCtdo_2)) Then
        FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
      FormCpbteCtdo_2.DatoNew   :=CDSFacCabID_FC.AsString;
      FormCpbteCtdo_2.TipoCpbte :=CDSFacCabTIPOCPBTE.Value;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.Show;
    end
  else
    if (CDSFacCabTIPOCPBTE.Value='FC') or
       (CDSFacCabTIPOCPBTE.Value='NC') or
       (CDSFacCabTIPOCPBTE.Value='ND')  then
      begin
        if Not(Assigned(FormCpbte_2)) Then
          FormCpbte_2:=TFormCpbte_2.Create(self);
        FormCpbte_2.DatoNew   :=CDSFacCabID_FC.AsString;
        FormCpbte_2.TipoCpbte :=CDSFacCabTIPOCPBTE.Value;
        FormCpbte_2.Recuperar.Execute;
        FormCpbte_2.Show;
    end
  else
  if CDSFacCabTIPOCPBTE.Value='TK' then
    begin
      if Not(Assigned(FormTicketVta)) Then
        FormTicketVta:=TFormTicketVta.Create(self);
      FormTicketVta.DatoNew   :=CDSFacCabID_FC.AsString;
      FormTicketVta.TipoCpbte :=CDSFacCabTIPOCPBTE.Value;
      FormTicketVta.Recuperar.Execute;
      FormTicketVta.Show;
    end
  else

end;

procedure TFormListadoCpbteVtaPorTipo.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
 Desde.Date:= ADate;
 Buscar.Execute;
end;

procedure TFormListadoCpbteVtaPorTipo.ExportarAFIPExecute(Sender: TObject);
Var Nombre:String;
begin
  inherited;
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSFacCab.IsEmpty) THEN
    BEGIN
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName  :='Comprobantes_'+FormatDateTime('yyyymmdd', Desde.Date)+'_'+FormatDateTime('yyyymmdd',Hasta.Date);

      SaveDialog.FileName  :=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
               SaveDialog.FileName := SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            DataToXLS1.SaveToFile(SaveDialog.FileName);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoCpbteVtaPorTipo.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frCpbte.DesignReport;
end;

procedure TFormListadoCpbteVtaPorTipo.UpDown1Click(Sender: TObject; Button: TUDBtnType);
 var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
 end;

end.