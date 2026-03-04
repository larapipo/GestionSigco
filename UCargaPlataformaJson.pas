unit UCargaPlataformaJson;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,System.json,System.StrUtils,
  Vcl.ComCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvExControls, JvDBLookup, Vcl.Mask,
  JvExMask, JvToolEdit,IniFiles, Vcl.Buttons, System.Actions, Vcl.ActnList;

type
  TFormCargaPlataformaJSon = class(TForm)
    sgCajaJson: TStringGrid;
    LeeArchivo: TButton;
    OpenDialog1: TOpenDialog;
    PageControl1: TPageControl;
    pagMovimientos: TTabSheet;
    pagConfiguracion: TTabSheet;
    pnPieMov: TPanel;
    pnCabMov: TPanel;
    DSCaja: TDataSource;
    dbcCtas: TJvDBLookupCombo;
    Label1: TLabel;
    QCajas: TFDQuery;
    QCajasID_CAJA: TIntegerField;
    QCajasID_CUENTA_CAJA: TIntegerField;
    QCajasNUMEROCAJA: TIntegerField;
    QCajasMUESTRACAJA: TStringField;
    QSucursal: TFDQuery;
    dbcSucursal: TJvDBLookupCombo;
    Label2: TLabel;
    DSSucursal: TDataSource;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QReferencias: TFDQuery;
    QReferenciasTARJETA: TStringField;
    QReferenciasTC_GESTION: TIntegerField;
    Label3: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QConceptos: TFDQuery;
    QConceptosCONCEPTO: TStringField;
    QConceptosCODIGO: TStringField;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    AgregarFactura: TAction;
    procedure LeeArchivoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AgregarFacturaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    function GetValuePorContenido(Grid: TStringGrid; const TextToFind: string ): string;
    function GetValueVentas(Grid: TStringGrid; const TextToFind: string ): extended;

    { Private declarations }
  public
    { Public declarations }
    SucursalComprobante,
    IDComprobante, Deposito,
    CtaCaja        : Integer;
    CtaCajaNombre  : String;
    ArchivoIni     : TIniFile;
    procedure AgregarCabecera;
    procedure AgregaDetalle;
  end;

var
  FormCargaPlataformaJSon: TFormCargaPlataformaJSon;

implementation

uses UDMain_FD,UBuscadorTipoCpbte, UBuscadorDepositos, UFacturaCtdo_2, UEleccionCaja,
     DMVentaCtdo, UBuscadorClientes, UControlNroRto;

{$R *.dfm}


function TFormCargaPlataformaJSon.GetValuePorContenido(Grid: TStringGrid; const TextToFind: string ): string;
var
  Row: Integer;
begin
  Result := '0';
  for Row := 0 to Grid.RowCount - 1 do
  begin
    if ContainsText(Grid.Cells[0, Row], TextToFind) and (Grid.Cells[0, Row]<>'exportDate') and (Grid.Cells[0, Row]<>'paywayExcludedDates') then
      begin
        Result := Grid.Cells[1, Row];
        Exit;
      end;
  end;
end;

function TFormCargaPlataformaJSon.GetValueVentas(Grid: TStringGrid; const TextToFind: string ): extended;
var
  Row: Integer;
begin
  Result  := 0;
  for Row := 0 to Grid.RowCount - 1 do
  begin
    if ContainsText(Grid.Cells[0, Row], TextToFind) then
      begin
        Result := Result+StrToFloat(Grid.Cells[1, Row]);
      end;
  end;
end;

procedure TFormCargaPlataformaJSon.ceClienteButtonClick(Sender: TObject);
begin
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     BEGIN
       ceCliente.Text  := FormBuscadorClientes.Codigo;
       QClientes.Close;
       QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
       QClientes.Open;
       IF NOT (QClientes.eof) THEN
         BEGIN
           edNombreCliente.Text := QClientesNOMBRE.AsString;
           ceCliente.SetFocus;
           ceCliente.SelectAll;
         END
       else
         BEGIN
           edNombreCliente.Clear;
           ceCliente.Clear;
         END
     END;
end;


procedure TFormCargaPlataformaJSon.AgregarCabecera;
var
FechaStr:String;
begin

  with DatosVentasCtdo DO
    begin
      FormCpbteCtdo_2.SucursalPorDefecto                  := SucursalComprobante;
      FormCpbteCtdo_2.DepositoPorDefecto                  := Deposito;
      FormCpbteCtdo_2.CajaPorDefecto                      := CtaCaja;
//      FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCaja.Text := IntToStr(CtaCaja);
//      FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCajaKeyDown(FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCaja,Enter,[]);

      FechaStr:=AnsiReplaceStr(GetValuePorContenido(sgCajaJson,'date'),'-','');
      FechaStr:=AnsiReplaceStr(GetValuePorContenido(sgCajaJson,'date'),'"','');

      FechaStr:=copy(FechaStr,9,2)+'/'+copy(FechaStr,6,2)+'/'+copy(FechaStr,1,4);
      CDSVentaCabCAJA_POR_DEFECTO.Value  := CtaCaja;
      CDSVentaCabFECHAVTA.AsDateTime     := StrToDate(FechaStr);//  DatosImportaPtoVtaMorphi.MTCajasFECHA_APERTURA.AsDateTime;
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr( SucursalComprobante));
      CDSVentaCabCodigoSetText(CDSVentaCabCodigo,ceCliente.Text);
      CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(idComprobante));
      CDSVentaCabCPTE_MANUAL.Value   :='N';
 //     CDSVentaCabSUCFACSetText(CDSVentaCabSUCFAC,  PuntoVta);
 //     CDSVentaCabNUMEROFACSetText(CDSVentaCabNUMEROFAC,Numero);
      CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(Deposito));
      CDSVentaCabANULADO.Value       :='N';
      CDSVentaCabDSTO.AsFloat        := 0;
      CDSVentaCabIMPRESO.Value       :='N';
      CDSVentaCabREDUCIDA.Value      :='N';

      CDSVentaCabLISTAPRECIO.Clear;
      CDSVentaCabFECHA_HORA.AsDateTime   :=Now;
      CDSVentaCabUSUARIO.Value           :=DMMain_FD.UsuarioActivo;
      FormCpbteCtdo_2.DiscriminaIva      :='S';
    end;
end;


procedure TFormCargaPlataformaJSon.AgregarFacturaExecute(Sender: TObject);
var Cont,Renglones,TipoMov,I:Integer;
   En:word;
   DiferenciaCaja:Extended;
   FPagoTC:String;
begin
  inherited;
  en:=13;
  if Not(Assigned(FormBuscadorTipoCpbte)) then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
  FormBuscadorTipoCpbte.TipoCpbte1   :='FO';
  FormBuscadorTipoCpbte.TipoCpbte2   :='';
  FormBuscadorTipoCpbte.TipoCpbte3   :='';
  FormBuscadorTipoCpbte.CV           :='V';
  FormBuscadorTipoCpbte.Sucursal     := dbcSucursal.keyValue;
  FormBuscadorTipoCpbte.DiscriminaIVA:= 'S';
  FormBuscadorTipoCpbte.ShowModal;
  Renglones:=FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
  SucursalComprobante  := FormBuscadorTipoCpbte.Sucursal;
  IDComprobante        := FormBuscadorTipoCpbte.Id_Cpbte;
  if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
    begin
      if Not(Assigned(FormBuscadorDepositos)) then
        FormBuscadorDepositos        := TFormBuscadorDepositos.Create(Self);
      FormBuscadorDepositos.Deposito := DMMain_FD.DepositoPorSucursal(FormBuscadorTipoCpbte.Sucursal);
      FormBuscadorDepositos.ShowModal;
      if (FormBuscadorDepositos.ModalResult=mrok) Then
        begin
          Deposito    := FormBuscadorDepositos.Deposito;
          if Not(Assigned(FormCpbteCtdo_2)) Then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.SucursalPorDefecto := SucursalComprobante;
          FormCpbteCtdo_2.DepositoPorDefecto := Deposito;
          Cont:=1;
          begin
            if Not(Assigned(FormEleccionCaja)) Then
              FormEleccionCaja:=TFormEleccionCaja.Create(Self);
            FormEleccionCaja.Caja :=dbcCtas.KeyValue;
            FormEleccionCaja.ShowModal;
            if FormEleccionCaja.ModalResult=mrOk then
              begin
                if FormEleccionCaja.Caja>-1 Then
                  begin
                    CtaCaja       := FormEleccionCaja.Caja;
                    CtaCajaNombre := FormEleccionCaja.CajaNombre;
                  end
                else
                  begin
                    CtaCaja       := dbcCtas.KeyValue;
                    CtaCajaNombre := dbcCtas.Text;
                  end;
                FormCpbteCtdo_2.CajaPorDefecto :=CtaCaja;
                FormCpbteCtdo_2.Agregar.Execute;

                AgregarCabecera ;
                if Not(Assigned(FormControlNroRto)) then
                  FormControlNroRto:=TFormControlNroRto.Create(Self);
                FormControlNroRto.Let:= DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString;
                FormControlNroRto.Suc:= DatosVentasCtdo.CDSVentaCabSUCFAC.AsString;
                FormControlNroRto.Num:= DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString;
                FormControlNroRto.ShowMOdal;

                if (FormControlNroRto.ModalResult=mrOk) then
                  begin
                    if (FormControlNroRto.Let<> DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString) or
                       (FormControlNroRto.Suc<> DatosVentasCtdo.CDSVentaCabSUCFAC.AsString) or
                       (FormControlNroRto.Num<> DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString) Then
                    DatosVentasCtdo.CDSVentaCabCPTE_MANUAL.AsString:='S';
                    DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString:=FormControlNroRto.Let;
                    DatosVentasCtdo.CDSVentaCabSUCFACSetText(DatosVentasCtdo.CDSVentaCabSUCFAC,FormControlNroRto.Suc);
                    DatosVentasCtdo.CDSVentaCabNUMEROFACSetText(DatosVentasCtdo.CDSVentaCabNUMEROFAC,FormControlNroRto.Num);
                 end;

                AgregaDetalle;

                FormCpbteCtdo_2.pcDetalleFactura.ActivePageIndex       := 2;
                FormCpbteCtdo_2.CajaPorDefecto                         := CtaCaja;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCaja.Text    := IntToStr(CtaCaja);
                FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCajaKeyDown(FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCaja,En,[]);
                FormCpbteCtdo_2.FrameMovValoresIngreso1.TipoCpbte      := DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.TipoOperacion  := 'I';
                FormCpbteCtdo_2.FrameMovValoresIngreso1.ClaseCpbte     := DatosVentasCtdo.CDSVentaCabCLASECPBTE.Value;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.NroCpbte       := DatosVentasCtdo.CDSVentaCabNROCPBTE.Value;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.IdCpbte        := DatosVentasCtdo.CDSVentaCabID_FC.Value;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.FechaOperacion := DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.Origen         := DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value;

                FpagoTC:= IntToStr(DMMain_FD.GetPrimerClasePago(4));

                  begin
                    if Not(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.State=dsInsert) then
                      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.Append;
                    if FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.State=dsInsert then
                      begin
                        // Primero el efectivo
                        if StrToFloat(GetValuePorContenido(sgCajaJson,'totalCashPayments'))>0 Then
                          begin
                            FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,'1');
                            FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADESSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADES,GetValuePorContenido(sgCajaJson,'totalCashPayments'));
                            FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivo.Post;
                          end;
                        QReferencias.First;
                        while Not(QReferencias.eof) do
                          begin
                            if StrToFloat(GetValuePorContenido(sgCajaJson,QReferenciasTARJETA.AsString))>0 Then
                              begin
                                FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.Append;
                                FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,FPagoTC);
                                FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TCSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TC,QReferenciasTC_GESTION.AsString);
                                FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETOSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETO,GetValuePorContenido(sgCajaJson,QReferenciasTARJETA.AsString));
                                FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoLOTESetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoLOTE,'1');
                                FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCredito.Post;
          //                      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.Append;
                              end;
                            QReferencias.Next;
                          end;
                      end;
                  end;

                Application.ProcessMessages;
                if DatosVentasCtdo.CDSVentaDet.State<>dsBrowse then
                  DatosVentasCtdo.CDSVentaDet.Post;
                FormCpbteCtdo_2.WindowState  :=wsNormal;
              end;
          end;
        end;
    end;


end;

procedure TFormCargaPlataformaJSon.AgregaDetalle;
Var Unitario21,Unitario105,Precio:Extended;
Codigo:String;
begin
  with DatosVentasCtdo DO
    begin
      Unitario21  := GetValueVentas(sgCajaJson,'Net21');
      Unitario105 := GetValueVentas(sgCajaJson,'Net105');
      if Unitario21>0 then
        begin
          if QConceptos.Locate('CONCEPTO','salesCategory1Net21',[]) Then
            begin
              CDSVentaDet.Append;
              CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,QConceptosCODIGO.AsString);
              CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
              CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
              CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
              CDSVentaDetTIPOCPBTE.Value        :=CDSVentaCabTIPOCPBTE.Value;
              CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(Unitario21));
              if CDSVentaDet.State<>dsBrowse then
                CDSVentaDet.Post;
            end;

        end;
      if Unitario105>0 then
        begin
          if QConceptos.Locate('CONCEPTO','salesCategory1Net105',[]) Then
            begin
              CDSVentaDet.Append;
              CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,QConceptosCODIGO.AsString);
              CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
              CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
              CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
              CDSVentaDetTIPOCPBTE.Value        :=CDSVentaCabTIPOCPBTE.Value;
              CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(Unitario105));
              if CDSVentaDet.State<>dsBrowse then
                CDSVentaDet.Post;
            end;
        end;
    end;
end;


procedure AgregarObjetoAlGrid(const Obj: TJSONObject; Grid: TStringGrid; var Row: Integer; const Nombre: string; EsRaiz: Boolean);
var
  Pair: TJSONPair;
  SubObj: TJSONObject;
begin
  // Solo mostramos delimitadores si no es el objeto raíz
  if not EsRaiz then
  begin
    Grid.Cells[0, Row] := '>> INICIO ' + Nombre;
    Grid.Cells[1, Row] := '';
    Inc(Row);
  end;

  for Pair in Obj do
  begin
    if Pair.JsonValue is TJSONObject then
    begin
      SubObj := Pair.JsonValue as TJSONObject;
      AgregarObjetoAlGrid(SubObj, Grid, Row, Pair.JsonString.Value, False);
    end
    else
    begin
      Grid.Cells[0, Row] := Pair.JsonString.Value;
      Grid.Cells[1, Row] := Pair.JsonValue.ToString;
      Inc(Row);
    end;
  end;

  if not EsRaiz then
  begin
    Grid.Cells[0, Row] := '<< FIN ' + Nombre;
    Grid.Cells[1, Row] := '';
    Inc(Row);
  end;
end;

procedure CargarJSONenGrid(const Archivo: string; Grid: TStringGrid);
var
  SL: TStringList;
  JSONRoot, DataObj: TJSONObject;
  Row: Integer;
begin
  SL := TStringList.Create;
  try
    SL.LoadFromFile(Archivo);
    JSONRoot := TJSONObject.ParseJSONValue(SL.Text) as TJSONObject;
    try
      DataObj := JSONRoot.GetValue<TJSONObject>('data');

      Grid.ColCount := 2;
      Grid.RowCount := DataObj.Count + 100; // margen extra

      Grid.Cells[0,0] := 'Campo';
      Grid.Cells[1,0] := 'Valor';

      Row := 1;
      // Llamamos con EsRaiz = True para que no muestre inicio/fin de "data"
      AgregarObjetoAlGrid(DataObj, Grid, Row, 'data', True);

      Grid.RowCount := Row;
    finally
      JSONRoot.Free;
    end;
  finally
    SL.Free;
  end;
end;

procedure TFormCargaPlataformaJSon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Configuracion_Json.ini');
  //*************************************************************

  ArchivoIni.WriteInteger('Archivo', 'Sucursal', dbcSucursal.KeyValue);
  ArchivoIni.WriteInteger('Archivo', 'Caja', dbcCtas.KeyValue);
  ArchivoIni.WriteString('Dato', 'codigo', ceCliente.Text);
  ArchivoIni.WriteString('Dato', 'Nombre', edNombreCliente.Text);


  ArchivoIni.Free;
  Action:=caFree;

  QSucursal.Close;
end;

procedure TFormCargaPlataformaJSon.FormCreate(Sender: TObject);
begin
  QSucursal.close;
  QSucursal.Open;
  QCajas.close;
  QCajas.Open;
  QReferencias.Close;
  QReferencias.Open;
  QConceptos.Close;
  QConceptos.Open;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Configuracion_Json.ini');
  //*************************************************************

  dbcSucursal.KeyValue := ArchivoIni.readInteger('Archivo', 'Sucursal', -1);
  dbcCtas.KeyValue     := ArchivoIni.ReadInteger('Archivo', 'Caja', -1);
  ceCliente.Text       := ArchivoIni.ReadString('Dato', 'codigo', '');
  edNombreCliente.Text := ArchivoIni.ReadString('Dato', 'Nombre', '');

  ArchivoIni.Free;

end;

procedure TFormCargaPlataformaJSon.FormDestroy(Sender: TObject);
begin
  FormCargaPlataformaJSon:=nil;
end;

procedure TFormCargaPlataformaJSon.LeeArchivoClick(Sender: TObject);
begin
   if OpenDialog1.Execute then
     begin
       CargarJSONenGrid(OpenDialog1.FileName, sgCajaJson);
     end;

end;

end.
