unit UControlItemCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  DBClient, Provider, Mask, JvExMask, JvToolEdit, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, JvMaskEdit, JvDBFindEdit,DateUtils, Data.FMTBcd, Data.DB,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormControlDetalleComp = class(TFormABMBase)
    DSPCompraCab: TDataSetProvider;
    DSPCompraDet: TDataSetProvider;
    CDSCompraDet: TClientDataSet;
    CDSCompraDetID: TIntegerField;
    CDSCompraDetID_CABFAC: TIntegerField;
    CDSCompraDetTIPOCPBTE: TStringField;
    CDSCompraDetNROCPBTE: TStringField;
    CDSCompraDetCODIGOPROVEEDOR: TStringField;
    CDSCompraDetCodigoArticulo: TStringField;
    CDSCompraDetDETALLE: TStringField;
    CDSCompraDetUNIDAD: TStringField;
    CDSCompraDetDESGLOZAIVA: TStringField;
    CDSCompraDetMODO_GRAVAMEN: TStringField;
    CDSCompraDetTIPOIVA_TASA: TIntegerField;
    CDSCompraDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSCompraDetDEPOSITO: TIntegerField;
    CDSCompraDetAFECTA_STOCK: TStringField;
    CDSCompraDetCALCULA_SOBRETASA: TStringField;
    CDSCompraDetCLASECPBTE: TStringField;
    CDSCompraDetCON_NRO_SERIE: TStringField;
    CDSCompraDetGRAVADO_IB: TStringField;
    CDSCompraDetID_MONEDA: TIntegerField;
    CDSCompraDetMUESTRAMONEDA: TStringField;
    CDSCompraDetCANTIDAD: TFMTBCDField;
    CDSCompraDetID_RECEPCION_CAB: TIntegerField;
    CDSCompraDetID_RECEPCION_DET: TIntegerField;
    CDSCompraDetNRORECEPCION: TStringField;
    CDSCompraDetRENGLON: TFMTBCDField;
    CDSCompraDetFECHACOMPRA: TSQLTimeStampField;
    CDSCompraDetIVA_TASA: TFMTBCDField;
    CDSCompraDetIVA_SOBRETASA: TFMTBCDField;
    CDSCompraDetMARGEN: TFMTBCDField;
    CDSCompraDetCOTIZACION: TFMTBCDField;
    CDSCompraCab: TClientDataSet;
    CDSCompraCabID_FC: TIntegerField;
    CDSCompraCabTIPOCPBTE: TStringField;
    CDSCompraCabCLASECPBTE: TStringField;
    CDSCompraCabNROCPBTE: TStringField;
    CDSCompraCabCODIGO: TStringField;
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
    CDSCompraCabFECHACOMPRA: TSQLTimeStampField;
    CDSCompraCabFECHAVTO: TSQLTimeStampField;
    CDSCompraCabCONDICIONCOMPRA: TIntegerField;
    CDSCompraCabANULADO: TStringField;
    CDSCompraCabORDENCOMPRA: TStringField;
    CDSCompraCabN_OPERACION2: TFMTBCDField;
    CDSCompraCabNETOGRAV1: TFMTBCDField;
    CDSCompraCabDSTO: TFMTBCDField;
    CDSCompraCabDSTOIMPORTE: TFMTBCDField;
    CDSCompraCabNETOGRAV2: TFMTBCDField;
    CDSCompraCabNETOEXEN1: TFMTBCDField;
    CDSCompraCabNETOEXEN2: TFMTBCDField;
    CDSCompraCabIMPORTEEXCLUIDO2: TFMTBCDField;
    CDSCompraCabIMPORTEEXCLUIDO1: TFMTBCDField;
    CDSCompraCabTOTAL: TFMTBCDField;
    CDSCompraCabDEBE: TFMTBCDField;
    CDSCompraCabAPLICA: TStringField;
    CDSCompraCabOBSERVACION1: TStringField;
    CDSCompraCabOBSERVACION2: TStringField;
    CDSCompraCabSUCURSALCOMPRA: TIntegerField;
    CDSCompraCabZONA: TIntegerField;
    CDSCompraCabDEPOSITO: TIntegerField;
    CDSCompraCabDESGLOZAIVA: TStringField;
    CDSCompraCabCALCULA_SOBRETASA: TStringField;
    CDSCompraCabFECHAFISCAL: TSQLTimeStampField;
    CDSCompraCabNETOMONOTRIBUTO1: TFMTBCDField;
    CDSCompraCabNETOMONOTRIBUTO2: TFMTBCDField;
    CDSCompraCabCPBTE_INTERNO: TStringField;
    CDSCompraCabINGRESA_A_CTACTE: TStringField;
    CDSCompraCabINGRESA_LIBRO_IVA: TStringField;
    CDSCompraCabREDUCIDA: TStringField;
    CDSCompraCabTIPO_PROVEEDOR: TStringField;
    CDSCompraCabJURIDICCION: TIntegerField;
    CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField;
    CDSCompraCabFECHA_HORA: TSQLTimeStampField;
    CDSCompraCabUSUARIO: TStringField;
    CDSCompraCabTOTAL_UNIDADES: TFMTBCDField;
    CDSCompraCabMONEDA_CPBTE: TIntegerField;
    CDSCompraCabMONEDA_CPBTE_COTIZACION: TFMTBCDField;
    CDSCompraCabMUESTRACONDCOMPRA: TStringField;
    CDSCompraCabMUESTRADEPOSITO: TStringField;
    CDSCompraCabMUESTRASUCURSAL: TStringField;
    CDSCompraCabMUESTRACOMPROBANTE: TStringField;
    CDSCompraCabMUESTRAMONEDACPBTE: TStringField;
    CDSCompraCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSCompraCabMUESTRASIGNOMONEDACPBTE: TStringField;
    DSCabecera: TDataSource;
    Label1: TLabel;
    ceProveedor: TJvComboEdit;
    edNombreProveedor: TEdit;
    DSPProveedor: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    BuscarProveedor: TAction;
    TraerFacturas: TAction;
    QCompraCab: TSQLQuery;
    QCompraCabID_FC: TIntegerField;
    QCompraCabTIPOCPBTE: TStringField;
    QCompraCabCLASECPBTE: TStringField;
    QCompraCabNROCPBTE: TStringField;
    QCompraCabCODIGO: TStringField;
    QCompraCabLETRAFAC: TStringField;
    QCompraCabSUCFAC: TStringField;
    QCompraCabNUMEROFAC: TStringField;
    QCompraCabNOMBRE: TStringField;
    QCompraCabRAZONSOCIAL: TStringField;
    QCompraCabDIRECCION: TStringField;
    QCompraCabCPOSTAL: TStringField;
    QCompraCabLOCALIDAD: TStringField;
    QCompraCabTIPOIVA: TIntegerField;
    QCompraCabCUIT: TStringField;
    QCompraCabFECHACOMPRA: TSQLTimeStampField;
    QCompraCabFECHAVTO: TSQLTimeStampField;
    QCompraCabCONDICIONCOMPRA: TIntegerField;
    QCompraCabANULADO: TStringField;
    QCompraCabORDENCOMPRA: TStringField;
    QCompraCabN_OPERACION2: TFMTBCDField;
    QCompraCabNETOGRAV1: TFMTBCDField;
    QCompraCabDSTO: TFMTBCDField;
    QCompraCabDSTOIMPORTE: TFMTBCDField;
    QCompraCabNETOGRAV2: TFMTBCDField;
    QCompraCabNETOEXEN1: TFMTBCDField;
    QCompraCabNETOEXEN2: TFMTBCDField;
    QCompraCabIMPORTEEXCLUIDO2: TFMTBCDField;
    QCompraCabIMPORTEEXCLUIDO1: TFMTBCDField;
    QCompraCabTOTAL: TFMTBCDField;
    QCompraCabDEBE: TFMTBCDField;
    QCompraCabAPLICA: TStringField;
    QCompraCabOBSERVACION1: TStringField;
    QCompraCabOBSERVACION2: TStringField;
    QCompraCabSUCURSALCOMPRA: TIntegerField;
    QCompraCabZONA: TIntegerField;
    QCompraCabDEPOSITO: TIntegerField;
    QCompraCabDESGLOZAIVA: TStringField;
    QCompraCabCALCULA_SOBRETASA: TStringField;
    QCompraCabFECHAFISCAL: TSQLTimeStampField;
    QCompraCabNETOMONOTRIBUTO1: TFMTBCDField;
    QCompraCabNETOMONOTRIBUTO2: TFMTBCDField;
    QCompraCabCPBTE_INTERNO: TStringField;
    QCompraCabINGRESA_A_CTACTE: TStringField;
    QCompraCabINGRESA_LIBRO_IVA: TStringField;
    QCompraCabREDUCIDA: TStringField;
    QCompraCabTIPO_PROVEEDOR: TStringField;
    QCompraCabJURIDICCION: TIntegerField;
    QCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField;
    QCompraCabFECHA_HORA: TSQLTimeStampField;
    QCompraCabUSUARIO: TStringField;
    QCompraCabTOTAL_UNIDADES: TFMTBCDField;
    QCompraCabMONEDA_CPBTE: TIntegerField;
    QCompraCabMONEDA_CPBTE_COTIZACION: TFMTBCDField;
    QCompraCabMUESTRACONDCOMPRA: TStringField;
    QCompraCabMUESTRADEPOSITO: TStringField;
    QCompraCabMUESTRASUCURSAL: TStringField;
    QCompraCabMUESTRACOMPROBANTE: TStringField;
    QCompraCabID_TIPOCOMPROBANTE: TIntegerField;
    QCompraCabMUESTRAMONEDACPBTE: TStringField;
    QCompraCabMUESTRASIGNOMONEDACPBTE: TStringField;
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
    CDSStockCONTENIDO_COMPRA: TFMTBCDField;
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
    dbgCabecera: TJvDBGrid;
    dbgDetalle: TJvDBGrid;
    JvDBFindEdit1: TJvDBFindEdit;
    Label2: TLabel;
    CDSCompraDetDESCUENTO: TFMTBCDField;
    CDSCompraDetTOTAL: TFMTBCDField;
    CDSCompraDetCOSTO_IMP_INTERNO: TFMTBCDField;
    CDSCompraDetUNIDADES_IMP_INTERNOS: TFMTBCDField;
    CDSCompraDetUNITARIO_IMP_INTERNO: TFMTBCDField;
    CDSCompraDetUNIDADES_TOTAL: TFloatField;
    CDSCompraDetUNIDADES_EXENTO: TFloatField;
    CDSCompraDetUNIDADES_GRAVADO: TFloatField;
    CDSCompraDetUNITARIO_TOTAL: TFloatField;
    CDSCompraDetUNITARIO_EXENTO: TFloatField;
    CDSCompraDetUNITARIO_GRAVADO: TFloatField;
    CDSCompraDetCOSTO_TOTAL: TFloatField;
    CDSCompraDetCOSTO_EXENTO: TFloatField;
    CDSCompraDetCOSTO_GRAVADO: TFloatField;
    Label3: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    Label4: TLabel;
    UpDown1: TUpDown;
    procedure ceProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure TraerFacturasExecute(Sender: TObject);
    procedure CDSCompraCabAfterScroll(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSCompraDetCodigoArticuloSetText(Sender: TField;
      const Text: string);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure dbgDetalleEnter(Sender: TObject);
    procedure dbgCabeceraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlDetalleComp: TFormControlDetalleComp;

implementation

Uses UDMain_FD, UBuscadorProveedor, UBuscadorArticulos;
{$R *.dfm}

procedure TFormControlDetalleComp.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  //FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
 // FormBuscadorArticulos.CampoNro          := 1;
  // si el proveedore es mercaderias y/o servicios
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    CDSCompraDetCodigoArticuloSetText(CDSCompraDetCODIGOARTICULO, FormBuscadorArticulos.Codigo);

end;

procedure TFormControlDetalleComp.BuscarExecute(Sender: TObject);
begin
 // inherited;
  TraerFacturas.Execute;
end;

procedure TFormControlDetalleComp.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
 IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
//  QProveedores.Close;
//  QProveedores.Open;
//  IF wwBuscadorProveedores.Execute THEN
    BEGIN
      ceProveedor.Text := FormBuscadorProveedor.Codigo;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        BEGIN
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
          TraerFacturas.Execute;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
        END;
    END;
//  QProveedores.Close;
end;

procedure TFormControlDetalleComp.CDSCompraCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSCompraDet.Close;
  CDSCompraDet.Params.ParamByName('id').Value:=CDSCompraCabID_FC.Value;
  CDSCompraDet.Open;
  
end;

procedure TFormControlDetalleComp.CDSCompraDetCodigoArticuloSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if CDSCompraDet.State=dsBrowse then
    CDSCompraDet.Edit;
  Sender.AsString:=Text;
  CDSStock.Close;
  CDSStock.Params.ParamByName('codigo').Value:=Text;
  CDSStock.Open;
  if Not(CDSStock.IsEmpty) then
    begin
      CDSCompraDetDETALLE.Value:= CDSStockDETALLE_STK.Value;
      CDSCompraDetUNIDAD.Value := CDSStockUNIDAD.Value;
      CDSCompraDet.Post;
    end;
end;

procedure TFormControlDetalleComp.ceProveedorKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceProveedor.Text))) +
        ceProveedor.Text;
      ceProveedor.Text := Dato;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        begin
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
        end;
      ceProveedor.SetFocus;
      ceProveedor.SelectAll;
    END
  else
    if key=#10 Then
      begin
        Key:=#0;
        BuscarProveedor.Execute;
      end;
end;

procedure TFormControlDetalleComp.ConfirmaExecute(Sender: TObject);
var p:TBookmark;
begin
//  inherited;
  p:=CDSCompraCab.GetBookmark;
  if Not(CDSCompraDet.State in [dsBrowse]) then
    CDSCompraDet.Post;
  CDSCompraDet.ApplyUpdates(0);
  TraerFacturas.Execute;
  CDSCompraCab.GotoBookmark(p);
  CDSCompraCab.FreeBookmark(p);
end;

procedure TFormControlDetalleComp.dbgCabeceraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
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

procedure TFormControlDetalleComp.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  if dbgDetalle.SelectedIndex>0  then
    dbgDetalle.SelectedIndex:=0;
end;

procedure TFormControlDetalleComp.dbgDetalleEnter(Sender: TObject);
begin
  inherited;
  dbgDetalle.SelectedIndex:=0;
end;

procedure TFormControlDetalleComp.dbgDetalleKeyPress(Sender: TObject;
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

procedure TFormControlDetalleComp.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormControlDetalleComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action:=caFree;
end;

procedure TFormControlDetalleComp.FormCreate(Sender: TObject);
begin
 // inherited;
  AutoSize:=True;
end;

procedure TFormControlDetalleComp.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlDetalleComp:=nil;
end;

procedure TFormControlDetalleComp.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.Date))
end;

procedure TFormControlDetalleComp.TraerFacturasExecute(Sender: TObject);
begin
  inherited;
  CDSCompraCab.IndexName:='';
  CDSCompraCab.IndexDefs.Clear;
  CDSCompraCab.Close;
  CDSCompraCab.Params.ParamByName('codigo').Value:=Trim(ceProveedor.Text);
  CDSCompraCab.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSCompraCab.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSCompraCab.Open;
end;

procedure TFormControlDetalleComp.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.date));
  TraerFacturas.Execute;
  //  Desde.SetFocus;

end;

end.
