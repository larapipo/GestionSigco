UNIT UMuestraCpbteCtaCteVta;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons,  Grids, ExtCtrls,
  Db, DBClient, Provider, DBGrids, ComCtrls,
  Librerias, JvExControls, JvLabel,IniFiles, JvExMask, JvToolEdit, JvDBControls;

TYPE
  TFormMuestraCpbteCtaCteVta = CLASS(TForm)
    pnCabecera: TPanel;
    DBText66: TDBText;
    dbtMuestraComprob: TDBText;
    DBText73: TDBText;
    DBText4: TDBText;
    DBCheckManual: TDBCheckBox;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeRemitos: TDBEdit;
    dbeConVta: TDBEdit;
    dbeNombre: TDBEdit;
    dbeLdr: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDeposito: TDBEdit;
    dbeEntrega: TDBEdit;
    Panel3: TPanel;
    pcDetalleFactura: TPageControl;
    PagDetalles: TTabSheet;
    Label17: TLabel;
    Bevel21: TBevel;
    DBText60: TDBText;
    dbeObservaciones2: TDBEdit;
    dbeObservaciones1: TDBEdit;
    DBGrillaDetalle: TDBGrid;
    Panel1: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
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
    DBText9: TDBText;
    Label2: TLabel;
    Label4: TLabel;
    DBText2: TDBText;
    DBGrillaIva: TDBGrid;
    dbeDscto: TDBEdit;
    DSPVentaCab: TDataSetProvider;
    DSPVentaDet: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    lbReducida: TLabel;
    DBEdit6: TDBEdit;
    CDSVentaDet: TClientDataSet;
    CDSVentaDetID: TIntegerField;
    CDSVentaDetID_CABFAC: TIntegerField;
    CDSVentaDetTIPOCPBTE: TStringField;
    CDSVentaDetCLASECPBTE: TStringField;
    CDSVentaDetNROCPBTE: TStringField;
    CDSVentaDetRENGLON: TFloatField;
    CDSVentaDetFECHAVTA: TSQLTimeStampField;
    CDSVentaDetCODIGOARTICULO: TStringField;
    CDSVentaDetDETALLE: TStringField;
    CDSVentaDetUNIDAD: TStringField;
    CDSVentaDetCANTIDAD: TFloatField;
    CDSVentaDetDESGLOZAIVA: TStringField;
    CDSVentaDetMODO_GRAVAMEN: TStringField;
    CDSVentaDetIVA_TASA: TFloatField;
    CDSVentaDetTIPOIVA_TASA: TIntegerField;
    CDSVentaDetIVA_SOBRETASA: TFloatField;
    CDSVentaDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSVentaDetDESCUENTO: TFloatField;
    CDSVentaDetTOTAL: TFloatField;
    CDSVentaDetDEPOSITO: TIntegerField;
    CDSVentaDetMARGEN: TFloatField;
    CDSVentaDetAFECTA_STOCK: TStringField;
    CDSVentaDetCALCULA_SOBRETASA: TStringField;
    CDSVentaDetGRAVADO_IB: TStringField;
    CDSVentaDetCON_NRO_SERIE: TStringField;
    CDSVentaDetCON_CODIGO_BARRA: TStringField;
    CDSVentaDetIB_TASA: TFloatField;
    CDSVentaDetTIPOIB_TASA: TIntegerField;
    CDSVentaDetLOTE: TIntegerField;
    CDSVentaDetPRECIO_EDITABLE: TStringField;
    CDSVentaDetID_MONEDA: TIntegerField;
    CDSVentaDetCOTIZACION: TFloatField;
    CDSVentaDetDETALLE_ADICIONAL: TStringField;
    CDSVentaDetGRUPO_DETALLE: TIntegerField;
    CDSVentaDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    CDSVentaDetCTA_ORDEN_NROCPBTE: TStringField;
    CDSVentaDetCTA_ORDEN_TIPOCPBTE: TStringField;
    CDSVentaDetCTA_ORDEN_CALSECPBTE: TStringField;
    CDSVentaDetMUESTRACONTENIDO: TFloatField;
    CDSVentaDetMUESTRAMONEDA: TStringField;
    DSVentaDet: TDataSource;
    CDSImpuestos: TClientDataSet;
    DSImpuestos: TDataSource;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_FCVTACAB: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    DSVentaCab: TDataSource;
    CDSVentaCab: TClientDataSet;
    CDSVentaCabID_FC: TIntegerField;
    CDSVentaCabTIPOCPBTE: TStringField;
    CDSVentaCabCLASECPBTE: TStringField;
    CDSVentaCabCODIGO: TStringField;
    CDSVentaCabNROCPBTE: TStringField;
    CDSVentaCabLETRAFAC: TStringField;
    CDSVentaCabSUCFAC: TStringField;
    CDSVentaCabNUMEROFAC: TStringField;
    CDSVentaCabNOMBRE: TStringField;
    CDSVentaCabRAZONSOCIAL: TStringField;
    CDSVentaCabDIRECCION: TStringField;
    CDSVentaCabCPOSTAL: TStringField;
    CDSVentaCabLOCALIDAD: TStringField;
    CDSVentaCabTIPOIVA: TIntegerField;
    CDSVentaCabCUIT: TStringField;
    CDSVentaCabLISTAPRECIO: TIntegerField;
    CDSVentaCabFECHAVTA: TSQLTimeStampField;
    CDSVentaCabFECHAVTO: TSQLTimeStampField;
    CDSVentaCabCONDICIONVTA: TIntegerField;
    CDSVentaCabANULADO: TStringField;
    CDSVentaCabNRORTO: TStringField;
    CDSVentaCabNETOGRAV1: TFloatField;
    CDSVentaCabNETOGRAV2: TFloatField;
    CDSVentaCabDSTO: TFloatField;
    CDSVentaCabDSTOIMPORTE: TFloatField;
    CDSVentaCabNETOEXEN1: TFloatField;
    CDSVentaCabNETOEXEN2: TFloatField;
    CDSVentaCabTOTAL: TFloatField;
    CDSVentaCabDEBE: TFloatField;
    CDSVentaCabIMPRESO: TStringField;
    CDSVentaCabOBSERVACION1: TStringField;
    CDSVentaCabOBSERVACION2: TStringField;
    CDSVentaCabCPTE_MANUAL: TStringField;
    CDSVentaCabSUCURSAL: TIntegerField;
    CDSVentaCabFACTURANRO: TStringField;
    CDSVentaCabZONA: TIntegerField;
    CDSVentaCabLDR: TIntegerField;
    CDSVentaCabDEPOSITO: TIntegerField;
    CDSVentaCabCALCULA_SOBRETASA: TStringField;
    CDSVentaCabDESGLOZAIVA: TStringField;
    CDSVentaCabNROENTREGA: TIntegerField;
    CDSVentaCabINGRESA_A_CTACTE: TStringField;
    CDSVentaCabINGRESA_LIBRO_IVA: TStringField;
    CDSVentaCabTIPO_REMITO: TStringField;
    CDSVentaCabIDREMITO: TIntegerField;
    CDSVentaCabREDUCIDA: TStringField;
    CDSVentaCabCOMSIONVENDEDOR: TFloatField;
    CDSVentaCabLIQUIDADA: TStringField;
    CDSVentaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSVentaCabVENDEDOR: TStringField;
    CDSVentaCabUSUARIO: TStringField;
    CDSVentaCabNC_CONTADO: TStringField;
    CDSVentaCabCAJA_POR_DEFECTO: TIntegerField;
    CDSVentaCabNRO_Z: TIntegerField;
    CDSVentaCabVALORES_RECIBIDOS: TFloatField;
    CDSVentaCabPERCEPCION_IB_TASA: TFloatField;
    CDSVentaCabPERCEPCION_IB_IMPORTE: TFloatField;
    CDSVentaCabPERCIBE_IB: TStringField;
    CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSVentaCabRENGLONES: TSmallintField;
    CDSVentaCabFECHA_HORA: TSQLTimeStampField;
    CDSVentaCabNOTAPEDIDO_ID: TIntegerField;
    CDSVentaCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSVentaCabID_FC_CLON: TIntegerField;
    CDSVentaCabPRESUPUESTO_ID: TIntegerField;
    CDSVentaCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSVentaCabMONEDA_CPBTE: TIntegerField;
    CDSVentaCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSVentaCabPOR_CTA_Y_ORDEN: TStringField;
    CDSVentaCabPROVEEDOR: TStringField;
    CDSVentaCabMUESTRACONDVENTA: TStringField;
    CDSVentaCabMUESTRADEPOSITO: TStringField;
    CDSVentaCabMUESTRASUCURSAL: TStringField;
    CDSVentaCabMUESTRALDR: TStringField;
    CDSVentaCabMUESTRADIRECCIONLDR: TStringField;
    CDSVentaCabMUESTRAIVA: TStringField;
    CDSVentaCabMUESTRACOMPROBANTE: TStringField;
    CDSVentaCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSVentaCabMUESTRAVENDEDOR: TStringField;
    CDSVentaCabMUESTRAPROVEEDOR: TStringField;
    CDSVentaCabTIPO_VTA: TStringField;
    CDSVentaDetIVA_TOTAL: TFloatField;
    CDSVentaDetUNIDADES_GRAVADO: TFloatField;
    CDSVentaDetUNIDADES_EXENTO: TFloatField;
    CDSVentaDetUNIDADES_TOTAL: TFloatField;
    CDSVentaDetCOSTO_GRAVADO: TFloatField;
    CDSVentaDetCOSTO_EXENTO: TFloatField;
    CDSVentaDetCOSTO_TOTAL: TFloatField;
    CDSVentaDetUNITARIO_GRAVADO: TFloatField;
    CDSVentaDetUNITARIO_EXENTO: TFloatField;
    CDSVentaDetUNITARIO_TOTAL: TFloatField;
    CDSVentaDetIVA_UNITARIO: TFloatField;
    RxLabel58: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel61: TJvLabel;
    RxLabel62: TJvLabel;
    RxLabel63: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel5: TJvLabel;
    CDSVentaDetMUESTRACODALTERNATIVO: TStringField;
    DBEFechaVta: TJvDBDateEdit;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSVentaDetUnitario_TotalGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSVentaDetTotalGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CDSVentaCabNetoGrav2GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSVentaDetCODIGOARTICULOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    Tipo:String;
    Id:Integer;
    Var_TasaIva:Real;
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraDetalleDescuento:String;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    ArchivoIni             :TIniFile;
    VerCodAlter            :Boolean;
    procedure AplicarMascarasNumericas;

    { Public declarations }
  END;

VAR
  FormMuestraCpbteCtaCteVta: TFormMuestraCpbteCtaCteVta;

IMPLEMENTATION

uses UDMain_FD;


{$R *.DFM}

procedure TFormMuestraCpbteCtaCteVta.AplicarMascarasNumericas;
VAR I:Byte;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_fd.QOpciones.ParamByName('Opcion').AsString:='VTADETUNITARI';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleUnitario:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetUnitario_Total).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSVentaDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETCANTIDA';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleCantidad:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetCantidad).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSVentaDetCantidad).DisplayFormat :=MascaraDetalleCantidad;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETDESCUEN';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleDescuento:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetDescuento).EditFormat    :=MascaraDetalleDescuento;
  TFloatField(CDSVentaDetDescuento).DisplayFormat :=MascaraDetalleDescuento;


  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETTOTAL';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleTotal:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetTotal).EditFormat        := MascaraDetalleTotal;
  TFloatField(CDSVentaDetTotal).DisplayFormat     := MascaraDetalleTotal;


  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVATASA';
  DMMain_FD.QOpciones.Open;
  MascaraIvaTasa:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetIVA_Tasa).EditFormat        := MascaraIvaTasa;
  TFloatField(CDSVentaDetIVA_Tasa).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSVentaDetIVA_SobreTasa).EditFormat   := MascaraIvaTasa;
  TFloatField(CDSVentaDetIVA_SobreTasa).DisplayFormat:= MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).EditFormat           := MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat        := MascaraIvaTasa;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVAIMPORTES';
  DMMain_FD.QOpciones.Open;
  MascaraIvaImporte:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSImpuestosIMPORTE).EditFormat        := MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat     := MascaraIvaImporte;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTACABECERA';
  DMMain_FD.QOpciones.Open;
  MascaraCabecera:=DMMain_FD.QOpciones.Fields[0].AsString;
  For i:=0 to CDSVentaCab.FieldCount-1 do
    begin
      if (CDSVentaCab.Fields[i].DataType=ftFMTBcd) Then
       begin
         // TFloatField(wwCDSVentaDet.Fields[i]).EditMask:='###,##0.0';
          TFloatField(CDSVentaCab.Fields[i]).EditFormat   :=MascaraCabecera;
          TFloatField(CDSVentaCab.fields[i]).DisplayFormat:=MascaraCabecera;
       end;
    end;
  DMMain_FD.QOpciones.Close;
end;


PROCEDURE TFormMuestraCpbteCtaCteVta.FormCreate(Sender: TObject);
BEGIN
   ArchivoIni      := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'consignacion.ini');
   VerCodAlter     := ArchivoIni.ReadBool('codigo', 'codigo', False);
   ArchivoIni.Free;
   Autosize := False;
  //AplicarMascarasNumericas;
END;

PROCEDURE TFormMuestraCpbteCtaCteVta.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  CDSVentaCab.Close;
  CDSVentaDet.Close;
  Action := caFree;
END;

procedure TFormMuestraCpbteCtaCteVta.FormDestroy(Sender: TObject);
begin
  FormMuestraCpbteCtaCteVta := NIL;
end;

procedure TFormMuestraCpbteCtaCteVta.FormResize(Sender: TObject);
begin
  if FormMuestraCpbteCtaCteVta<>nil then
    if FormMuestraCpbteCtaCteVta.Width<>694 then
      FormMuestraCpbteCtaCteVta.Width:=694;
    
end;

procedure TFormMuestraCpbteCtaCteVta.FormShow(Sender: TObject);
begin
  CDSVentaCab.close;
  CDSVentaCab.Params.ParamByName('TipoCpbte').Value :=Tipo;
  CDSVentaCab.Params.ParamByName('id').Value :=id;
  CDSVentaCab.Open;
  if CDSVentaCabNETOGRAV2.AsFloat>0 Then
    Var_TasaIva := (((CDSVentaCabTotal.AsFloat - CDSVentaCabNetoGrav2.AsFloat) * 100) /
      CDSVentaCabNetoGrav2.AsFloat)
  else
    Var_TasaIva:=0;
   lbReducida.Visible:=CDSVentaCabREDUCIDA.Value='S';
  CDSVentaDet.Close;
  CDSVentaDet.Params.ParamByName('id').Value:=id;
  CDSVentaDet.Open;
  CDSImpuestos.Close;
  CDSImpuestos.Open;
  pcDetalleFactura.ActivePageIndex:=0;
  AplicarMascarasNumericas;

end;

procedure TFormMuestraCpbteCtaCteVta.CDSVentaDetUnitario_TotalGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR
  Aux1, Aux2, Aux3: real;
BEGIN
  Aux1:= CDSVentaDetUnitario_Exento.AsFloat;
  Aux2:= CDSVentaDetUnitario_Gravado.AsFloat;
  IF CDSVentaCabDesglozaIva.Value = 'N' THEN
    Aux2:= Aux2 +  CDSVentaDetIVA_UNITARIO.AsFloat;
  //Aux2:= Moneda3D('+',MascaraDetalleUnitario,Aux2);
  Aux3:= Aux1 + Aux2;
  Text:= FormatFloat(MascaraDetalleUnitario,Aux3);//FloatToStrF(Aux3, ffFixed, 6, 3);
END;

procedure TFormMuestraCpbteCtaCteVta.CDSVentaDetCODIGOARTICULOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:=CDSVentaDetCODIGOARTICULO.Value;
  if VerCodAlter then
    Text:=CDSVentaDetMUESTRACODALTERNATIVO.Value;
end;

procedure TFormMuestraCpbteCtaCteVta.CDSVentaDetTotalGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR
  Aux1: real;
BEGIN
  Aux1 := Sender.AsFloat;
  IF CDSVentaCabDesglozaIva.Value = 'N' THEN
    Aux1 := Moneda3D('+',MascaraDetalleTotal,Aux1 * (1 + CDSVentaDetIVA_Tasa.AsFloat * 0.01));
  Text := FormatFloat(MascaraDetalleTotal, Aux1);
END;

procedure TFormMuestraCpbteCtaCteVta.CDSVentaCabNetoGrav2GetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR AUx:Real;
begin
  Aux:=Sender.AsFloat;
  if CDSVentaCabDESGLOZAIVA.Value='N' Then
    Aux:=Aux * (1+Var_TasaIva * 0.01);
  Text:=FormatFloat(MascaraCabecera,Aux);

end;

END.
