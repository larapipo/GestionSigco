unit UNotasCambio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  DBCtrls, Mask, JvExMask, JvToolEdit, Grids, DBGrids,IniFiles, Menus, ActnPopup,
  Vcl.PlatformDefaultStyleActnCtrls, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormNotas_Cambio = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edFecha: TJvDBDateEdit;
    edNumero: TDBEdit;
    cxDBTextEdit1: TDBEdit;
    cxDBTextEdit2: TDBEdit;
    dbgDetalle: TDBGrid;
    BuscarArticulo: TAction;
    gbLista: TGroupBox;
    dbcLista: TDBLookupComboBox;
    edTotal: TDBEdit;
    Label4: TLabel;
    ConfiguraIni: TAction;
    dbeSucursal: TDBEdit;
    RxCSucursal: TJvDBComboEdit;
    RxLabel59: TJvLabel;
    RxCDeposito: TJvDBComboEdit;
    dbeDeposito: TDBEdit;
    RxLabel4: TJvLabel;
    dbeNombre: TDBEdit;
    RxCCodigo: TJvDBComboEdit;
    RxLabel2: TJvLabel;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarCliente: TAction;
    Recalcular: TAction;
    GenerarFcCC: TAction;
    GenerarTk: TAction;
    GenerarFcCtdo: TAction;
    GenerarAjuste: TAction;
    pnComprobantes: TPanel;
    JvLabel1: TJvLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    JvLabel2: TJvLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    GenerarNC: TAction;
    GenerarNCCtdo: TAction;
    VerAjuste: TAction;
    VerCpbte: TAction;
    lbCambio: TJvLabel;
    Label5: TLabel;
    dbgExitencias: TDBGrid;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    PopupMenu1: TPopupMenu;
    GenerarFcdeCC2: TMenuItem;
    GenerarFcdeCtdo2: TMenuItem;
    GenerarTkdeContado2: TMenuItem;
    N3: TMenuItem;
    GenerarNC2: TMenuItem;
    GenerarNCCtdo2: TMenuItem;
    N4: TMenuItem;
    GenerarAjuste2: TMenuItem;
    VerCodigoAlternativo: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleEnter(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConfiguraIniExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GenerarFcCCExecute(Sender: TObject);
    procedure GenerarTkExecute(Sender: TObject);
    procedure GenerarFcCtdoExecute(Sender: TObject);
    procedure GenerarAjusteExecute(Sender: TObject);
    procedure GenerarNCExecute(Sender: TObject);
    procedure GenerarNCCtdoExecute(Sender: TObject);
    procedure VerAjusteExecute(Sender: TObject);
    procedure VerCpbteExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RxCCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure VerCodigoAlternativoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ItemFacturacion:String;
    Id_Ajuste,Id_Factura:Integer;
    SucursalComprobante,IDComprobante:Integer;    
  end;

var
  FormNotas_Cambio: TFormNotas_Cambio;

implementation

uses DMNotasCambio, UBuscadorArticulos, UDMain_FD, UBuscadorDepositos,
  UAjusteMercaderia, UBuscadorTipoCpbte, UModoVenta, UFactura_2, DMVenta,
  UConfiguracionNotaCambio, UBuscadorClientes, UFacturaCtdo_2, DMVentaCtdo,
  DMTicket, UTiketVta, UBuscadorCambiosArticulos, UNotaCreditoAplicaAFactura;
{$R *.dfm}

procedure TFormNotas_Cambio.AgregarExecute(Sender: TObject);
begin
  DatosNotasCambio.CDSNotaCab.Close;
  DatosNotasCambio.CDSNotaCab.Params.ParamByName('id').Clear;
  DatosNotasCambio.CDSNotaCab.Open;

  DatosNotasCambio.CDSNotaDet.Close;
  DatosNotasCambio.CDSNotaDet.Params.ParamByName('id').Clear;
  DatosNotasCambio.CDSNotaDet.Open;
  inherited;
  edFecha.SetFocus;
end;

procedure TFormNotas_Cambio.BorrarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    if (DatosNotasCambio.CDSNotaCabID_AJUSTE.Value<0) and
       (DatosNotasCambio.CDSNotaCabID_FACTURA.Value<0) then
         inherited
    else
      ShowMessage('No se puede Borrar, hay operaciones asociadas a este comprobante...')
  else
    ShowMessage('No esta Autorizado para esta operacion...');


end;

procedure TFormNotas_Cambio.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(self);
     // FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.Param3:=3;
      FormBuscadorArticulos.Esquema     := -1;
      FormBuscadorArticulos.ListaPrecio := DatosNotasCambio.CDSNotaCabID_LISTA.Value;

      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        DatosNotasCambio.CDSNotaDetCodigoSetText(DatosNotasCambio.CDSNotaDetCODIGO,FormBuscadorArticulos.Codigo);
    end;

end;

procedure TFormNotas_Cambio.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  ClientePorDefecto:='';
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(self);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     DatosNotasCambio.CDSNotaCabCLIENTESetText(DatosNotasCambio.CDSNotaCabCLIENTE,FormBuscadorClientes.Codigo);
end;

procedure TFormNotas_Cambio.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosNotasCambio.CDSBuscaDeposito.Close;
  DatosNotasCambio.CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    DatosNotasCambio.CDSNotaCabDEPOSITOSetText( DatosNotasCambio.CDSNotaCabDEPOSITO, IntToStr(comBuscadorDeposito.Id));
  DatosNotasCambio.CDSBuscaDeposito.Close;
end;

procedure TFormNotas_Cambio.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorCambios)) then
    FormBuscadorCambios:=TFormBuscadorCambios.Create(Self);
  FormBuscadorCambios.ShowModal;
  if FormBuscadorCambios.ModalResult=mrOk then
    begin
      DatoNew:=IntToStr(FormBuscadorCambios.Id);
      Recuperar.Execute;
    end; 

end;

procedure TFormNotas_Cambio.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosNotasCambio.CDSBuscaSucursal.Close;
  DatosNotasCambio.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosNotasCambio.CDSNotaCabSUCURSALSetText( DatosNotasCambio.CDSNotaCabSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  DatosNotasCambio.CDSBuscaSucursal.Close;
end;

procedure TFormNotas_Cambio.CancelarExecute(Sender: TObject);
begin
  dbgExitencias.Visible := False;
  inherited;

end;

procedure TFormNotas_Cambio.ConfiguraIniExecute(Sender: TObject);
var NotaCambioIni:TIniFile;
begin
  inherited;
  if Not(Assigned(FormConfiguracionNotaCambio)) Then
    FormConfiguracionNotaCambio:=TFormConfiguracionNotaCambio.Create(Self);
  if DMMain_FD.UsuarioActivo<>'' Then
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NotaCambio.ini')
  else
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_NotaCambio.ini');
  //*************************************************************
  FormConfiguracionNotaCambio.Codigo :=NotaCambioIni.ReadString('codigo','codigo','');
  FormConfiguracionNotaCambio.Detalle:=NotaCambioIni.ReadString('codigo','detalle','');
  FormConfiguracionNotaCambio.ShowModal;
  NotaCambioIni.Free;

  // lo vuelvo abrir.....
  if DMMain_FD.UsuarioActivo<>'' Then
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NotaCambio.ini')
  else
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_NotaCambio.ini');
  //*************************************************************

  ItemFacturacion               := NotaCambioIni.ReadString('codigo','codigo','');

  lbCambio.Caption:='('+ItemFacturacion+')';

  NotaCambioIni.Free;
end;

procedure TFormNotas_Cambio.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=DatosNotasCambio.CDSNotaCabID.AsString;
  if (Trim(DatosNotasCambio.CDSNotaCabCLIENTE.AsString)='') or (DatosNotasCambio.CDSNotaCabNOMBRE.AsString='') then
    Raise Exception.Create('No Hay Cliente Definido...');

  inherited;
  if FormNotas_Cambio.Visible then
    if dbgExitencias.Visible=True Then
      dbgExitencias.Visible:=False;

  Recuperar.Execute;
  if ((DatosNotasCambio.CDSNotaCabID_AJUSTE.AsString='') or (DatosNotasCambio.CDSNotaCabID_AJUSTE.Value<=0)) then
    if MessageDlg('Generar Ajustes de Stock...',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
      GenerarAjuste.Execute;

  if ((DatosNotasCambio.CDSNotaCabID_FACTURA.AsString='') or (DatosNotasCambio.CDSNotaCabID_FACTURA.Value<=0)) and
     (Trunc(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat*100)<>0)  then
    if MessageDlg('Generar Comprobante Facturación...',mtConfirmation,[mbYes,mbNo],0)=mrYes Then

    begin
//      GenerarAjuste.Execute;
      if DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat<0 then
        begin
          if Not(Assigned(FormModoVta)) then
            FormModoVta:=TFormModoVta.Create(Self);
          FormModoVta.Tipo:='D';
          FormModoVta.Modo:=0;
          FormModoVta.ShowModal;

          if (FormModoVta.Modo=0) then //Tk de Contado
            GenerarTk.Execute
          else
            if (FormModoVta.Modo=1) then //Fac. de Cta Cte
              GenerarFcCC.Execute
            else
              if (FormModoVta.Modo=2) then //Fac. de Contado
                GenerarFcCtdo.Execute;
        end
      else
        if DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat>0 then
          begin
            if Not(Assigned(FormModoVta)) then
              FormModoVta:=TFormModoVta.Create(Self);
            FormModoVta.Tipo:='C';
            FormModoVta.Modo:=3;
            FormModoVta.ShowModal;

            if (FormModoVta.Modo=3) then //Tk de Contado
             GenerarNC.Execute
            else
              if (FormModoVta.Modo=4) then //Fac. de Cta Cte
                GenerarNCCtdo.Execute;
          end;

    end;
  Recuperar.Execute;
end;

procedure TFormNotas_Cambio.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
   dbgExitencias.Visible := False;
  if DBGDetalle.SelectedIndex=2 Then
    begin
      if (DMMain_FD.VerStock) and (Not(DSBase.State in [dsBrowse])) Then
        begin
          DatosNotasCambio.CDSExistencia.Close;
          DatosNotasCambio.CDSExistencia.Params.ParamByName('Unidad').Value   := 'V';
          DatosNotasCambio.CDSExistencia.Params.ParamByName('Codigo').Value   :=  DatosNotasCambio.CDSNotaDetCODIGO.Value;
          DatosNotasCambio.CDSExistencia.Params.ParamByName('fisico').Value   := 1;
          DatosNotasCambio.CDSExistencia.Params.ParamByName('usuario').AsFloat:= DMMain_FD.UsuarioActivoId;
          DatosNotasCambio.CDSExistencia.Open;
          dbgExitencias.Visible := True;
        end;
    end;
end;

procedure TFormNotas_Cambio.dbgDetalleEnter(Sender: TObject);
begin
  inherited;
  dbgDetalle.SelectedIndex:=0;
end;

procedure TFormNotas_Cambio.dbgDetalleKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgDetalle.SelectedIndex < 3) THEN
        dbgDetalle.SelectedIndex := dbgDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgDetalle.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgDetalle.DataSource.DataSet.Append;
          dbgDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        if Not(Assigned(FormBuscadorArticulos)) then
          begin
            IF (dbgDetalle.SelectedField = DatosNotasCambio.CDSNotaDetCODIGO) or (dbgDetalle.SelectedIndex=0) THEN
              BuscarArticulo.Execute;
          end;
      END
    else
      if (key = #27) then
        dbgDetalle.DataSource.DataSet.Cancel;

end;

procedure TFormNotas_Cambio.FormActivate(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      DatoNew:=DatosNotasCambio.CDSNotaCabID.AsString;
      Recuperar.Execute
    end;
end;

procedure TFormNotas_Cambio.FormClose(Sender: TObject;
  var Action: TCloseAction);
var NotaCambioIni:TIniFile;
begin
  inherited;
  DatosNotasCambio.CDSNotaCab.Close;
  DatosNotasCambio.CDSNotaDet.Close;

  if DMMain_FD.UsuarioActivo<>'' Then
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NotaCambio.ini')
  else
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_NotaCambio.ini');
  //*************************************************************
  NotaCambioIni.WriteBool('codigoAlt','codigoAlt',VerCodigoAlternativo.Checked);
  NotaCambioIni.Free;
  Action:=caFree;
end;

procedure TFormNotas_Cambio.FormCreate(Sender: TObject);
var NotaCambioIni:TIniFile;
begin
  inherited;
  SinBde:=2;
  AutoSize:=True;
  IF NOT (Assigned(DatosNotasCambio)) THEN
    DatosNotasCambio := TDatosNotasCambio.Create(Self);
  DSBase.DataSet:=DatosNotasCambio.CDSNotaCab;

  AddClientDataSet(DatosNotasCambio.CDSNotaCab,DatosNotasCambio.DSPNotaCab);
  AddClientDataSet(DatosNotasCambio.CDSNotaDet,DatosNotasCambio.DSPNotaDet);
  DatosNotasCambio.CDSNotaCab.Open;
  DatosNotasCambio.CDSNotaDet.Open;

  DatosNotasCambio.CDSListaPrecios.Close;
  if DMMain_FD.UsuarioAdministrador Then
    DatosNotasCambio.CDSListaPrecios.Params.ParamByName('uso').Value:='*'
  else
    DatosNotasCambio.CDSListaPrecios.Params.ParamByName('uso').Value:='S';
  DatosNotasCambio.CDSListaPrecios.OPen;
  dbgExitencias.Visible := False;

  Campo:='id';
  Tabla:='Nota_cambio_cab';

  if DMMain_FD.UsuarioActivo<>'' Then
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NotaCambio.ini')
  else
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_NotaCambio.ini');
  //*************************************************************
  VerCodigoAlternativo.Checked:=NotaCambioIni.ReadBool('codigoAlt','codigoAlt',False);
  NotaCambioIni.Free;
end;

procedure TFormNotas_Cambio.FormDestroy(Sender: TObject);
begin
  inherited;
  FormNotas_Cambio:=nil;
end;

procedure TFormNotas_Cambio.FormShow(Sender: TObject);
var NotaCambioIni:TIniFile;
begin
  inherited;
  if DMMain_FD.UsuarioActivo<>'' Then
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NotaCambio.ini')
  else
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_NotaCambio.ini');
  //*************************************************************
  ItemFacturacion          := NotaCambioIni.ReadString('codigo','codigo','');
  NotaCambioIni.Free;
  if ItemFacturacion='' then
    ShowMessage('No hay defindido Conceptos de Facturacion, en el caso que se haga.'+#13+
                'Configurelo... desde el link de Fecha');
  lbCambio.Caption:='('+ItemFacturacion+')';
end;

procedure TFormNotas_Cambio.GenerarAjusteExecute(Sender: TObject);
begin
  if (Assigned(FormAjustesStock)) then
    FreeAndNil(FormAjustesStock);
  if Not(Assigned(FormAjustesStock)) then
    FormAjustesStock:=TFormAjustesStock.Create(Self);
  FormAjustesStock.Agregar.Execute;
  FormAjustesStock.CDSAjusteCabDEPOSITOSetText(FormAjustesStock.CDSAjusteCabDEPOSITO,IntToStr(DatosNotasCambio.CDSNotaCabDEPOSITO.Value));
  FormAjustesStock.CDSAjusteCabOBS.Value:='Por Cambio de Producto, Comp. Nro.'+DatosNotasCambio.CDSNotaCabNUMERO.AsString+
                                          '- Realizado por Usuario:'+DMMain_FD.UsuarioActivo;
  DatosNotasCambio.CDSNotaDet.First;
  while Not(DatosNotasCambio.CDSNotaDet.Eof) do
    begin
      FormAjustesStock.CDSAjusteDet.Append;
      FormAjustesStock.CDSAjusteDetCODIGOSetText(FormAjustesStock.CDSAjusteDetCODIGO,DatosNotasCambio.CDSNotaDetCODIGO.AsString);
      FormAjustesStock.CDSAjusteDetCANTIDADSetText(FormAjustesStock.CDSAjusteDetCANTIDAD,DatosNotasCambio.CDSNotaDetCANTIDAD.AsString);
      FormAjustesStock.CDSAjusteDet.Post;
      DatosNotasCambio.CDSNotaDet.Next;
    end;
  Id_Ajuste := FormAjustesStock.CDSAjusteCabID_RTO.Value;
  FormAjustesStock.Confirma.Execute;
  DatosNotasCambio.QActualizaNotaIdAjus.Close;
  DatosNotasCambio.QActualizaNotaIdAjus.ParamByName('id_Ajuste').Value :=Id_Ajuste;
  DatosNotasCambio.QActualizaNotaIdAjus.ParamByName('id').Value        :=DatosNotasCambio.CDSNotaCabID.Value;
  DatosNotasCambio.QActualizaNotaIdAjus.ExecSQL;
  DatosNotasCambio.QActualizaNotaIdAjus.Close;
  FormAjustesStock.Salir.Execute;
end;

procedure TFormNotas_Cambio.GenerarFcCCExecute(Sender: TObject);
begin
  if Not(Assigned(FormBuscadorTipoCpbte)) then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
  FormBuscadorTipoCpbte.TipoCpbte1:='FC';
  FormBuscadorTipoCpbte.TipoCpbte2:='';
  FormBuscadorTipoCpbte.TipoCpbte3:='';
  FormBuscadorTipoCpbte.CV        :='V';
  FormBuscadorTipoCpbte.Sucursal      := DatosNotasCambio.CDSNotaCabSUCURSAL.Value;
  FormBuscadorTipoCpbte.DiscriminaIVA := DatosNotasCambio.CDSNotaCabDESGLOZA_IVA.Value;
  FormBuscadorTipoCpbte.ShowModal;
  if FormBuscadorTipoCpbte.ModalResult=mrOk then
    begin
      SucursalComprobante                 := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante                       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin
          if Not(Assigned(FormCpbte_2)) Then
            FormCpbte_2:=TFormCpbte_2.Create(self);
          FormCpbte_2.SucursalPorDefecto := SucursalComprobante;
          FormCpbte_2.DepositoPorDefecto := DatosNotasCambio.CDSNotaCabDEPOSITO.Value;
          FormCpbte_2.Agregar.Execute;
          DatosVentas.CDSVentaCabCODIGOSetText(DatosVentas.CDSVentaCabCODIGO,DatosNotasCambio.CDSNotaCabCLIENTE.AsString);
          DatosVentas.CDSVentaCabSUCFACSetText(DatosVentas.CDSVentaCabSUCURSAL,IntToStr(SucursalComprobante));
          DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
          DatosVentas.CDSVentaCabID_NOTA_CAMBIO.Value:=DatosNotasCambio.CDSNotaCabID.Value;

          DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,ItemFacturacion);
          DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,'1');

          if (DatosVentas.CDSVentaCabDESGLOZAIVA.Value='S') then
            DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)/DatosVentas.CDSVentaDetIVA_TASA.AsFloat))
          else
            if (DatosVentas.CDSVentaCabDESGLOZAIVA.Value='N') then
              DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)));

          Id_Factura :=DatosVentas.CDSVentaCabID_FC.Value;
          FormCpbte_2.Confirma.Execute;
        end;
     end;
//  DatosNotasCambio.QActualizaNotaIdFac.Close;
//  DatosNotasCambio.QActualizaNotaIdFac.ParamByName('id_factura').Value:=Id_Factura;
//  DatosNotasCambio.QActualizaNotaIdFac.ParamByName('id').Value        :=DatosNotasCambio.CDSNotaCabID.Value;
//  DatosNotasCambio.QActualizaNotaIdFac.ExecSQL;
//  DatosNotasCambio.QActualizaNotaIdFac.Close;
end;

procedure TFormNotas_Cambio.GenerarFcCtdoExecute(Sender: TObject);
begin
  if Not(Assigned(FormBuscadorTipoCpbte)) then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
  FormBuscadorTipoCpbte.TipoCpbte1:='FO';
  FormBuscadorTipoCpbte.TipoCpbte2:='';
  FormBuscadorTipoCpbte.TipoCpbte3:='';
  FormBuscadorTipoCpbte.CV        :='V';
  FormBuscadorTipoCpbte.Sucursal      := DatosNotasCambio.CDSNotaCabSUCURSAL.Value;
  FormBuscadorTipoCpbte.DiscriminaIVA := DatosNotasCambio.CDSNotaCabDESGLOZA_IVA.Value;
  FormBuscadorTipoCpbte.ShowModal;
  if FormBuscadorTipoCpbte.ModalResult=mrOk then
    begin
      SucursalComprobante                 := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante                       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin
          if Not(Assigned(FormCpbteCtdo_2)) Then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.SucursalPorDefecto := SucursalComprobante;
          FormCpbteCtdo_2.DepositoPorDefecto := DatosNotasCambio.CDSNotaCabDEPOSITO.Value;
          FormCpbteCtdo_2.Agregar.Execute;

          DatosVentasCtdo.CDSVentaCabCODIGOSetText(DatosVentasCtdo.CDSVentaCabCODIGO,DatosNotasCambio.CDSNotaCabCLIENTE.AsString);
          DatosVentasCtdo.CDSVentaCabSUCFACSetText(DatosVentasCtdo.CDSVentaCabSUCURSAL,IntToStr(SucursalComprobante));
          DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
          DatosVentasCtdo.CDSVentaCabID_NOTA_CAMBIO.Value:=DatosNotasCambio.CDSNotaCabID.Value;

          DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo,ItemFacturacion);
          DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,'1');
//          DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)/1.21));
          if (DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='S') then
            DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)/DatosVentasCtdo.CDSVentaDetIVA_TASA.AsFloat))
          else
            if (DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='N') then
              DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)));

          Id_Factura := DatosVentasCtdo.CDSVentaCabID_FC.Value;
     //     FormCpbteCtdo_2.Confirma.Execute;
        end;
     end;
//  DatosNotasCambio.QActualizaNotaIdFac.Close;
//  DatosNotasCambio.QActualizaNotaIdFac.ParamByName('id_factura').Value:=Id_Factura;
//  DatosNotasCambio.QActualizaNotaIdFac.ParamByName('id').Value        :=DatosNotasCambio.CDSNotaCabID.Value;
//  DatosNotasCambio.QActualizaNotaIdFac.ExecSQL;
//  DatosNotasCambio.QActualizaNotaIdFac.Close;
end;

procedure TFormNotas_Cambio.GenerarNCCtdoExecute(Sender: TObject);
var
 ASOCIADO_PTOVTA,
 ASOCIADO_TIPO    :Integer;

 ASOCIADO_NRO     :double;
 ASOCIADO_CPTEFCH :String;
 ASOCIADO_ID_CPBTE:Integer;
begin
 if Not(Assigned(FormBuscadorTipoCpbte)) then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
  FormBuscadorTipoCpbte.TipoCpbte1 := 'NC';
  FormBuscadorTipoCpbte.TipoCpbte2 := '';
  FormBuscadorTipoCpbte.TipoCpbte3 := '';
  FormBuscadorTipoCpbte.CV         := 'V';
  FormBuscadorTipoCpbte.Sucursal      := DatosNotasCambio.CDSNotaCabSUCURSAL.Value;
  FormBuscadorTipoCpbte.DiscriminaIVA := DatosNotasCambio.CDSNotaCabDESGLOZA_IVA.Value;
  FormBuscadorTipoCpbte.ShowModal;
  if FormBuscadorTipoCpbte.ModalResult=mrOk then
    begin
      SucursalComprobante                 := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante                       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin
          // Indicar a que Factura va la NC
          if not Assigned(FormNotaCreditoAplicaAFactura) then
            FormNotaCreditoAplicaAFactura :=  TFormNotaCreditoAplicaAFactura.Create(self);
          FormNotaCreditoAplicaAFactura.Cliente := DSBase.DataSet.FieldByName('CLIENTE').AsString;
          FormNotaCreditoAplicaAFactura.ShowModal;
          if FormNotaCreditoAplicaAFactura.ModalResult=mrOk then
            begin
              ASOCIADO_CPTEFCH  := FormNotaCreditoAplicaAFactura.Fecha;
              ASOCIADO_PTOVTA   := StrToInt(FormNotaCreditoAplicaAFactura.Suc);
              ASOCIADO_NRO      := StrToFloat(FormNotaCreditoAplicaAFactura.NUmero);
              ASOCIADO_TIPO     := StrToInt(FormNotaCreditoAplicaAFactura.CodigoAfip);
              ASOCIADO_ID_CPBTE := FormNotaCreditoAplicaAFactura.ID_Cpbte;
            end;



          if Not(Assigned(FormCpbte_2)) Then
            FormCpbte_2:=TFormCpbte_2.Create(Application);
          FormCpbte_2.SucursalPorDefecto := SucursalComprobante;
          FormCpbte_2.DepositoPorDefecto := DatosNotasCambio.CDSNotaCabDEPOSITO.Value;
          FormCpbte_2.Agregar.Execute;

          DatosVentas.CDSVentaCabASOCIADO_TIPO.Value     :=ASOCIADO_TIPO;
          DatosVentas.CDSVentaCabASOCIADO_CPTEFCH.Value  :=ASOCIADO_CPTEFCH;
          DatosVentas.CDSVentaCabASOCIADO_PTOVTA.Value   :=ASOCIADO_PTOVTA;
          DatosVentas.CDSVentaCabASOCIADO_NRO.Value      :=ASOCIADO_NRO;
          DatosVentas.CDSVentaCabASOCIADO_ID_CPBTE.Value :=ASOCIADO_ID_CPBTE;

          DatosVentas.CDSVentaCabCODIGOSetText(DatosVentas.CDSVentaCabCODIGO,DatosNotasCambio.CDSNotaCabCLIENTE.AsString);

          DatosVentas.CDSVentaCabSUCURSALSetText(DatosVentas.CDSVentaCabSUCURSAL,IntToStr(SucursalComprobante));
          DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
          DatosVentas.CDSVentaCabID_NOTA_CAMBIO.Value:=DatosNotasCambio.CDSNotaCabID.Value;

          DatosVentas.CDSVentaCabNC_CONTADO.Value:='S';
          DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,ItemFacturacion);
          DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,'1');
//          DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat/1.21)));

          if (DatosVentas.CDSVentaCabDESGLOZAIVA.Value='S') then
            DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)/DatosVentas.CDSVentaDetIVA_TASA.AsFloat))
          else
            if (DatosVentas.CDSVentaCabDESGLOZAIVA.Value='N') then
              DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)));

          Id_Factura :=DatosVentas.CDSVentaCabID_FC.Value;
          //FormCpbte_2.Confirma.Execute;
        end;
     end;
//  DatosNotasCambio.QActualizaNotaIdFac.Close;
//  DatosNotasCambio.QActualizaNotaIdFac.ParamByName('id_factura').Value:=Id_Factura;
//  DatosNotasCambio.QActualizaNotaIdFac.ParamByName('id').Value        :=DatosNotasCambio.CDSNotaCabID.Value;
//  DatosNotasCambio.QActualizaNotaIdFac.ExecSQL;
//  DatosNotasCambio.QActualizaNotaIdFac.Close;
end;

procedure TFormNotas_Cambio.GenerarNCExecute(Sender: TObject);
var
 ASOCIADO_PTOVTA,
 ASOCIADO_TIPO    :Integer;

 ASOCIADO_NRO     :double;
 ASOCIADO_CPTEFCH :String;
 ASOCIADO_ID_CPBTE:Integer;
begin
 if Not(Assigned(FormBuscadorTipoCpbte)) then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
  FormBuscadorTipoCpbte.TipoCpbte1:='NC';
  FormBuscadorTipoCpbte.TipoCpbte2:='';
  FormBuscadorTipoCpbte.TipoCpbte3:='';
  FormBuscadorTipoCpbte.CV        :='V';
  FormBuscadorTipoCpbte.Sucursal      := DatosNotasCambio.CDSNotaCabSUCURSAL.Value;
  FormBuscadorTipoCpbte.DiscriminaIVA := DatosNotasCambio.CDSNotaCabDESGLOZA_IVA.Value;
  FormBuscadorTipoCpbte.ShowModal;
  if FormBuscadorTipoCpbte.ModalResult=mrOk then
    begin
      SucursalComprobante                 := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante                       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin

          // Indicar a que Factura va la NC
          if not Assigned(FormNotaCreditoAplicaAFactura) then
            FormNotaCreditoAplicaAFactura :=  TFormNotaCreditoAplicaAFactura.Create(self);
          FormNotaCreditoAplicaAFactura.Cliente := DSBase.DataSet.FieldByName('CLIENTE').AsString;
          FormNotaCreditoAplicaAFactura.ShowModal;
          if FormNotaCreditoAplicaAFactura.ModalResult=mrOk then
            begin
              ASOCIADO_CPTEFCH  := FormNotaCreditoAplicaAFactura.Fecha;
              ASOCIADO_PTOVTA   := StrToInt(FormNotaCreditoAplicaAFactura.Suc);
              ASOCIADO_NRO      := StrToFloat(FormNotaCreditoAplicaAFactura.NUmero);
              ASOCIADO_TIPO     := StrToInt(FormNotaCreditoAplicaAFactura.CodigoAfip);
              ASOCIADO_ID_CPBTE := FormNotaCreditoAplicaAFactura.ID_Cpbte;
            end;


          if Not(Assigned(FormCpbte_2)) Then
            FormCpbte_2:=TFormCpbte_2.Create(self);
          FormCpbte_2.SucursalPorDefecto := SucursalComprobante;
          FormCpbte_2.DepositoPorDefecto := DatosNotasCambio.CDSNotaCabDEPOSITO.Value;
          FormCpbte_2.Agregar.Execute;

          DatosVentas.CDSVentaCabASOCIADO_TIPO.Value     :=ASOCIADO_TIPO;
          DatosVentas.CDSVentaCabASOCIADO_CPTEFCH.Value  :=ASOCIADO_CPTEFCH;
          DatosVentas.CDSVentaCabASOCIADO_PTOVTA.Value   :=ASOCIADO_PTOVTA;
          DatosVentas.CDSVentaCabASOCIADO_NRO.Value      :=ASOCIADO_NRO;
          DatosVentas.CDSVentaCabASOCIADO_ID_CPBTE.Value :=ASOCIADO_ID_CPBTE;


          DatosVentas.CDSVentaCabCODIGOSetText(DatosVentas.CDSVentaCabCODIGO,DatosNotasCambio.CDSNotaCabCLIENTE.AsString);
          DatosVentas.CDSVentaCabSUCURSALSetText(DatosVentas.CDSVentaCabSUCURSAL,IntToStr(SucursalComprobante));
          DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
          DatosVentas.CDSVentaCabID_NOTA_CAMBIO.Value:=DatosNotasCambio.CDSNotaCabID.Value;
          DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,ItemFacturacion);
          DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,'1');
//          DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat/1.21)));
          if (DatosVentas.CDSVentaCabDESGLOZAIVA.Value='S') then
            DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)/DatosVentas.CDSVentaDetIVA_TASA.AsFloat))
          else
            if (DatosVentas.CDSVentaCabDESGLOZAIVA.Value='N') then
              DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)));

          Id_Factura :=DatosVentas.CDSVentaCabID_FC.Value;
          //FormCpbte_2.Confirma.Execute;
        end;
     end;
//  DatosNotasCambio.QActualizaNotaIdFac.Close;
//  DatosNotasCambio.QActualizaNotaIdFac.ParamByName('id_factura').Value:=Id_Factura;
//  DatosNotasCambio.QActualizaNotaIdFac.ParamByName('id').Value        :=DatosNotasCambio.CDSNotaCabID.Value;
//  DatosNotasCambio.QActualizaNotaIdFac.ExecSQL;
//  DatosNotasCambio.QActualizaNotaIdFac.Close;
end;

procedure TFormNotas_Cambio.GenerarTkExecute(Sender: TObject);
begin
  if Not(Assigned(FormBuscadorTipoCpbte)) then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
  FormBuscadorTipoCpbte.TipoCpbte1:='TK';
  FormBuscadorTipoCpbte.TipoCpbte2:='';
  FormBuscadorTipoCpbte.TipoCpbte3:='';
  FormBuscadorTipoCpbte.CV        :='V';
  FormBuscadorTipoCpbte.Sucursal      := DatosNotasCambio.CDSNotaCabSUCURSAL.Value;
  FormBuscadorTipoCpbte.DiscriminaIVA := DatosNotasCambio.CDSNotaCabDESGLOZA_IVA.Value;
  FormBuscadorTipoCpbte.ShowModal;
  if FormBuscadorTipoCpbte.ModalResult=mrOk then
    begin
      SucursalComprobante                 := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante                       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin
          if Not(Assigned(FormTicketVta)) Then
            FormTicketVta:=TFormTicketVta.Create(Self);
          FormTicketVta.SucursalPorDefecto:= SucursalComprobante;
          FormTicketVta.DepositoPorDefecto:= DatosNotasCambio.CDSNotaCabDEPOSITO.Value;
          FormTicketVta.Show;
          FormTicketVta.Agregar.Execute;
          DatosVentasTicket.CDSVentaCabSUCFACSetText(DatosVentasTicket.CDSVentaCabSUCURSAL,IntToStr(SucursalComprobante));
          DatosVentasTicket.CDSVentaCabCODIGOSetText(DatosVentasTicket.CDSVentaCabCODIGO,DatosNotasCambio.CDSNotaCabCLIENTE.AsString);
          DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
          DatosVentasTicket.CDSVentaCabID_NOTA_CAMBIO.Value:=DatosNotasCambio.CDSNotaCabID.Value;

      //    DatosVentasTicket.CDSVentaCabCODIGOSetText(DatosVentasTicket.CDSVentaCabCODIGO,DatosNotasCambio.CDSNotaCabCLIENTE.AsString);
          DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCodigoArticulo,ItemFacturacion);
          DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCantidad,'1');
//          DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)/1.21));
          if (DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value='S') then
            DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)/DatosVentasTicket.CDSVentaDetIVA_TASA.AsFloat))
          else
            if (DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value='N') then
              DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Abs(DatosNotasCambio.CDSNotaCabIMPORTE.AsFloat)));

          Id_Factura :=DatosVentasTicket.CDSVentaCabID_FC.Value;
        //  FormTicketVta.Confirma.Execute;
        end;
     end;
//  if FormTicketVta.generado then
  begin
//    DatosNotasCambio.QActualizaNotaIdFac.Close;
//    DatosNotasCambio.QActualizaNotaIdFac.ParamByName('id_factura').Value:=Id_Factura;
//    DatosNotasCambio.QActualizaNotaIdFac.ParamByName('id').Value        :=DatosNotasCambio.CDSNotaCabID.Value;
//    DatosNotasCambio.QActualizaNotaIdFac.ExecSQL;
//    DatosNotasCambio.QActualizaNotaIdFac.Close;
  end;
end;

procedure TFormNotas_Cambio.RecalcularExecute(Sender: TObject);
begin
  inherited;
  DatosNotasCambio.CDSNotaDet.First;
  while  Not(DatosNotasCambio.CDSNotaDet.Eof) do
    begin
      DatosNotasCambio.CDSNotaDet.Edit;
      DatosNotasCambio.CDSStock.Close;
      DatosNotasCambio.CDSStock.Params.ParamByName('Codigo').Value     :=DatosNotasCambio.CDSNotaDetCODIGO.Value;
      DatosNotasCambio.CDSStock.Params.ParamByName('lista').AsInteger  :=DatosNotasCambio.CDSNotaCabID_LISTA.AsInteger;
      DatosNotasCambio.CDSStock.Open;
      if Not(DatosNotasCambio.CDSStock.IsEmpty) then
        DatosNotasCambio.CDSNotaDetPRECIO_UNITARIOSetText(DatosNotasCambio.CDSNotaDetPRECIO_UNITARIO,DatosNotasCambio.CDSStockMUESTRAPRECIOIVA.AsString);
      DatosNotasCambio.CDSNotaDet.Next;
    end;
  DatosNotasCambio.CDSNotaDet.First;
end;

procedure TFormNotas_Cambio.RecuperarExecute(Sender: TObject);
begin
  inherited;
  dbgExitencias.Visible := False;

  DatosNotasCambio.CDSNotaCab.Close;
  DatosNotasCambio.CDSNotaCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosNotasCambio.CDSNotaCab.Open;

  DatosNotasCambio.CDSNotaDet.Close;
  DatosNotasCambio.CDSNotaDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosNotasCambio.CDSNotaDet.Open;
  FormNotas_Cambio.Caption:='Notas de Cambio de Mercaderia -- '+DatosNotasCambio.CDSNotaCabFECHA_HORA.AsString+'//'+Copy(DatosNotasCambio.CDSNotaCabUSUARIO.Value,1,15);
end;

procedure TFormNotas_Cambio.RxCCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosNotasCambio.CDSNotaCabCLIENTE.Clear;
      DatosNotasCambio.CDSNotaCabNOMBRE.Clear;
    end;

end;

procedure TFormNotas_Cambio.VerAjusteExecute(Sender: TObject);
begin
  inherited;
  if (DatosNotasCambio.CDSNotaCabID_AJUSTE.AsString<>'') and (DatosNotasCambio.CDSNotaCabID_AJUSTE.Value>0) then
    begin
      if Not(Assigned(FormAjustesStock)) then
        FormAjustesStock:=TFormAjustesStock.Create(Self);
      FormAjustesStock.DatoNew   := DatosNotasCambio.CDSNotaCabID_AJUSTE.AsString;
      FormAjustesStock.TipoCpbte := 'AS';

      FormAjustesStock.Recuperar.Execute;
      FormAjustesStock.Show;
    end;
end;



procedure TFormNotas_Cambio.VerCodigoAlternativoClick(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo.Checked:=Not(VerCodigoAlternativo.Checked);
  dbgDetalle.Refresh;
end;

procedure TFormNotas_Cambio.VerCpbteExecute(Sender: TObject);
begin
  inherited;
  if (DatosNotasCambio.CDSNotaCabMUESTRATIPOFACTURA.Value='FC') or (DatosNotasCambio.CDSNotaCabMUESTRATIPOFACTURA.Value='NC') then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew   := DatosNotasCambio.CDSNotaCabID_FACTURA.AsString;
      FormCpbte_2.TipoCpbte := DatosNotasCambio.CDSNotaCabMUESTRATIPOFACTURA.Value;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (DatosNotasCambio.CDSNotaCabMUESTRATIPOFACTURA.Value='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
        FormCpbteCtdo_2.DatoNew   := DatosNotasCambio.CDSNotaCabID_FACTURA.AsString;
        FormCpbteCtdo_2.TipoCpbte := DatosNotasCambio.CDSNotaCabMUESTRATIPOFACTURA.Value;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
      if (DatosNotasCambio.CDSNotaCabMUESTRATIPOFACTURA.Value='TK') then
        begin
          if Not(Assigned(FormTicketVta)) then
            FormTicketVta:=TFormTicketVta.Create(Self);
          FormTicketVta.DatoNew   := DatosNotasCambio.CDSNotaCabID_FACTURA.AsString;
          FormTicketVta.TipoCpbte := DatosNotasCambio.CDSNotaCabMUESTRATIPOFACTURA.Value;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
        end;

end;

end.
