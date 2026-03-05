unit UPedidosMorphi;

interface
{$D+}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, WideStrings, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList,  ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, Provider, DBClient, JvDBLookup,IniFiles,
  Menus, DBXDynalink, System.Actions, JvAppStorage, JvAppIniStorage,
  Data.DBXFirebird, Vcl.Mask, JvExMask, JvToolEdit, CompBuscador, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxCheckBox,
  dxSkinBlack, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, Vcl.DBCtrls,
  AdvCheckTreeView, dxSkinWXI;

type
  TFormPedidosMorphi = class(TFormABMBase)
    Facturar: TAction;
    HacerFactura: TAction;
    QTraeCodigo: TFDQuery;
    QTraeCodigoCODIGO_STK: TStringField;
    QTraeCodigoDETALLE_STK: TStringField;
    QTraeCodigoRUBRO_STK: TStringField;
    QTraeCodigoSUBRUBRO_STK: TStringField;
    spABMStock: TFDStoredProc;
    DSRubros: TDataSource;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    DSPRubro: TDataSetProvider;
    DSPSubRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    DSSubRubro: TDataSource;
    MarcarFacturado: TAction;
    PopupMenu1: TPopupMenu;
    MarcacFacturado1: TMenuItem;
    AgregarArticulo: TAction;
    PageControl1: TPageControl;
    pgPedidos: TTabSheet;
    pgRelaciones: TTabSheet;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    sbClaveElect: TSpeedButton;
    Label5: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    dbgCabecera: TJvDBGrid;
    dbgDetalle: TJvDBGrid;
    cbRubro: TJvDBLookupCombo;
    cbSubRubro: TJvDBLookupCombo;
    edBase: TEdit;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    chVerificaArticulos: TCheckBox;
    dbgRelacion: TJvDBGrid;
    DSRelacion: TDataSource;
    BuscarCliente: TAction;
    QFacturado: TFDQuery;
    QFacturadoID_FC: TIntegerField;
    QFacturadoNROCPBTE: TStringField;
    TabSheet1: TTabSheet;
    PopupMenu2: TPopupMenu;
    DesmarcarPedido: TAction;
    DesmarcarPedido1: TMenuItem;
    VerFactura: TAction;
    N1: TMenuItem;
    VerFacturaAsociada1: TMenuItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QTraeCodigoCLASE_ARTICULO: TIntegerField;
    QNCPorDefecto: TFDQuery;
    QNCPorDefectoID_NOTACREDITOPORDEFECTO: TIntegerField;
    QNCPorDefectoDENOMINACION: TStringField;
    QNCPorDefectoCLASE_COMPROB: TStringField;
    QNCPorDefectoTIPO_COMPROB: TStringField;
    QNCPorDefectoSUCURSAL: TIntegerField;
    DSPComprobantePorDefecto: TDataSetProvider;
    CDSComprobantePorDefecto: TClientDataSet;
    QRubro: TFDQuery;
    QSubRubros: TFDQuery;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSSubRubroCODIGO_RUBRO: TStringField;
    DBText1: TDBText;
    edSucursales: TEdit;
    chbFiltraSucursal: TCheckBox;
    HacerTxStock: TAction;
    chbGeneraTX: TCheckBox;
    Label6: TLabel;
    dbcDeposito: TJvDBLookupCombo;
    QDepositos: TFDQuery;
    DSDepositos: TDataSource;
    lbModo: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    cxGrid1DBTableView1INDICE: TcxGridDBColumn;
    cxGrid1DBTableView1CTE_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PREFIJO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1HORA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_LIMITE: TcxGridDBColumn;
    cxGrid1DBTableView1COD_SUCURSAL_PIDE: TcxGridDBColumn;
    cxGrid1DBTableView1COD_SUCURSAL_ENTREGA: TcxGridDBColumn;
    cxGrid1DBTableView1OBSERVACIONES: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO_MODIFICO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PIDE_NTACTO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  //  procedure CDSPedCabAfterScroll(DataSet: TDataSet);
    procedure FacturarExecute(Sender: TObject);
    procedure HacerFacturaExecute(Sender: TObject);
    procedure cbRubroChange(Sender: TObject);
    procedure sbClaveElectClick(Sender: TObject);
    procedure MarcarFacturadoExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgCabeceraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgDetalleTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AgregarArticuloExecute(Sender: TObject);
//    procedure CDSPedDetCalcFields(DataSet: TDataSet);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure dbgRelacionEditButtonClick(Sender: TObject);
    procedure dbgRelacionColEnter(Sender: TObject);
    procedure dbgRelacionKeyPress(Sender: TObject; var Key: Char);
 //   procedure CDSRelacionAfterPost(DataSet: TDataSet);
 //   procedure CDSRelacionAfterDelete(DataSet: TDataSet);
    procedure DesmarcarPedidoExecute(Sender: TObject);
    procedure VerFacturaExecute(Sender: TObject);
    procedure dbgCabeceraDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure cbSubRubroEnter(Sender: TObject);
    procedure dbgCabeceraCellClick(Column: TColumn);
    procedure chbFiltraSucursalClick(Sender: TObject);
    procedure HacerTxStockExecute(Sender: TObject);
    procedure chbGeneraTXClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
 //   procedure TransferirExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    clave:string;
    Lista:TStringList;
    procedure VerificaArticulos;
    procedure AgregaDetalle;
    procedure AgregarCabecera;
    procedure AgregaDetalle_Tx;
    procedure AgregarCabecera_Tx;

  end;

var
  FormPedidosMorphi: TFormPedidosMorphi;

implementation

uses DMVenta, UDMain_FD, UFactura_2, UBuscaDirectorio,UBuscadorClientes,
     UStock_2, UBuscadorArticulos, UListCpbteNoImportados, UBuscadorTipoCpbte,DMDatosPedidosMorphi,
     UTransferencia, UBuscadorDepositos;

{$R *.dfm}

procedure TFormPedidosMorphi.VerFacturaExecute(Sender: TObject);
begin
  inherited;
  QFacturado.Close;
  QFacturado.ParamByName('pedido').Value:=DatosPedidosMorphi.CDSPedCabINDICE.AsInteger;
  QFacturado.Open;
  if QFacturadoID_FC.AsString<>'' then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.TipoCpbte:='FC';
      FormCpbte_2.DatoNew  :=QFacturadoID_FC.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end;
end;

procedure TFormPedidosMorphi.VerificaArticulos;
var CodigoArt,CodigoSub,Detalle,CodigoRub:String;
begin
  inherited;
  DatosPedidosMorphi.CDSPedDet.First;
  while not(DatosPedidosMorphi.CDSPedDet.Eof) do
    begin

      Detalle  := trim(UpperCase(copy(DatosPedidosMorphi.CDSPedDetDESCRIPCION.AsString,1,45)));

      CodigoSub:='';
      CodigoRub:='';

      QTraeCodigo.Close;
      QTraeCodigo.ParamByName('codigo').AsString:=Trim(DatosPedidosMorphi.CDSPedDetCOD_ARTICU.AsString);
      QTraeCodigo.Open;
      if QTraeCodigoCODIGO_STK.AsString<>'' then
        begin
          CodigoArt := QTraeCodigoCODIGO_STK.AsString;
          Detalle   := QTraeCodigoDETALLE_STK.AsString;
          CodigoRub := QTraeCodigoRUBRO_STK.AsString;
          CodigoSub := QTraeCodigoSUBRUBRO_STK.AsString;
        end
      else
        begin
          QUltimoCodigo2.Close;
          QUltimoCodigo2.Open;
          if QUltimoCodigo2.Fields[0].AsString<>'' Then
            CodigoArt:=IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1)
          else
            CodigoArt:='0';
          QUltimoCodigo2.Close;
          CodigoArt := copy('00000000',1,8-length(CodigoArt)) + CodigoArt;
        end;

      spABMStock.Close;
      spABMStock.ParamByName('CODIGO').Value                := CodigoArt;
      spABMStock.ParamByName('CODIGO_alternativo').Value    := DatosPedidosMorphi.CDSPedDetCOD_ARTICU.AsString;
      spABMStock.ParamByName('Detalle').AsString            := Detalle;
      spABMStock.ParamByName('Detalle_Adicional').AsString  := Detalle;
      spABMStock.ParamByName('costo_gravado').Value         := DatosPedidosMorphi.CDSPedDetIMPORTE.AsFloat / 1.21;

      spABMStock.ParamByName('Marca').AsString              := '';
      spABMStock.ParamByName('Rubro').AsString              := cbRubro.KeyValue;

      spABMStock.ParamByName('subRubro').AsString           := cbSubRubro.KeyValue;
      spABMStock.ParamByName('modo_gravamen').AsString      := 'G';

      spABMStock.ParamByName('costo_exento').Value          := 0;
      spABMStock.ParamByName('tasa_iva').AsInteger          := 1;

      spABMStock.ParamByName('sobretasa_iva').AsInteger     := 1;
      spABMStock.ParamByName('moneda').AsInteger            := 1;

      spABMStock.ExecProc;
      DatosPedidosMorphi.CDSPedDet.Next;
    end;
end;


procedure TFormPedidosMorphi.AgregaDetalle;
var Aux:String;
data:String;
begin
  inherited;
  with DatosVentas DO
    begin
      Aux:='';
      Data:='';
      QTraeCodigo.Close;
      QTraeCodigo.ParamByName('codigo').Value := DatosPedidosMorphi.CDSPedDetCOD_ARTICU.AsString;
      QTraeCodigo.Open;
      if QTraeCodigo.Fields[0].AsString<>'' then
        Aux := QTraeCodigo.Fields[0].AsString;
      if ((Trim(Aux)<>'') and (QTraeCodigoCLASE_ARTICULO.Value>0)) Then
        begin
          CDSVentaDet.Append;
          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,Aux);
    //      CDSVentaDetDetalle.Value          :=CDSVtasDESCRIPCION.Value;
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,DatosPedidosMorphi.CDSPedDetENTREGADO.AsString);
          CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
          CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
          CDSVentaDetTIPOCPBTE.Value        :=CDSVentaCabTIPOCPBTE.Value;
    //      CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FormatFloat('0.00',RoundTo((CDSVtasIMPORTE_C_DESCUENTO.AsFloat/CDSVtasCANTIDAD.AsFloat),-2)));
          if CDSVentaDet.State<>dsBrowse then
            CDSVentaDet.Post;
        end
      else
        begin
          if Trim(Aux)='' then Data:='Inexsitente';
          if (QTraeCodigoCLASE_ARTICULO.Value=0) then Data:='Inactivo';


          Lista.Add(DatosPedidosMorphi.CDSPedDetCOD_ARTICU.AsString+' >> '+DatosPedidosMorphi.CDSPedDetDESCRIPCION.ASString+' -- '+Data );
        end;
      QTraeCodigo.Close;
    end;
end;



procedure TFormPedidosMorphi.AgregaDetalle_Tx;
begin
//
end;

procedure TFormPedidosMorphi.AgregarArticuloExecute(Sender: TObject);
begin
  inherited;
  if DatosPedidosMorphi.CDSPedDetEXISTE.Value<=0 then
    begin
      if Not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      formStock_2.Agregar.Execute;
      FormStock_2.DSBase.DataSet.FieldByName('detalle_stk').Value          :=DatosPedidosMorphi.CDSPedDetDESCRIPCION.Value;
      FormStock_2.DSBase.DataSet.FieldByName('detalle_stk_adicional').Value:=DatosPedidosMorphi.CDSPedDetDESCRIPCION.Value;
      FormStock_2.DSBase.DataSet.FieldByName('reemplazo_stk').Value        := DatosPedidosMorphi.CDSPedDetCOD_ARTICU.Value;
      FormStock_2.DSBase.DataSet.FieldByName('rubro_stk').Value            := cbRubro.KeyValue;
      FormStock_2.DSBase.DataSet.FieldByName('subrubro_stk').Value         := cbSubRubro.KeyValue;
      FormStock_2.DSBase.DataSet.FieldByName('muestrarubro').Value         := cbRubro.Text;
      FormStock_2.DSBase.DataSet.FieldByName('muestrasubrubro').Value      := cbSubRubro.text;
      FormStock_2.Show;
    end;
end;

procedure TFormPedidosMorphi.AgregarCabecera;
Var Continua:Boolean;
IdComprobante,SucursalComprobante,Id_Cta_Caja:Integer;
begin
  if (Trim(ceCliente.Text)<>'') and (Trim(edNombreCliente.Text)<>'') then
    begin
      with DatosVentas DO
        begin
          Continua:=True;
          CDSVentaCabCodigoSetText(CDSVentaCabCodigo, Trim(ceCliente.Text));
          if Continua Then
            begin
              if DatosPedidosMorphi.CDSPedCabPIDE_NTACTO.AsString='S' then //** Nota de Credito *******************
                begin
                  QNCPorDefecto.Close;
                  QNCPorDefecto.ParamByName('codigo').Value:=CDSVentaCabCODIGO.Value;
                  QNCPorDefecto.Open;
                  if (QNCPorDefecto.Fields[0].AsString<>'') Then
                    begin
                      IDComprobante      := QNCPorDefecto.Fields[0].AsInteger;
                      SucursalComprobante:= CDSVentaCabSUCURSAL.Value;
                      ID_Cta_Caja        := CajaPorDefecto;
                    end
                  else
                    begin
                      CDSInscripcion.Close;
                      CDSInscripcion.Params.ParamByName('Codigo').AsInteger := CDSVentaCabTIPOIVA.AsInteger;
                      CDSInscripcion.Open;
                      IF NOT (CDSInscripcion.Eof) THEN
                        begin
                          CDSComprobantePorDefecto.Close;
                          CDSComprobantePorDefecto.Params.ParamByName('desglozaIva').Value:= CDSInscripcionDISCRIMINAIVA.Value;
                          CDSComprobantePorDefecto.Params.ParamByName('sucursal').Value   := CDSVentaCabSUCURSAL.Value;
                          CDSComprobantePorDefecto.Params.ParamByName('compraventa').Value:= 'V';
                          CDSComprobantePorDefecto.Params.ParamByName('tipo').Value       := 'NC';
                          CDSComprobantePorDefecto.Open;
                          if (CDSComprobantePorDefecto.RecordCount=1) and (CDSComprobantePorDefecto.Fields[0].AsString<>'') Then
                            begin
                              IDComprobante      := CDSComprobantePorDefecto.Fields[0].AsInteger;
                              SucursalComprobante:= CDSVentaCabSUCURSAL.Value;
                              ID_Cta_Caja        := CajaPorDefecto;
                            end
                          else
                            begin
                              if Not(Assigned(FormBuscadorTipoCpbte)) then
                                FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
                              FormBuscadorTipoCpbte.TipoCpbte1    := 'NC';
                              FormBuscadorTipoCpbte.TipoCpbte2    := '';
                              FormBuscadorTipoCpbte.TipoCpbte3    := '';
                              FormBuscadorTipoCpbte.CV            := 'V';
                              FormBuscadorTipoCpbte.Sucursal      := CDSVentaCabSUCURSAL.Value;
                              FormBuscadorTipoCpbte.DiscriminaIVA := CDSInscripcionDISCRIMINAIVA.AsString;
                              FormBuscadorTipoCpbte.ShowModal;
                              if FormBuscadorTipoCpbte.ModalResult=mrOk then
                                begin
                                  SucursalComprobante:= FormBuscadorTipoCpbte.Sucursal;
                                  IDComprobante      := FormBuscadorTipoCpbte.Id_Cpbte;
                                  ID_Cta_Caja        := CajaPorDefecto;
                                end
                              else
                                Exit;
                            end;
                        end;
                    end;
                  CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDCOmprobante));
                end;

            //******************* Fin Nota de Credito ****************
            CDSVentaCabANULADO.Value      := 'N';
            CDSVentaCabIMPRESO.Value      := 'N';
            CDSVentaCabCPTE_MANUAL.Value  := 'N';
            CDSVentaCabREDUCIDA.Value     := 'N';
            CDSVentaCabDSTO.AsFloat       := 0;
            //seleciona lista de precio
            CDSVentaCabID_PEDIDO_MORPHI.Value:=DatosPedidosMorphi.CDSPedCabINDICE.AsInteger;
            CDSVentaCabFECHA_HORA.AsDateTime:= Now;
            CDSVentaCabUSUARIO.Value        := DMMain_FD.UsuarioActivo;
            CDSVentaCabOBSERVACION1.Value   := 'Nro.Pedido.:'+DatosPedidosMorphi.CDSPedCabNUMERO.AsString;
            // por que si no me agreagaba el iva
            FormCpbte_2.DiscriminaIva:='S';
          end
        else
          FormCpbte_2.Cancelar.Execute;
      end;
    end;
end;


procedure TFormPedidosMorphi.AgregarCabecera_Tx;
begin
  //
end;

procedure TFormPedidosMorphi.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
      FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     BEGIN
       if PageControl1.ActivePageIndex=0 then
         begin
           ceCliente.Text :=FormBuscadorClientes.Codigo;
           DatosPedidosMorphi.QClientes.Close;
           DatosPedidosMorphi.QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
           DatosPedidosMorphi.QClientes.Open;
           IF NOT (DatosPedidosMorphi.QClientes.IsEmpty) THEN
             BEGIN
               edNombreCliente.Text := DatosPedidosMorphi.QClientesNOMBRE.Value;
               ceCliente.SetFocus;
               ceCliente.SelectAll;
             END
           else
             begin
               ceCliente.Text:='';
               edNombreCliente.Text := '';
               ceCliente.SetFocus;
               ceCliente.SelectAll;
             end;
         end
       else
         if PageControl1.ActivePageIndex=1 then
           begin
             DatosPedidosMorphi.QClientes.Close;
             DatosPedidosMorphi.QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
             DatosPedidosMorphi.QClientes.Open;
             IF NOT (DatosPedidosMorphi.QClientes.IsEmpty) THEN
               BEGIN
                 if DatosPedidosMorphi.CDSRelacion.State=dsBrowse then
                   DatosPedidosMorphi.CDSRelacion.edit;
                 DatosPedidosMorphi.CDSRelacionCODIGO.Value       := DatosPedidosMorphi.QClientesCODIGO.Value;
                 DatosPedidosMorphi.CDSRelacionNOMNRECLIENTE.Value:= DatosPedidosMorphi.QClientesNOMBRE.Value;
               END
             else
               begin
                 DatosPedidosMorphi.CDSRelacionCODIGO.Value       := '';
                 DatosPedidosMorphi.CDSRelacionNOMNRECLIENTE.Value:= '';
               end;
         end

     END;
end;

procedure TFormPedidosMorphi.BuscarExecute(Sender: TObject);
begin
  inherited;
  DatosPedidosMorphi.CDSPedCab.Filtered := False;
  DatosPedidosMorphi.CDSPedCab.Close;
  DatosPedidosMorphi.CDSPedCab.IndexDefs.Clear;
  DatosPedidosMorphi.CDSPedCab.Open;

  if (Trim(edSucursales.Text)<>'') and chbFiltraSucursal.Checked then
    begin
      DatosPedidosMorphi.CDSPedCab.Filtered := False;
      DatosPedidosMorphi.CDSPedCab.Filter   := 'COD_SUCURSAL_entrega in ('+edSucursales.Text+')';
      DatosPedidosMorphi.CDSPedCab.Filtered := True;
    end;

  DatosPedidosMorphi.QMaxMin.Close;
  DatosPedidosMorphi.QMaxMin.Open;

  DatosPedidosMorphi.CDSPedDet.Close;
  DatosPedidosMorphi.CDSPedDet.OnCalcFields:=nil;
  DatosPedidosMorphi.CDSPedDet.IndexDefs.Clear;
  DatosPedidosMorphi.CDSPedDet.Params.ParamByName('idDesde').AsInteger:=DatosPedidosMorphi.QMaxMinMIN.Value;
  DatosPedidosMorphi.CDSPedDet.Params.ParamByName('idHasta').AsInteger:=DatosPedidosMorphi.QMaxMinMAX.Value;
  DatosPedidosMorphi.CDSPedDet.Open;
  DatosPedidosMorphi.CDSPedDet.OnCalcFields:=DatosPedidosMorphi.CDSPedDetCalcFields;
  DatosPedidosMorphi.CDSPedDet.MasterSource    := DatosPedidosMorphi.DSPedCAB;
  DatosPedidosMorphi.CDSPedDet.MasterFields    := 'INDICE';
  DatosPedidosMorphi.CDSPedDet.IndexFieldNames := 'INDICECAB';
  DatosPedidosMorphi.QMaxMin.Close;

  DatosPedidosMorphi.CDSPedidosMarcados.Close;
  DatosPedidosMorphi.CDSPedidosMarcados.IndexDefs.Clear;
  DatosPedidosMorphi.CDSPedidosMarcados.Open;

  DatosPedidosMorphi.CDSPedCab.Filtered := False;
  if (Trim(edSucursales.Text)<>'') and chbFiltraSucursal.Checked then
    DatosPedidosMorphi.CDSPedCab.Filter   := 'COD_SUCURSAL_entrega in ('+edSucursales.Text+')';
  DatosPedidosMorphi.CDSPedCab.Filtered   := chbFiltraSucursal.Checked;

end;

procedure TFormPedidosMorphi.cbRubroChange(Sender: TObject);
begin
  inherited;
  cbSubRubro.ClearValue;
end;

procedure TFormPedidosMorphi.cbSubRubroEnter(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=cbRubro.KeyValue;
  CDSSubRubro.Open;
end;



procedure TFormPedidosMorphi.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
  BuscarCliente.Execute;
end;

procedure TFormPedidosMorphi.ceClienteKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      DatosPedidosMorphi.QClientes.Close;
      DatosPedidosMorphi.QClientes.ParamByName('Codigo').Value := Dato;
      DatosPedidosMorphi.QClientes.Open;
      IF NOT(DatosPedidosMorphi.QClientes.IsEmpty) THEN
        begin
          edNombreCliente.Text := DatosPedidosMorphi.QClientesNOMBRE.Value;
        end
      else
        begin
          edNombreCliente.Text := '';
          ceCliente.Text       := '';
        end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

procedure TFormPedidosMorphi.chbFiltraSucursalClick(Sender: TObject);
begin
  inherited;
  DatosPedidosMorphi.CDSPedCab.Filtered := False;
  if (Trim(edSucursales.Text)<>'') and chbFiltraSucursal.Checked then
    DatosPedidosMorphi.CDSPedCab.Filter   := 'COD_SUCURSAL_entrega in ('+edSucursales.Text+')';
  DatosPedidosMorphi.CDSPedCab.Filtered   := chbFiltraSucursal.Checked;
end;

procedure TFormPedidosMorphi.chbGeneraTXClick(Sender: TObject);
begin
  inherited;
  if chbGeneraTX.Checked then
    lbModo.Caption:='En Modo Transferencia'
  else
    lbModo.Caption:='En Modo Facturación';

end;

procedure TFormPedidosMorphi.dbgCabeceraCellClick(Column: TColumn);
begin
  inherited;
  if DatosPedidosMorphi.CDSRelacion.Locate('ID',DatosPedidosMorphi.CDSPedCabCOD_SUCURSAL_PIDE.AsString,[]) Then
    begin
      ceCliente.Text      := DatosPedidosMorphi.CDSRelacionCODIGO.AsString;
      edNombreCliente.Text:= DatosPedidosMorphi.CDSRelacionNOMNRECLIENTE.AsString;
    end
  else
    begin
      ceCliente.Text:='';
      edNombreCliente.Text:='';
    end;

end;

procedure TFormPedidosMorphi.dbgCabeceraDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
 if dbgCabecera.DataSource.DataSet.FieldByName('PIDE_NTACTO').AsString='S' Then
    dbgCabecera.Canvas.Font.Style:=[fsBold]
  else
    dbgCabecera.Canvas.Font.Style:=[];
  dbgCabecera.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormPedidosMorphi.dbgCabeceraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
// para el uso en DBGrid, ordenar or columna
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

procedure TFormPedidosMorphi.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 inherited;
  if dbgDetalle.DataSource.DataSet.FieldByName('EXISTE').Value<=0 Then
    dbgDetalle.Canvas.Font.Color:=clRed
  else
    dbgDetalle.Canvas.Font.Color:=clBlack;
  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormPedidosMorphi.dbgDetalleTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgDetalle.DataSource.DataSet as TClientDataSet do
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


procedure TFormPedidosMorphi.FacturarExecute(Sender: TObject);
var EstadoIVA:String;
Facturado:Boolean;
begin
  inherited;
  Facturado:=False;

  QFacturado.Close;
  QFacturado.ParamByName('pedido').Value:=DatosPedidosMorphi.CDSPedCabINDICE.AsInteger;
  QFacturado.Open;
  if QFacturadoID_FC.AsString<>'' then
    Facturado:=True;

  if (Facturado=False) then
    begin
      if (Assigned(FormCpbte_2)) Then
        begin
          FormCpbte_2.Close;
          FreeAndNil(FormCpbte_2);
        end;

      if Not(DatosPedidosMorphi.CDSPedCab.IsEmpty) Then
        begin
          if chVerificaArticulos.Checked then
            begin
              if MessageDlg('Hacer revision de Articulos...???',mtConfirmation,mbYesNo,0)=mrYes then
                begin
                  if (cbRubro.KeyValue<>'***') and (cbSubRubro.KeyValue<>'*****') then
                    VerificaArticulos;
                end;
            end;

          if chbGeneraTX.Checked=False then
            begin
              if Not(Assigned(FormCpbte_2)) Then
                FormCpbte_2:=TFormCpbte_2.Create(self);
              EstadoIva:=FormCpbte_2.DiscriminaIva; // lo guardo para despues reasignar, cuand genero la factura
                                                // pongo que discrime el IVA por que me hacia un efecto de agregado
                                                // me suma ael IVA dos veces. Para que mantegan la propiedad de que si quiere
                                                // ver la factura con IVA incluido lo guardo y lo asigno de nuevo
                                                // esto es por Gomeria Centenario.... que hincha pelota....
              HacerFactura.Execute;
              FormCpbte_2.DiscriminaIva:=EstadoIva;
              FormCpbte_2.DBGrillaDetalle.SetFocus;
              FormCpbte_2.Show;
            end
          else
            HacerTxStock.Execute;

          if (lista<>nil) and (lista.Count>0) then
            begin
              if Not(Assigned(FormListaNoImportados)) then
                FormListaNoImportados:=TFormListaNoImportados.Create(Application);
              FormListaNoImportados.FormStyle    :=fsMDIChild;
              FormListaNoImportados.mLista.Lines:=(lista);

              FormListaNoImportados.Show;
              FormListaNoImportados.BringToFront;
            end;
        end
      else
        ShowMessage('No hay Remitos para Facturar....');
    end
  else
    begin
      ShowMessage('Pedido Facturado .......'+'Nro.:'+QFacturadoNROCPBTE.AsString);
      if MessageDlg('Marcar Pedido como Facturado..???',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
        MarcarFacturado.Execute;
    end;

end;

procedure TFormPedidosMorphi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_Configuracion_PedidoMorphi.ini');
  //*************************************************************

  ArchivoIni.WriteString('Archivo', 'Rubro', cbRubro.KeyValue);
  ArchivoIni.WriteString('Archivo', 'SubRubro', cbSubRubro.KeyValue);
  ArchivoIni.WriteString('Archivo', 'base', edBase.Text);
  ArchivoIni.WriteString('Archivo', 'clave', Clave);

  ArchivoIni.WriteString('Archivo', 'codigo', ceCliente.Text);
  ArchivoIni.WriteString('Archivo', 'nombre', edNombreCliente.Text);
  ArchivoIni.WriteBool('Archivo', 'verifica', chVerificaArticulos.Checked);
  ArchivoIni.WriteString('Archivo', 'sucursal', edSucursales.Text);
  ArchivoIni.WriteBool('Archivo', 'Filtra', chbFiltraSucursal.Checked);
  ArchivoIni.WriteBool('Archivo', 'Transferencia', chbGeneraTX.Checked);

  ArchivoIni.Free;
  
  CDSRubro.Close;
  CDSSubRubro.Close;

  DatosPedidosMorphi.CDSPedCab.Close;
  DatosPedidosMorphi.CDSPedDet.Close;
  Action:=caFree;

  FreeAndNil(DatosPedidosMorphi);
end;

procedure TFormPedidosMorphi.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  IF NOT (Assigned(DatosPedidosMorphi)) THEN
    DatosPedidosMorphi := TDatosPedidosMorphi.Create(Self);

  CDSRubro.Close;
  CDSRubro.Open;

  QDepositos.Close;
  QDepositos.Open;

  //*************************************************************
  ArchivoIni    := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_Configuracion_PedidoMorphi.ini');

  cbRubro.KeyValue            := ArchivoIni.ReadString('Archivo', 'Rubro', '***');

  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value := cbRubro.KeyValue;
  CDSSubRubro.Open;


  cbSubRubro.KeyValue         := ArchivoIni.ReadString('Archivo', 'SubRubro', '*****');
  edBase.Text                 := ArchivoIni.ReadString('Archivo', 'base', '');
  clave                       := ArchivoIni.ReadString('Archivo', 'clave', 'masterkey');
  ceCliente.Text              := ArchivoIni.ReadString('Archivo', 'codigo', '');
  edNombreCliente.Text        := ArchivoIni.ReadString('Archivo', 'nombre', '');
  edSucursales.Text           := ArchivoIni.ReadString('Archivo', 'sucursal', '');
  chbFiltraSucursal.Checked   := ArchivoIni.ReadBool('Archivo', 'Filtra', False);

  chVerificaArticulos.Checked := ArchivoIni.ReadBool('Archivo', 'verifica', False);
  chbGeneraTX.Checked         := ArchivoIni.ReadBool('Archivo', 'Transferencia', False);

  ArchivoIni.Free;

  DatosPedidosMorphi.FDConnectionMorphi.Params.Values['Database']   := edBase.Text;// DatosSinBDEPath;
  DatosPedidosMorphi.FDConnectionMorphi.Params.Values['User_Name']  := 'SYSDBA';
  DatosPedidosMorphi.FDConnectionMorphi.Params.Values['Password']   := clave;
  DatosPedidosMorphi.FDConnectionMorphi.Params.Values['DriverID']   := 'FB';
  DatosPedidosMorphi.FDConnectionMorphi.Params.Values['SQLDialect'] := '3';

  TRY
    begin
       DatosPedidosMorphi.FDConnectionMorphi.Connected := true;
    end;
  except
    showmessage('Error de Coneccion de Base de Pedidos...');
   END;

  DatosPedidosMorphi.CDSRelacion.Close;
  DatosPedidosMorphi.CDSRelacion.Open;

  DatosPedidosMorphi.CDSPedCab.Filtered := False;
  DatosPedidosMorphi.CDSPedCab.Close;
  DatosPedidosMorphi.CDSPedCab.IndexDefs.Clear;
  DatosPedidosMorphi.CDSPedCab.Open;

  if (Trim(edSucursales.Text)<>'') and chbFiltraSucursal.Checked then
    begin
      DatosPedidosMorphi.CDSPedCab.Filtered := False;
      DatosPedidosMorphi.CDSPedCab.Filter   := 'COD_SUCURSAL_entrega in ('+edSucursales.Text+')';
      DatosPedidosMorphi.CDSPedCab.Filtered := True;
    end;

  DatosPedidosMorphi.QMaxMin.Close;
  DatosPedidosMorphi.QMaxMin.Open;

  DatosPedidosMorphi.CDSPedDet.Close;
  DatosPedidosMorphi.CDSPedDet.IndexDefs.Clear;

  DatosPedidosMorphi.CDSPedDet.OnCalcFields:=nil;
  DatosPedidosMorphi.CDSPedDet.Params.ParamByName('idDesde').AsInteger:=DatosPedidosMorphi.QMaxMinMIN.Value;
  DatosPedidosMorphi.CDSPedDet.Params.ParamByName('idHasta').AsInteger:=DatosPedidosMorphi.QMaxMinMAX.Value;
  DatosPedidosMorphi.CDSPedDet.Open;

  DatosPedidosMorphi.CDSPedDet.OnCalcFields:=DatosPedidosMorphi.CDSPedDetCalcFields;
  DatosPedidosMorphi.QMaxMin.Close;

  DatosPedidosMorphi.CDSPedDet.MasterSource    := DatosPedidosMorphi.DSPedCab;
  DatosPedidosMorphi.CDSPedDet.MasterFields    := 'INDICE';
  DatosPedidosMorphi.CDSPedDet.IndexFieldNames := 'INDICECAB';

  DatosPedidosMorphi.CDSPedidosMarcados.Close;
  DatosPedidosMorphi.CDSPedidosMarcados.Open;

  DatosPedidosMorphi.CDSPedCab.Filtered := False;
  if (Trim(edSucursales.Text)<>'') and chbFiltraSucursal.Checked then
    DatosPedidosMorphi.CDSPedCab.Filter   := 'COD_SUCURSAL_entrega in ('+edSucursales.Text+')';
  DatosPedidosMorphi.CDSPedCab.Filtered   := chbFiltraSucursal.Checked;

  PageControl1.ActivePageIndex:=0;
  dbcDeposito.KeyValue:= DepositoPorDefecto;

  Lista:=TStringList.Create;
  Lista.Clear;
end;

procedure TFormPedidosMorphi.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPedidosMorphi:=nil;
end;

procedure TFormPedidosMorphi.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Not(ActiveControl is TJvComboEdit) then
    inherited;
end;

procedure TFormPedidosMorphi.FormResize(Sender: TObject);
begin
  inherited;
  if FormPedidosMorphi<>nil then
    if FormPedidosMorphi.Width<>820 Then
      FormPedidosMorphi.Width:=820;

end;

procedure TFormPedidosMorphi.FormShow(Sender: TObject);
begin
  inherited;
  if chbGeneraTX.Checked then
    lbModo.Caption:='En Modo Transferencia'
  else
    lbModo.Caption:='En Modo Facturación';
end;

procedure TFormPedidosMorphi.HacerFacturaExecute(Sender: TObject);
var EstadoLista:Boolean;
begin
  inherited;
  Lista.Clear;
  if ((Not(DatosPedidosMorphi.DSPedCab.DataSet.IsEmpty)) and (DatosPedidosMorphi.DSPedCab.State=dsBrowse)) then
    begin
      if (Trim(ceCliente.Text)<>'') and (Trim(edNombreCliente.Text)<>'') then
        begin
          EstadoLista            :=DMMain_FD.GetControlaLista;
          //DMMain_fd.ControlaLista:=False;
          FormCpbte_2.Agregar.Execute;
          AgregarCabecera;
          Lista.Clear;
          DatosPedidosMorphi.CDSPedDet.First;
          while Not(DatosPedidosMorphi.CDSPedDet.Eof) Do // Ingreso el detalle
            begin
              if (DatosPedidosMorphi.CDSPedDetCANTIDAD.AsString<>'') and (Trunc(DatosPedidosMorphi.CDSPedDetCANTIDAD.AsFloat*100) > 0)  then
                AgregaDetalle;
              DatosPedidosMorphi.CDSPedDet.Next;
            end;
//          DMMain_fd.ControlaLista:=EstadoLista;
        end;
     end
  else
    ShowMessage('Hay un Comprobante abierto sin confirmar...');
end;


procedure TFormPedidosMorphi.HacerTxStockExecute(Sender: TObject);
var estadolista:Boolean;
  SucursalComprobante:Integer;
  IDComprobante      :Integer;
  ID_Cta_Caja        :Integer;
  DepositoDestino:Integer;
begin
  inherited;
  Lista.Clear;
  if ((Not(DatosPedidosMorphi.DSPedCab.DataSet.IsEmpty)) and (DatosPedidosMorphi.DSPedCab.State=dsBrowse)) then
    begin
      if (Trim(ceCliente.Text)<>'') and (Trim(edNombreCliente.Text)<>'') then
        begin
          EstadoLista            :=DMMain_FD.GetControlaLista;
          if Not(Assigned(FormBuscadorTipoCpbte)) then
            FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
          FormBuscadorTipoCpbte.TipoCpbte1    := 'TX';
          FormBuscadorTipoCpbte.TipoCpbte2    := '';
          FormBuscadorTipoCpbte.TipoCpbte3    := '';
          FormBuscadorTipoCpbte.CV            := 'V';
          FormBuscadorTipoCpbte.Sucursal      := DMMain_FD.SucursalPorDef;
          FormBuscadorTipoCpbte.DiscriminaIVA := 'X';
          FormBuscadorTipoCpbte.ShowModal;
          if FormBuscadorTipoCpbte.ModalResult=mrOk then
            begin
              SucursalComprobante:= FormBuscadorTipoCpbte.Sucursal;
              IDComprobante      := FormBuscadorTipoCpbte.Id_Cpbte;
              ID_Cta_Caja        := CajaPorDefecto;
              if Not(Assigned(FormBuscadorDepositos)) then
                FormBuscadorDepositos        := TFormBuscadorDepositos.Create(Self);
              FormBuscadorDepositos.Deposito := -1;
              FormBuscadorDepositos.ShowModal;
              if (FormBuscadorDepositos.ModalResult=mrok) Then
                begin
                  DepositoDestino    := FormBuscadorDepositos.Deposito;
                  if Not(Assigned(FormTransferencias)) then
                    FormTransferencias:=TFormTransferencias.Create(Self);
                  FormTransferencias.Show;
                  FormTransferencias.DepositoPorDefecto:= dbcDeposito.KeyValue;//  FormPedidosMorphi.DepositoPorDefecto;
                  FormTransferencias.Agregar.Execute;
                  FormTransferencias.CDSTranCabDEPOSITO_ORIGENSetText(FormTransferencias.CDSTranCabDEPOSITO_ORIGEN,IntToStr(FormTransferencias.DepositoPorDefecto));
                  FormTransferencias.CDSTranCabDEPOSITO_DESTINOSetText(FormTransferencias.CDSTranCabDEPOSITO_DESTINO,IntToStr(DepositoDestino));
                  FormTransferencias.CDSTranCabOBS1.Value:='Por Envio Pedido Morphi Nro:'+DatosPedidosMorphi.CDSPedCabNUMERO.AsString;
                  FormTransferencias.CDSTranCabOBS2.Value:='';
                  Lista.Clear;
                  DatosPedidosMorphi.CDSPedDet.First;
                  while not(DatosPedidosMorphi.CDSPedDet.eof) do
                    begin
                      FormTransferencias.CDSTranDet.Append;
                      FormTransferencias.CDSTranDetCODIGOSetText(FormTransferencias.CDSTranDetCODIGO,DatosPedidosMorphi.CDSPedDetCOD_ARTICU.AsString);
                      FormTransferencias.CDSTranDetCANTIDADSetText(FormTransferencias.CDSTranDetCANTIDAD,DatosPedidosMorphi.CDSPedDetCANTIDAD.AsString);
                      FormTransferencias.CDSTranDet.Post;
                      DatosPedidosMorphi.CDSPedDet.Next;
                    end;
                 end;
             end;
        end
    else
      ShowMessage('Hay un Comprobante abierto sin confirmar...');
   end;
end;

procedure TFormPedidosMorphi.dbgRelacionColEnter(Sender: TObject);
begin
  inherited;
  IF dbgRelacion.SelectedIndex = 1 THEN
    dbgRelacion.SelectedIndex := 2;
end;

procedure TFormPedidosMorphi.dbgRelacionEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarCliente.Execute;
end;

procedure TFormPedidosMorphi.dbgRelacionKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgRelacion.SelectedIndex < 2) THEN
        dbgRelacion.SelectedIndex := dbgRelacion.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgRelacion.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgRelacion.DataSource.DataSet.Append;
          dbgRelacion.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgRelacion.SelectedField = DatosVentas.CDSVentaDetCodigoArticulo THEN
          BuscarCliente.Execute;
      END
    else
      if (key = #27) then
        dbgRelacion.DataSource.DataSet.Cancel;
end;

procedure TFormPedidosMorphi.DesmarcarPedidoExecute(Sender: TObject);
begin
  inherited;
  DatosPedidosMorphi.QDesmarcar.Close;
  DatosPedidosMorphi.QDesmarcar.ParamByName('id').AsInteger:=DatosPedidosMorphi.CDSPedidosMarcados.FieldByName('INDICE').ASInteger;
  DatosPedidosMorphi.QDesmarcar.ExecSQL();
  DatosPedidosMorphi.QDesmarcar.Close;
  DatosPedidosMorphi.CDSPedCab.Close;
  DatosPedidosMorphi.CDSPedCab.Open;
  DatosPedidosMorphi.CDSPedDet.Close;
  DatosPedidosMorphi.CDSPedDet.Open;
  DatosPedidosMorphi.CDSPedidosMarcados.Close;
  DatosPedidosMorphi.CDSPedidosMarcados.Open;

end;

procedure TFormPedidosMorphi.MarcarFacturadoExecute(Sender: TObject);
begin
  inherited;
  DatosPedidosMorphi.QMarcarPedido.Close;
  DatosPedidosMorphi.QMarcarPedido.ParamByName('id').AsInteger:= DatosPedidosMorphi.CDSPedCabINDICE.ASInteger;
  DatosPedidosMorphi.QMarcarPedido.ExecSQL();
  DatosPedidosMorphi.QMarcarPedido.Close;
  Buscar.Execute;

//  DatosPedidosMorphi.CDSPedCab.Close;
//  DatosPedidosMorphi.CDSPedCab.Open;
//  DatosPedidosMorphi.CDSPedDet.Close;
//  DatosPedidosMorphi.CDSPedDet.OnCalcFields:=nil;
//  DatosPedidosMorphi.CDSPedDet.Open;

  DatosPedidosMorphi.CDSPedidosMarcados.Close;
  DatosPedidosMorphi.CDSPedidosMarcados.Open;


end;

procedure TFormPedidosMorphi.sbClaveElectClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edBase.Text :=FormBuscaDirectorio.Directorio
  else
    edBase.Text :='';
end;


end.
