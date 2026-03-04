unit UDatosClienteCabeceraCpbte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls,
  UFactura_2,UFacturaCtdo_2,UPresupuesto_2, Buttons, JvExControls, JvGradient,
  FMTBcd, DB, SqlExpr, DBXCommon, Provider, DBClient, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, JvExMask, JvToolEdit, JvMaskEdit, JvDBControls,Librerias,
  JvExStdCtrls, JvCombobox, JvDBCombobox, AdvOfficeButtons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;
type
  TFormDatosClienteCabeceraCpbte = class(TForm)
    Panel1: TPanel;
    dbeNombre: TDBEdit;
    dbeRazonSocial: TDBEdit;
    dbeLocalidad: TDBEdit;
    dbeCPostal: TDBEdit;
    dbeDireccion: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbDocumento: TLabel;
    pnAdicional: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    pnPie: TPanel;
    btCerrar: TBitBtn;
    btAlta: TBitBtn;
    spIngresarCliente: TFDStoredProc;
    QCodigoFree: TFDQuery;
    QCodigoFreeNEWCODIGO: TIntegerField;
    spIngresarConVenta: TFDStoredProc;
    QPrimerConVta: TFDQuery;
    QPrimerConVtaMIN: TIntegerField;
    spLdr: TFDStoredProc;
    Label9: TLabel;
    dblInscripcion: TDBLookupComboBox;
    DSBuscaInscripcion: TDataSource;
    CDSBuscaInscripcion: TClientDataSet;
    CDSBuscaInscripcionCODIGO: TIntegerField;
    CDSBuscaInscripcionDETALLE: TStringField;
    CDSBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    DSPBuscaInscripcion: TDataSetProvider;
    dbeCodigo: TDBEdit;
    lbCodigo: TLabel;
    dbeTelefono1: TDBEdit;
    dbeTelefono2: TDBEdit;
    dbeCorreo: TDBEdit;
    dbeCodVendedor: TDBEdit;
    Label10: TLabel;
    dbeCuit: TJvDBMaskEdit;
    Label12: TLabel;
    dbTipoDoc: TJvDBComboBox;
    rgTipoDocumento: TRadioGroup;
    dbeCelular: TDBEdit;
    Label6: TLabel;
    chModo: TAdvOfficeCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCerrarClick(Sender: TObject);
    procedure dbeRazonSocialEnter(Sender: TObject);
    procedure btAltaClick(Sender: TObject);
    procedure chModoClick(Sender: TObject);
    procedure dbeCuitExit(Sender: TObject);
    procedure dbeCuitKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCuitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgTipoDocumentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // esta la uso para saber cuando entro y salgo del primer Edit
    Flag:Boolean;
  end;

var
  FormDatosClienteCabeceraCpbte: TFormDatosClienteCabeceraCpbte;

implementation

uses URemitos, UOrdenDeTrabajo, UNotaPedidoCliente, UTiketVta,UDMain_FD;

{$R *.DFM}

procedure TFormDatosClienteCabeceraCpbte.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  Flag:=False;
  pnAdicional.Visible:=False;
  CDSBuscaInscripcion.Close;
  CDSBuscaInscripcion.Open;
  case Tag of
    1:begin //Factura de Vta. cta.Cte.
        dbeNombre.DataSource     :=FormCpbte_2.DSBase;
        dbeRazonSocial.DataSource:=FormCpbte_2.DSBase;
        dbeDireccion.DataSource  :=FormCpbte_2.DSBase;
        dbeCPostal.DataSource    :=FormCpbte_2.DSBase;
        dbeLocalidad.DataSource  :=FormCpbte_2.DSBase;
        dbeCuit.DataSource       :=FormCpbte_2.DSBase;
        dblInscripcion.DataSource:=FormCpbte_2.DSBase;
        dbeCodigo.DataSource     :=FormCpbte_2.DSBase;
        dbeCodVendedor.DataSource:=FormCpbte_2.DSBase;
        if FormCpbte_2.DSBase.DataSet.FieldByName('TipoIva').Value=3 then
          rgTipoDocumento.ItemIndex:=1
        else
          rgTipoDocumento.ItemIndex:=0;
        rgTipoDocumento.Enabled:=False;
        dbTipoDoc.ItemIndex:=0;
      end;
    2:begin //Factura de Vta. Contado.
        dbeNombre.DataSource     :=FormCpbteCtdo_2.DSBase;
        dbeRazonSocial.DataSource:=FormCpbteCtdo_2.DSBase;
        dbeDireccion.DataSource  :=FormCpbteCtdo_2.DSBase;
        dbeCPostal.DataSource    :=FormCpbteCtdo_2.DSBase;
        dbeLocalidad.DataSource  :=FormCpbteCtdo_2.DSBase;
        dbeCuit.DataSource       :=FormCpbteCtdo_2.DSBase;
        dblInscripcion.DataSource:=FormCpbteCtdo_2.DSBase;
        dbeCodigo.DataSource     :=FormCpbteCtdo_2.DSBase;
        dbeCodVendedor.DataSource:=FormCpbteCtdo_2.DSBase;
        if FormCpbteCtdo_2.DSBase.DataSet.FieldByName('TipoIva').Value=3 then
          rgTipoDocumento.ItemIndex:=1
        else
          rgTipoDocumento.ItemIndex:=0;
        rgTipoDocumento.Enabled:=False;
        dbTipoDoc.ItemIndex:=0;
      end;
    3:begin //Presupuesto.
        dbeNombre.DataSource     :=FormPresupuesto_2.DSBase;
        dbeRazonSocial.DataSource:=FormPresupuesto_2.DSBase;
        dbeDireccion.DataSource  :=FormPresupuesto_2.DSBase;
        dbeCPostal.DataSource    :=FormPresupuesto_2.DSBase;
        dbeLocalidad.DataSource  :=FormPresupuesto_2.DSBase;
        dbeCuit.DataSource       :=FormPresupuesto_2.DSBase;
        dblInscripcion.DataSource:=FormPresupuesto_2.DSBase;
        dbeCodigo.DataSource     :=FormPresupuesto_2.DSBase;
        dbeCodVendedor.DataSource:=FormPresupuesto_2.DSBase;

      end;
    4:begin //Remito.
        dbeNombre.DataSource     :=FormRemitos.DSBase;
        dbeRazonSocial.DataSource:=FormRemitos.DSBase;
        dbeDireccion.DataSource  :=FormRemitos.DSBase;
        dbeCPostal.DataSource    :=FormRemitos.DSBase;
        dbeLocalidad.DataSource  :=FormRemitos.DSBase;
        dblInscripcion.DataSource:=FormRemitos.DSBase;
        dbeCodigo.DataSource     :=FormRemitos.DSBase;
        dbeCuit.DataSource       :=FormRemitos.DSBase;
        dbeCodVendedor.DataSource:=FormRemitos.DSBase;

      end;
    5:begin //Orden de Trabajo.
        dbeNombre.DataSource     :=FormOrdenDeTrabajo.DSBase;
        dbeRazonSocial.DataSource:=FormOrdenDeTrabajo.DSBase;
        dbeDireccion.DataSource  :=FormOrdenDeTrabajo.DSBase;
        dbeCPostal.DataSource    :=FormOrdenDeTrabajo.DSBase;
        dbeLocalidad.DataSource  :=FormOrdenDeTrabajo.DSBase;
        dblInscripcion.DataSource:=FormOrdenDeTrabajo.DSBase;
        dbeCodigo.DataSource     :=FormOrdenDeTrabajo.DSBase;
        dbeTelefono1.DataSource  :=FormOrdenDeTrabajo.DSBase;
        dbeTelefono2.DataSource  :=FormOrdenDeTrabajo.DSBase;
        dbeCelular.DataSource    :=FormOrdenDeTrabajo.DSBase;
        dbeCorreo.DataSource     :=FormOrdenDeTrabajo.DSBase;
        dbeCuit.DataSource       :=FormOrdenDeTrabajo.DSBase;
        pnAdicional.Visible      :=True;
      //  pnAdicional.Enabled      :=True;

      end;
    6:begin //Nota de Pedido Cliente.
        dbeNombre.DataSource     :=FormNotaPedidoCliente.DSBase;
        dbeRazonSocial.DataSource:=FormNotaPedidoCliente.DSBase;
        dbeDireccion.DataSource  :=FormNotaPedidoCliente.DSBase;
        dbeCPostal.DataSource    :=FormNotaPedidoCliente.DSBase;
        dbeLocalidad.DataSource  :=FormNotaPedidoCliente.DSBase;
        dblInscripcion.DataSource:=FormNotaPedidoCliente.DSBase;
        dbeCodigo.DataSource     :=FormNotaPedidoCliente.DSBase;
        dbeCodVendedor.DataSource:=FormNotaPedidoCliente.DSBase;
        dbeCuit.DataSource       :=FormNotaPedidoCliente.DSBase;
      end;
    7:begin //Ticket de Vta.
        dbeNombre.DataSource     :=FormTicketVta.DSBase;
        dbeRazonSocial.DataSource:=FormTicketVta.DSBase;
        dbeDireccion.DataSource  :=FormTicketVta.DSBase;
        dbeCPostal.DataSource    :=FormTicketVta.DSBase;
        dbeLocalidad.DataSource  :=FormTicketVta.DSBase;
        dbeCuit.DataSource       :=FormTicketVta.DSBase;
        dblInscripcion.DataSource:=FormTicketVta.DSBase;
        dbeCodigo.DataSource     :=FormTicketVta.DSBase;
        dbeCodVendedor.DataSource:=FormTicketVta.DSBase;
        if FormTicketVta.DSBase.DataSet.FieldByName('TipoIva').Value=3 then
          rgTipoDocumento.ItemIndex:=1
        else
          rgTipoDocumento.ItemIndex:=0;
        rgTipoDocumento.Enabled:=False;
        dbTipoDoc.ItemIndex:=0;
      end;

  end;
  dbeNombre.DataField      :='Nombre';//e.DataSet.Fields[6].FieldName;
  dbeRazonSocial.DataField :='RazonSocial';//FormCpbte_2.DSBase.DataSet.Fields[7].FieldName;
  dbeDireccion.DataField   :='Direccion';//FormCpbte_2.DSBase.DataSet.Fields[8].FieldName;
  dbeCPostal.DataField     :='cpostal';//FormCpbte_2.DSBase.DataSet.Fields[9].FieldName;
  dbeLocalidad.DataField   :='localidad';//FormCpbte_2.DSBase.DataSet.Fields[10].FieldName;
  dbeCuit.DataField        :='cuit';//FormCpbte_2.DSBase.DataSet.fields[12].FieldName;
  dblInscripcion.DataField :='TipoIva';
  dbeCodigo.DataField      :='Codigo';
  dbeCodVendedor.DataField :='Vendedor';

  if Tag=5 then
    begin
      dbeTelefono1.DataField  :='TELEFONO1';
      dbeTelefono2.DataField  :='TELEFONO2';
      dbeCelular.DataField    :='MUESTRACELULAR';
      dbeCorreo.DataField     :='CORREOELECTRONICO';
    end;

end;

procedure TFormDatosClienteCabeceraCpbte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormDatosClienteCabeceraCpbte.FormDestroy(Sender: TObject);
begin
  FormDatosClienteCabeceraCpbte:=nil;
end;

procedure TFormDatosClienteCabeceraCpbte.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TFrame)) and
    (not (ActiveControl is TDBMemo))
//    and (not (ActiveControl is TDBGrid))
    then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
//  if Key = #27 then
//    if btCancelar.Enabled Then
//      Cancelar.Execute;

end;

procedure TFormDatosClienteCabeceraCpbte.rgTipoDocumentoClick(Sender: TObject);
begin
  if rgTipoDocumento.ItemIndex=0 then
    begin
      dbTipoDoc.Enabled  := False;
      dbeCuit.EditMask   := '00-00000000-0;0'

    end
  else
    begin
      dbTipoDoc.Enabled  := True;
      dbeCuit.EditMask   := '';
      lbDocumento.Caption:= 'Documento';

    end;


end;

procedure TFormDatosClienteCabeceraCpbte.btCerrarClick(Sender: TObject);
begin
  dbeRazonSocial.Text :=dbeNombre.Text;
  if (Tag<>2) and (Tag<>7) then
    if MessageDlg('Traslada los cambios a la ficha del cliente???....',mtConfirmation,[mbNo,mbYes],0,mbNo)=mrYes then
      btAltaClick(Sender);
  Close;
end;

procedure TFormDatosClienteCabeceraCpbte.btAltaClick(Sender: TObject);
begin
//  QCodigoFree.Close;
//  QCodigoFree.open;
//  if ((QCodigoFreeNEWCODIGO.AsString<>'')) Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      Try
        spIngresarCliente.Close;
     //   if chModo.Checked then
     //     spIngresarCliente.ParamByName('CODIGO').Value        :=Copy('00000000',1,6-Length(Trim(QCodigoFreeNEWCODIGO.AsString)))+Trim(QCodigoFreeNEWCODIGO.AsString)
     //   else
        spIngresarCliente.ParamByName('CODIGO').Value        :=dbeCodigo.Text;
        spIngresarCliente.ParamByName('NOMBRE').Value        :=dbeNombre.Text;
        spIngresarCliente.ParamByName('RAZON_SOCIAL').Value  :=dbeRazonSocial.Text;
        spIngresarCliente.ParamByName('DIRECCION').Value     :=dbeDireccion.Text;
        spIngresarCliente.ParamByName('TIPO_IVA').Value      :=dblInscripcion.KeyValue;
        if rgTipoDocumento.ItemIndex=0 then
          begin
            spIngresarCliente.ParamByName('CUIT').Value          :=dbeCuit.Text;
            spIngresarCliente.ParamByName('TipoDoc').value       :=0;
            spIngresarCliente.ParamByName('NroDocumento').Value  :='';

          end
        else
          begin
            spIngresarCliente.ParamByName('CUIT').Value          :='00-00000000-0';
            spIngresarCliente.ParamByName('TipoDoc').Value       :=dbTipoDoc.ItemIndex;
            spIngresarCliente.ParamByName('NroDocumento').Value  :=dbeCuit.Text;
          end;
        spIngresarCliente.ParamByName('C_POSTAL').Value      :=dbeCPostal.Text;
        spIngresarCliente.ParamByName('LOCALIDAD').Value     :=dbeLocalidad.Text;
        spIngresarCliente.ParamByName('TELEFONO').Value      :=dbeTelefono1.Text;
        spIngresarCliente.ParamByName('VENDEDOR').Value      :='';
        spIngresarCliente.ParamByName('OBSERVACIONES').Value :='';
        spIngresarCliente.ParamByName('Mail').Value          :=dbeCorreo.Text;
        spIngresarCliente.ParamByName('Cuenta_op').Value     :='';
        spIngresarCliente.ParamByName('Zona').Value          :=-1;
        spIngresarCliente.ParamByName('Celular').Value       :=dbeCelular.Text;
        spIngresarCliente.ExecProc;
//        QPrimerConVta.Close;
//        QPrimerConVta.Open;
//
//        spIngresarConVenta.Close;
//        if chModo.Checked then
//          spIngresarConVenta.ParamByName('CODIGO').Value  :=Copy('00000000',1,6-Length(Trim(QCodigoFreeNEWCODIGO.AsString)))+Trim(QCodigoFreeNEWCODIGO.AsString)
//        else
//          spIngresarConVenta.ParamByName('CODIGO').Value  :=dbeCodigo.Text;
//        spIngresarConVenta.ParamByName('CONDICION').Value   :=QPrimerConVta.Fields[0].AsInteger;
//        spIngresarConVenta.ExecProc;
//
//        QPrimerConVta.Close;
//
//        spLdr.Close;
//        if chModo.Checked then
//          spLdr.ParamByName('CODIGO').Value  :=Copy('00000000',1,6-Length(Trim(QCodigoFreeNEWCODIGO.AsString)))+Trim(QCodigoFreeNEWCODIGO.AsString)
//        else
//          spLdr.ParamByName('CODIGO').Value  :=dbeCodigo.Text;
//        spLdr.ParamByName('NOMBRE').Value    :=dbeNombre.Text;
//        spLdr.ParamByName('DIRECCION').Value :=dbeDireccion.Text;
//        spLdr.ParamByName('CPOSTAL').Value   :=dbeCPostal.Text;
//        spLdr.ExecProc;

        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se grabo el cambios del cliente....!');
      end;
    end;
//  QCodigoFree.Close;
  Close;
end;

procedure TFormDatosClienteCabeceraCpbte.chModoClick(Sender: TObject);
begin
  if chModo.Checked then
    chModo.Caption:='Agregar'
  else
    chModo.Caption:='Actualizar';
end;

procedure TFormDatosClienteCabeceraCpbte.dbeCuitExit(Sender: TObject);
begin
 // if (rgTipoDocumento.ItemIndex=0) and (( dbeCuit.EditText='') or (dbeCuit.EditText[1]='-'))  Then
//    dbeCuit.EditText:='00-00000000-0';
//  if (rgTipoDocumento.ItemIndex=0) and (Trim(dbeCuit.EditText)='') then
//     dbeCuit.EditText      := '00-00000000-0';
//  if (rgTipoDocumento.ItemIndex=0) and (Not(ValidarCuit(dbeCuit.EditText))) Then
//    begin
//      ShowMessage('El numero de Cuit no es Valido....');
//      dbeCuit.EditText   := '00-00000000-0';
//      dbeCuit.DataSource.DataSet.FieldByName('cuit').Value:='00-00000000-0';
//      dbeCuit.SetFocus;
//      dbeCuit.SelectAll;
//    end;
end;

procedure TFormDatosClienteCabeceraCpbte.dbeCuitKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var valor:string;
begin
 if Key=VK_RETURN  then
    begin
      valor:=Trim(dbeCuit.EditText);
       if (rgTipoDocumento.ItemIndex=0) and Not(ValidarCuit(Valor)) then
         begin
           Valor:='';
           ShowMessage('Cuit No Valido...');
         end;

      while Pos('-',Valor)>0 do delete(Valor,Pos('-',Valor),1);
      while Pos('_',Valor)>0 do delete(Valor,Pos('_',Valor),1);




      Key:=0;
      if (Length(Valor)<11) and (rgTipoDocumento.ItemIndex=0) then
        begin
          dbeCuit.EditText   := '00-00000000-0';
          //if ValidarCuit(dbeCuit.EditText) then
          dbeCuit.DataSource.DataSet.FieldByName('cuit').Value:='00-00000000-0';
          //else
          //  begin
          //    ShowMessage('Cuit No Valido...');
          //  end;

          dbeCuit.SetFocus;
          dbeCuit.SelectAll;
        end;
    end;
end;

procedure TFormDatosClienteCabeceraCpbte.dbeCuitKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13  then
    begin
      Key:=#0;
      if (Length(Trim(dbeCuit.EditText))<13) and ( rgTipoDocumento.ItemIndex=0) then
        begin
          dbeCuit.EditText   := '00-00000000-0';
          dbeCuit.DataSource.DataSet.FieldByName('cuit').Value:='00-00000000-0';
          dbeCuit.SetFocus;
          dbeCuit.SelectAll;
        end;
    end;
end;

procedure TFormDatosClienteCabeceraCpbte.dbeRazonSocialEnter(
  Sender: TObject);
begin
  if Flag=False Then
    dbeRazonSocial.Text:=dbeNombre.Text;
  Flag:=True;
end;

end.
