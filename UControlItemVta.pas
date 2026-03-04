unit UControlItemVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, DBClient, Provider, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit, SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, ComCtrls, JvLabel, JvDBControls, JvExControls,
  JvGradient, Buttons, ToolWin, ExtCtrls,DateUtils,Math, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormControlDetalleVta = class(TFormABMBase)
    Label1: TLabel;
    dbgCabecera: TJvDBGrid;
    dbgDetalle: TJvDBGrid;
    QCompraCab: TFDQuery;
    DSPCompraCab: TDataSetProvider;
    CDSCompraCab: TClientDataSet;
    DSCabecera: TDataSource;
    CDSCompraDet: TClientDataSet;
    DSPCompraDet: TDataSetProvider;
    CDSCompraCabID_FC: TIntegerField;
    CDSCompraCabTIPOCPBTE: TStringField;
    CDSCompraCabCLASECPBTE: TStringField;
    CDSCompraCabCODIGO: TStringField;
    CDSCompraCabNROCPBTE: TStringField;
    CDSCompraCabLETRAFAC: TStringField;
    CDSCompraCabSUCFAC: TStringField;
    CDSCompraCabNUMEROFAC: TStringField;
    CDSCompraCabNOMBRE: TStringField;
    CDSCompraCabRAZONSOCIAL: TStringField;
    CDSCompraCabDIRECCION: TStringField;
    CDSCompraCabCPOSTAL: TStringField;
    CDSCompraCabLOCALIDAD: TStringField;
    CDSCompraCabTIPOIVA: TIntegerField;
    CDSCompraCabCUIT: TStringField;
    CDSCompraCabLISTAPRECIO: TIntegerField;
    CDSCompraCabFECHAVTA: TSQLTimeStampField;
    CDSCompraCabFECHAVTO: TSQLTimeStampField;
    CDSCompraCabCONDICIONVTA: TIntegerField;
    CDSCompraCabANULADO: TStringField;
    CDSCompraCabNRORTO: TStringField;
    CDSCompraCabN_OPERACION2: TFloatField;
    CDSCompraCabNETOGRAV1: TFloatField;
    CDSCompraCabNETOGRAV2: TFloatField;
    CDSCompraCabDSTO: TFloatField;
    CDSCompraCabDSTOIMPORTE: TFloatField;
    CDSCompraCabNETOEXEN1: TFloatField;
    CDSCompraCabNETOEXEN2: TFloatField;
    CDSCompraCabTOTAL: TFloatField;
    CDSCompraCabDEBE: TFloatField;
    CDSCompraCabIMPRESO: TStringField;
    CDSCompraCabOBSERVACION1: TStringField;
    CDSCompraCabOBSERVACION2: TStringField;
    CDSCompraCabCPTE_MANUAL: TStringField;
    CDSCompraCabSUCURSAL: TIntegerField;
    CDSCompraCabFACTURANRO: TStringField;
    CDSCompraCabZONA: TIntegerField;
    CDSCompraCabLDR: TIntegerField;
    CDSCompraCabDEPOSITO: TIntegerField;
    CDSCompraCabCALCULA_SOBRETASA: TStringField;
    CDSCompraCabDESGLOZAIVA: TStringField;
    CDSCompraCabNROENTREGA: TIntegerField;
    CDSCompraCabINGRESA_A_CTACTE: TStringField;
    CDSCompraCabINGRESA_LIBRO_IVA: TStringField;
    CDSCompraCabTIPO_REMITO: TStringField;
    CDSCompraCabIDREMITO: TIntegerField;
    CDSCompraCabREDUCIDA: TStringField;
    CDSCompraCabCOMSIONVENDEDOR: TFloatField;
    CDSCompraCabLIQUIDADA: TStringField;
    CDSCompraCabFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSCompraCabVENDEDOR: TStringField;
    CDSCompraCabUSUARIO: TStringField;
    CDSCompraCabNC_CONTADO: TStringField;
    CDSCompraCabCAJA_POR_DEFECTO: TIntegerField;
    CDSCompraCabNRO_Z: TIntegerField;
    CDSCompraCabVALORES_RECIBIDOS: TFloatField;
    CDSCompraCabPERCEPCION_IB_TASA: TFloatField;
    CDSCompraCabPERCEPCION_IB_IMPORTE: TFloatField;
    CDSCompraCabPERCIBE_IB: TStringField;
    CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSCompraCabRENGLONES: TSmallintField;
    CDSCompraCabFECHA_HORA: TSQLTimeStampField;
    CDSCompraCabNOTAPEDIDO_ID: TIntegerField;
    CDSCompraCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSCompraCabID_FC_CLON: TIntegerField;
    CDSCompraCabPRESUPUESTO_ID: TIntegerField;
    CDSCompraCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSCompraCabMONEDA_CPBTE: TIntegerField;
    CDSCompraCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSCompraCabPOR_CTA_Y_ORDEN: TStringField;
    CDSCompraCabPROVEEDOR: TStringField;
    CDSCompraCabTIPO_VTA: TStringField;
    CDSCompraCabID_RECEPCION_GTIA: TIntegerField;
    CDSCompraCabJURIDICION: TIntegerField;
    CDSCompraCabJURIDICION_LOCALIDAD: TIntegerField;
    CDSCompraCabCON_GTIA_EXTENDIDA: TStringField;
    CDSCompraCabMESES_DE_GARANTIA: TIntegerField;
    CDSCompraCabPOLIZA: TStringField;
    CDSCompraCabVALOR_ASEGURADO: TFloatField;
    CDSCompraCabABONO_PERIODO: TStringField;
    CDSCompraCabNUMERO_OPERACION: TStringField;
    CDSCompraCabSALDO_ACTUAL_CC: TFloatField;
    CDSCompraCabID_NOTA_CAMBIO: TIntegerField;
    CDSCompraCabMUESTRASUCURSAL: TStringField;
    CDSCompraCabMUESTRACOMPROBANTE: TStringField;
    CDSCompraCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSCompraDetID: TIntegerField;
    CDSCompraDetID_CABFAC: TIntegerField;
    CDSCompraDetTIPOCPBTE: TStringField;
    CDSCompraDetCLASECPBTE: TStringField;
    CDSCompraDetNROCPBTE: TStringField;
    CDSCompraDetRENGLON: TFloatField;
    CDSCompraDetFECHAVTA: TSQLTimeStampField;
    CDSCompraDetCODIGOARTICULO: TStringField;
    CDSCompraDetDETALLE: TStringField;
    CDSCompraDetUNIDAD: TStringField;
    CDSCompraDetCANTIDAD: TFloatField;
    CDSCompraDetDESGLOZAIVA: TStringField;
    CDSCompraDetMODO_GRAVAMEN: TStringField;
    CDSCompraDetIVA_TASA: TFloatField;
    CDSCompraDetTIPOIVA_TASA: TIntegerField;
    CDSCompraDetIVA_SOBRETASA: TFloatField;
    CDSCompraDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSCompraDetDESCUENTO: TFloatField;
    CDSCompraDetIVA_TOTAL: TFloatField;
    CDSCompraDetTOTAL_GRAVADO: TFloatField;
    CDSCompraDetTOTAL_EXENTO: TFloatField;
    CDSCompraDetTOTAL: TFloatField;
    CDSCompraDetDEPOSITO: TIntegerField;
    CDSCompraDetMARGEN: TFloatField;
    CDSCompraDetAFECTA_STOCK: TStringField;
    CDSCompraDetCALCULA_SOBRETASA: TStringField;
    CDSCompraDetGRAVADO_IB: TStringField;
    CDSCompraDetCON_NRO_SERIE: TStringField;
    CDSCompraDetCON_CODIGO_BARRA: TStringField;
    CDSCompraDetIB_TASA: TFloatField;
    CDSCompraDetTIPOIB_TASA: TIntegerField;
    CDSCompraDetLOTE: TIntegerField;
    CDSCompraDetPRECIO_EDITABLE: TStringField;
    CDSCompraDetID_MONEDA: TIntegerField;
    CDSCompraDetCOTIZACION: TFloatField;
    CDSCompraDetDETALLE_ADICIONAL: TStringField;
    CDSCompraDetGRUPO_DETALLE: TIntegerField;
    CDSCompraDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    CDSCompraDetCTA_ORDEN_NROCPBTE: TStringField;
    CDSCompraDetCTA_ORDEN_TIPOCPBTE: TStringField;
    CDSCompraDetCTA_ORDEN_CALSECPBTE: TStringField;
    CDSCompraDetMUESTRACONTENIDO: TFloatField;
    CDSCompraDetMUESTRAMONEDA: TStringField;
    CDSCompraDetMESES_GTIA: TIntegerField;
    CDSCompraDetUNIDADES_GRAVADO: TFloatField;
    CDSCompraDetUNIDADES_EXENTO: TFloatField;
    CDSCompraDetUNIDADES_TOTAL: TFloatField;
    CDSCompraDetCOSTO_GRAVADO: TFloatField;
    CDSCompraDetCOSTO_EXENTO: TFloatField;
    CDSCompraDetCOSTO_TOTAL: TFloatField;
    CDSCompraDetUNITARIO_GRAVADO: TFloatField;
    CDSCompraDetUNITARIO_EXENTO: TFloatField;
    CDSCompraDetUNITARIO_TOTAL: TFloatField;
    CDSCompraDetIVA_UNITARIO: TFloatField;
    TraerFc: TAction;
    Label2: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    chbPorDia: TCheckBox;
    UpDown1: TUpDown;
    BuscarArticulo: TAction;
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
    chbIVA: TCheckBox;
    JvDBFindEdit2: TJvDBFindEdit;
    procedure CDSCompraCabAfterScroll(DataSet: TDataSet);
    procedure TraerFcExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure dbgDetalleEnter(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSCompraDetCODIGOARTICULOSetText(Sender: TField;
      const Text: string);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConfirmaExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgCabeceraDblClick(Sender: TObject);
    procedure CDSCompraDetTOTALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSCompraDetUNITARIO_TOTALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlDetalleVta: TFormControlDetalleVta;

implementation
uses UDMain_FD, UBuscadorArticulos, UFactura_2, UFacturaCtdo_2, UTiketVta;
{$R *.dfm}

procedure TFormControlDetalleVta.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  // si el proveedore es mercaderias y/o servicios
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    CDSCompraDetCodigoArticuloSetText(CDSCompraDetCODIGOARTICULO, FormBuscadorArticulos.Codigo);

end;

procedure TFormControlDetalleVta.BuscarExecute(Sender: TObject);
begin
//  inherited;
  TraerFc.Execute;
end;

procedure TFormControlDetalleVta.CDSCompraCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSCompraDet.Close;
  CDSCompraDet.Params.ParamByName('id').Value:=CDSCompraCabID_FC.Value;
  CDSCompraDet.Open;
end;

procedure TFormControlDetalleVta.CDSCompraDetCODIGOARTICULOSetText(
  Sender: TField; const Text: string);
var s:string;
Var TNetoG,TNetoE,Total,UNetoG,UNetoE,UTotal,
    Aux1,Aux2:Extended;
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSCompraDet.State=dsBrowse then
        CDSCompraDet.Edit;
      Sender.AsString:=Text;

      S:=Sender.AsString;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));

      Sender.AsString:=s; ;

      CDSStock.Close;
      CDSStock.Params.ParamByName('codigo').Value:=s;
      CDSStock.Open;
      if Not(CDSStock.IsEmpty) then
        begin
          CDSCompraDetDETALLE.Value:= CDSStockDETALLE_STK.Value;
          CDSCompraDetUNIDAD.Value := CDSStockUNIDAD.Value;

          if chbIVA.Checked then
            begin
              CDSCompraDetTIPOIVA_TASA.Value     := CDSStockTASA_IVA.Value;
              CDSCompraDetTIPOIVA_SOBRETASA.Value:= CDSStockSOBRETASA_IVA.Value;

              DMMain_FD.QIva.Close;
              DMMain_FD.QIva.ParamByName('id').Value:=CDSStockTASA_IVA.Value;
              DMMain_FD.QIva.Open;
              CDSCompraDetIVA_TASA.AsFloat:=DMMain_FD.QIvaTASA.ASFloat;
              DMMain_FD.QIva.Close;

              DMMain_FD.QIva.Close;
              DMMain_FD.QIva.ParamByName('id').Value:=CDSStockSOBRETASA_IVA.Value;
              DMMain_FD.QIva.Open;
              CDSCompraDetIVA_SOBRETASA.AsFloat:=DMMain_FD.QIvaTASA.ASFloat;
              DMMain_FD.QIva.Close;

              TNetoG:=CDSCompraDetTOTAL_GRAVADO.AsFloat;
              TNetoE:=CDSCompraDetTOTAL_EXENTO.AsFloat;
              Total :=CDSCompraDetTOTAL_GRAVADO.AsFloat+CDSCompraDetIVA_TOTAL.AsFloat;

              Aux1:= TNetoG + CDSCompraDetIVA_TOTAL.AsFloat; //Total Final Actual
              // calculo el nuevo Neto Gravado
              CDSCompraDetTOTAL_GRAVADO.AsFloat := RoundTo( Aux1 / (1+CDSCompraDetIVA_TASA.AsFloat*0.01),-3);
              CDSCompraDetTOTAL_GRAVADO.AsFloat := RoundTo(CDSCompraDetTOTAL_GRAVADO.AsFloat,-2);

              CDSCompraDetIVA_TOTAL.AsFloat     := Total - CDSCompraDetTOTAL_GRAVADO.AsFloat;

              UNetoG:=CDSCompraDetUNITARIO_GRAVADO.AsFloat;
              UNetoE:=CDSCompraDetUNITARIO_EXENTO.AsFloat;
              UTotal:=CDSCompraDetUNITARIO_TOTAL.AsFloat+CDSCompraDetIVA_UNITARIO.AsFloat;

              Aux1:= UNetoG + CDSCompraDetIVA_UNITARIO.AsFloat; //Total Final Actual
              // calculo el nuevo Neto Gravado
              CDSCompraDetUNITARIO_GRAVADO.AsFloat := Aux1 / (1+CDSCompraDetIVA_TASA.AsFloat*0.01);
              CDSCompraDetIVA_UNITARIO.AsFloat     := UTotal-CDSCompraDetUNITARIO_GRAVADO.AsFloat;

            end;

          CDSCompraDet.Post;
          CDSCompraDet.ApplyUpdates(0);
        end;
    end;
end;

procedure TFormControlDetalleVta.CDSCompraDetTOTALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var aux:Extended;
begin
  inherited;
  if CDSCompraDetDESGLOZAIVA.Value='N' then
    begin
      Aux:=RoundTo((CDSCompraDetTOTAL_GRAVADO.AsFloat+
                    CDSCompraDetTOTAL_EXENTO.AsFloat+
                    CDSCompraDetIVA_TOTAL.AsFloat),-3);
    end
  else
    begin
      Aux:=RoundTo((CDSCompraDetTOTAL_GRAVADO.AsFloat+
            CDSCompraDetTOTAL_EXENTO.AsFloat),-3);
    end;

 Text:=FloatToStr(Aux);

end;

procedure TFormControlDetalleVta.CDSCompraDetUNITARIO_TOTALGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
var aux:Extended;
begin
  inherited;
  if CDSCompraDetDESGLOZAIVA.Value='N' then
    begin
      Aux:=(CDSCompraDetUNITARIO_GRAVADO.AsFloat+
            CDSCompraDetUNITARIO_EXENTO.AsFloat+
            CDSCompraDetIVA_UNITARIO.AsFloat);
    end
  else
    begin
      Aux:=(CDSCompraDetUNITARIO_GRAVADO.AsFloat+
            CDSCompraDetUNITARIO_EXENTO.AsFloat);
    end;
 Text:=FormatFloat(',0.00',Aux);
end;

procedure TFormControlDetalleVta.ConfirmaExecute(Sender: TObject);
begin
  //inherited;
 if Not(CDSCompraDet.State in [dsBrowse]) then
    CDSCompraDet.Post;
  CDSCompraDet.ApplyUpdates(0);
  TraerFc.Execute;
end;

procedure TFormControlDetalleVta.dbgCabeceraDblClick(Sender: TObject);
begin
  inherited;
 if ((CDSCompraCabTIPOCPBTE.Value='FC') or (CDSCompraCabTIPOCPBTE.Value='NC')) then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew  :=CDSCompraCabID_FC.AsString;
      FormCpbte_2.TipoCpbte:=CDSCompraCabTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSCompraCabTIPOCPBTE.Value='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
        FormCpbteCtdo_2.DatoNew  :=CDSCompraCabID_FC.AsString;
        FormCpbteCtdo_2.TipoCpbte:=CDSCompraCabTIPOCPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
      if (CDSCompraCabTIPOCPBTE.Value='TK') then
        begin
          if Not(Assigned(FormTicketVta)) then
            FormTicketVta:=TFormTicketVta.Create(Self);
          FormTicketVta.DatoNew  :=CDSCompraCabID_FC.AsString;
          FormTicketVta.TipoCpbte:=CDSCompraCabTIPOCPBTE.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
      end

end;

procedure TFormControlDetalleVta.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
 if dbgDetalle.SelectedIndex>0  then
    dbgDetalle.SelectedIndex:=0;
end;

procedure TFormControlDetalleVta.dbgDetalleEnter(Sender: TObject);
begin
  inherited;
 dbgDetalle.SelectedIndex:=0;
end;

procedure TFormControlDetalleVta.dbgDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
        begin
          IF dbgDetalle.SelectedField = CDSCompraDetCodigoArticulo THEN
            BuscarArticulo.Execute;
        end;
    END;
end;

procedure TFormControlDetalleVta.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormControlDetalleVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlDetalleVta.FormCreate(Sender: TObject);
begin
 // inherited;
 AutoSize:=True;

end;

procedure TFormControlDetalleVta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlDetalleVta:=nil;
end;

procedure TFormControlDetalleVta.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
//  if m=1 Then
//    begin
//      m:=12;y:=y-1;
//    end
//  else
//    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
 // Buscar.Execute;
  Desde.SetFocus;

end;

procedure TFormControlDetalleVta.TraerFcExecute(Sender: TObject);
begin
  inherited;
  CDSCompraCab.IndexName:='';
  CDSCompraCab.IndexDefs.Clear;
  CDSCompraCab.Close;
  CDSCompraCab.Params.ParamByName('desde').Value:=desde.date;
  CDSCompraCab.Params.ParamByName('hasta').Value:=hasta.date;
  CDSCompraCab.Open;
  dbgCabecera.Width := dbgCabecera.Width+1;
  dbgCabecera.Width := dbgCabecera.Width-1;
  dbgDetalle.Width  := dbgDetalle.Width+1;
  dbgDetalle.Width  := dbgDetalle.Width-1;


end;

procedure TFormControlDetalleVta.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  if chbPorDia.Checked=False then
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
      Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;
  TraerFc.Execute;
  //  Desde.SetFocus;

end;


end.
