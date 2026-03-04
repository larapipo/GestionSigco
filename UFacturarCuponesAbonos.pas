unit UFacturarCuponesAbonos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, JvFormMagnet, rxPlacemnt, ImgList,
  wwDialog, wwidlg, DB, DBTables, ActnList, ComCtrls, RXCtrls, RXDBCtrl,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, DBClient,
  Provider, Grids, DBGrids, JvDBLookup;

type
  TFormFacturarCuponesAbonos = class(TFormABMBase)
    DSCupones: TDataSource;
    DSPCupones: TDataSetProvider;
    CDSCupones: TClientDataSet;
    QCupones: TQuery;
    QCuponesID: TIntegerField;
    QCuponesNUMERO: TStringField;
    QCuponesFECHA_GENERACION: TDateTimeField;
    QCuponesFECHA: TDateTimeField;
    QCuponesCLIENTE: TStringField;
    QCuponesPERIODO: TStringField;
    QCuponesFECHA_VTO1: TDateTimeField;
    QCuponesFECHA_VTO2: TDateTimeField;
    QCuponesIMPORTE_1: TFloatField;
    QCuponesIMPORTE_2: TFloatField;
    QCuponesCODIGOBARRA1: TStringField;
    QCuponesCODIGOARTICULO: TStringField;
    QCuponesFACTURA_ID: TIntegerField;
    QCuponesFACTURA_FECHA: TDateTimeField;
    QCuponesFACTURA_TIPO: TStringField;
    QCuponesFACTURA_CLASE: TStringField;
    QCuponesFACTURA_NROCPBTE: TStringField;
    QCuponesID_FACTURAPORDEFECTO: TIntegerField;
    QCuponesMUESTRAIVA: TStringField;
    CDSCuponesID: TIntegerField;
    CDSCuponesNUMERO: TStringField;
    CDSCuponesFECHA_GENERACION: TDateTimeField;
    CDSCuponesFECHA: TDateTimeField;
    CDSCuponesCLIENTE: TStringField;
    CDSCuponesPERIODO: TStringField;
    CDSCuponesFECHA_VTO1: TDateTimeField;
    CDSCuponesFECHA_VTO2: TDateTimeField;
    CDSCuponesIMPORTE_1: TFloatField;
    CDSCuponesIMPORTE_2: TFloatField;
    CDSCuponesCODIGOBARRA1: TStringField;
    CDSCuponesCODIGOARTICULO: TStringField;
    CDSCuponesFACTURA_ID: TIntegerField;
    CDSCuponesFACTURA_FECHA: TDateTimeField;
    CDSCuponesFACTURA_TIPO: TStringField;
    CDSCuponesFACTURA_CLASE: TStringField;
    CDSCuponesFACTURA_NROCPBTE: TStringField;
    CDSCuponesID_FACTURAPORDEFECTO: TIntegerField;
    CDSCuponesMUESTRAIVA: TStringField;
    QComprobantes: TQuery;
    dbgCupones: TDBGrid;
    CDSCuponesMuestraComprobante: TStringField;
    QCuponesNOMBRE: TStringField;
    CDSCuponesNOMBRE: TStringField;
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
    QSucursal: TQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    dbcSuc: TJvDBLookupCombo;
    Label1: TLabel;
    Facturacion: TAction;
    Facturar: TAction;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FacturacionExecute(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AgregarCabecera;
    procedure AgregaDetalle;
  end;

var
  FormFacturarCuponesAbonos: TFormFacturarCuponesAbonos;

implementation

uses UFactura_2, DMVenta, DMMainForm;

{$R *.dfm}



procedure TFormFacturarCuponesAbonos.AgregarCabecera;
begin
  with DatosVentas DO
  begin
    wwCDSVentaCabFECHAVTA.Value:= CDSCuponesFECHA.Value;
    wwCDSVentaCabCodigoSetText(wwCDSVentaCabCodigo,CDSCuponesCLIENTE.AsString);
    if CDSCuponesID_FACTURAPORDEFECTO.AsString<>'' then
      wwCDSVentaCabID_TIPOCOMPROBANTESetText(wwCDSVentaCabID_TIPOCOMPROBANTE,CDSCuponesID_FACTURAPORDEFECTO.AsString);
    wwCDSVentaCabLDRSetText(wwCDSVentaCabLDR,'0');
//    wwCDSVentaCabDepositoSetText(wwCDSVentaCabDeposito,CDSRtosCabDEPOSITO.AsString);

    QCondVentaDefecto.Close;
    QCondVentaDefecto.ParamByName('Codigo').Value     :=CDSCuponesCLIENTE.AsString;
    QCondVentaDefecto.Open;
    IF (QCondVentaDefecto.Fields[0].AsString<>'') THEN
       wwCDSVentaCabCondicionVtaSetText(wwCDSVentaCabCondicionVta,QCondVentaDefecto.Fields[0].AsString)
    else
      begin
        QPrimerConVta.Close;
        QPrimerConVta.ParamByName('Codigo').Value     :=CDSCuponesCLIENTE.AsString;
        QPrimerConVta.Open;
        IF (QPrimerConVta.Fields[0].AsString<>'') THEN
         wwCDSVentaCabCondicionVtaSetText(wwCDSVentaCabCondicionVta,QPrimerConVta.Fields[0].AsString)
      end;
    QCondVentaDefecto.Close;
    QPrimerConVta.Close;

    wwCDSVentaCabANULADO.Value      := 'N';
    wwCDSVentaCabIMPRESO.Value      := 'N';
    wwCDSVentaCabOBSERVACION1.Value := '';
    wwCDSVentaCabOBSERVACION2.Value := '';
    wwCDSVentaCabCPTE_MANUAL.Value  := 'N';
    wwCDSVentaCabREDUCIDA.Value     := 'N';

    wwCDSVentaCabZONA.Value         := 0;
    wwCDSVentaCabNROENTREGA.Value   := 1;
    wwCDSVentaCabIDREMITO.Clear;
    wwCDSVentaCabTIPO_REMITO.Clear;
    wwCDSVentaCabNRORTO.Value       := '';
    //seleciona lista de precio
    wwCDSVentaCabLISTAPRECIO.Clear;

    wwCDSVentaCabFECHA_HORA.Value   := Now;
    wwCDSVentaCabUSUARIO.Value      := DMMain.UsuarioActivo;

  end;
end;

procedure TFormFacturarCuponesAbonos.AgregaDetalle;
Var UnitarioTotal:Real;
begin
  inherited;
  with DatosVentas DO
    begin
    wwCDSVentaDet.Append;
    //
    wwCDSVentaDetCodigoArticuloSetText(wwCDSVentaDetCodigoArticulo,CDSCuponesCODIGOARTICULO.AsString);
    //wwCDSVentaDetDetalle.Value          :=CDSRtosDetDETALLE.Value;
    wwCDSVentaDetCantidadSetText(wwCDSVentaDetCantidad,'1');
    wwCDSVentaDetDESGLOZAIVA.Value      :=wwCDSVentaCabDESGLOZAIVA.Value;
    wwCDSVentaDetDEPOSITO.Value         :=wwCDSVentaCabDeposito.Value;
    wwCDSVentaDetMARGEN.Value           :=0;
    wwCDSVentaDetCLASECPBTE.Value       :=wwCDSVentaCabCLASECPBTE.Value;
    wwCDSVentaDetDescuentoSetText(wwCDSVentaDetDescuento,'0');
    wwCDSVentaDetUNITARIO_GRAVADO.Value :=CDSCuponesIMPORTE_1.Value /wwCDSVentaDetIVA_Tasa.Value;

    wwCDSVentaDetUNITARIO_EXENTO.Value  :=0;

    wwCDSVentaDetCOSTO_GRAVADO.Value    :=CDSCuponesIMPORTE_1.Value /wwCDSVentaDetIVA_Tasa.Value;

    wwCDSVentaDetCOSTO_EXENTO.Value     :=0;

    wwCDSVentaDetCOSTO_TOTAL.Value      :=CDSCuponesIMPORTE_1.Value /wwCDSVentaDetIVA_Tasa.Value;

    UnitarioTotal:=wwCDSVentaDetUnitario_Gravado.Value+wwCDSVentaDetUnitario_Exento.Value;
    if wwCDSVentaDetDesglozaIVA.Value='N' Then
      wwCDSVentaDetUnitario_TotalSetText(wwCDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal*(1+wwCDSVentaDetIVA_Tasa.Value/100)))
    else
      wwCDSVentaDetUnitario_TotalSetText(wwCDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
    wwCDSVentaDet.Post;
  end;
end;




procedure TFormFacturarCuponesAbonos.BuscarExecute(Sender: TObject);
begin
  inherited;
  if dbcSuc.KeyValue<>0 then
  begin

  QComprobantes.Close;
  QComprobantes.ParamByName('sucursal').Value:=dbcSuc.KeyValue;
  QComprobantes.Open;

  CDSCupones.Close;
  CDSCupones.Open;
  end;
end;

procedure TFormFacturarCuponesAbonos.FacturacionExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSCupones.IsEmpty) Then
    begin
      if Not(Assigned( FormCpbte_2)) Then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      CDSCupones.First;
      while Not(CDSCupones.Eof) do
        begin
          if dbgCupones.SelectedRows.CurrentRowSelected then
            Facturar.Execute;
          CDSCupones.Next;
        end;//
      FormCpbte_2.Close;
    end
  else
    ShowMessage('No hay Cupones para Facturar....');
end;

procedure TFormFacturarCuponesAbonos.FacturarExecute(Sender: TObject);
begin
  inherited;
  FormCpbte_2.Agregar.Execute;
  AgregarCabecera;
  AgregaDetalle;
  FormCpbte_2.Confirma.Execute;
end;

procedure TFormFacturarCuponesAbonos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormFacturarCuponesAbonos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=true;
  QSucursal.Open;
  Buscar.Execute;
end;

procedure TFormFacturarCuponesAbonos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFacturarCuponesAbonos:=nil;
end;

end.
