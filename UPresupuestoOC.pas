unit UPresupuestoOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvTabBar, JvComponentBase, 
  ImgList, DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  DBCtrls, Mask,   Provider, DBClient, IBGenerator, Grids,
  DBGrids,Librerias, JvExDBGrids, JvDBGrid,
  JvExMask, JvToolEdit, JvAppStorage, JvAppIniStorage, System.Actions,
  Data.FMTBcd, JvDBControls, Data.SqlExpr, JvFormPlacement, JvLabel,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormPresupuestoOC = class(TFormABMBase)
    pnCabecera: TPanel;
    Label8: TLabel;
    Label12: TLabel;
    dbeNombre: TDBEdit;
    dbeCondCompra: TDBEdit;
    dbeMuestraRealizo: TDBEdit;
    Label22: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    BuscaProveedor: TAction;
    BuscaCondicionCompra: TAction;
    BuscadorEmpleado: TAction;
    pnNumero: TPanel;
    dbeNumero: TDBEdit;
    sbFacturables: TScrollBox;
    dbgDsctoFacturables: TDBGrid;
    dbgCostosFacturables: TDBGrid;
    Panel4: TPanel;
    pnCostoFac: TPanel;
    pnDsctoFacturable: TPanel;
    JvGradient1: TJvGradient;
    Label1: TLabel;
    JvGradient3: TJvGradient;
    Label2: TLabel;
    sbNoFacturables: TScrollBox;
    dbgDescuentosNoFac: TDBGrid;
    dbgOtrosGastos: TDBGrid;
    pnCostoNoFac: TPanel;
    JvGradient7: TJvGradient;
    Label6: TLabel;
    pnDsctoNoFacturable: TPanel;
    JvGradient9: TJvGradient;
    Label9: TLabel;
    BuscarArticulo: TAction;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    GenerarOC: TAction;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    BuscarDscto: TAction;
    BuscarRec: TAction;
    rgModo: TRadioGroup;
    lbTotal: TLabel;
    dbeFechaCompra: TJvDBDateEdit;
    RxDBECodigo: TJvDBComboEdit;
    RxDBECondCompra: TJvDBComboEdit;
    RxDBRealizo: TJvDBComboEdit;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    CDSBuscadorID_OC: TIntegerField;
    CDSBuscadorCODIGO: TStringField;
    CDSBuscadorNUMERO: TStringField;
    CDSBuscadorNOMBRE: TStringField;
    CDSBuscadorFECHA: TSQLTimeStampField;
    dbgDetalle: TDBGrid;
    dbgcostos: TDBGrid;
    dbgFinal: TDBGrid;
    ComBuscadorCondCompra: TComBuscador;
    ComBuscadorDescuento: TComBuscador;
    ComBuscadorVendedor: TComBuscador;
    ComBuscadorRecargos: TComBuscador;
    QBusca: TFDQuery;
    CDSBuscadorTOTAL: TFloatField;
    pnPieForm: TPanel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Splitter1: TSplitter;
    procedure BuscaProveedorExecute(Sender: TObject);
    procedure BuscaCondicionCompraExecute(Sender: TObject);
    procedure BuscadorEmpleadoExecute(Sender: TObject);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECondCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure GenerarOCExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarDsctoExecute(Sender: TObject);
    procedure BuscarRecExecute(Sender: TObject);
    procedure dbgDsctoFacturablesColEnter(Sender: TObject);
    procedure dbgCostosFacturablesColEnter(Sender: TObject);
    procedure dbgDescuentosNoFacColEnter(Sender: TObject);
    procedure dbgOtrosGastosColEnter(Sender: TObject);
    procedure dbgDsctoFacturablesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgCostosFacturablesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDescuentosNoFacKeyPress(Sender: TObject; var Key: Char);
    procedure dbgOtrosGastosKeyPress(Sender: TObject; var Key: Char);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  //  procedure CalcularPrecioNeto;
  //  FUNCTION AsignaProveedor(Dato: STRING): Boolean;
  //  FUNCTION AsignarCondCompra(Proveedor: STRING; Dato: Integer): Boolean;
  //  FUNCTION AsignarEmpleado(tipo:byte;Dato: String): Boolean;//tipo...0 = realizo, 1 = autoriza
  //  FUNCTION AsignarArticulo(Dato: STRING): Boolean;
  //  FUNCTION AsignarDescuento(Dato,op: integer): Boolean;
  //  FUNCTION AsignarRecargo(Dato,op: integer): Boolean;

  end;

var
  FormPresupuestoOC: TFormPresupuestoOC;

implementation

uses UBuscadorProveedor, UBuscadorArticulos, UOrdenCompra,
     DMOrdenCompra, UBuscadorArticulosProveedor, UDMain_FD,
     DMBuscadoresForm, DMPresupuestoOC;

{$R *.dfm}


procedure TFormPresupuestoOC.AgregarExecute(Sender: TObject);
begin

  DatosPresupuestoOC.CDSPresOC_Cab.Close;
  DatosPresupuestoOC.CDSPresOC_Cab.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSPresOC_Cab.Open;

  DatosPresupuestoOC.CDSPresOC_Det.Close;
  DatosPresupuestoOC.CDSPresOC_Det.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSPresOC_Det.Open;

  DatosPresupuestoOC.CDSDsctoFacturables.Close;
  DatosPresupuestoOC.CDSDsctoFacturables.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSDsctoFacturables.Open;

  DatosPresupuestoOC.CDSCostosFacturables.Close;
  DatosPresupuestoOC.CDSCostosFacturables.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSCostosFacturables.Open;

  DatosPresupuestoOC.CDSDsctoNoFac.Close;
  DatosPresupuestoOC.CDSDsctoNoFac.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSDsctoNoFac.Open;

  DatosPresupuestoOC.CDSCostoNoFac.Close;
  DatosPresupuestoOC.CDSCostoNoFac.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSCostoNoFac.Open;


  inherited;
  RxDBECodigo.SetFocus;
end;

procedure TFormPresupuestoOC.BuscaCondicionCompraExecute(Sender: TObject);
begin
  inherited;
  DatosPresupuestoOC.CDSBuscaCondCompra.Close;
  DatosPresupuestoOC.CDSBuscaCondCompra.Params.ParamByName('Codigo').Value := DatosPresupuestoOC.CDSPresOC_CabCODIGO.Value;
  DatosPresupuestoOC.CDSBuscaCondCompra.Open;
  comBuscadorCondCompra.Execute;
  if comBuscadorCondCompra.rOk Then
      DatosPresupuestoOC.CDSPresOC_CabCONDICIONCOMPRASetText(DatosPresupuestoOC.CDSPresOC_CabCONDICIONCOMPRA, IntToStr(comBuscadorCondCompra.Id));
  DatosPresupuestoOC.CDSBuscaCondCompra.Close;

end;

procedure TFormPresupuestoOC.BuscadorEmpleadoExecute(Sender: TObject);
begin
  inherited;
  DatosPresupuestoOC.CDSBuscaVendedor.Close;
  DatosPresupuestoOC.CDSBuscaVendedor.Open;
  comBuscadorVendedor.Execute;
  if comBuscadorVendedor.rOk Then
      DatosPresupuestoOC.CDSPresOC_CabREALIZOSetText(DatosPresupuestoOC.CDSPresOC_CabREALIZO,IntToStr(comBuscadorVendedor.Id));
  DatosPresupuestoOC.CDSBuscaVendedor.Close;
end;

procedure TFormPresupuestoOC.BuscaProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       DatosPresupuestoOC.CDSPresOC_CabCODIGOSetText(DatosPresupuestoOC.CDSPresOC_CabCODIGO, FormBuscadorProveedor.Codigo);
     end;
end;

procedure TFormPresupuestoOC.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
 
  IF Not(Assigned(FormBuscadorArtiProv)) THEN
    FormBuscadorArtiProv:=TFormBuscadorArtiProv.Create(Application);
  FormBuscadorArtiProv.Provee:=DatosPresupuestoOC.CDSPresOC_CabCODIGO.AsString;
  FormBuscadorArtiProv.Modo:=rgModo.ItemIndex;

  FormBuscadorArtiProv.ShowModal;
  if FormBuscadorArtiProv.Codigo<>'' Then
    DatosPresupuestoOC.CDSPresOC_DetCODIGOARTICULOSetText( DatosPresupuestoOC.CDSPresOC_DetCODIGOARTICULO,FormBuscadorArtiProv.Codigo);


end;

procedure TFormPresupuestoOC.BuscarDsctoExecute(Sender: TObject);
begin
  inherited;
  DatosPresupuestoOC.CDSBuscadorDscto.Close;
  DatosPresupuestoOC.CDSBuscadorDscto.Open;
  comBuscadorDescuento.Execute;
  if comBuscadorDescuento.rOk then
    begin
      if (Sender as TDBGrid).Name='dbgDsctoFacturables' Then
        DatosPresupuestoOC.CDSDsctoFacturablesTIPOSetText(DatosPresupuestoOC.CDSDsctoFacturablesTIPO,IntToStr(comBuscadorDescuento.Id))
      else
       if (Sender as TDBGrid).Name='dbgDescuentosNoFac' Then
         DatosPresupuestoOC.CDSDsctoNoFacTIPOSetText(DatosPresupuestoOC.CDSDsctoNoFacTIPO,IntToStr(comBuscadorDescuento.Id));
    end;
  DatosPresupuestoOC.CDSBuscadorDscto.Close;
end;

procedure TFormPresupuestoOC.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
     begin
       DatoNew:= IntToStr(comBuscadorBase.Id);
       Recuperar.Execute;
     end;
  CDSBuscador.Close;
end;

procedure TFormPresupuestoOC.BuscarRecExecute(Sender: TObject);
begin
  inherited;
  DatosPresupuestoOC.CDSBuscadorRecargo.Close;
  DatosPresupuestoOC.CDSBuscadorRecargo.Open;
  comBuscadorRecargos.Execute;
  if comBuscadorRecargos.rOk then
    begin
      if (Sender as TDBGrid).Name='dbgCostosFacturables' Then
        DatosPresupuestoOC.CDSCostosFacturablesTIPOSetText(DatosPresupuestoOC.CDSCostosFacturablesTIPO,IntToStr(comBuscadorRecargos.Id))
      else
       if (Sender as TDBGrid).Name='dbgOtrosGastos' Then
         DatosPresupuestoOC.CDSCostoNoFacTIPOSetText(DatosPresupuestoOC.CDSCostoNoFacTIPO,IntToStr(comBuscadorRecargos.Id));
    end;
  DatosPresupuestoOC.CDSBuscadorRecargo.Close;
end;

procedure TFormPresupuestoOC.CancelarExecute(Sender: TObject);
begin
  DatosPresupuestoOC.CDSPresOC_Cab.Close;
  DatosPresupuestoOC.CDSPresOC_Cab.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSPresOC_Cab.Open;

  DatosPresupuestoOC.CDSPresOC_Det.Close;
  DatosPresupuestoOC.CDSPresOC_Det.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSPresOC_Det.Open;

  DatosPresupuestoOC.CDSDsctoFacturables.Close;
  DatosPresupuestoOC.CDSDsctoFacturables.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSDsctoFacturables.Open;

  DatosPresupuestoOC.CDSCostosFacturables.Close;
  DatosPresupuestoOC.CDSCostosFacturables.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSCostosFacturables.Open;

  DatosPresupuestoOC.CDSDsctoNoFac.Close;
  DatosPresupuestoOC.CDSDsctoNoFac.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSDsctoNoFac.Open;

  DatosPresupuestoOC.CDSCostoNoFac.Close;
  DatosPresupuestoOC.CDSCostoNoFac.Params.ParamByName('id').Clear;
  DatosPresupuestoOC.CDSCostoNoFac.Open;
  inherited;
  btNuevo.Setfocus;
end;

procedure TFormPresupuestoOC.ConfirmaExecute(Sender: TObject);
begin
  if (DatosPresupuestoOC.CDSDsctoFacturables.State<>dsBrowse) then
    DatosPresupuestoOC.CDSDsctoFacturables.Post;

  if (DatosPresupuestoOC.CDSDsctoNoFac.State<>dsBrowse) then
    DatosPresupuestoOC.CDSDsctoNoFac.Post;

  if (DatosPresupuestoOC.CDSCostosFacturables.State<>dsBrowse) then
    DatosPresupuestoOC.CDSCostosFacturables.Post;

  if (DatosPresupuestoOC.CDSCostoNoFac.State<>dsBrowse) then
    DatosPresupuestoOC.CDSCostoNoFac.Post;

  DatoNew:=DatosPresupuestoOC.CDSPresOC_CabID_OC.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormPresupuestoOC.dbgDsctoFacturablesColEnter(Sender: TObject);
begin
  inherited;
  if (DatosPresupuestoOC.CDSDsctoFacturablesEDITABLE.Value='N') and (dbgDsctoFacturables.SelectedIndex=1) then
    dbgDsctoFacturables.SelectedIndex:=2;
end;

procedure TFormPresupuestoOC.dbgDsctoFacturablesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
    begin
      Key:=#0;
      if dbgDsctoFacturables.SelectedIndex<2 then
        dbgDsctoFacturables.SelectedIndex:=dbgDsctoFacturables.SelectedIndex+1
      else
        begin
          dbgDsctoFacturables.DataSource.DataSet.Append;
          dbgDsctoFacturables.SelectedIndex:=0;
        end;
    end;
end;

procedure TFormPresupuestoOC.dbgOtrosGastosColEnter(Sender: TObject);
begin
  inherited;
  if (DatosPresupuestoOC.CDSCostoNoFacEDITABLE.Value='N') and (dbgOtrosGastos.SelectedIndex=1) then
    dbgOtrosGastos.SelectedIndex:=2;
end;

procedure TFormPresupuestoOC.dbgOtrosGastosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
    begin
      Key:=#0;
      if dbgOtrosGastos.SelectedIndex<2 then
        dbgOtrosGastos.SelectedIndex:=dbgOtrosGastos.SelectedIndex+1
      else
        begin
          dbgOtrosGastos.DataSource.DataSet.Append;
          dbgOtrosGastos.SelectedIndex:=0;
        end;
    end;
end;

procedure TFormPresupuestoOC.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  GenerarOC.Enabled:= (DSBase.state in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  pnPrincipal.Enabled:=True;
end;

procedure TFormPresupuestoOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DatosPresupuestoOC.CDSPresOC_Cab.Close;
  DatosPresupuestoOC.CDSPresOC_Det.Close;
  DatosPresupuestoOC.CDSDsctoFacturables.Close;
  DatosPresupuestoOC.CDSDsctoNoFac.Close;
  DatosPresupuestoOC.CDSCostosFacturables.Close;
  DatosPresupuestoOC.CDSCostoNoFac.Close;
  DatosPresupuestoOC.QRecargos.Close;
  DatosPresupuestoOC.QDescuentos.Close;

  inherited;
  Action:=caFree;
end;

procedure TFormPresupuestoOC.FormCreate(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(DatosPresupuestoOC)) THEN
    DatosPresupuestoOC := TDatosPresupuestoOC.Create(Self);

  SinBDE:=1;
  AutoSize:=true;
  AddClientDataSet(DatosPresupuestoOC.CDSPresOC_Cab,DatosPresupuestoOC.DSPPresOC_cab);
  AddClientDataSet(DatosPresupuestoOC.CDSPresOC_Det,DatosPresupuestoOC.DSPPresOC_Det);
  AddClientDataSet(DatosPresupuestoOC.CDSDsctoFacturables,DatosPresupuestoOC.DSPDsctoFacturables);
  AddClientDataSet(DatosPresupuestoOC.CDSCostosFacturables,DatosPresupuestoOC.DSPCostosFacturables);
  AddClientDataSet(DatosPresupuestoOC.CDSDsctoNoFac,DatosPresupuestoOC.DSPDsctoNoFac);
  AddClientDataSet(DatosPresupuestoOC.CDSCostoNoFac,DatosPresupuestoOC.DSPCostoNoFac);

  DatosPresupuestoOC.CDSPresOC_Cab.Open;
  DatosPresupuestoOC.CDSPresOC_Det.Open;
  DatosPresupuestoOC.CDSDsctoFacturables.Open;
  DatosPresupuestoOC.CDSDsctoNoFac.Open;
  DatosPresupuestoOC.CDSCostosFacturables.Open;
  DatosPresupuestoOC.CDSCostoNoFac.Open;
  DatosPresupuestoOC.QRecargos.Open;
  DatosPresupuestoOC.QDescuentos.Open;
  pnNumero.BevelOuter:=bvNone;
  Tabla:='OC_CAB_EXT';
  campo:='id_oc';

end;

procedure TFormPresupuestoOC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPresupuestoOC:=nil;
end;

procedure TFormPresupuestoOC.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormPresupuestoOC.GenerarOCExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(formOrdenCompra)) then
    FormOrdenCompra:=TFormOrdenCompra.Create(Self);
  FormOrdenCompra.RxDBAutorizo.Enabled         :=False;
  FormOrdenCompra.dbeFechaAutorizacion.Enabled :=False;
  FormOrdenCompra.RxDBAutorizo.Color           :=clBtnFace;
  FormOrdenCompra.dbeFechaAutorizacion.Color   :=clBtnFace;
  with FormOrdenCompra.DBGrillaDetalle do
    begin
      Columns[3].Color:=clWindow;
      Columns[4].Color:=clInfoBk;
      Columns[5].Color:=clInfoBk;
    end;
  FormOrdenCompra.Modo:='N';
  FormOrdenCompra.Agregar.Enabled :=True;
  FormOrdenCompra.Borrar.Enabled  :=True;
  FormOrdenCompra.Buscar.Enabled  :=True;
  FormOrdenCompra.Prev.Enabled    :=True;
  FormOrdenCompra.Next.Enabled    :=True;
  FormOrdenCompra.Imprimir.Enabled:=False;
  FormOrdenCompra.lbModo.Caption:='En Modo de Pedido';

  FormOrdenCompra.Agregar.Execute;
  DatosOrdenCompra.CDSOrdenCompCabCODIGOSetText(DatosOrdenCompra.CDSOrdenCompCabCODIGO,DatosPresupuestoOC.CDSPresOC_CabCODIGO.AsString);
  DatosOrdenCompra.CDSOrdenCompCabREALIZOSetText(DatosOrdenCompra.CDSOrdenCompCabREALIZO,DatosPresupuestoOC.CDSPresOC_CabREALIZO.AsString);
  DatosOrdenCompra.CDSOrdenCompCabID_PRESUPUESTO_OC.Value:=DatosPresupuestoOC.CDSPresOC_CabID_OC.Value;

  DatosPresupuestoOC.CDSPresOC_Det.First;
  while Not(DatosPresupuestoOC.CDSPresOC_Det.Eof) do
    begin
      //if DatosOrdenCompra.wwCDSOrdenCompraDet.State=dsBrowse then
      DatosOrdenCompra.CDSOrdenCompraDet.Append;
      DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOSetText(DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO,DatosPresupuestoOC.CDSPresOC_DetCODIGOARTICULO.Value);
      DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTAL.AsFloat  :=DatosPresupuestoOC.CDSPresOC_DetUNITARIO_NETO_TOTAL_2.AsFloat;
      DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_EXENTO.AsFloat :=DatosPresupuestoOC.CDSPresOC_DetUNITARIO_NETO_EXENTO_2.AsFloat;
      DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_GRAVADO.AsFloat:=DatosPresupuestoOC.CDSPresOC_DetUNITARIO_NETO_GRAVADO_2.AsFloat;
      DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA,DatosPresupuestoOC.CDSPresOC_DetCANTIDADPEDIDA.AsString);
      ///DatosOrdenCompra.wwCDSOrdenCompraDet.Post;
      DatosPresupuestoOC.CDSPresOC_Det.Next;
    end;
  if DatosOrdenCompra.CDSOrdenCompraDet.State<>dsBrowse then
   DatosOrdenCompra.CDSOrdenCompraDet.Post;

end;

procedure TFormPresupuestoOC.RecuperarExecute(Sender: TObject);
begin
  inherited;
  DatosPresupuestoOC.CDSPresOC_Cab.Close;
  DatosPresupuestoOC.CDSPresOC_Cab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosPresupuestoOC.CDSPresOC_Cab.Open;

  DatosPresupuestoOC.CDSPresOC_Det.Close;
  DatosPresupuestoOC.CDSPresOC_Det.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosPresupuestoOC.CDSPresOC_Det.Open;

  DatosPresupuestoOC.CDSDsctoFacturables.Close;
  DatosPresupuestoOC.CDSDsctoFacturables.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosPresupuestoOC.CDSDsctoFacturables.Open;

  DatosPresupuestoOC.CDSCostosFacturables.Close;
  DatosPresupuestoOC.CDSCostosFacturables.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosPresupuestoOC.CDSCostosFacturables.Open;

  DatosPresupuestoOC.CDSDsctoNoFac.Close;
  DatosPresupuestoOC.CDSDsctoNoFac.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosPresupuestoOC.CDSDsctoNoFac.Open;

  DatosPresupuestoOC.CDSCostoNoFac.Close;
  DatosPresupuestoOC.CDSCostoNoFac.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosPresupuestoOC.CDSCostoNoFac.Open;

  Modificar.Enabled:=DatosPresupuestoOC.CDSPresOC_CabMUESTRANROOC.AsString='';
  Borrar.Enabled   :=DatosPresupuestoOC.CDSPresOC_CabMUESTRANROOC.AsString='';
  GenerarOC.Enabled:=DatosPresupuestoOC.CDSPresOC_CabMUESTRANROOC.AsString='';
  dbgDsctoFacturables.ReadOnly  :=DatosPresupuestoOC.CDSPresOC_CabMUESTRANROOC.AsString<>'';
  dbgCostosFacturables.ReadOnly :=DatosPresupuestoOC.CDSPresOC_CabMUESTRANROOC.AsString<>'';
  dbgDescuentosNoFac.ReadOnly   :=DatosPresupuestoOC.CDSPresOC_CabMUESTRANROOC.AsString<>'';
  dbgOtrosGastos.ReadOnly       :=DatosPresupuestoOC.CDSPresOC_CabMUESTRANROOC.AsString<>'';
  dbgDetalle.ReadOnly           :=DatosPresupuestoOC.CDSPresOC_CabMUESTRANROOC.AsString<>'';
  dbgcostos.ReadOnly            :=DatosPresupuestoOC.CDSPresOC_CabMUESTRANROOC.AsString<>'';
  dbgFinal.ReadOnly             :=DatosPresupuestoOC.CDSPresOC_CabMUESTRANROOC.AsString<>'';
  DatosPresupuestoOC.Sumar;
end;

procedure TFormPresupuestoOC.RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosPresupuestoOC.CDSPresOC_CabID_OC.Clear;
      DatosPresupuestoOC.CDSPresOC_CabNOMBRE.Clear;
      DatosPresupuestoOC.CDSPresOC_CabCONDICIONCOMPRA.Clear;
      DatosPresupuestoOC.CDSPresOC_CabMUESTRACONDCOMPRA.Clear;
    end;
end;

procedure TFormPresupuestoOC.RxDBECondCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosPresupuestoOC.CDSPresOC_CabCONDICIONCOMPRA.Clear;
      DatosPresupuestoOC.CDSPresOC_CabMUESTRACONDCOMPRA.Clear;
    end;
end;

procedure TFormPresupuestoOC.dbgCostosFacturablesColEnter(Sender: TObject);
begin
  inherited;
  if (DatosPresupuestoOC.CDSCostosFacturablesEDITABLE.Value='N') and (dbgCostosFacturables.SelectedIndex=1) then
    dbgCostosFacturables.SelectedIndex:=2;
end;

procedure TFormPresupuestoOC.dbgCostosFacturablesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
    begin
      Key:=#0;
      if dbgCostosFacturables.SelectedIndex<2 then
        dbgCostosFacturables.SelectedIndex:=dbgCostosFacturables.SelectedIndex+1
      else
        begin
          dbgCostosFacturables.DataSource.DataSet.Append;
          dbgCostosFacturables.SelectedIndex:=0;
        end;
    end;
end;

procedure TFormPresupuestoOC.dbgDescuentosNoFacColEnter(Sender: TObject);
begin
  inherited;
  if (DatosPresupuestoOC.CDSDsctoNoFacEDITABLE.Value='N') and (dbgDescuentosNoFac.SelectedIndex=1) then
    dbgDescuentosNoFac.SelectedIndex:=2;
end;

procedure TFormPresupuestoOC.dbgDescuentosNoFacKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
    begin
      Key:=#0;
      if dbgDescuentosNoFac.SelectedIndex<2 then
        dbgDescuentosNoFac.SelectedIndex:=dbgDescuentosNoFac.SelectedIndex+1
      else
        begin
          dbgDescuentosNoFac.DataSource.DataSet.Append;
          dbgDescuentosNoFac.SelectedIndex:=0;
        end;
    end;
end;

procedure TFormPresupuestoOC.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF dbgDetalle.SelectedIndex = 2 THEN
    DBGDetalle.SelectedIndex := 3
  else
    IF dbgDetalle.SelectedIndex > 4 THEN
      DBGDetalle.SelectedIndex := 4;

//    else
//      IF dbgDetalle.SelectedIndex > 5 THEN
//          DBGDetalle.SelectedIndex := 5
end;

procedure TFormPresupuestoOC.dbgDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 IF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
    BEGIN
      if (dbgDetalle.SelectedIndex = 1) THEN
        dbgDetalle.SelectedIndex := 0
      else
        if (dbgDetalle.SelectedIndex = 2) THEN
          dbgDetalle.SelectedIndex := 1
        else
          if (dbgDetalle.SelectedIndex = 3) THEN
            dbgDetalle.SelectedIndex := 1;
      key := 0;
    END;
end;

procedure TFormPresupuestoOC.dbgDetalleKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;

      IF (dbgDetalle.SelectedIndex < 3) THEN
        dbgDetalle.SelectedIndex := dbgDetalle.SelectedIndex + 1
      ELSE
        BEGIN
        //  IF dbgDetalle.DataSource.DataSet.State=dsInsert THEN
          dbgDetalle.DataSource.DataSet.Append;
          dbgDetalle.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      IF dbgDetalle.SelectedField = DatosPresupuestoOC.CDSPresOC_DetCODIGOARTICULO THEN
        BuscarArticulo.Execute;
    END;
end;

end.