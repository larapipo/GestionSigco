unit UPlanillaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Provider, DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Grids,
  DBGrids, DBCtrls, Mask, JvExMask, JvToolEdit, JvExDBGrids, JvDBGrid,
  IBGenerator, JvDBLookup, JvBaseEdits, dxSkinsCore, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, cxNavigator, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGridBandedTableView, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList;

type
  TFormPlanillaPedido = class(TFormABMBase)
    QTablaPedido: TFDQuery;
    CDSTablaPedido: TClientDataSet;
    DSPTablaPedido: TDataSetProvider;
    DSTablaPedido: TDataSource;
    CDSTablaPedidoCODIGO: TStringField;
    CDSTablaPedidoDETALLE: TStringField;
    CDSTablaPedidoCOD_RUBRO: TStringField;
    CDSTablaPedidoDET_RUBRO: TStringField;
    CDSTablaPedidoCOD_SUBRUB: TStringField;
    CDSTablaPedidoDET_SUBRUB: TStringField;
    CDSTablaPedidoEXISTENCIA: TFloatField;
    CDSTablaPedidoPEDIDOS: TFloatField;
    CDSTablaPedidoA_INGRESAR: TFloatField;
    CDSTablaPedidoA_PEDIR: TFloatField;
    pcPlanilla: TPageControl;
    pagDetalle: TTabSheet;
    dbgPlanilla: TcxGrid;
    dbgPlanillaDBTableView1: TcxGridDBTableView;
    dbgPlanillaDBTableView1CODIGO: TcxGridDBColumn;
    dbgPlanillaDBTableView1DETALLE: TcxGridDBColumn;
    dbgPlanillaDBTableView1DET_RUBRO: TcxGridDBColumn;
    dbgPlanillaDBTableView1DET_SUBRUB: TcxGridDBColumn;
    dbgPlanillaDBTableView1EXISTENCIA: TcxGridDBColumn;
    dbgPlanillaDBTableView1PEDIDOS: TcxGridDBColumn;
    dbgPlanillaDBTableView1A_INGRESAR: TcxGridDBColumn;
    dbgPlanillaDBTableView1A_PEDIR: TcxGridDBColumn;
    dbgPlanillaLevel1: TcxGridLevel;
    pagPedido: TTabSheet;
    CDSPla_Det: TClientDataSet;
    DSPla_Det: TDataSource;
    CDSPla_DetCODIGO: TStringField;
    CDSPla_DetCANTIDAD: TFloatField;
    CDSPla_DetIMPORTE_UNITARIO: TFloatField;
    CDSPla_DetIMPORTE_TOTAL: TFloatField;
    CDSPla_DetDETALLE_STK: TStringField;
    dbcListaPrecios: TJvDBLookupCombo;
    QListaPrecios: TFDQuery;
    intgrfldQListaPrecID_LISTA: TIntegerField;
    QListaPreciosNOMBRE: TStringField;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    CDSListaPreciosID_LISTA: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    DSlistaprecios: TDataSource;
    CDSTablaPedidoCOSTO: TFloatField;
    CDSTablaPedidoCOSTO_FINAL: TFloatField;
    CDSTablaPedidoPRECIO_VTA: TFloatField;
    CDSTablaPedidoPRECIO_VTA_FINAL: TFloatField;
    CDSPla_DetDESCUENTO: TFloatField;
    CDSTablaPedidoCODIGO_ALTERNATIVO: TStringField;
    chCodAlt: TCheckBox;
    dbcListaProveeor: TJvDBLookupCombo;
    rgTipoLista: TRadioGroup;
    QListasProveedor: TFDQuery;
    DSPListaProveedor: TDataSetProvider;
    CDSListaProveedor: TClientDataSet;
    CDSListaProveedorCODIGO_PROVEE: TStringField;
    CDSListaProveedorNOMBRE: TStringField;
    CDSListaProveedorFECHA: TSQLTimeStampField;
    CDSListaProveedorID: TIntegerField;
    DSListaProveedor: TDataSource;
    ToolButton1: TToolButton;
    btFiltroRubro: TButton;
    dbgPlanillaDBTableView1COSTO: TcxGridDBColumn;
    btGenerarResumen: TBitBtn;
    btHacerOC: TBitBtn;
    DSPSolicitante: TDataSetProvider;
    CDSSolicitante: TClientDataSet;
    DSSolicitante: TDataSource;
    Label1: TLabel;
    dbcSolicitante: TJvDBLookupCombo;
    DSPProvee: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    CDSProveedorID_COD_POSTAL: TIntegerField;
    Label2: TLabel;
    ceProvee: TJvComboEdit;
    edNombre: TEdit;
    dbeFecha: TJvDateEdit;
    edTotal: TJvCalcEdit;
    QPla_Det: TFDQuery;
    DSPPla_det: TDataSetProvider;
    CDSPla_DetREEMPLAZO_STK: TStringField;
    Label3: TLabel;
    edNotas: TEdit;
    edTotal2: TJvCalcEdit;
    Label4: TLabel;
    CDSSolicitanteCODIGO: TStringField;
    CDSSolicitanteNOMBRE: TStringField;
    chConfirmacion: TCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE_UNITARIO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid1DBTableView1DESCUENTO: TcxGridDBColumn;
    cxGrid1DBTableView1REEMPLAZO_STK: TcxGridDBColumn;
    pnCabecera2: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSPla_DetNewRecord(DataSet: TDataSet);
    procedure btGenerarResumenClick(Sender: TObject);
    procedure CDSPla_DetCANTIDADSetText(Sender: TField; const Text: string);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSPla_DetAfterPost(DataSet: TDataSet);
    procedure CDSPla_DetDESCUENTOSetText(Sender: TField; const Text: string);
    procedure CDSTablaPedidoCODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure chCodAltClick(Sender: TObject);
    procedure rgTipoListaClick(Sender: TObject);
    procedure btFiltroRubroClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure btHacerOCClick(Sender: TObject);
    procedure ceProveeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceProveeKeyPress(Sender: TObject; var Key: Char);
    procedure ceProveeButtonClick(Sender: TObject);
    procedure CDSTablaPedidoAfterPost(DataSet: TDataSet);
    procedure CDSPla_DetCODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgPlanillaDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Sumar;
  end;

var
  FormPlanillaPedido: TFormPlanillaPedido;

implementation

uses UDMain_fd, UFiltroRubros, UStock_2, UOrdenCompra, DMOrdenCompra,
  UBuscadorProveedor,DMBuscadoresForm, UPedidoPorCliente;
{$R *.dfm}

procedure TFormPlanillaPedido.Sumar;
var CDSClone:TClientDataSet;
begin
  inherited;
  edTotal.Value := 0;
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSPla_Det,True);
  CDSClone.First;
  while not(CDSClone.Eof) do
    begin
      edTotal.Value:=edTotal.Value+CDSClone.FieldByName('IMPORTE_TOTAL').AsFloat;
      CDSClone.Next;
    end;
  edTotal2.Value:=edTotal.Value;  
  FreeAndNil(CDSClone);
end;


procedure TFormPlanillaPedido.btGenerarResumenClick(Sender: TObject);
var CDSClone:TClientDataSet;
begin
  inherited;
  if Not(CDSTablaPedido.IsEmpty ) then
    begin
      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSTablaPedido,True);
      CDSClone.First;

      CDSClone.Filter:='A_PEDIR > 0';
      CDSClone.Filtered:=True;
      if CDSPla_Det.RecordCount>0 then
        begin
          CDSPla_Det.Close;
          CDSPla_Det.Open;
          CDSPla_det.EmptyDataSet;
        end;

      while not(CDSClone.Eof) do
        begin
          CDSPla_Det.Append;
          CDSPla_DetCODIGO.Value            := CDSClone.FieldByName('codigo').Value;
          CDSPla_DetREEMPLAZO_STK.Value     := CDSClone.FieldByName('CODIGO_ALTERNATIVO').Value;

          CDSPla_DetDETALLE_STK.Value       := CDSClone.FieldByName('DETALLE').Value;
          CDSPla_DetIMPORTE_UNITARIO.AsFloat:= CDSClone.FieldByName('COSTO').AsFloat;
          CDSPla_DetCANTIDADSetText(CDSPla_DetCANTIDAD,CDSClone.FieldByName('A_PEDIR').AsString);

          CDSPla_Det.Post;
          CDSClone.Next;
        end;
    //  CDSTablaPedido.Filtered:=False;
    //  CDSTablaPedido.Filter  :='';
      FreeAndNil(CDSClone);
    end;
   // if Not(CDSPla_Det.IsEmpty) then
   //   pcPlanilla.ActivePageIndex:=1;

    //  dbgPlanillaDBTableView1.ViewData.Expand(True);
end;

procedure TFormPlanillaPedido.btHacerOCClick(Sender: TObject);
VAR VProveedor:String;
begin
  inherited;
  VProveedor:='';
  VProveedor:=ceProvee.Text;
  if Trim(VProveedor)='' Then
    Raise Exception.Create(' No hay Proveedor Indicado...');
  if Not(CDSPla_Det.IsEmpty) Then
    if dbcSolicitante.KeyValue<>'*' Then
      begin
        if Not(Assigned(FormOrdenCompra)) Then
          FormOrdenCompra:=TFormOrdenCompra.Create(self);
        FormOrdenCompra.show;

        CDSPla_Det.DisableControls;
        CDSPla_Det.First;

        FormOrdenCompra.Modo:='N';
        FormOrdenCompra.Agregar.Execute;
        DatosOrdenCompra.CDSOrdenCompCabFECHA.AsDateTime:=dbeFecha.Date;
        DatosOrdenCompra.CDSOrdenCompCabCODIGOSetText(DatosOrdenCompra.CDSOrdenCompCabCODIGO,VProveedor);
        DatosOrdenCompra.CDSOrdenCompCabREALIZOSetText(DatosOrdenCompra.CDSOrdenCompCabREALIZO,dbcSolicitante.KeyValue);
        CDSPla_Det.First;
        while Not(CDSPla_Det.Eof) do
          begin
            if (CDSPla_DetCANTIDAD.AsFloat>0) Then
               begin
                 DatosOrdenCompra.CDSOrdenCompraDet.Append;
                 DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOSetText(DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO,CDSPla_DetCODIGO.Value);
                 DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA,CDSPla_DetCANTIDAD.AsString);
                 DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTALSetText(DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTAL,CDSPla_DetIMPORTE_UNITARIO.AsString);
                 DatosOrdenCompra.CDSOrdenCompraDet.Post;
               end;
             CDSPla_Det.Next;
           end;
        DatosOrdenCompra.CDSOrdenCompCabOBSERVACIONES.Value:=edNotas.Text;
        FormOrdenCompra.btConfirma.SetFocus;
        if chConfirmacion.Checked Then
          begin
           FormOrdenCompra.Confirma.Execute;
           FormOrdenCompra.Close;
          end;
      end
    else
      SHowMessage('No hay Empleado seleccionado, ver solicitante...')
  else
    SHowMessage('No hay datos para procesar...');
  CDSPla_Det.EnableControls;
end;

procedure TFormPlanillaPedido.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSTablaPedido.close;
  CDSTablaPedido.Params.ParamByName('lista').Value :=dbclistaPrecios.KeyValue;
  CDSTablaPedido.Params.ParamByName('modo').Value  :=rgTipoLista.ItemIndex;
  CDSTablaPedido.Open;
  dbgPlanillaDBTableView1.ViewData.Expand(True);
end;

procedure TFormPlanillaPedido.Button1Click(Sender: TObject);
begin
  inherited;
  CDSTablaPedido.close;
  CDSTablaPedido.Params.ParamByName('lista').Value :=dbclistaPrecios.KeyValue;
  CDSTablaPedido.Params.ParamByName('modo').Value  :=rgTipoLista.ItemIndex;
  CDSTablaPedido.Open;
end;

procedure TFormPlanillaPedido.btFiltroRubroClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormFiltroRubros)) then
    FormFiltroRubros:=TFormFiltroRubros.Create(Self);
  FormFiltroRubros.ShowModal;
 // ShowMessage(FormFiltroCpbtes.Ids.Text);
end;

procedure TFormPlanillaPedido.CDSPla_DetAfterPost(DataSet: TDataSet);
var CDSClone:TClientDataSet;
begin
  inherited;
  Sumar;
end;

procedure TFormPlanillaPedido.CDSPla_DetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  CDSPla_DetIMPORTE_TOTAL.AsFloat:=(CDSPla_DetIMPORTE_UNITARIO.AsFloat * (1-CDSPla_DetDESCUENTO.AsFloat*0.01)) *Sender.AsFloat;
end;

procedure TFormPlanillaPedido.CDSPla_DetCODIGOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if chCodAlt.Checked then
    Text:=CDSPla_DetREEMPLAZO_STK.AsString
  else
    Text:=CDSPla_DetCODIGO.AsString;


end;

procedure TFormPlanillaPedido.CDSPla_DetDESCUENTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if CDSPla_Det.State=dsBrowse then
    CDSPla_det.Edit;

  Sender.ASString:=Text;
  CDSPla_DetIMPORTE_TOTAL.AsFloat:=(CDSPla_DetIMPORTE_UNITARIO.AsFloat * (1-Sender.AsFloat *0.01)) *CDSPla_DetCANTIDAD.AsFloat;
  Sumar;
end;

procedure TFormPlanillaPedido.CDSPla_DetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSPla_DetDESCUENTO.AsFloat        := 0;
  CDSPla_DetCANTIDAD.AsFloat         := 0;
  CDSPla_DetIMPORTE_UNITARIO.AsFloat := 0;
  CDSPla_DetIMPORTE_TOTAL.AsFloat    := 0;

end;

procedure TFormPlanillaPedido.CDSTablaPedidoAfterPost(DataSet: TDataSet);
begin
  inherited;
  btGenerarResumen.Click;
end;

procedure TFormPlanillaPedido.CDSTablaPedidoCODIGOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if chCodAlt.Checked then
    Text:=CDSTablaPedidoCODIGO_ALTERNATIVO.AsString
  else
    Text:=CDSTablaPedidoCODIGO.AsString;


end;

procedure TFormPlanillaPedido.ceProveeButtonClick(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''N'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       ceProvee.Text  := FormBuscadorProveedor.Codigo;
       CDSProveedor.Close;
       CDSProveedor.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
       CDSProveedor.Open;
       IF NOT (CDSProveedor.eof) THEN
         BEGIN
           edNombre.Text := CDSProveedorNOMBRE.Value;
//           ceCliente.SetFocus;
 //          ceCliente.SelectAll;
         END;
    END;
end;

procedure TFormPlanillaPedido.ceProveeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_delete Then
    begin
      ceProvee.Text:='';
      edNombre.Text:='';
    end;
end;

procedure TFormPlanillaPedido.ceProveeKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceProvee.Text))) + ceProvee.Text;
      ceProvee.Text := Dato;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT(CDSProveedor.eof) THEN
        begin
          edNombre.Text := CDSProveedorNOMBRE.Value;
        end;
    END;
end;

procedure TFormPlanillaPedido.chCodAltClick(Sender: TObject);
begin
  inherited;
 //db dbgPlanilla.Repaint;
//  CDSTablaPedido.Refresh;
end;

procedure TFormPlanillaPedido.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormPlanillaPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSListaPrecios.Close;
  Action:=caFree;
end;

procedure TFormPlanillaPedido.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  pnPrincipal.Enabled :=True;
  CDSListaPrecios.Open;
  CDSPla_Det.Open;
  CDSSolicitante.Open;
  dbcSolicitante.KeyValue   := DMMain_FD.EmpleadoPorDefecto;
  dbcListaPrecios.KeyValue  := DMMain_FD.ListaPorDefecto(SucursalPorDefecto);
  pcPlanilla.ActivePageIndex:= 0;
end;

procedure TFormPlanillaPedido.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPlanillaPedido:=nil;
end;

procedure TFormPlanillaPedido.rgTipoListaClick(Sender: TObject);
begin
  inherited;
  dbcListaPrecios.Enabled :=rgTipoLista.ItemIndex=1;
  dbcListaProveeor.Enabled:=rgTipoLista.ItemIndex=0;

end;

procedure TFormPlanillaPedido.dbgPlanillaDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if (AShift=[ssShift,ssLeft,ssDouble]) then
    begin
      if Not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=CDSTablaPedidoCODIGO.Value;
      FormStock_2.Recuperar.Execute;
      FormStock_2.Show;
    end
  else
    begin
      if CDSTablaPedidoPEDIDOS.AsFloat>0 then
        begin
          if Not(Assigned(FormPedidoPorCliente)) then
            FormPedidoPorCliente:=TFormPedidoPorCliente.Create(Self);
          FormPedidoPorCliente.Codigo:=CDSTablaPedidoCODIGO.Value;
          FormPedidoPorCliente.ShowModal;
        end;
    end;
end;

end.
