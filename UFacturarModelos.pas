unit UFacturarModelos;

interface

uses
  DBGrids, JvExDBGrids, JvDBGrid, UABMBase, FMTBcd, Grids, DB, DBClient,
  Provider, JvExControls, StdCtrls, JvComponentBase, JvFormPlacement, ImgList,
  Controls, Classes, ActnList, ComCtrls, JvLabel,System.SysUtils,
  JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls,Dialogs,Math, JvDBLookup,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, System.Actions,Vcl.Forms,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormFacturarModelos = class(TFormABMBase)
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DSPModeloCab: TDataSetProvider;
    DSPModeloDet: TDataSetProvider;
    DSModeloCab: TDataSource;
    DSSucursal: TDataSource;
    DSTipoComprob: TDataSource;
    edObs1: TEdit;
    edObs2: TEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SellAll: TAction;
    UnselectAll: TAction;
    Facturar: TAction;
    DSGrupo: TDataSource;
    Label5: TLabel;
    rxcSucursal: TJvDBLookupCombo;
    rxcTipoComprobante: TJvDBLookupCombo;
    rxcGrupo: TJvDBLookupCombo;
    CDSModeloCab: TClientDataSet;
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
    CDSModeloCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSModeloDet: TClientDataSet;
    CDSModeloDetID: TIntegerField;
    CDSModeloDetID_CABMODELO: TIntegerField;
    CDSModeloDetTIPOCPBTE: TStringField;
    CDSModeloDetCLASECPBTE: TStringField;
    CDSModeloDetCODIGOARTICULO: TStringField;
    CDSModeloDetDETALLE: TStringField;
    CDSModeloDetUNIDAD: TStringField;
    CDSModeloDetDESGLOZAIVA: TStringField;
    CDSModeloDetMODO_GRAVAMEN: TStringField;
    CDSModeloDetTIPOIVA_TASA: TIntegerField;
    CDSModeloDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSModeloDetDEPOSITO: TIntegerField;
    CDSModeloDetAFECTA_STOCK: TStringField;
    CDSModeloDetCALCULA_SOBRETASA: TStringField;
    CDSModeloDetGRAVADO_IB: TStringField;
    dbgFacturasModelos: TJvDBGrid;
    JvDBStatusLabel1: TJvDBStatusLabel;
    CDSModeloDetID_MONEDA: TIntegerField;
    QModeloCab: TFDQuery;
    CDSModeloCabTOTAL: TFloatField;
    CDSModeloCabNETOGRAV1: TFloatField;
    CDSModeloCabNETOGRAV2: TFloatField;
    CDSModeloCabDSTO: TFloatField;
    CDSModeloCabDSTOIMPORTE: TFloatField;
    CDSModeloCabNETOEXEN1: TFloatField;
    CDSModeloCabNETOEXEN2: TFloatField;
    QModeloDet: TFDQuery;
    CDSModeloDetRENGLON: TFloatField;
    CDSModeloDetCANTIDAD: TFloatField;
    CDSModeloDetUNITARIO_TOTAL: TFloatField;
    CDSModeloDetUNITARIO_GRAVADO: TFloatField;
    CDSModeloDetUNITARIO_EXENTO: TFloatField;
    CDSModeloDetCOSTO_GRAVADO: TFloatField;
    CDSModeloDetCOSTO_EXENTO: TFloatField;
    CDSModeloDetCOSTO_TOTAL: TFloatField;
    CDSModeloDetCOTIZACION: TFloatField;
    CDSModeloDetIVA_UNITARIO: TFloatField;
    CDSModeloDetIVA_TOTAL: TFloatField;
    CDSModeloDetTOTAL_GRAVADO: TFloatField;
    CDSModeloDetTOTAL_EXENTO: TFloatField;
    CDSModeloDetIVA_TASA: TFloatField;
    CDSModeloDetIVA_SOBRETASA: TFloatField;
    CDSModeloDetDESCUENTO: TFloatField;
    CDSModeloDetTOTAL: TFloatField;
    CDSModeloDetMARGEN: TFloatField;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QTipoComprob: TFDQuery;
    QTipoComprobID_COMPROBANTE: TIntegerField;
    QTipoComprobTIPO_COMPROB: TStringField;
    QTipoComprobCLASE_COMPROB: TStringField;
    QTipoComprobDENOMINACION: TStringField;
    QTipoComprobSUCURSAL: TIntegerField;
    QTipoComprobLETRA: TStringField;
    QTipoComprobPREFIJO: TStringField;
    QTipoComprobNUMERARCION_PROPIA: TStringField;
    QTipoComprobNUMERO: TStringField;
    QTipoComprobTOMA_NRO_DE: TIntegerField;
    QTipoComprobAFECTA_IVA: TStringField;
    QTipoComprobAFECTA_CC: TStringField;
    QTipoComprobDESGLOZA_IVA: TStringField;
    QTipoComprobCOMPRA_VENTA: TStringField;
    QTipoComprobCOPIAS: TIntegerField;
    QTipoComprobREPORTE: TStringField;
    QTipoComprobIMPRIME: TStringField;
    QTipoComprobFISCAL: TStringField;
    QTipoComprobNOMBREIMPRESORA: TStringField;
    QTipoComprobPENDIENTEIMPRESION: TStringField;
    QTipoComprobLINEAS_DETALLE: TSmallintField;
    QTipoComprobCALCULA_IVA_ARTICULOS: TStringField;
    QTipoComprobDEFECTO: TStringField;
    QTipoComprobCAJA_DEFECTO: TIntegerField;
    QTipoComprobDIVIDE_IVA: TStringField;
    QTipoComprobFACTURAELECTRONICA: TStringField;
    QTipoComprobEN_USO: TStringField;
    QTipoComprobCODIGO_AFIP: TStringField;
    QTipoComprobID_AJUSTECC: TIntegerField;
    QTipoComprobCENTRO_COSTO: TIntegerField;
    QTipoComprobFILTRO_COMPROBANTES: TStringField;
    QTipoComprobDEPOSITO: TIntegerField;
    QTipoComprobULTIMONRO: TIntegerField;
    QTipoComprobEDITAR_NRO: TStringField;
    QGrupo: TFDQuery;
    QGrupoID: TIntegerField;
    QGrupoDETALLE: TStringField;
    QStock: TFDQuery;
    QStockPRECIO: TFloatField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockFIJACION_PRECIO_EXENTO: TFloatField;
    QStockFIJACION_PRECIO_TOTAL: TFloatField;
    QStockRECARGO: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rxcSucursalChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure rxcTipoComprobanteClick(Sender: TObject);
    procedure rxcSucursalClick(Sender: TObject);
    procedure dbgModelosTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure SellAllExecute(Sender: TObject);
    procedure UnselectAllExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure rxcGrupoClick(Sender: TObject);
    procedure dbgFacturasModelosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    PROCEDURE AgregaCabecera;
    procedure AgregaDetalle;

  end;

var
  FormFacturarModelos: TFormFacturarModelos;

implementation

{$R *.DFM}

uses DMVenta, UFactura_2, UDMain_FD;

procedure TFormFacturarModelos.AgregaCabecera;
begin
  with DatosVentas DO
  begin
    FormCpbte_2.SucursalPorDefecto:=CDSModeloCabSUCURSAL.AsInteger;
    FormCpbte_2.DepositoPorDefecto:=CDSModeloCabDEPOSITO.AsInteger;
    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,CDSModeloCabSUCURSAL.AsString);
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSModeloCabCODIGO.AsString);
    CDSVentaCabLDRSetText(CDSVentaCabLDR,CDSModeloCabLDR.AsString);
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,CDSModeloCabDEPOSITO.AsString);
    CDSVentaCabCondicionVtaSetText(CDSVentaCabCondicionVta,CDSModeloCabCONDICIONVTA.AsString);
    if CDSModeloCabVENDEDOR.AsString<>'' Then
      CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,CDSModeloCabVENDEDOR.AsString);

    CDSVentaCabANULADO.Value     :='N';
    CDSVentaCabIMPRESO.Value     :='N';
    CDSVentaCabOBSERVACION1.Value:=edObs1.Text;
    CDSVentaCabOBSERVACION2.Value:=edObs2.Text;
    CDSVentaCabCPTE_MANUAL.Value :='N';
    CDSVentaCabREDUCIDA.Value    :='N';
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,CDSModeloCabID_TIPOCOMPROBANTE.AsString);
    CDSVentaCabZONA.Value:=CDSModeloCabZONA.Value;
    CDSVentaCabNROENTREGA.Value        :=1;

    CDSVentaCabFECHA_HORA.AsDateTime := Now;
    CDSVentaCabUSUARIO.Value         := DMMain_FD.UsuarioActivo;
    CDSVentaCabTIPO_VTA.Value        :='S';// de servicio

    // por que si no me agreagaba el iva
    FormCpbte_2.DiscriminaIva:='S';

 end;
end;

procedure TFormFacturarModelos.AgregaDetalle;
Var UnitarioTotal,UnitarioConIva:Extended;
begin
  inherited;
  with DatosVentas DO
    begin
    CDSVentaDet.Append;
//    wwCDSVentaDetID.Value               :=IBGFc_Det.Increment(1);
    QStock.Close;
    QStock.ParamByName('Codigo').Value  := CDSModeloDetCODIGOARTICULO.Value;
    QStock.ParamByName('deposito').Value:= CDSModeloDetDEPOSITO.Value;
    QStock.Open;
//    wwCDSVentaDetID_CABFAC.Value        :=wwCDSVentaCabID_FC.Value;
//    wwCDSVentaDetTIPOCPBTE.Value        :=wwCDSVentaCabTIPOCPBTE.Value;
//    wwCDSVentaDetNROCPBTE.Value         :=wwCDSVentaCabNROCPBTE.Value;
    //wwCDSVentaDetRENGLON.Value          :=CDSRtosDetRENGLON.Value;
//    wwCDSVentaDetFECHAVTA.Value         :=wwCDSVentaCabFECHAVTA.Value;
    CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSModeloDetCODIGOARTICULO.AsString);
    CDSVentaDetDetalle.Value          := CDSModeloDetDETALLE.Value;
    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSModeloDetCANTIDAD.AsString);
    CDSVentaDetDESGLOZAIVA.Value      := CDSModeloDetDESGLOZAIVA.Value;
    CDSVentaDetDEPOSITO.Value         := CDSModeloDetDEPOSITO.Value;
    CDSVentaDetMARGEN.AsFloat         := CDSModeloDetMARGEN.AsFloat;
    CDSVentaDetCLASECPBTE.Value       := CDSModeloCabCLASECPBTE.Value;
    CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,CDSModeloDetDESCUENTO.AsString);
    CDSVentaDetUNITARIO_GRAVADO.AsFloat := CDSModeloDetUNITARIO_GRAVADO.AsFloat;
    CDSVentaDetUNITARIO_EXENTO.AsFloat  := CDSModeloDetUNITARIO_EXENTO.AsFloat;
    CDSVentaDetCOSTO_GRAVADO.AsFloat    := CDSModeloDetCOSTO_GRAVADO.AsFloat;
    CDSVentaDetCOSTO_EXENTO.AsFloat     := CDSModeloDetCOSTO_EXENTO.AsFloat;
    CDSVentaDetCOSTO_TOTAL.AsFloat      := CDSModeloDetCOSTO_TOTAL.AsFloat;
    UnitarioTotal                       := CDSModeloDetUNITARIO_GRAVADO.AsFloat + CDSModeloDetUNITARIO_EXENTO.AsFloat;
    UnitarioCOnIva                      := CDSModeloDetUNITARIO_GRAVADO.AsFloat + CDSModeloDetIVA_UNITARIO.AsFloat + CDSModeloDetUNITARIO_EXENTO.AsFloat;
    if CDSVentaDetDesglozaIVA.Value='N' Then
       CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioConIva))
     else
        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
    QStock.Close;
 //   wwCDSVentaDet.Post;
  end;
end;


procedure TFormFacturarModelos.BuscarExecute(Sender: TObject);
begin
  inherited;

  CDSModeloCab.Close;
  CDSModeloCab.IndexDefs.Clear;
  CDSModeloCab.IndexName:='';
  CDSModeloCab.Params.ParamByName('Sucursal').Value:=rxcSucursal.KeyValue;
  CDSModeloCab.Params.ParamByName('Tipo').Value    :=rxcTipoComprobante.LookupSource.DataSet.fieldByName('Tipo_comprob').Value;
  CDSModeloCab.Params.ParamByName('Clase').Value   :=rxcTipoComprobante.LookupSource.DataSet.fieldByName('Clase_comprob').Value;
  CDSModeloCab.Params.ParamByName('Letra').Value   :=rxcTipoComprobante.LookupSource.DataSet.fieldByName('Letra').Value;
  CDSModeloCab.Params.ParamByName('Grupo').Value   :=rxcGrupo.KeyValue;

  CDSModeloCab.Open;

  TFloatField(dbgFacturasModelos.Fields[5]).DisplayFormat:='0.00';
end;

procedure TFormFacturarModelos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  QSucursal.Open;
  QTipoComprob.Open;
  QGrupo.Open;
end;

procedure TFormFacturarModelos.rxcSucursalChange(Sender: TObject);
begin
  inherited;
  QTipoComprob.Close;
  QTipoComprob.ParamByName('Suc').Value:=rxcSucursal.KeyValue;
  QTipoComprob.Open;
end;

procedure TFormFacturarModelos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QSucursal.Close;
  QTipoComprob.Close;
  QGrupo.Close;
  CDSModeloCab.Close;
  CDSModeloDet.Close;
  Action:=caFree;
end;

procedure TFormFacturarModelos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFacturarModelos:=nil;
end;

procedure TFormFacturarModelos.rxcTipoComprobanteClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormFacturarModelos.rxcSucursalClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormFacturarModelos.dbgFacturasModelosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
Var campo:String;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgFacturasModelos.DataSource.DataSet as TClientDataSet do
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

procedure TFormFacturarModelos.dbgModelosTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  inherited;
  if AFieldName<>'Selected' Then
  CDSModeloCab.IndexFieldNames:=AFieldName;
end;


procedure TFormFacturarModelos.SellAllExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSModeloCab.IsEmpty) Then
    dbgFacturasModelos.SelectAll
  else
    ShowMessage('No hay Facturas para seleccionar....');

end;

procedure TFormFacturarModelos.UnselectAllExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSModeloCab.IsEmpty) Then
    dbgFacturasModelos.UnselectAll
  else
    ShowMessage('No hay Facturas para deseleccionar....');

end;

procedure TFormFacturarModelos.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  if Not(CDSModeloCab.IsEmpty) Then
    begin
      //ShowMessage('Facturando....');

      if Not(Assigned(FormCpbte_2)) Then
        FormCpbte_2:=TFormCpbte_2.Create(self);
      Facturar.Execute;
      //FormCpbte_2.Show;
      //FormCpbte_2.Confirma.Execute;
    //  FormCpbte_2.DBGrillaDetalle.SetFocus;
    end
  else
    ShowMessage('No hay Modelos para Facturar....');

end;

procedure TFormFacturarModelos.FacturarExecute(Sender: TObject);
VAR I:Integer;
begin
  inherited;
  for i:=0 to dbgFacturasModelos.SelectedRows.Count-1 do
    begin
       //CDSModeloCab.GotoBookmark(dbgFacturasModelos.SelectedRows);
       {$IF CompilerVersion < 24}
         dbgFacturasModelos.DataSource.DataSet.GotoBookmark(Pointer(dbgFacturasModelos.SelectedRows.Items[i]));
       {$ELSE}
         dbgFacturasModelos.DataSource.DataSet.GotoBookmark((dbgFacturasModelos.SelectedRows.Items[i]));
       {$ENDIF}

       FormCpbte_2.Agregar.Execute;
       AgregaCabecera;
       CDSModeloDet.Close;
       CDSModeloDet.Params.ParamByName('id').Value := CDSModeloCabID_FC.Value;
       CDSModeloDet.Open;
       CDSModeloDet.First;
       while Not(CDSModeloDet.Eof) Do // Ingreso el detalle
         begin
           AgregaDetalle;
           CDSModeloDet.Next;
         end;
       FormCpbte_2.Confirma.Execute;
   end;
end;

procedure TFormFacturarModelos.rxcGrupoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.
