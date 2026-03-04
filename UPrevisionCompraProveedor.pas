unit UPrevisionCompraProveedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  JvToolEdit, Vcl.Mask, JvExMask, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Grids, Vcl.DBGrids,DateUtils, AdvUtil, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, JvExStdCtrls, JvEdit, JvDBSearchEdit, JvMaskEdit, JvDBFindEdit,
  Vcl.DBCtrls;

type
  TFormPrevisionCompraProveedor = class(TFormABMBase)
    pnCabecera: TPanel;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    Label3: TLabel;
    desde: TJvDateEdit;
    Label2: TLabel;
    ceProveedor: TJvComboEdit;
    Label1: TLabel;
    edNombreProveedor: TEdit;
    DSPProveedor: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    CDSProveedorID_COD_POSTAL: TIntegerField;
    CDSProveedorCOD_POSTAL: TStringField;
    CDSProveedorLOCALIDAD: TStringField;
    CDSProveedorDIRECCION: TStringField;
    CDSProveedorTELEFONO_1: TStringField;
    CDSProveedorTELEFONO_2: TStringField;
    CDSProveedorCONDICION_IVA: TIntegerField;
    CDSProveedorN_DE_CUIT: TStringField;
    CDSProveedorACTIVO: TStringField;
    CDSProveedorRETIENE_IVA: TStringField;
    CDSProveedorRETIENE_IB: TStringField;
    CDSProveedorRETIENE_GANANCIAS: TStringField;
    CDSProveedorIVA_SERVICIOS: TStringField;
    CDSProveedorPRECIOS_CON_IVA: TStringField;
    CDSProveedorOBSERVACIONES: TMemoField;
    CDSProveedorNOMBRE_REPRESENTANTE: TStringField;
    CDSProveedorDIRECCION_REPRESENTANTE: TStringField;
    CDSProveedorTELEFONO_REPRESENTANTE: TStringField;
    CDSProveedorTIPO_PROVEEDOR: TStringField;
    CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSProveedorFECHAALTA: TSQLTimeStampField;
    CDSProveedorID_PERC_IVA: TIntegerField;
    CDSProveedorID_PERC_IBB: TIntegerField;
    CDSProveedorID_PERC_IBB_2: TIntegerField;
    CDSProveedorRUBRO: TIntegerField;
    CDSProveedorID_FACTURAPORDEFECTO: TIntegerField;
    CDSProveedorEXENTO_GANACIA: TStringField;
    CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    CDSProveedorEXENTO_RETENCION_IB: TStringField;
    CDSProveedorID_TASA_RETENCION_IB: TIntegerField;
    CDSProveedorNRO_IIBB: TStringField;
    CDSProveedorCORREO: TStringField;
    CDSProveedorCONV_MULTI: TStringField;
    CDSProveedorMONEDA_PRECIOS: TIntegerField;
    CDSProveedorTELEDISCADO: TStringField;
    CDSProveedorDESPERIVA: TStringField;
    CDSProveedorDESPERIB: TStringField;
    CDSProveedorDESPERIB2: TStringField;
    CDSProveedorMUESTRADETALLERETIIBB: TStringField;
    CDSProveedorMUESTRATASARETIIBB: TFloatField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField;
    CDSProveedorSALDO_INICIAL: TFloatField;
    BuscarProveedor: TAction;
    dbgPedidos: TDBGrid;
    QStock: TFDQuery;
    CDSStock: TClientDataSet;
    DSPStock: TDataSetProvider;
    DSStock: TDataSource;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockCOSTO_NETO: TFloatField;
    CDSStockF_ULTIMACOMPRA: TSQLTimeStampField;
    CDSStockSTOCK_ACTUAL: TFloatField;
    CDSStockUNIDADES_VENDIDAS: TFloatField;
    CDSStockPERIODO_DESDE: TSQLTimeStampField;
    CDSStockPERIODO_HASTA: TSQLTimeStampField;
    CDSStockPEDIDO: TFloatField;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    GenerarOC: TAction;
    Label4: TLabel;
    CDSStockDIAS: TIntegerField;
    CDSStockDETALLE_RUBRO: TStringField;
    pnPie: TPanel;
    CDSStockRUBRO: TStringField;
    CDSStockSUBRUBRO: TStringField;
    CDSStockDETALLE_SUBRUBRO: TStringField;
    CDSStockMINIMO: TFloatField;
    CDSStockMAXIMO: TFloatField;
    JvDBFindEdit1: TJvDBFindEdit;
    QRubro: TFDQuery;
    DSPRubro: TDataSetProvider;
    CDSRubro: TClientDataSet;
    CDSRubroRUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    cbRubros: TDBLookupComboBox;
    DSRubro: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    CDSStockCODIGO_STK_PROVEEDOR: TStringField;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ceProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure GenerarOCExecute(Sender: TObject);
    procedure dbgPedidosColEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormResize(Sender: TObject);
    procedure CDSStockCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
   
    procedure dbgPedidosTitleClick(Column: TColumn);
    procedure cbRubrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbRubrosClick(Sender: TObject);
    procedure dbgPedidosDblClick(Sender: TObject);
  private
    function SumarPedido: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrevisionCompraProveedor: TFormPrevisionCompraProveedor;

implementation

uses UDMain_FD, UBuscadorProveedor, UOrdenCompra, DMOrdenCompra,
  UBuscadorTipoCpbte, UStock_2;

{$R *.dfm}

function TFormPrevisionCompraProveedor.SumarPedido:Boolean;
var Aux:Extended;
begin
  CDSStock.First;
  Aux:=0;
  CDSStock.DisableControls;
  while Not(CDSStock.Eof) do
    begin
      Aux:=Aux+CDSStockPEDIDO.AsFloat;
      CDSStock.Next;
    end;
  Result:=not(Trunc(Aux*100)=0);
  CDSStock.First;

  CDSStock.EnableControls;

end;

procedure TFormPrevisionCompraProveedor.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,1)
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,-1);
  Buscar.Execute;
end;


procedure TFormPrevisionCompraProveedor.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSStock.Close;
  CDSStock.IndexDefs.Clear;
  CDSStock.Params.ParamByName('proveedor').Value:=ceProveedor.Text;
  CDSStock.Params.ParamByName('desde').Value:=desde.Date;
  CDSStock.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSStock.Open;

  CDSRubro.Close;
  CDSRubro.IndexDefs.Clear;
  CDSRubro.Params.ParamByName('proveedor').Value:=ceProveedor.Text;
  CDSRubro.Params.ParamByName('desde').Value:=desde.Date;
  CDSRubro.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSRubro.Open;

end;

procedure TFormPrevisionCompraProveedor.BuscarProveedorExecute(Sender: TObject);
begin
 IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
//  QProveedores.Close;
//  QProveedores.Open;
//  IF wwBuscadorProveedores.Execute THEN
    BEGIN
      ceProveedor.Text := FormBuscadorProveedor.Codigo;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        BEGIN
          edNombreProveedor.Text := CDSProveedorNOMBRE.AsString;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
          Buscar.Execute;
        END;
    END;

end;

procedure TFormPrevisionCompraProveedor.cbRubrosClick(Sender: TObject);
begin
  inherited;
  CDSStock.Filter:='RUBRO='+cbRubros.KeyValue;
  CDSStock.Filtered:=True;
end;

procedure TFormPrevisionCompraProveedor.cbRubrosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DELETE) or (key=VK_BACK) Then
    begin
      cbRubros.KeyValue := 0;
      CDSStock.Filtered := False;
      CDSStock.Filter   := '';
    end;
end;

procedure TFormPrevisionCompraProveedor.CDSStockCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSStockDIAS.Value := Trunc( CDSStockPERIODO_HASTA.AsDateTime - CDSStockPERIODO_DESDE.AsDateTime);
end;

procedure TFormPrevisionCompraProveedor.ceProveedorKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceProveedor.Text))) +
        ceProveedor.Text;
      ceProveedor.Text := Dato;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        begin
          edNombreProveedor.Text := CDSProveedorNOMBRE.AsString;
       //   CorreoDestino          := CDSProveedorCORREO.Value;
        end;
      //TraerCtaCte.Execute;
      ceProveedor.SetFocus;
      ceProveedor.SelectAll;
    END
  else
    if key=#10 Then
      begin
        Key:=#0;
        BuscarProveedor.Execute;
      end;
end;



procedure TFormPrevisionCompraProveedor.dbgPedidosColEnter(Sender: TObject);
begin
  inherited;
  if dbgPedidos.SelectedIndex=0 then
    dbgPedidos.SelectedIndex:=1
  else
   if (dbgPedidos.SelectedIndex>1) and (dbgPedidos.SelectedIndex<10) then
    dbgPedidos.SelectedIndex:=10;

end;

procedure TFormPrevisionCompraProveedor.dbgPedidosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:= TFormStock_2.Create(Self);
  FormStock_2.DatoNew:=CDSStockCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormPrevisionCompraProveedor.dbgPedidosTitleClick(Column: TColumn);
var Campo:string;
begin
  try
    Campo := Column.FieldName;
    with dbgPedidos.DataSource.DataSet as TClientDataSet do
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

procedure TFormPrevisionCompraProveedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormPrevisionCompraProveedor.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize  := False;
  desde.Date:= IncMonth( Date,-1);
  hasta.Date:= Date;
end;

procedure TFormPrevisionCompraProveedor.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPrevisionCompraProveedor:=nil;
end;

procedure TFormPrevisionCompraProveedor.FormResize(Sender: TObject);
begin
  inherited;
  if FormPrevisionCompraProveedor<>nil then
    if FormPrevisionCompraProveedor.Width<>1248 then
      FormPrevisionCompraProveedor.Width:=1248;
end;

procedure TFormPrevisionCompraProveedor.GenerarOCExecute(Sender: TObject);
vAR
  I: Integer;
begin
  inherited;
  if (SumarPedido) and (Trim(ceProveedor.Text)<>'') then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1    := 'OC';
       FormBuscadorTipoCpbte.TipoCpbte2   := '';
      FormBuscadorTipoCpbte.TipoCpbte3    := '';
      FormBuscadorTipoCpbte.CV            := 'C';
      FormBuscadorTipoCpbte.Sucursal      := SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA := '*';
      FormBuscadorTipoCpbte.Position:=poOwnerFormCenter;
      FormBuscadorTipoCpbte.ShowModal;
      if FormBuscadorTipoCpbte.ModalResult=mrOk Then
        begin
          if Not(Assigned(FormOrdenCompra)) then
            FormOrdenCompra:=TFormOrdenCompra.Create(Self);
          FormOrdenCompra.Show;
          FormOrdenCompra.CajaPorDefecto    := DMMain_FD.CajaSeleccionada;
          FormOrdenCompra.SucursalPorDefecto:= FormBuscadorTipoCpbte.Sucursal;
          FormOrdenCompra.Agregar.execute;
          FormOrdenCompra.DSBase.DataSet.FieldByName('FECHA').AsDateTime    := Date;
          FormOrdenCompra.DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Text:= IntToStr(FormBuscadorTipoCpbte.Id_Cpbte);


          CDSStock.DisableControls;
          CDSStock.First;

          while Not(CDSStock.Eof) do
            begin
              FormOrdenCompra.Modo:='N';
              FormOrdenCompra.Agregar.Execute;
              FormOrdenCompra.Modo:='N';
              DatosOrdenCompra.CDSOrdenCompCabCODIGOSetText(DatosOrdenCompra.CDSOrdenCompCabCODIGO,ceProveedor.Text);
              DatosOrdenCompra.CDSOrdenCompCabREALIZOSetText(DatosOrdenCompra.CDSOrdenCompCabREALIZO,DMMain_FD.EmpleadoPorDefecto);

              CDSStock.First;
              while Not(CDSStock.Eof) do
                begin
                  if (CDSStockPEDIDO.AsFloat>0) Then
                    begin
                      DatosOrdenCompra.CDSOrdenCompraDet.Append;
                      DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOSetText(DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO,CDSStockPEDIDO.AsString);
                      DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA,CDSStockPEDIDO.AsString);
                     //DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTALSetText(DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTAL,CDSLineasPedidoPRECIO.AsString);
                      DatosOrdenCompra.CDSOrdenCompraDet.Post;
                    end;
                  CDSStock.Next;
                end;
              FormOrdenCompra.btConfirma.SetFocus;


            end;
        end;
    end;
  CDSStock.First;
  CDSStock.EnableControls;
end;



end.
