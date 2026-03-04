unit UPlanillaArmado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DBXCommon,Vcl.Dialogs,
  ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  DBCtrls, Mask, JvExMask, JvToolEdit, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  frxClass, frxDBSet, JvAppStorage, JvAppIniStorage, System.Actions, UABMBase,
  Data.FMTBcd, Data.DB, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, frCoreClasses;

type
  TFormPlanillaArmado = class(TFormABMBase)
    pnCabecera: TPanel;
    dbgDetalle: TJvDBGrid;
    dbeFecha: TJvDBDateEdit;
    dbeMuestraProducto: TDBEdit;
    ceCodigoArticulo: TJvDBComboEdit;
    dbcDepositoOrigen: TJvDBComboEdit;
    dbcDepositoDestino: TJvDBComboEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbeMuestraDepostiOrig: TDBEdit;
    dbeMuestraDepositoDet: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    RxLabel2: TJvLabel;
    RxCSucursal: TJvDBComboEdit;
    dbeSucursal: TDBEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxLabel6: TJvLabel;
    dbtMuestraComprobante: TDBText;
    DBText1: TDBText;
    dbePrefijo: TDBEdit;
    dbeNum: TDBEdit;
    RxLabel3: TJvLabel;
    Label5: TLabel;
    dbcArmado: TJvDBComboEdit;
    dbeMuestraArmador: TDBEdit;
    BuscarTipoCpbte: TAction;
    BuscarSucursal: TAction;
    BuscarArticulo: TAction;
    BuscaDeposito: TAction;
    BuscarSerie: TAction;
    Label6: TLabel;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frPlanilla: TfrxReport;
    BuscarArmador: TAction;
    pnSerie: TPanel;
    dbeSerie: TDBEdit;
    btFinalizar: TBitBtn;
    Finalizar: TAction;
    lbEstado: TLabel;
    frDBCab: TfrxDBDataset;
    frxDBDet: TfrxDBDataset;
    frxDBEmpresa: TfrxDBDataset;
    BorrardoForzado: TAction;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorComprobantes: TComBuscador;
    ComBuscadorDepositos: TComBuscador;
    ComBuscadorSerie: TComBuscador;
    ComBuscadorPersonal: TComBuscador;
    procedure FormCreate(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure BuscaDepositoExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarSerieExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BuscarArmadorExecute(Sender: TObject);
    procedure FinalizarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BorrardoForzadoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ReasignarDetalle;
    function ControlSerie:Boolean;
  end;

var
  FormPlanillaArmado: TFormPlanillaArmado;

implementation

uses DMArmadoProductos, UBuscadorArticulos,UDMain_FD,
     UBuscadorPlanillaProduccion;

{$R *.dfm}

procedure TFormPlanillaArmado.ReasignarDetalle;
var P:TBookmark;
begin
  P:=DatosArmadoProductos.CDSArmadoDet.GetBookmark;
  DatosArmadoProductos.CDSArmadoDet.First;
  DatosArmadoProductos.CDSArmadoDet.DisableControls;
  while Not(DatosArmadoProductos.CDSArmadoDet.Eof) do
    begin
      DatosArmadoProductos.CDSArmadoDet.Edit;
      DatosArmadoProductos.CDSArmadoDetFECHA.Value     :=DatosArmadoProductos.CDSArmadoCabFECHA.Value;
      DatosArmadoProductos.CDSArmadoDetNUMERO.Value    :=DatosArmadoProductos.CDSArmadoCabNUMERO.Value;
      DatosArmadoProductos.CDSArmadoDetTIPOCPBTE.Value :=DatosArmadoProductos.CDSArmadoCabTIPOCPBTE.Value;
      DatosArmadoProductos.CDSArmadoDetCLASECPBTE.Value:=DatosArmadoProductos.CDSArmadoCabCLASECPBTE.Value;
      DatosArmadoProductos.CDSArmadoDetPREFIJO.Value   :=DatosArmadoProductos.CDSArmadoCabPREFIJO.Value;
      DatosArmadoProductos.CDSArmadoDetLETRA.Value     :=DatosArmadoProductos.CDSArmadoCabLETRA.Value;
    end;
end;

function TFormPlanillaArmado.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
 // DatosVentas.wwCDSVentaDet.DisableControls;
  DatosArmadoProductos.CDSArmadoDet.First;
  while (not(DatosArmadoProductos.CDSArmadoDet.Eof)) and (aux=True) do
    begin
      if (DatosArmadoProductos.CDSArmadoDetCON_NRO_SERIE.Value='S') then
        begin
          if (DatosArmadoProductos.CDSArmadoDetNRO_SERIE.AsString<>'') then
            Aux:=True
          else
           Aux:=False;
        end;
      DatosArmadoProductos.CDSArmadoDet.Next;
    end;
  DatosArmadoProductos.CDSArmadoDet.First;
 // DatosVentas.wwCDSVentaDet.EnableControls;
  Result:=Aux;
end;

procedure TFormPlanillaArmado.RecuperarExecute(Sender: TObject);
begin
  inherited;
  DatosArmadoProductos.CDSArmadoCab.Close;
  DatosArmadoProductos.CDSArmadoCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosArmadoProductos.CDSArmadoCab.Open;

  DatosArmadoProductos.CDSArmadoDet.Close;
  DatosArmadoProductos.CDSArmadoDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosArmadoProductos.CDSArmadoDet.OPen;

  Finalizar.Enabled:=DatosArmadoProductos.CDSArmadoCabESTADO.Value='N';

  if DatosArmadoProductos.CDSArmadoCabESTADO.Value='N' then
    lbEstado.Caption:='NUEVO'
  else
    if DatosArmadoProductos.CDSArmadoCabESTADO.Value='F' then
      lbEstado.Caption:='FINALIZADA'
    else
      if DatosArmadoProductos.CDSArmadoCabESTADO.Value='A' then
         lbEstado.Caption:='ANULADA';

  Modificar.Enabled := DatosArmadoProductos.CDSArmadoCabESTADO.Value='N';
  Borrar.Enabled    := DatosArmadoProductos.CDSArmadoCabESTADO.Value='N';


end;

procedure TFormPlanillaArmado.AgregarExecute(Sender: TObject);
begin
  DatosArmadoProductos.CDSArmadoCab.Close;
  DatosArmadoProductos.CDSArmadoCab.Params.ParamByName('id').Clear;
  DatosArmadoProductos.CDSArmadoCab.Open;

  DatosArmadoProductos.CDSArmadoDet.Close;
  DatosArmadoProductos.CDSArmadoDet.Params.ParamByName('id').Clear;
  DatosArmadoProductos.CDSArmadoDet.OPen;

  pnPrincipal.Enabled := True;
  pnCabecera.Enabled  := True;
  inherited;
  dbeFecha.SetFocus;
end;

procedure TFormPlanillaArmado.BorrardoForzadoExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador=True then
    begin
      if Borrar.Enabled=False Then
        Borrar.Enabled:=True;
      Borrar.Execute;
    end;
end;

procedure TFormPlanillaArmado.BuscaDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosArmadoProductos.CDSBuscaDeposito.Close;
  DatosArmadoProductos.CDSBuscaDeposito.Open;
  comBuscadorDepositos.Execute;
  if comBuscadorDepositos.rOk then

    begin
      if (sender as TJvDBComboEdit).Name='dbcDepositoOrigen' Then
        DatosArmadoProductos.CDSArmadoCabDEPOSITO_ORIGENSetText(DatosArmadoProductos.CDSArmadoCabDEPOSITO_ORIGEN,IntToStr(comBuscadorDepositos.Id))
      else
        if (sender as TJvDBComboEdit).Name='dbcDepositoDestino' Then
          DatosArmadoProductos.CDSArmadoCabDEPOSITO_DESTINOSetText(DatosArmadoProductos.CDSArmadoCabDEPOSITO_DESTINO,IntToStr(comBuscadorDepositos.Id));
    end;
  DatosArmadoProductos.CDSBuscaDeposito.Close;
end;

procedure TFormPlanillaArmado.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
 // FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
//  FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:= 1;
  FormBuscadorArticulos.Param2:= 1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    DatosArmadoProductos.CDSArmadoCabCodigoSetText(DatosArmadoProductos.CDSArmadoCabCODIGO,FormBuscadorArticulos.Codigo);

end;

procedure TFormPlanillaArmado.BuscarExecute(Sender: TObject);
begin
  //inherited;
  if Not(Assigned(FormBuscadorPlanillaArmadoProduccion)) then
    FormBuscadorPlanillaArmadoProduccion:=TFormBuscadorPlanillaArmadoProduccion.Create(Self);
  FormBuscadorPlanillaArmadoProduccion.ShowModal;
  if FormBuscadorPlanillaArmadoProduccion.Id<>-1 then
    begin
      DatoNew:=IntToStr(FormBuscadorPlanillaArmadoProduccion.Id);
      Recuperar.Execute;
    end;
  
end;

procedure TFormPlanillaArmado.BuscarArmadorExecute(Sender: TObject);
begin
  inherited;
  DatosArmadoProductos.CDSBuscaPersonal.Close;
  DatosArmadoProductos.CDSBuscaPersonal.Open;
  comBuscadorPersonal.Execute;
  if comBuscadorPersonal.rOK Then
    DatosArmadoProductos.CDSArmadoCabARMADORSetText(DatosArmadoProductos.CDSArmadoCabARMADOR,comBuscadorPersonal.Id);
  DatosArmadoProductos.CDSBuscaPersonal.Close;
end;

procedure TFormPlanillaArmado.BuscarSerieExecute(Sender: TObject);
begin
  inherited;
  DatosArmadoProductos.CDSBuscaNroSerie.Close;
  DatosArmadoProductos.CDSBuscaNroSerie.Params.ParamByName('codigo').Value  := DatosArmadoProductos.CDSArmadoDetCODIGO.Value;
  DatosArmadoProductos.CDSBuscaNroSerie.Params.ParamByName('deposito').Value:= DatosArmadoProductos.CDSArmadoDetDEPOSITO_ORIGEN.Value;
  DatosArmadoProductos.CDSBuscaNroSerie.Open;
  comBuscadorSerie.Execute;
  if comBuscadorSerie.rOk Then
    DatosArmadoProductos.CDSArmadoDetNRO_SERIESetText(DatosArmadoProductos.CDSArmadoDetNRO_SERIE,comBuscadorSerie.id);
  DatosArmadoProductos.CDSBuscaNroSerie.Close;

end;

procedure TFormPlanillaArmado.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosArmadoProductos.CDSBuscaSucursal.Close;
  DatosArmadoProductos.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOK Then
    DatosArmadoProductos.CDSArmadoCabSucursalSetText(DatosArmadoProductos.CDSArmadoCabSucursal, IntToStr(comBuscadorSucursal.Id));
  DatosArmadoProductos.CDSBuscaSucursal.Close;
end;

procedure TFormPlanillaArmado.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DatosArmadoProductos.CDSBuscaComprob.Close;
  DatosArmadoProductos.CDSBuscaComprob.Open;
  IF NOT (DatosArmadoProductos.CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorComprobantes.Execute;
      if comBuscadorComprobantes.rOk Then
        DatosArmadoProductos.CDSArmadoCabID_TIPOCOMPROBANTESetText(DatosArmadoProductos.CDSArmadoCabID_TIPOCOMPROBANTE, IntToStr(comBuscadorComprobantes.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  DatosArmadoProductos.CDSBuscaComprob.Close;
end;

procedure TFormPlanillaArmado.ConfirmaExecute(Sender: TObject);
begin
  if DatosArmadoProductos.CDSArmadoCabARMADOR.AsString='' then
    Raise Exception.Create('Falta el Aramador.....');
  DatoNew:=DatosArmadoProductos.CDSArmadoCabID.AsString;
  if Not(ControlSerie) and (DSBase.State=dsInsert) then
    RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');
  inherited;
  Recuperar.Execute;
end;

procedure TFormPlanillaArmado.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (gdSelected in state) Then
    begin
      dbgDetalle.Canvas.Font.Color:=clWhite;
      dbgDetalle.Canvas.Brush.Color:=clNavy;
    end
  else
    if (dbgDetalle.DataSource.DataSet.FieldByName('Con_Nro_Serie').Value='S') Then
      begin
        dbgDetalle.Canvas.Font.Style:=[fsBold];
        dbgDetalle.Canvas.Font.Color:=clBlue;
      end
    else
      begin
        dbgDetalle.Canvas.Font.Color:=clWindowText;
        dbgDetalle.Canvas.Font.Style:=[];
      end;
  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormPlanillaArmado.FinalizarExecute(Sender: TObject);
begin
  inherited;
  DatoNew:=DatosArmadoProductos.CDSArmadoCabID.AsString;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosArmadoProductos.CDSArmadoCab.Edit;
    DatosArmadoProductos.CDSArmadoCabESTADO.Value:='F';
    DatosArmadoProductos.CDSArmadoCab.Post;
    DatosArmadoProductos.CDSArmadoCab.ApplyUpdates(0);
    DatosArmadoProductos.spAltaProductoStock.Close;
    DatosArmadoProductos.spAltaProductoStock.ParamByName('id').Value       :=DatosArmadoProductos.CDSArmadoCabID.Value;
    DatosArmadoProductos.spAltaProductoStock.ParamByName('NRO_SERIE').Value:=Trim(DatosArmadoProductos.CDSArmadoCabCODIGOSERIE.Value);
    DatosArmadoProductos.spAltaProductoStock.ExecProc;
    DatosArmadoProductos.spAltaProductoStock.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Operación no finalizada...');
  end;
  Recuperar.Execute;
end;

procedure TFormPlanillaArmado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DatosArmadoProductos.CDSArmadoCab.Close;
  DatosArmadoProductos.CDSArmadoDet.Close;
  Action:=caFree;
  inherited;

end;

procedure TFormPlanillaArmado.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  IF NOT (Assigned(DatosArmadoProductos)) THEN
    DatosArmadoProductos := TDatosArmadoProductos.Create(Self);
  DSBase.DataSet:=DatosArmadoProductos.CDSArmadoCab;
  WITH DatosArmadoProductos DO
    BEGIN
      AddClientDataset(CDSArmadoCab, DSPArmadoCab);
      AddClientDataset(CDSArmadoDet, DSPArmadoDet);
      CDSArmadoCab.Open;
      CDSArmadoDet.Open;
    END;
  lbEstado.Caption:='';
  Tabla:='PLANILLA_ARMADO_CAB';
  Campo:='id';
end;

procedure TFormPlanillaArmado.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPlanillaArmado:=nil;
end;

procedure TFormPlanillaArmado.ImprimirExecute(Sender: TObject);
begin
  inherited;
  DatosArmadoProductos.QComprob.Close;
  DatosArmadoProductos.QComprob.ParamByName('id').Value  := DatosArmadoProductos.CDSArmadoCabID_TIPOCOMPROBANTE.Value;
  DatosArmadoProductos.QComprob.ParamByName('suc').Value := DatosArmadoProductos.CDSArmadoCabSUCURSAL.Value;
  DatosArmadoProductos.QComprob.Open;

  DatosArmadoProductos.CDSEmpresa.Close;
  DatosArmadoProductos.CDSEmpresa.Open;


  frPlanilla.PrintOptions.Printer:=PrNomCpbte;
  frPlanilla.SelectPrinter;

  frPlanilla.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosArmadoProductos.QComprobREPORTE.AsString);
  frPlanilla.PrintOptions.Copies := DatosArmadoProductos.QComprobCOPIAS.AsInteger;

  DatosArmadoProductos.QComprob.Close;
  frPlanilla.ShowReport;
  DatosArmadoProductos.CDSEmpresa.Close;
end;

procedure TFormPlanillaArmado.RxCSucursalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosArmadoProductos.CDSArmadoCabSUCURSAL.Clear;
      DatosArmadoProductos.CDSArmadoCabID_TIPOCOMPROBANTE.Clear;
      DatosArmadoProductos.CDSArmadoCabMUESTRASUCURSAL.Clear;
      DatosArmadoProductos.CDSArmadoCabMUESTRACOMPROBANTE.Clear;
      DatosArmadoProductos.CDSArmadoCabLETRA.Clear;
      DatosArmadoProductos.CDSArmadoCabPrefijo.Clear;
      DatosArmadoProductos.CDSArmadoCabNUMERO.Clear;
    end;
end;

procedure TFormPlanillaArmado.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosArmadoProductos.CDSArmadoCabSUCURSAL.Clear;
      DatosArmadoProductos.CDSArmadoCabID_TIPOCOMPROBANTE.Clear;
      DatosArmadoProductos.CDSArmadoCabMUESTRASUCURSAL.Clear;
      DatosArmadoProductos.CDSArmadoCabMUESTRACOMPROBANTE.Clear;
      DatosArmadoProductos.CDSArmadoCabLETRA.Clear;
      DatosArmadoProductos.CDSArmadoCabPREFIJO.Clear;
      DatosArmadoProductos.CDSArmadoCabNUMERO.Clear;
    end;

end;

procedure TFormPlanillaArmado.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frPlanilla.DesignReport;
end;

end.
