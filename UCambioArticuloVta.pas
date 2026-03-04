unit UCambioArticuloVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, ExtCtrls, JvExControls, JvGradient, StdCtrls,
  Mask, JvExMask, JvToolEdit, Buttons,IniFiles, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, AdvListV;

type
  TFormCambiaArticuloEnVtas = class(TForm)
    Panel1: TPanel;
    QModificaFcVta: TFDQuery;
    pnCabecera: TPanel;
    JvGradient1: TJvGradient;
    Label6: TLabel;
    ceCodigo: TJvComboEdit;
    edDetalle: TEdit;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    chVta: TCheckBox;
    chCompra: TCheckBox;
    QModificaFcCompra: TFDQuery;
    chPresupuesto: TCheckBox;
    chRemitos: TCheckBox;
    chNpedido: TCheckBox;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    QPresupuesto: TFDQuery;
    QModificaFcSub: TFDQuery;
    QRtosVta: TFDQuery;
    QNPClientesDet: TFDQuery;
    QAjustes: TFDQuery;
    chAjustes: TCheckBox;
    QTransferecias: TFDQuery;
    chTrans: TCheckBox;
    QOrdenCompra: TFDQuery;
    chOCompra: TCheckBox;
    QNotaPedido: TFDQuery;
    chNotaPedido: TCheckBox;
    QDetProduccion: TFDQuery;
    chDetaleProduccion: TCheckBox;
    QPreciosClientes: TFDQuery;
    chPreciosClientes: TCheckBox;
    QOrdenTrabajo: TFDQuery;
    chOrdenTrabajo: TCheckBox;
    chPlantillasAbonos: TCheckBox;
    QModificaPlantillaAbonos: TFDQuery;
    chModelos: TCheckBox;
    QModificaModelos: TFDQuery;
    chNotaVta: TCheckBox;
    QNotaVtaDet: TFDQuery;
    chOTrabajoConsumibles: TCheckBox;
    QOrdenTrabajoConsu: TFDQuery;
    lwArticulos: TAdvListView;
    procedure ceCodigoButtonClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ceCodigoExit(Sender: TObject);
    procedure ceCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    FCodigo :String;
    FDetalle:String;
    LCodigos: TStringList;
    { Private declarations }
  public
    Lista:TListItem;
    { Public declarations }
  published
    ArchivoIni:TIniFile;
    property Codigo:String read FCodigo write FCodigo;
    property Detalle:String read FDetalle write FDetalle;
    property Codigos: TStringList read LCodigos write LCodigos;
  end;

var
  FormCambiaArticuloEnVtas: TFormCambiaArticuloEnVtas;

implementation

{$R *.dfm}
uses UDMain_FD, UBuscadorArticulos;

procedure TFormCambiaArticuloEnVtas.btOkClick(Sender: TObject);
var
  CodAct,CodOld: String;
  x, ContErr: Integer;
begin
  ContErr :=  0;
  if LCodigos <> nil then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        for x := 0 to LCodigos.Count-1 do
          begin
            CodOld:=Trim(Copy(LCodigos[x],1,pos('-',LCodigos[x])-1));
            if chVta.Checked then
              begin
                QModificaFcVta.Close;
                QModificaFcVta.ParamByName('oldcodigo').Value := CodOld;
                QModificaFcVta.ParamByName('newcodigo').Value := ceCodigo.Text;
                QModificaFcVta.ParamByName('id').Value        := -1;
                QModificaFcVta.ExecSQL;
                QModificaFcVta.Close;

                QModificaFcSub.Close;
                QModificaFcSub.ParamByName('oldcodigo').Value := CodOld;
                QModificaFcSub.ParamByName('newcodigo').Value := ceCodigo.Text;
                QModificaFcSub.ParamByName('id').Value        := -1;
                QModificaFcSub.ExecSQL;
                QModificaFcSub.Close;

              end;
            if chCompra.Checked then
              begin
                QModificaFcCompra.Close;
                QModificaFcCompra.ParamByName('oldcodigo').Value := CodOld;
                QModificaFcCompra.ParamByName('newcodigo').Value := ceCodigo.Text;
                QModificaFcCompra.ParamByName('id').Value        := -1;
                QModificaFcCompra.ExecSQL;
                QModificaFcCompra.Close;
              end;
            if chPresupuesto.Checked then
              begin
                QPresupuesto.Close;
                QPresupuesto.ParamByName('oldcodigo').Value := CodOld;
                QPresupuesto.ParamByName('newcodigo').Value := ceCodigo.Text;
                QPresupuesto.ParamByName('id').Value        := -1;
                QPresupuesto.ExecSQL;
                QPresupuesto.Close;
              end;
            if chRemitos.Checked then
              begin
                QRtosVta.Close;
                QRtosVta.ParamByName('oldcodigo').Value := CodOld;
                QRtosVta.ParamByName('newcodigo').Value := ceCodigo.Text;
                QRtosVta.ParamByName('id').Value        := -1;
                QRtosVta.ExecSQL;
                QRtosVta.Close;
              end;
            if chNpedido.Checked then
              begin
                QNPClientesDet.Close;
                QNPClientesDet.ParamByName('oldcodigo').Value := CodOld;
                QNPClientesDet.ParamByName('newcodigo').Value := ceCodigo.Text;
                QNPClientesDet.ParamByName('id').Value        := -1;
                QNPClientesDet.ExecSQL;
                QNPClientesDet.Close;
              end;
            if chAjustes.Checked then
              begin
                QAjustes.Close;
                QAjustes.ParamByName('oldcodigo').Value := CodOld;
                QAjustes.ParamByName('newcodigo').Value := ceCodigo.Text;
                QAjustes.ParamByName('id').Value        := -1;
                QAjustes.ExecSQL;
                QAjustes.Close;
              end;
            if chTrans.Checked then
              begin
                QTransferecias.Close;
                QTransferecias.ParamByName('oldcodigo').Value := CodOld;
                QTransferecias.ParamByName('newcodigo').Value := ceCodigo.Text;
                QTransferecias.ParamByName('id').Value        := -1;
                QTransferecias.ExecSQL;
                QTransferecias.Close;
              end;
            if chOCompra.Checked then
              begin
                QOrdenCompra.Close;
                QOrdenCompra.ParamByName('oldcodigo').Value := CodOld;
                QOrdenCompra.ParamByName('newcodigo').Value := ceCodigo.Text;
                QOrdenCompra.ParamByName('id').Value        := -1;
                QOrdenCompra.ExecSQL;
                QOrdenCompra.Close;
              end;
            if chNotaPedido.Checked then
              begin
                QNotaPedido.Close;
                QNotaPedido.ParamByName('oldcodigo').Value := CodOld;
                QNotaPedido.ParamByName('newcodigo').Value := ceCodigo.Text;
                QNotaPedido.ParamByName('id').Value        := -1;
                QNotaPedido.ExecSQL;
                QNotaPedido.Close;
              end;
            if chDetaleProduccion.Checked then
              begin
                QDetProduccion.Close;
                QDetProduccion.ParamByName('oldcodigo').Value := CodOld;
                QDetProduccion.ParamByName('newcodigo').Value := ceCodigo.Text;
                QDetProduccion.ParamByName('id').Value        := -1;
                QDetProduccion.ExecSQL;
                QDetProduccion.Close;
              end;

            if chPreciosClientes.Checked then
              begin
                QPreciosClientes.Close;
                QPreciosClientes.ParamByName('oldcodigo').Value := CodOld;
                QPreciosClientes.ParamByName('newcodigo').Value := ceCodigo.Text;
                QPreciosClientes.ParamByName('id').Value        := -1;
                QPreciosClientes.ExecSQL;
                QPreciosClientes.Close;
              end;

            if chOrdenTrabajo.Checked then
              begin
                QOrdenTrabajo.Close;
                QOrdenTrabajo.ParamByName('oldcodigo').Value := CodOld;
                QOrdenTrabajo.ParamByName('newcodigo').Value := ceCodigo.Text;
                QOrdenTrabajo.ParamByName('id').Value        := -1;
                QOrdenTrabajo.ExecSQL;
                QOrdenTrabajo.Close;
              end;

            if chPlantillasAbonos.Checked then
              begin
                QModificaPlantillaAbonos.Close;
                QModificaPlantillaAbonos.ParamByName('oldcodigo').Value := CodOld;
                QModificaPlantillaAbonos.ParamByName('newcodigo').Value := ceCodigo.Text;
                QModificaPlantillaAbonos.ParamByName('id').Value        := -1;
                QModificaPlantillaAbonos.ExecSQL;
                QModificaPlantillaAbonos.Close;
              end;
            if chModelos.Checked then
              begin
                QModificaModelos.Close;
                QModificaModelos.ParamByName('oldcodigo').Value := CodOld;
                QModificaModelos.ParamByName('newcodigo').Value := ceCodigo.Text;
                QModificaModelos.ParamByName('id').Value        := -1;
                QModificaModelos.ExecSQL;
                QModificaModelos.Close;
              end;
            if chNotaVta.Checked then
              begin
                QNotaVtaDet.Close;
                QNotaVtaDet.ParamByName('oldcodigo').Value := CodOld;
                QNotaVtaDet.ParamByName('newcodigo').Value := ceCodigo.Text;
                QNotaVtaDet.ParamByName('id').Value        := -1;
                QNotaVtaDet.ExecSQL;
                QNotaVtaDet.Close;
              end;
            if chOTrabajoConsumibles.Checked then
              begin
                QOrdenTrabajoConsu.Close;
                QOrdenTrabajoConsu.ParamByName('oldcodigo').Value := CodOld;
                QOrdenTrabajoConsu.ParamByName('newcodigo').Value := ceCodigo.Text;
                QOrdenTrabajoConsu.ParamByName('id').Value        := -1;
                QOrdenTrabajoConsu.ExecSQL;
                QOrdenTrabajoConsu.Close;
              end;
          end;
        DMMain_FD.fdcGestion.Commit;
      except
        inc(ContErr);
        DMMain_FD.fdcGestion.Rollback;
      end;
      if ContErr>0 then Showmessage(IntToStr(ContErr) + ' ERRORES!!');

    end;
end;

procedure TFormCambiaArticuloEnVtas.ceCodigoButtonClick(Sender: TObject);
begin
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       QStock.Close;
       QStock.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       QStock.Open;
       if not(QStock.IsEmpty) then
         begin
           edDetalle.Text:=QStockDETALLE_STK.Value;
           ceCodigo.Text :=QStockCODIGO_STK.Value;
//           Buscar.Execute;
         end
       else
         begin
           edDetalle.Text:='';
           ceCodigo.Text :='';
         end

    end;

end;

procedure TFormCambiaArticuloEnVtas.ceCodigoExit(Sender: TObject);
begin
  if DMMain_FD.JustificaCodigo='D' Then
    ceCodigo.Text:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(trim(ceCodigo.Text))) + trim(ceCodigo.Text)
  else
    if DMMain_FD.JustificaCodigo='I' Then
      ceCodigo.Text:=trim(ceCodigo.Text)+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(trim(ceCodigo.Text)));
end;

procedure TFormCambiaArticuloEnVtas.ceCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key =#13) then
    begin
      if DMMain_FD.JustificaCodigo='D' Then
        ceCodigo.Text:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(trim(ceCodigo.Text))) + trim(ceCodigo.Text)
      else
        if DMMain_FD.JustificaCodigo='I' Then
          ceCodigo.Text:=trim(ceCodigo.Text)+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(trim(ceCodigo.Text)));
       QStock.Close;
       QStock.ParamByName('codigo').Value:=ceCodigo.Text;
       QStock.Open;
       if not(QStock.IsEmpty) then
         begin
           edDetalle.Text:=QStockDETALLE_STK.Value;
           ceCodigo.Text :=QStockCODIGO_STK.Value;
           btOk.SetFocus;
//           Buscar.Execute;
         end
       else
         begin
           edDetalle.Text:='';
           ceCodigo.Text :='';
           ceCodigo.SetFocus;
         end
    end;
end;

procedure TFormCambiaArticuloEnVtas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni   := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_reempstock.ini');
  ArchivoIni.WriteString('stock', 'codigo', ceCodigo.Text);
  ArchivoIni.WriteString('stock', 'detalle', edDetalle.Text);
  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormCambiaArticuloEnVtas.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  ArchivoIni   := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_reempstock.ini');
  ceCodigo.Text              := ArchivoIni.ReadString('stock', 'codigo', '');
  edDetalle.Text             := ArchivoIni.ReadString('stock', 'detalle', '');
  ArchivoIni.Free;

end;

procedure TFormCambiaArticuloEnVtas.FormDestroy(Sender: TObject);
begin
  FormCambiaArticuloEnVtas:=nil;
end;

procedure TFormCambiaArticuloEnVtas.FormShow(Sender: TObject);
var i:Integer;

Dato:String;
begin
  lwArticulos.RowSelect:=True;
  for i := 0 to LCodigos.Count-1 do
    begin
       Dato  :=LCodigos[i];
       Lista :=lwArticulos.Items.Add;
        Lista.Caption:=(Dato);
//        with lsViewCodigos do
//        begin
//          with Items.Add do
//          begin
//            //Caption := '<b>TAdvEdit</b>';
//            SubItems.Add(Dato);
//          end;
//        end;
    end;

//       lsViewCodigos.Items.Add;
     //  Lista.SubItems.Add('-');
 //      Lista.Add.SubItems(Dato);
       //Lista.SubItems.Add(LCodigos);
end;

end.
