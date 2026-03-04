unit UGeneradorCupones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvExControls, JvDBLookup, DB, JvComponentBase,
  ImgList,   ActnList,
  ComCtrls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, DBClient, Provider, CheckLst,
  IBGenerator, dxSkinsCore, dxSkinsDefaultPainters, Mask, JvExMask, JvToolEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxSkinscxPCPainter, cxPC, frxClass, frxExportPDF, frxDBSet,
  DBXCommon, IniFiles,
  JvAppStorage, JvAppIniStorage, System.Actions, Data.FMTBcd, Data.SqlExpr,
  JvFormPlacement, JvLabel, JvDBControls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog,
  System.ImageList, frCoreClasses;

type
  TFormGeneradorCupones = class(TFormABMBase)
    DSGruposAbonos: TDataSource;
    DSGrupos: TDataSource;
    dbcGrupos: TJvDBLookupCombo;
    DSPGrupos: TDataSetProvider;
    CDSGrupos: TClientDataSet;
    CDSGruposCLIENTE: TStringField;
    CDSGruposMUESTRANOMBRE: TStringField;
    CDSGruposID_CUPON_GRUPO: TIntegerField;
    CDSGruposMUESTRAGRUPO: TStringField;
    dbgGrupos: TJvDBGrid;
    Label1: TLabel;
    edAnio: TEdit;
    Label3: TLabel;
    upAnio: TUpDown;
    DSCupones: TDataSource;
    DSPCupones: TDataSetProvider;
    CDSCupones: TClientDataSet;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SellAll: TAction;
    Unsel: TAction;
    CDSCuponesNUMERO: TStringField;
    CDSCuponesCLIENTE: TStringField;
    CDSCuponesPERIODO: TStringField;
    CDSCuponesCODIGOARTICULO: TStringField;
    CDSCuponesFACTURA_ID: TIntegerField;
    CDSCuponesFACTURA_TIPO: TStringField;
    CDSCuponesFACTURA_CLASE: TStringField;
    CDSCuponesFACTURA_NROCPBTE: TStringField;
    GenerarCupones: TAction;
    ibgCupon: TIBGenerator;
    Guardar: TAction;
    CancelarCupones: TAction;
    Label2: TLabel;
    edFechaEmision: TJvDateEdit;
    Facturar: TAction;
    Facturacion: TAction;
    CDSGruposCODIGOARTICULO: TStringField;
    CDSGruposID_FACTURAPORDEFECTO: TIntegerField;
    CDSGruposSUCURSAL: TIntegerField;
    cbMeses: TComboBox;
    Label4: TLabel;
    CDSCuponesID_FACTURAPORDEFECTO: TIntegerField;
    CDSCuponesNOMBRECPBTE: TStringField;
    frxReport: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    EnviarCorreo: TAction;
    frCupon: TfrxDBDataset;
    CDSCuponesMUESTRACLIENTE: TStringField;
    CDSCuponesCORREOELECTRONICO: TStringField;
    CDSGruposCORREOELECTRONICO: TStringField;
    Button1: TButton;
    ToolButton1: TToolButton;
    chbEnviarCorreo: TCheckBox;
    chkCBReducido: TCheckBox;
    QGrupos: TFDQuery;
    QGruposCLIENTE: TStringField;
    QGruposMUESTRANOMBRE: TStringField;
    QGruposID_CUPON_GRUPO: TIntegerField;
    QGruposMUESTRAGRUPO: TStringField;
    QGruposPRECIO1: TFloatField;
    QGruposPRECIO2: TFloatField;
    QGruposVTO_1: TSmallintField;
    QGruposVTO_2: TSmallintField;
    QGruposCODIGOARTICULO: TStringField;
    QGruposID_FACTURAPORDEFECTO: TIntegerField;
    QGruposSUCURSAL: TIntegerField;
    QGruposCORREOELECTRONICO: TStringField;
    CDSGruposPRECIO1: TFloatField;
    CDSGruposPRECIO2: TFloatField;
    CDSGruposVTO_1: TSmallintField;
    CDSGruposVTO_2: TSmallintField;
    QBuscarCupon: TFDQuery;
    QCupones: TFDQuery;
    QCuponesID: TIntegerField;
    QCuponesNUMERO: TStringField;
    QCuponesFECHA_GENERACION: TSQLTimeStampField;
    QCuponesFECHA: TSQLTimeStampField;
    QCuponesCLIENTE: TStringField;
    QCuponesPERIODO: TStringField;
    QCuponesFECHA_VTO1: TSQLTimeStampField;
    QCuponesFECHA_VTO2: TSQLTimeStampField;
    QCuponesIMPORTE_1: TFloatField;
    QCuponesIMPORTE_2: TFloatField;
    QCuponesCODIGOARTICULO: TStringField;
    QCuponesFACTURA_ID: TIntegerField;
    QCuponesFACTURA_FECHA: TSQLTimeStampField;
    QCuponesFACTURA_TIPO: TStringField;
    QCuponesFACTURA_CLASE: TStringField;
    QCuponesFACTURA_NROCPBTE: TStringField;
    QCuponesPAGADO: TStringField;
    QCuponesID_FACTURAPORDEFECTO: TIntegerField;
    QCuponesMUESTRACLIENTE: TStringField;
    QCuponesCORREOELECTRONICO: TStringField;
    CDSCuponesFECHA_VTO1: TSQLTimeStampField;
    CDSCuponesFECHA_VTO2: TSQLTimeStampField;
    CDSCuponesIMPORTE_1: TFloatField;
    CDSCuponesIMPORTE_2: TFloatField;
    CDSCuponesFECHA_GENERACION: TSQLTimeStampField;
    CDSCuponesFECHA: TSQLTimeStampField;
    CDSCuponesFACTURA_FECHA: TSQLTimeStampField;
    QUltimoNumero: TFDQuery;
    QComprob: TFDQuery;
    CDSComprob: TClientDataSet;
    DSPComprob: TDataSetProvider;
    CDSComprobID_COMPROBANTE: TIntegerField;
    CDSComprobDENOMINACION: TStringField;
    QGruposAb: TFDQuery;
    QGruposAbID: TIntegerField;
    QGruposAbDETALLE: TStringField;
    QGruposAbCODIGOARTICULO: TStringField;
    CDSGrupoAbonados: TClientDataSet;
    DSPGrupoAbonados: TDataSetProvider;
    QGruposAbPRECIO1: TFloatField;
    QGruposAbPRECIO2: TFloatField;
    CDSGrupoAbonadosID: TIntegerField;
    CDSGrupoAbonadosDETALLE: TStringField;
    CDSGrupoAbonadosCODIGOARTICULO: TStringField;
    CDSGrupoAbonadosPRECIO1: TFloatField;
    CDSGrupoAbonadosPRECIO2: TFloatField;
    CDSCuponesID: TIntegerField;
    CDSCuponesPAGADO: TStringField;
    pgEstado: TProgressBar;
    QGruposMUESTRALETRA: TStringField;
    CDSGruposMUESTRALETRA: TStringField;
    chbLetra: TCheckBox;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesSUCURSAL: TIntegerField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    DSPInscripcion: TDataSetProvider;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    QCuponesCODIGOBARRA1: TStringField;
    CDSCuponesCODIGOBARRA1: TStringField;
    Label5: TLabel;
    cbSucursales: TJvDBLookupCombo;
    DSSucursal: TDataSource;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    Panel2: TPanel;
    dbgCupones: TJvDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    chPorCtayOrden: TCheckBox;
    QVerificaComp: TFDQuery;
    QVerificaCompID_COMPROBANTE: TIntegerField;
    QCuponesBONIFICADO: TStringField;
    CDSCuponesBONIFICADO: TStringField;
    QCondiciones: TFDQuery;
    DSPCondiciones: TDataSetProvider;
    CDSCondiciones: TClientDataSet;
    CDSCondicionesID: TIntegerField;
    CDSCondicionesCODIGO: TStringField;
    CDSCondicionesDETALLE: TStringField;
    CDSCondicionesDESDE: TSQLTimeStampField;
    CDSCondicionesHASTA: TSQLTimeStampField;
    CDSCondicionesPRECIO: TFloatField;
    CDSCondicionesESTADO: TStringField;
    CDSCondicionesPRECIO_2: TFloatField;
    QCuponesMUESTRACONDIVA: TIntegerField;
    CDSCuponesMUESTRACONDIVA: TIntegerField;
    CDSComprobTIPO_COMPROB: TStringField;
    CDSComprobCLASE_COMPROB: TStringField;
    CDSComprobSUCURSAL: TIntegerField;
    CDSComprobLETRA: TStringField;
    CDSComprobPREFIJO: TStringField;
    CDSComprobNUMERARCION_PROPIA: TStringField;
    CDSComprobNUMERO: TStringField;
    CDSComprobTOMA_NRO_DE: TIntegerField;
    CDSComprobAFECTA_IVA: TStringField;
    CDSComprobAFECTA_CC: TStringField;
    CDSComprobDESGLOZA_IVA: TStringField;
    CDSComprobCOMPRA_VENTA: TStringField;
    CDSComprobCOPIAS: TIntegerField;
    CDSComprobREPORTE: TStringField;
    CDSComprobIMPRIME: TStringField;
    CDSComprobFISCAL: TStringField;
    CDSComprobNOMBREIMPRESORA: TStringField;
    CDSComprobPENDIENTEIMPRESION: TStringField;
    CDSComprobLINEAS_DETALLE: TSmallintField;
    CDSComprobCALCULA_IVA_ARTICULOS: TStringField;
    CDSComprobDEFECTO: TStringField;
    CDSComprobCAJA_DEFECTO: TIntegerField;
    CDSComprobDIVIDE_IVA: TStringField;
    CDSComprobFACTURAELECTRONICA: TStringField;
    QGruposMUESTRACONDIVA: TIntegerField;
    CDSGruposMUESTRACONDIVA: TIntegerField;
    QComprobante: TFDQuery;
    QComprobanteID_COMPROBANTE: TIntegerField;
    QComprobanteDESGLOZA_IVA: TStringField;
    QComprobanteAFECTA_IVA: TStringField;
    chSoloFcX: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbcGruposClick(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure edAnioChange(Sender: TObject);
    procedure SellAllExecute(Sender: TObject);
    procedure UnselExecute(Sender: TObject);
    procedure GenerarCuponesExecute(Sender: TObject);
    procedure GuardarExecute(Sender: TObject);
    procedure CancelarCuponesExecute(Sender: TObject);
    procedure DSCuponesStateChange(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure FacturacionExecute(Sender: TObject);
    procedure dbgGruposTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgCuponesDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure CDSCuponesAfterScroll(DataSet: TDataSet);
    procedure CDSCuponesNOMBRECPBTEChange(Sender: TField);
    procedure dbgGruposDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ListaNoEnviados,ListaEnviados,ListaCupones,ListaFacturado:TStringList;
    FacturadoOk:Boolean;
    procedure AgregarCabecera;
    procedure AgregaDetalle;
  end;

var
  FormGeneradorCupones: TFormGeneradorCupones;

implementation

uses UFactura_2, DMVenta, UCorreo, UListCpbteNoImportados,
     UClientes_2, UDMain_FD;

{$R *.dfm}

procedure TFormGeneradorCupones.AgregarCabecera;
begin
  with DatosVentas DO
  begin
    if (cbSucursales.KeyValue<=0) then
      Raise Exception.Create('No hay Sucursal seleccionada...');
    CDSVentaCabFECHAVTA.AsDateTime :=edFechaEmision.Date;
    CDSVentaCabSUCURSALSetText(CDSVentaCabSUCURSAL,IntToStr(cbSucursales.KeyValue));
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSCuponesCLIENTE.AsString);

    if (CDSCuponesID_FACTURAPORDEFECTO.AsString<>'') then
      begin
        QVerificaComp.Close;
        QVerificaComp.ParamByName('id').Value      := CDSCuponesID_FACTURAPORDEFECTO.AsInteger;
        QVerificaComp.ParamByName('sucursal').Value:= cbSucursales.KeyValue;
        QVerificaComp.Open;
        if QVerificaCompID_COMPROBANTE.AsString<>'' then
          CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,CDSCuponesID_FACTURAPORDEFECTO.AsString)
      end;
    CDSVentaCabLDRSetText(CDSVentaCabLDR,'0');
//    wwCDSVentaCabDepositoSetText(wwCDSVentaCabDeposito,CDSRtosCabDEPOSITO.AsString);
    if chPorCtayOrden.Checked then
      CDSVentaCabPOR_CTA_Y_ORDEN.Value:='S';
    
    IF (DMMain_FD.GetCondicionVtaPorDefecto(CDSCuponesCLIENTE.AsString)>-1) THEN
      CDSVentaCabCondicionVtaSetText(CDSVentaCabCondicionVta,IntToStr(DMMain_FD.GetCondicionVtaPorDefecto(CDSCuponesCLIENTE.AsString)));


    CDSVentaCabANULADO.Value      := 'N';
    CDSVentaCabIMPRESO.Value      := 'N';
    CDSVentaCabOBSERVACION1.Value := 'Servicio Correspondiente '+  Copy(CDSCuponesPERIODO.Value,1,4)+'/'+Copy(CDSCuponesPERIODO.Value,5,2);
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
    CDSVentaCabTIPO_VTA.Value         := 'S';// factura de servicios

    CDSCupones.Edit;
    CDSCuponesFACTURA_ID.Value         :=CDSVentaCabID_FC.Value;
    CDSCuponesFACTURA_FECHA.AsDateTime :=CDSVentaCabFECHAVTA.AsDateTime;
    CDSCuponesFACTURA_TIPO.Value       :=CDSVentaCabTIPOCPBTE.Value;
    CDSCuponesFACTURA_CLASE.Value      :=CDSVentaCabCLASECPBTE.Value;
    CDSCuponesFACTURA_NROCPBTE.Value   :=CDSVentaCabNROCPBTE.Value;
    CDSCupones.Post;
    // por que si no me agreagaba el iva
    FormCpbte_2.DiscriminaIva:='S';

  end;
end;

procedure TFormGeneradorCupones.AgregaDetalle;
Var UnitarioTotal:Real;
begin
  inherited;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSCuponesCODIGOARTICULO.AsString);
    //wwCDSVentaDetDetalle.Value          :=CDSRtosDetDETALLE.Value;
      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
      CDSVentaDetDESGLOZAIVA.Value      :=CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
      CDSVentaDetMARGEN.AsFloat         :=0;
      CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,'0');
      CDSVentaDetUNITARIO_EXENTO.AsFloat  :=0;

      CDSVentaDetCOSTO_EXENTO.AsFloat     :=0;

      CDSVentaDetUNITARIO_GRAVADO.AsFloat :=CDSCuponesIMPORTE_1.AsFloat /(1+ CDSVentaDetIVA_Tasa.AsFloat*0.01);

      CDSVentaDetCOSTO_GRAVADO.AsFloat    :=CDSCuponesIMPORTE_1.AsFloat /(1+CDSVentaDetIVA_Tasa.AsFloat*0.01);

      CDSVentaDetCOSTO_TOTAL.AsFloat      :=CDSCuponesIMPORTE_1.AsFloat /(1+CDSVentaDetIVA_Tasa.AsFloat*0.01);

      UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

      if CDSVentaDetDesglozaIVA.Value='N' Then
        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal*(1+CDSVentaDetIVA_Tasa.AsFloat*0.01)))
      else
        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
      CDSVentaDet.Post;
    end;
end;


procedure TFormGeneradorCupones.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSGrupos.Close;
  CDSGrupos.Params.ParamByName('grupo').Value:=dbcGrupos.KeyValue;
  CDSGrupos.Open;
  CDSCupones.Close;
  CDSCupones.Params.ParamByName('id').Clear;
  CDSCupones.Open;
  dbgGrupos.Width:=dbgGrupos.Width+1;
  dbgGrupos.Width:=dbgGrupos.Width-1;

end;

procedure TFormGeneradorCupones.Button1Click(Sender: TObject);
begin
  inherited;
  if (ListaNoEnviados<>nil) and (ListaNoEnviados.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.mLista.Lines:=(ListaNoEnviados);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');
end;

procedure TFormGeneradorCupones.CancelarCuponesExecute(Sender: TObject);
begin
  inherited;
  CDSCupones.Close;
  CDSCupones.Params.ParamByName('id').Clear;
  CDSCupones.Open;
end;

procedure TFormGeneradorCupones.CDSCuponesAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  CDSComprob.Filtered:=False;
//  CDSComprob.Filter  :='';
//    begin
//      CDSInscripcion.Close;
//      CDSInscripcion.Params.ParamByName('codigo').Value:=CDSCuponesMUESTRACONDIVA.Value;
//      CDSInscripcion.Open;
//      CDSComprob.Filter   :='desgloza_iva = '+''''+CDSInscripcionDISCRIMINAIVA.Value+'''';
//      CDSComprob.Filtered :=True;
//    end;
 // dbgCupones.Refresh;
end;

procedure TFormGeneradorCupones.CDSCuponesNOMBRECPBTEChange(Sender: TField);
begin
  inherited;
  QComprobante.Close;
  QComprobante.ParamByName('id').Value:=CDSCuponesID_FACTURAPORDEFECTO.Value;
  QComprobante.Open;

  if CDSCuponesID_FACTURAPORDEFECTO.AsString<>'' then
  begin
    CDSInscripcion.Close;
    CDSInscripcion.Params.ParamByName('Codigo').AsInteger := CDSCuponesMUESTRACONDIVA.AsInteger;
    CDSInscripcion.Open;
    IF (CDSInscripcionCODIGO.AsString<>'') Then
      BEGIN
        if (CDSInscripcionDISCRIMINAIVA.Value='S') Then
          begin
            if ( QComprobanteDESGLOZA_IVA.Value='N') and (QComprobanteAFECTA_IVA.Value='S') then
              begin
                ShowMessage('Comprobante no permitido para la condicion de IVA del cliente...');
                CDSCuponesID_FACTURAPORDEFECTO.Clear;
              end;
          end
        else
          if (CDSInscripcionDISCRIMINAIVA.Value='N') Then
            begin
              if ( QComprobanteDESGLOZA_IVA.Value='S') then
                begin
                  ShowMessage('Comprobante no permitido para la condicion de IVA del cliente...');
                  CDSCuponesID_FACTURAPORDEFECTO.Clear;
                end;
            end;
        end;
    CDSInscripcion.Close;
  end;
  QComprobante.Close;

end;

procedure TFormGeneradorCupones.dbcGruposClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormGeneradorCupones.dbgCuponesDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  if gdSelected in State Then
    begin
      dbgCupones.Canvas.Brush.Color:=clBlack;
      dbgCupones.Canvas.Font.Color :=clYellow;
    end
  else

  if CDSCuponesBONIFICADO.Value='S' then
    dbgCupones.Canvas.Brush.Color:=clMoneyGreen
  else
    dbgCupones.Canvas.Brush.Color:=clWhite;

  dbgCupones.DefaultDataCellDraw(Rect,Field,State);
  
end;

procedure TFormGeneradorCupones.dbgGruposDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormClientes_2)) then
    FormClientes_2:=TFormClientes_2.Create(Self);
  FormClientes_2.DatoNew:=dbgGrupos.DataSource.DataSet.FieldByName('Cliente').Value;
  FormClientes_2.Recuperar.Execute;
  FormClientes_2.Show;

end;

procedure TFormGeneradorCupones.dbgGruposTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  CDSGrupos.IndexFieldNames:=Field.FieldName;
end;

procedure TFormGeneradorCupones.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormGeneradorCupones.DSCuponesStateChange(Sender: TObject);
begin
  inherited;
  Facturacion.Enabled      := (Not(DSCupones.DataSet.IsEmpty) and (DSCupones.State in [dsBrowse]));
  CancelarCupones.Enabled  := (Not(DSCupones.DataSet.IsEmpty) and (DSCupones.State in [dsBrowse]));
  GenerarCupones.Enabled   := (DSCupones.DataSet.IsEmpty) and (DSCupones.State in [dsBrowse]);
end;

procedure TFormGeneradorCupones.edAnioChange(Sender: TObject);
var d,m,y:Word;
x:byte;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  cbMeses.ItemIndex:=m;
end;

procedure TFormGeneradorCupones.EnviarCorreoExecute(Sender: TObject);
begin
  inherited;
  if LowerCase(Trim( CDSCuponesCORREOELECTRONICO.AsString))<>'' then
    begin
      if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
        CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\CuponAbono.fr3');
      //frxReport.Variables['Nombre']   :=''''+dbeNombre.Text+'''';

      frxReport.PrepareReport;

      frxPDFExport1.ShowDialog:=False;
      frxPDFExport1.FileName  :=ExtractFilePath(ParamStr(0))+'Archivos Temporales\cupon_'+CDSCuponesNUMERO.Value+'.pdf';
      frxReport.Export(frxPDFExport1);
      frxPDFExport1.ShowDialog:=True;

      if Not(Assigned(FormCorreo)) Then
        FormCorreo:=TFormCorreo.Create(Application);


      FormCorreo.CorreoDestino       :=LowerCase(CDSCuponesCORREOELECTRONICO.Value);
      FormCorreo.CorreoOrigen        :=DirCorreo;
      FormCorreo.edDireccion.Text    :=LowerCase(CDSCuponesCORREOELECTRONICO.Value);
      FormCorreo.Remitente           :=Remitente;
      FormCorreo.Destinatario        :=CDSCuponesCLIENTE.Value;
      FormCorreo.Puerto              :=Puerto;
      FormCorreo.NombreServidorCorreo:=NombreServidor;
      FormCorreo.NombreCuentaCorreo  :=NombreCuenta;
      FormCorreo.Clave               :=Clave;
      FormCorreo.Autenticacion       :=Autotenticacion;
      FormCorreo.Asunto              :='Cupon Abono del '+ FormatDateTime('dd-mm-yy',CDSCuponesFECHA.AsDateTime);
      FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\cupon_'+CDSCuponesNUMERO.Value+'.pdf');
      FormCorreo.Enviar.Execute;
      FormCorreo.Close;
      ListaEnviados.Add('Cupon:'+CDSCuponesNUMERO.AsString+'-'+CDSCuponesMUESTRACLIENTE.AsString);
    end
  else
    ListaNoEnviados.Add('Cupon:'+CDSCuponesNUMERO.AsString+'-'+CDSCuponesMUESTRACLIENTE.AsString);

end;

procedure TFormGeneradorCupones.FacturacionExecute(Sender: TObject);
var Enviar:Boolean;
begin
  inherited;
  ListaEnviados   :=TStringList.Create;
  ListaNoEnviados :=TStringList.Create;
  ListaFacturado  :=TStringList.Create;

  if Not(CDSCupones.IsEmpty) Then
    begin
      if Not(Assigned( FormCpbte_2)) Then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.FormStyle :=fsNormal;
      FormCpbte_2.Visible   :=False;
      pgEstado.Position:=0;
      if CDSCupones.RecordCount-1 >0 then
        pgEstado.Max:=CDSCupones.RecordCount-1;
      pgEstado.Min:=0;

      CDSCupones.First;
      while Not(CDSCupones.Eof) do
        begin
          pgEstado.Position:=pgEstado.Position+1;
          Application.ProcessMessages;
          Facturar.Execute;
          if Not(FacturadoOk) then
            ListaFacturado.Add('Ciente:'+CDSCuponesCLIENTE.AsString+'-'+ CDSCuponesMUESTRACLIENTE.AsString);
          Enviar:=true;
          if (DatosVentas.CDSVentaCabLETRAFAC.Value[1] in ['A','B','C']) and (chSoloFcX.Checked) Then
            Enviar:=False;
          if ((chbEnviarCorreo.Checked) and (Enviar=True)) then
             EnviarCorreo.Execute;
          CDSCupones.Next;
        end;

      FormCpbte_2.Salir.Execute;
      if Assigned(FormCpbte_2) then FreeAndNil(FormCpbte_2);

      DMMain_FD.fdcGestion.StartTransaction;
      try
        if CDSCupones.State<>dsBrowse then
          CDSCupones.Post;
        CDSCupones.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
      end;

      CDSCupones.Close;
      CDSCupones.Params.ParamByName('id').Clear;
      CDSCupones.Open;

      dbcGrupos.KeyValue:=0;

      CDSGrupos.Close;
      CDSGrupos.Params.ParamByName('grupo').Value:=dbcGrupos.KeyValue;
      CDSGrupos.Open;

    end
  else
    ShowMessage('No hay Cupones para Facturar....');

  if (ListaFacturado<>nil) and (ListaFacturado.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Self);
      FormListaNoImportados.mLista.Lines:=(ListaFacturado);
      FormListaNoImportados.Show;
    end;
  pgEstado.Position:=0;
  FreeAndNil(ListaFacturado);
end;

procedure TFormGeneradorCupones.FacturarExecute(Sender: TObject);
begin
  inherited;
  FormCpbte_2.Agregar.Execute;
  AgregarCabecera;
  AgregaDetalle;
  FormCpbte_2.Confirma.Execute;
  FacturadoOk:=FormCpbte_2.Generado;
end;

procedure TFormGeneradorCupones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(ListaNoEnviados);
  FreeAndNil(ListaEnviados);
  Action:=caFree;
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'generarcupones.ini');
  ArchivoIni.WriteBool('cupones', 'ctaorden', chPorCtayOrden.Checked);
  ArchivoIni.WriteBool('cupones', 'correo', chbEnviarCorreo.Checked);
  ArchivoIni.WriteBool('cupones', 'codigoreducido', chkCBReducido.Checked);
  ArchivoIni.WriteBool('cupones', 'SoloX', chSoloFcX.Checked);
  ArchivoIni.WriteInteger('cupones', 'Sucursal', cbSucursales.KeyValue);
  ArchivoIni.Free;
  //*************************************************************

end;

procedure TFormGeneradorCupones.FormCreate(Sender: TObject);
var d,m,y:Word;
x:byte;
begin
  inherited;
  AutoSize:=True;
  CDSGrupoAbonados.Open;
  CDSSucursal.Close;
  CDSSucursal.Open;
  DecodeDate(Date,y,m,d);
  upAnio.Position  :=y;
  cbMeses.ItemIndex:=m;
  edFechaEmision.Date:=EncodeDate(y,m,1);
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'generarcupones.ini');
  chPorCtayOrden.Checked := ArchivoIni.ReadBool('cupones', 'ctaorden', False);
  chbEnviarCorreo.Checked:= ArchivoIni.ReadBool('cupones', 'correo', True);
  chkCBReducido.Checked  := ArchivoIni.ReadBool('cupones', 'codigoreducido', True);
  chSoloFcX.Checked      := ArchivoIni.ReadBool('cupones', 'SoloX', False);
  cbSucursales.KeyValue  := ArchivoIni.ReadInteger('cupones', 'Sucursal', SucursalPorDefecto);
  ArchivoIni.Free;
  //*************************************************************


end;

procedure TFormGeneradorCupones.FormDestroy(Sender: TObject);
begin
  inherited;
  FormGeneradorCupones:=nil;
end;


procedure TFormGeneradorCupones.GenerarCuponesExecute(Sender: TObject);
var
  I,Rec: Integer;
  aux1,aux2,Letra :String;
  Fe1,Fe2  :String;
  Numero:Integer;
begin
   inherited;
   ListaCupones   :=TStringList.Create;
   ListaCupones.Clear;
   if CDSGrupos.IsEmpty then
     Raise Exception.Create('No se puede Generar cupones sin tener Grupos seleccionados...');

   if cbMeses.ItemIndex=0 then
     Raise Exception.Create('Debe elegir el mes para generar los cupones...');

   QUltimoNumero.Close;
   QUltimoNumero.Open;
   if QUltimoNumero.Fields[0].AsString='' then
     Numero:=0
   else
     Numero:=QUltimoNumero.Fields[0].AsInteger;
   QUltimoNumero.Close;
   CDSCupones.Close;
   CDSCupones.OPen;
   CDSGrupos.First;
   pgEstado.Max:=0;
   pgEstado.Position:=0;
 //  if CDSGrupos.RecordCount-1 >0 then
  //   pgEstado.Max:=CDSGrupos.RecordCount-1;
   pgEstado.Min:=0;

   if ((dbgGrupos.SelectedRows.Count-1) >0) then
     pgEstado.Max:=dbgGrupos.SelectedRows.Count-1;

   for rec := 0 to dbgGrupos.SelectedRows.count - 1 do
    begin
      {$IF CompilerVersion < 24}
        dbgGrupos.DataSource.DataSet.GotoBookmark(Pointer(dbgGrupos.SelectedRows.Items[rec]));
      {$ELSE}
        dbgGrupos.DataSource.DataSet.GotoBookmark((dbgGrupos.SelectedRows.Items[rec]));
      {$ENDIF}

      pgEstado.Position:=pgEstado.Position+1;
      Application.ProcessMessages;
      if dbgGrupos.SelectedRows.CurrentRowSelected then
        begin
          QBuscarCupon.Close;
          QBuscarCupon.ParamByName('cliente').Value  := dbgGrupos.DataSource.DataSet.FieldByName('Cliente').Value;
          QBuscarCupon.ParamByName('periodo').Value  := edAnio.Text+copy('00',1,2-length(IntToStr(cbMeses.ItemIndex)))+IntToStr(cbMeses.ItemIndex);
          QBuscarCupon.Open;
          if QBuscarCupon.Fields[0].AsString='' then
            begin
              i:=cbMeses.ItemIndex;
              CDSCupones.Append;
              Numero:=Numero+1;
              CDSCuponesID.Value:=ibgCupon.IncrementFD(1);
              CDSCuponesFECHA_GENERACION.AsDateTime := Date;
              CDSCuponesPAGADO.Value                := 'N';
              CDSCuponesNUMERO.Value           := Copy('00000000',1,8-length(IntToStr(Numero)))+IntToStr(numero);
              CDSCuponesFECHA.AsDateTime       := edFechaEmision.Date;
              CDSCuponesCLIENTE.Value          := dbgGrupos.DataSource.DataSet.FieldByName('Cliente').Value;
              CDSCuponesPERIODO.Value          := edAnio.Text+copy('00',1,2-length(IntToStr(i)))+IntToStr(i);
              CDSCuponesFECHA_VTO1.AsDateTime  := CDSCuponesFECHA.AsDateTime+dbgGrupos.DataSource.DataSet.FieldByName('vto_1').Value;
              CDSCuponesFECHA_VTO2.AsDateTime  := CDSCuponesFECHA.AsDateTime+dbgGrupos.DataSource.DataSet.FieldByName('vto_2').Value;
              CDSCuponesIMPORTE_1.AsFloat      := dbgGrupos.DataSource.DataSet.FieldByName('Precio1').Value;
              CDSCuponesIMPORTE_2.AsFloat      := dbgGrupos.DataSource.DataSet.FieldByName('Precio2').Value;
              CDSCuponesCODIGOARTICULO.Value   := dbgGrupos.DataSource.DataSet.FieldByName('CodigoArticulo').Value;
              CDSCuponesMUESTRACLIENTE.Value   := dbgGrupos.DataSource.DataSet.FieldByName('MuestraNombre').AsString;
              CDSCuponesCORREOELECTRONICO.Value:= LowerCase(dbgGrupos.DataSource.DataSet.FieldByName('correoelectronico').AsString);
              CDSCuponesMUESTRACONDIVA.Value   := dbgGrupos.DataSource.DataSet.FieldByName('MUESTRACONDIVA').Value;

              CDSCuponesBONIFICADO.AsString   :='N';

              CDSCondiciones.Close;
              CDSCondiciones.Params.ParamByName('codigo').Value  := CDSCuponesCLIENTE.ASString;
              CDSCondiciones.Params.ParamByName('fecha').AsDate  := CDSCuponesFECHA.AsDateTime;
              CDSCondiciones.Open;
              if (Not(CDSCondiciones.IsEmpty)) then
                begin
                  CDSCondiciones.First;
                  CDSCuponesIMPORTE_1.AsFloat     := CDSCondicionesPRECIO.AsFloat;
                  CDSCuponesIMPORTE_2.AsFloat     := CDSCondicionesPRECIO_2.AsFloat;
                  CDSCuponesBONIFICADO.AsString   :='S';
                end;
              CDSCondiciones.Close;

              Letra:=CDSGruposMUESTRALETRA.Value;
              if dbgGrupos.DataSource.DataSet.FieldByName('Id_FacturaPorDefecto').AsString<>'' then
                CDSCuponesID_FACTURAPORDEFECTO.Value:=dbgGrupos.DataSource.DataSet.FieldByName('Id_FacturaPorDefecto').Value
              else
                begin
                  QClientes.Close;
                  QClientes.ParamByName('Codigo').Value:=CDSGruposCLIENTE.Value;
                  QClientes.Open;

                  CDSInscripcion.Close;
                  CDSInscripcion.Params.ParamByName('Codigo').AsInteger := QClientesCONDICION_IVA.AsInteger;
                  CDSInscripcion.Open;
                  if (CDSInscripcionDISCRIMINAIVA.Value='S') then Letra:='A'
                  else
                    Letra:='B';
                  QClientes.Close;
                  CDSInscripcion.Close;
                end;

              aux1:=FormatFloat('0.00',CDSCuponesIMPORTE_1.AsFloat);
              aux2:=FormatFloat('0.00',CDSCuponesIMPORTE_2.AsFloat);
              Delete(Aux1,Pos('.',Aux1),1);
              Delete(Aux2,Pos('.',Aux2),1);
              Aux1:=copy('000000000000',1,12-length(aux1))+Aux1;
              Aux2:=copy('000000000000',1,12-length(aux2))+Aux2;
              fe1:=FormatDateTime('ddmmyyyy',CDSCuponesFECHA_VTO1.AsDateTime);
              fe2:=FormatDateTime('ddmmyyyy',CDSCuponesFECHA_VTO2.AsDateTime);

              CDSCuponesFACTURA_ID.Value    :=-1;
              CDSCuponesFACTURA_FECHA.Clear;
              CDSCuponesFACTURA_TIPO.Clear;
              CDSCuponesFACTURA_CLASE.Clear;
              CDSCuponesFACTURA_NROCPBTE.Clear;

              if chkCBReducido.Checked=False Then
                CDSCuponesCODIGOBARRA1.Value     := CDSCuponesNUMERO.Value+CDSCuponesCLIENTE.AsString+Fe1+Fe2+Aux1+Aux2
              else
                CDSCuponesCODIGOBARRA1.Value     := CDSCuponesNUMERO.Value+CDSCuponesCLIENTE.AsString;

              if chbLetra.Checked then
                CDSCuponesCODIGOBARRA1.Value     := CDSCuponesCODIGOBARRA1.Value+Letra;
               CDSCupones.Post;
            end
          else
            ListaCupones.Add('Ciente:'+dbgGrupos.DataSource.DataSet.FieldByName('Cliente').Value+'-'+ dbgGrupos.DataSource.DataSet.FieldByName('MuestraNombre').Value);
          QBuscarCupon.Close;
        end;
     // CDSGrupos.Next;
    end;//
  if (ListaCupones<>nil) and (ListaCupones.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Self);
      FormListaNoImportados.mLista.Lines:=(ListaCupones);
      FormListaNoImportados.Show;
    end;

   pgEstado.Position:=0;
   FreeAndNil(ListaCupones);
end;

procedure TFormGeneradorCupones.GuardarExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSCupones.State<>dsBrowse then
      CDSCupones.Post;
    CDSCupones.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormGeneradorCupones.SellAllExecute(Sender: TObject);
begin
  inherited;
  dbgGrupos.SelectAll;
end;

procedure TFormGeneradorCupones.UnselExecute(Sender: TObject);
begin
  inherited;
  dbgGrupos.UnselectAll;
end;

end.