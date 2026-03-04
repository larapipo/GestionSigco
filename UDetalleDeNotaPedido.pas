unit UDetalleDeNotaPedido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient, Grids, DBGrids, StdCtrls, JvComponentBase, ImgList,
  ActnList, JvExControls, JvGradient,
  Buttons, ToolWin, ExtCtrls, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvDBLookup, Mask, JvExMask, JvToolEdit,IniFiles, System.Actions,
  JvAppStorage, JvAppIniStorage, Data.DB, Vcl.ComCtrls,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, Vcl.WinXCtrls, Vcl.CheckLst, JvExExtCtrls, JvExtComponent,
  JvPanel, Vcl.DBCtrls;

type
  TFormDetallesNotaPedido = class(TFormABMBase)
    CDSLineasPedido: TClientDataSet;
    DSPLineasPedido: TDataSetProvider;
    dbgDetalle: TDBGrid;
    DSLineasPedido: TDataSource;
    CDSLineasPedidoMuestraProveedor: TStringField;
    BuscarProveedore: TAction;
    CDSLineasPedidoCODIGO: TStringField;
    CDSLineasPedidoDETALLE: TStringField;
    CDSLineasPedidoPROVEEDOR: TStringField;
    CDSLineasPedidoRUBRO: TStringField;
    CDSLineasPedidoSUBRUBRO: TStringField;
    HacerOC: TAction;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    CDSPedido: TClientDataSet;
    CDSPedidoCODIGO: TStringField;
    CDSPedidoDETALLE: TStringField;
    CDSPedidoPROVEEDOR: TStringField;
    CDSPedidoRUBRO: TStringField;
    CDSPedidoSUBRUBRO: TStringField;
    BitBtn2: TBitBtn;
    DSSolicitante: TDataSource;
    CDSLineasPedidoUNIDAD_COMPRA: TStringField;
    CDSPedidoUNIDAD_COMPRA: TStringField;
    CDSLineasPedidoMARCA: TStringField;
    CDSLineasPedidoPRES_UINIDAD: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    dbcSolicitante: TJvDBLookupCombo;
    rgLista: TRadioGroup;
    CDSPedidoPEDIDO: TSmallintField;
    CDSPedidoMARCA: TStringField;
    CDSPedidoPRES_UINIDAD: TStringField;
    CDSSolicitante: TClientDataSet;
    DSPSolicitante: TDataSetProvider;
    CDSSolicitanteCODIGO: TStringField;
    CDSSolicitanteNOMBRE: TStringField;
    CDSDetalleProduccion: TClientDataSet;
    DSPDetalleProduccion: TDataSetProvider;
    CDSDetalleProduccionID: TIntegerField;
    CDSDetalleProduccionID_1: TIntegerField;
    CDSDetalleProduccionID_CAB: TIntegerField;
    CDSDetalleProduccionCODIGO_STK: TStringField;
    CDSDetalleProduccionDETALLE: TStringField;
    CDSDetalleProduccionUNIDAD: TStringField;
    CDSDetalleProduccionULTIMO_COSTO: TSQLTimeStampField;
    CDSDetalleProduccionAFECTA_STOCK: TStringField;
    Label2: TLabel;
    ceProvee: TJvComboEdit;
    edNombre: TEdit;
    DSPProvee: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    CDSProveedorID_COD_POSTAL: TIntegerField;
    Button1: TButton;
    QSolicitante: TFDQuery;
    QStockExistencia: TFDQuery;
    QProveedores: TFDQuery;
    QStock: TFDQuery;
    QStockPRODUCCIONDIRECTA: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QStockCONTENIDO_COMPRA: TFloatField;
    QStockUNIDAD: TStringField;
    QStockUNIDAD_COMPRA: TStringField;
    QStockDEPRODUCCION: TStringField;
    QDetalleProducc: TFDQuery;
    CDSDetalleProduccionCANTIDADBASE: TFloatField;
    CDSDetalleProduccionCOSTO_STK: TFloatField;
    CDSDetalleProduccionCANTIDAD_REAL: TFloatField;
    CDSDetalleProduccionCANTIDAD_FISICA: TFloatField;
    CDSDetalleProduccionCOSTO: TFloatField;
    QLineasPedido: TFDQuery;
    QProv: TFDQuery;
    CDSLineasPedidoCANTIDADPEDIDA: TFloatField;
    CDSLineasPedidoPRECIO: TFloatField;
    CDSLineasPedidoPEDIDO: TSmallintField;
    CDSLineasPedidoPRES_CANTIDAD: TFloatField;
    CDSLineasPedidoSTOCK_MAXIMO: TFloatField;
    CDSLineasPedidoCONTENIDO_COMPRA: TFloatField;
    CDSLineasPedidoSTOCK_ACTUAL: TFloatField;
    CDSLineasPedidoSTOCK_MINIMO: TFloatField;
    CDSPedidoCANTIDADPEDIDA: TFloatField;
    CDSPedidoPRECIO: TFloatField;
    CDSPedidoSTOCK_ACTUAL: TFloatField;
    CDSPedidoSTOCK_MINIMO: TFloatField;
    CDSPedidoSTOCK_MAXIMO: TFloatField;
    CDSPedidoCONTENIDO_COMPRA: TFloatField;
    CDSPedidoPRES_CANTIDAD: TFloatField;
    QProveeArticulo: TFDQuery;
    QMarcarNotaPedido: TFDQuery;
    QProveeArticuloCODIGO_STK: TStringField;
    QProveeArticuloCODIGO_PROV: TStringField;
    QProveeArticuloPRECIO: TFloatField;
    QStockExistenciaFISICO: TFloatField;
    QStockExistenciaMINIMO: TFloatField;
    actProveedores: TActivityIndicator;
    JvDBStatusLabel1: TJvDBStatusLabel;
    QProvedoresLinea: TFDQuery;
    pnProveedores: TJvPanel;
    Panel3: TPanel;
    Label3: TLabel;
    lbProveedores: TCheckListBox;
    btSelec: TBitBtn;
    btUnSelec: TBitBtn;
    btSalirPanel: TBitBtn;
    spClintes: TSpeedButton;
    chBuscaProveedoGeneral: TCheckBox;
    CDSProv: TClientDataSet;
    DSPProv: TDataSetProvider;
    CDSProvCODIGO: TStringField;
    CDSProvNOMBRE: TStringField;
    CDSProvRAZON_SOCIAL: TStringField;
    CDSProvDIRECCION: TStringField;
    CDSProvLOCALIDAD: TStringField;
    CDSProvTELEDISCADO: TStringField;
    CDSLineasPedidoID_CAB_PEDIDO: TIntegerField;
    CDSLineasPedidoID_DET_PEDIDO: TIntegerField;
    Label4: TLabel;
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure BuscarProveedoreExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSLineasPedidoBeforeInsert(DataSet: TDataSet);
    procedure dbgDetalleEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HacerOCExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSLineasPedidoBeforeEdit(DataSet: TDataSet);
    procedure dbcSolicitanteClick(Sender: TObject);
    procedure rgListaClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ceProveeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceProveeKeyPress(Sender: TObject; var Key: Char);
    procedure ceProveeButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lbProveedoresClick(Sender: TObject);
    procedure btSelecClick(Sender: TObject);
    procedure btUnSelecClick(Sender: TObject);
    procedure spClintesClick(Sender: TObject);
    procedure btSalirPanelClick(Sender: TObject);
    procedure pnPrincipalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Flag:Boolean;
    Filtro:String;
    ArchivoIni :TIniFile;
    procedure agregar_detalle(codigo:string;cantidad:real);
    procedure ArmarListaProveedores;
  end;

var
  FormDetallesNotaPedido: TFormDetallesNotaPedido;

implementation

uses UBuscaProveedorStock,  UOrdenCompra, DMOrdenCompra,UDMain_FD,
  UBuscadorProveedor;

{$R *.DFM}

procedure TFormDetallesNotaPedido.agregar_detalle(codigo:string;cantidad:real);
VAR Puntero  : TBookmark;
CantidadBASE,
ContenidoCompra : Extended;
begin
  CDSDetalleProduccion.close;
  CDSDetalleProduccion.Params.ParamByName('codigo').AsString:=codigo;
  CDSDetalleProduccion.Open;
  CDSDetalleProduccion.First;
  while not(CDSDetalleProduccion.Eof) do
    begin
      QStock.Close;
      QStock.ParamByName('codigo').Value := CDSDetalleProduccionCODIGO_STK.Value;
      QStock.OPen;
      if QStockPRODUCCIONDIRECTA.Value='S' Then
        begin
          Puntero:=CDSDetalleProduccion.GetBookmark;
          if Trim(CDSDetalleProduccionCODIGO_STK.Value)<>'' Then
            agregar_detalle(CDSDetalleProduccionCODIGO_STK.Value,cantidad);
          CDSDetalleProduccion.close;
          CDSDetalleProduccion.Params.ParamByName('codigo').AsString:=codigo;
          CDSDetalleProduccion.Open;
          CDSDetalleProduccion.GotoBookmark(Puntero);
          CDSDetalleProduccion.FreeBookmark(Puntero);
        end
      else
        begin
          if (Trim(CDSDetalleProduccionCODIGO_STK.AsString)<>'') Then
            if CDSLineasPedido.Locate('Codigo',Trim(CDSDetalleProduccionCODIGO_STK.AsString),[]) Then
              begin
                CDSLineasPedido.Edit;
                CantidadBASE    := CDSDetalleProduccionCANTIDADBASE.AsFloat;
                ContenidoCompra := QStockCONTENIDO_COMPRA.AsFloat;
                if cantidadBASE <=0 then CantidadBASE:=1;
                if ContenidoCompra<=0 then ContenidoCompra:=1;

                CDSLineasPedidoCANTIDADPEDIDA.AsFloat:=CDSLineasPedidoCANTIDADPEDIDA.AsFLoat+((CDSDetalleProduccionCANTIDAD_REAL.AsFloat/CantidadBASE)*cantidad)/ContenidoCompra;
                CDSLineasPedido.Post;
              end
            else
              begin
                CantidadBASE    := CDSDetalleProduccionCANTIDADBASE.AsFloat;
                ContenidoCompra := QStockCONTENIDO_COMPRA.AsFloat;
                if cantidadBASE <=0 then CantidadBASE:=1;
                if ContenidoCompra<=0 then ContenidoCompra:=1;

                CDSLineasPedido.Insert;
                CDSLineasPedidoCODIGO.Value           := CDSDetalleProduccionCODIGO_STK.Value;
                CDSLineasPedidoDETALLE.Value          := CDSDetalleProduccionDETALLE.Value;
                CDSLineasPedidoCANTIDADPEDIDA.AsFloat := ((CDSDetalleProduccionCANTIDAD_REAL.AsFloat/CantidadBASE)*cantidad)/ContenidoCompra;
                QProveeArticulo.Close;
                QProveeArticulo.ParamByName('codigo').Value:=CDSDetalleProduccionCODIGO_STK.Value;
                QProveeArticulo.Open;
                CDSLineasPedidoPROVEEDOR.Value:=QProveeArticuloCODIGO_PROV.Value;
                if QProveeArticuloPRECIO.AsString<>'' Then
                  CDSLineasPedidoPRECIO.AsFLoat   :=QProveeArticuloPRECIO.AsFloat
                else
                  CDSLineasPedidoPRECIO.AsFloat   :=0;
                QStockExistencia.Close;
                QStockExistencia.ParamByName('codigo').Value:=CDSDetalleProduccionCODIGO_STK.Value;
                QStockExistencia.Open;
                CDSLineasPedidoSTOCK_ACTUAL.AsFloat := QStockExistenciaFISICO.AsFloat/ContenidoCompra;
                CDSLineasPedidoSTOCK_MINIMO.AsFloat := QStockExistenciaMINIMO.AsFloat/ContenidoCompra;
                CDSLineasPedidoPEDIDO.Value         := 0; // esta maraca si fue o no pedido
                CDSLineasPedidoRUBRO.Value          := QStockRUBRO_STK.Value;
                CDSLineasPedidoSUBRUBRO.Value       := QStockSUBRUBRO_STK.Value;
                CDSLineasPedidoUNIDAD_COMPRA.Value  := QStockUNIDAD_COMPRA.Value;
                CDSLineasPedido.Post;
                QProveeArticulo.CLose;
                QStockExistencia.Close;
                QStock.Close;
              end;
        end;
      CDSDetalleProduccion.Next;
    end;
end;

procedure TFormDetallesNotaPedido.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  if dbgDetalle.SelectedIndex=0 Then
    dbgDetalle.SelectedIndex:=1;
  if dbgDetalle.SelectedIndex in [2,3,4,5,6] Then
    dbgDetalle.SelectedIndex:=7;
end;

procedure TFormDetallesNotaPedido.ArmarListaProveedores;
Var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(nil);
  CDSClone.CloneCursor(CDSLineasPedido,True);
  CDSClone.First;

  lbProveedores.Items.Clear;
  CDSClone.First;
  while not(CDSClone.Eof) do
    begin
      // busqueda dentro del listBox
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('CODIGO').Value:=CDSClone.FieldByName('PROVEEDOR').AsString;
      CDSProveedor.Open;
      if not(lbProveedores.Items.IndexOf(CDSClone.FieldByName('PROVEEDOR').AsString+' - '+CDSProveedorNOMBRE.AsString)> -1) Then
        begin
          lbProveedores.Items.Add(CDSClone.FieldByName('PROVEEDOR').AsString+' - '+CDSProveedorNOMBRE.AsString);
        end;
      CDSProveedor.Close;
      CDSClone.Next;
    end;
  CDSClone.Close;
  FreeAndNil(CDSClone);
end;

procedure TFormDetallesNotaPedido.btSalirPanelClick(Sender: TObject);
begin
  inherited;
  pnProveedores.Visible:=False;
end;

procedure TFormDetallesNotaPedido.btSelecClick(Sender: TObject);
var i:Integer;
Cadena:String;
begin
  inherited;
  Filtro:='''******''';
  for i := 0 to lbProveedores.Items.Count - 1 do
    begin
      lbProveedores.Checked[I]:=True;
      Cadena:='';
      Cadena:=''''+Trim(copy(lbProveedores.Items[I],1,7))+'''';
      if Filtro='******' then
        filtro:=Cadena
      else
       filtro:=Filtro+','+Cadena;
    end;
  CDSLineasPedido.Filtered := False;
  CDSLineasPedido.Filter   := 'proveedor in ('+Filtro+')';
  if Filtro<>'******' then
    CDSLineasPedido.Filtered := True;
 // pnClientes.Visible:=False;
end;

procedure TFormDetallesNotaPedido.btUnSelecClick(Sender: TObject);
var i:Integer;
Cadena:String;
begin
  inherited;
  Filtro:='''******''';
  for i := 0 to lbProveedores.Items.Count - 1 do
    begin
      lbProveedores.Checked[I]:=False;
    end;
  CDSLineasPedido.Filtered := False;
  CDSLineasPedido.Filter   := 'proveedor in ('+Filtro+')';
  if Filtro<>'******' then
    CDSLineasPedido.Filtered := True;
  //pnClientes.Visible:=False;
end;

procedure TFormDetallesNotaPedido.BuscarProveedoreExecute(Sender: TObject);
begin
  inherited;
  if chBuscaProveedoGeneral.Checked then
    begin
      if Not(Assigned(FormBuscadorProveedor)) Then
        FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Self);
      FormBuscadorProveedor.Tipo:='''N'''+','+'''S''';
      FormBuscadorProveedor.ShowModal;
      if FormBuscadorProveedor.Codigo<>'' Then
        Begin
          CDSLineasPedido.BeforeEdit:=nil;
          if CDSLineasPedido.State=dsBrowse Then
            CDSLineasPedido.edit;
          CDSLineasPedidoPROVEEDOR.Value := FormBuscadorProveedor.Codigo;
 //         CDSLineasPedidoMuestraProveedor:= FormBuscadorProveedor.Nombre;
          CDSLineasPedidoPrecio.AsFloat  := 0;
          CDSLineasPedido.Post;
          CDSLineasPedido.BeforeEdit:=CDSLineasPedidoBeforeEdit;
        end;
    end
  else
    begin
      if CDSLineasPedidoPROVEEDOR.AsString<>'' Then
        begin
          if Not(Assigned(FormBuscaProveedorStock)) Then
            FormBuscaProveedorStock:=TFormBuscaProveedorStock.Create(Application);
          FormBuscaProveedorStock.Modo    :=rgLista.ItemIndex;
          FormBuscaProveedorStock.CodigoIn:=CDSLineasPedidoCODIGO.AsString;
          FormBuscaProveedorStock.ShowModal;
          if FormBuscaProveedorStock.CodigoOut<>'' Then
            Begin
              CDSLineasPedido.BeforeEdit:=nil;
              if CDSLineasPedido.State=dsBrowse Then
                CDSLineasPedido.edit;
              CDSLineasPedidoPROVEEDOR.AsString        := FormBuscaProveedorStock.CodigoOut;
         //     CDSLineasPedidoMuestraProveedor.AsString := FormBuscaProveedorStock.Nombre;
              CDSLineasPedidoPrecio.AsFloat  := FormBuscaProveedorStock.Precio;
              CDSLineasPedido.Post;
              CDSLineasPedido.BeforeEdit:=CDSLineasPedidoBeforeEdit;
            end;
        end
      else
        ShowMessage('No Hay Proveedor para éste artículo');
    end;
  ArmarListaProveedores;
end;

procedure TFormDetallesNotaPedido.Button1Click(Sender: TObject);
begin
  inherited;
  Cursor:=crHourGlass;
  actProveedores.Animate:=True;
  actProveedores.Visible:=True;
  actProveedores.StartAnimation;
  Application.ProcessMessages;
  sbEstado.SimpleText:='Asignando Proveedor.....';
  CDSLineasPedido.First;
  CDSLineasPedido.DisableControls;
  CDSLineasPedido.BeforeEdit:=nil;
  while Not(CDSLineasPedido.Eof) do
    begin
      Application.ProcessMessages;
      if (CDSLineasPedidoPROVEEDOR.Value='') or (CDSLineasPedidoPROVEEDOR.Value='******') then
        begin
          CDSLineasPedido.Edit;
          CDSLineasPedidoPROVEEDOR.Value:=ceProvee.Text;
         // CDSLineasPedidoMuestraProveedor.Value:=edNombre.Text;
        end;
       CDSLineasPedido.Next;
    end;
  CDSLineasPedido.First;
  CDSLineasPedido.EnableControls;
  CDSLineasPedido.BeforeEdit:=CDSLineasPedidoBeforeEdit;
  Cursor:=crDefault;
  actProveedores.StopAnimation;
  actProveedores.Animate:=false;
  actProveedores.Visible:=false;
  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  ArmarListaProveedores;


end;

procedure TFormDetallesNotaPedido.FormCreate(Sender: TObject);
begin
  inherited;
  Flag:=False;

  CDSSolicitante.Open;

  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_CompTX.ini');
  ceProvee.Text          := ArchivoIni.ReadString('codigo', 'codigo','');
  edNombre.Text          := ArchivoIni.ReadString('nombre', 'nombre','');
  ArchivoIni.Free;

  AutoSize:=False;
  Recuperar.Execute;
end;

procedure TFormDetallesNotaPedido.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($CCCCFF);

begin
  inherited;

    if Column.Field.Dataset.FieldbyName('MuestraProveedor').AsString=''
      then
       if (gdFocused in State)
        then dbgDetalle.canvas.brush.color := clBlack
        else dbgDetalle.canvas.brush.color := clPaleGreen;

  (Sender as TDBGrid).Canvas.Font.Color   := clBlack;

    //Esta línea es nueva

  if Column.Field.FieldName='STOCK_ACTUAL' then
    begin
      (Sender as TDBGrid).Canvas.brush.Color := clGreen;  { En rojo / in red }
      (Sender as TDBGrid).Canvas.Font.Color   := clWhite;
    end
  else
    if Column.Field.FieldName= 'STOCK_MINIMO' then
      begin
        (Sender as TDBGrid).Canvas.brush.Color := clRed;  { En rojo / in red }
        (Sender as TDBGrid).Canvas.Font.Color   := clWhite;
      end
    else
      if Column.Field.FieldName= 'STOCK_MAXIMO' then
        begin
          (Sender as TDBGrid).Canvas.brush.Color := clBlue;  { En rojo / in red }
          (Sender as TDBGrid).Canvas.Font.Color   := clWhite;
        end
      else
        (Sender as TDBGrid).Canvas.Font.Color   := clBlack;

    if gdSelected in State Then
      begin
        dbgDetalle.Canvas.Font.Color:=clWhite;
        dbgDetalle.Canvas.Brush.Color:=clNavy;
      end;
      //  if CDSLineasPedidoPROVEEDOR.AsString='' Then
//    dbgDetalle.Canvas.brush.Color:=clAqua
//  else
//    begin
//      dbgDetalle.Canvas.brush.Color:=clWhite;

// *     if Column.Index in[0,2,3] then
// *       dbgDetalle.Canvas.Brush.Color := clinfoBk;  {}

//    end;
 // if dbgDetalle.SelectedRows

  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormDetallesNotaPedido.CDSLineasPedidoBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if Flag=True Then
    sysutils.Abort;
end;

procedure TFormDetallesNotaPedido.ceProveeButtonClick(Sender: TObject);
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

procedure TFormDetallesNotaPedido.ceProveeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_delete Then
    begin
      ceProvee.Text:='';
      edNombre.Text:='';
    end;
end;

procedure TFormDetallesNotaPedido.ceProveeKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TFormDetallesNotaPedido.ConfirmaExecute(Sender: TObject);
begin
  //inherited;

end;

procedure TFormDetallesNotaPedido.dbgDetalleEnter(Sender: TObject);
begin
  inherited;
  dbgDetalle.SelectedIndex:=7;
end;

procedure TFormDetallesNotaPedido.FormShow(Sender: TObject);
begin
  inherited;
  dbgDetalle.SelectedIndex:=7;
end;

procedure TFormDetallesNotaPedido.HacerOCExecute(Sender: TObject);
VAR VProveedor:String;
Fin:Boolean;
Lista:TStringList;
  I: Integer;
begin
  inherited;
  Lista:=TStringList.Create;
  Lista.Clear;
  CDSLineasPedido.First;
  CDSLineasPedido.DisableControls;
  VProveedor:='';
  while Not(CDSLineasPedido.Eof) do
    begin
      if (Trim(CDSLineasPedidoPROVEEDOR.AsString)='') or (Trim(CDSLineasPedidoPROVEEDOR.AsString)='******')  Then
        raise Exception.Create('Lineas sin Proveedor Asignado....');
      CDSLineasPedido.Next;
    end;
  CDSLineasPedido.First;
  CDSLineasPedido.EnableControls;

  CDSLineasPedido.DisableControls;
  VProveedor:=CDSLineasPedidoPROVEEDOR.AsString;
  while Not(CDSLineasPedido.Eof) do
    begin
      if (Trim(CDSLineasPedidoPROVEEDOR.AsString)<> VProveedor)  Then
        raise Exception.Create('Seleccione un solo Proveedor a la Vez....');
      CDSLineasPedido.Next;
    end;
  CDSLineasPedido.First;
  CDSLineasPedido.EnableControls;

  if Not(CDSLineasPedido.IsEmpty) Then
    if DMMain_FD.EmpleadoPorDefecto<>'' Then
      begin
        if Not(Assigned(FormOrdenCompra)) Then
          FormOrdenCompra:=TFormOrdenCompra.Create(self);
        FormOrdenCompra.show;
        FormOrdenCompra.chAgregaImpuesto.Checked:=False;
        fin:=False;
        CDSLineasPedido.DisableControls;
        repeat
          CDSLineasPedido.First;
          VProveedor:='';
          while Not(CDSLineasPedido.Eof) and (VProveedor='') do
            begin
              // empiezo a buscar un proveedor en la lineas que aun no han sido confirmadas
              // y lo pongo en la variable VProveedor
              if (CDSLineasPedidoPEDIDO.Value=0) and (CDSLineasPedidoPROVEEDOR.AsString<>'') Then
                VProveedor:=CDSLineasPedidoPROVEEDOR.Value;
              CDSLineasPedido.Next;
            end;
          if (CDSLineasPedido.Eof) and (VProveedor='') Then
            fin:=True;
          if (VProveedor<>'') and (VProveedor<>'******') Then
            begin
              FormOrdenCompra.Modo:='N';
              FormOrdenCompra.Agregar.Execute;
              FormOrdenCompra.Modo:='N';
              DatosOrdenCompra.CDSOrdenCompCabCODIGOSetText(DatosOrdenCompra.CDSOrdenCompCabCODIGO,VProveedor);
              DatosOrdenCompra.CDSOrdenCompCabREALIZOSetText(DatosOrdenCompra.CDSOrdenCompCabREALIZO,DMMain_FD.EmpleadoPorDefecto);

              CDSLineasPedido.First;
              while Not(CDSLineasPedido.Eof) do
                begin
                  if (VProveedor=CDSLineasPedidoPROVEEDOR.Value) Then
                    begin
                      if (CDSLineasPedidoCANTIDADPEDIDA.AsFloat>0) and (CDSLineasPedidoCANTIDADPEDIDA.AsString<>'') and (Trim(CDSLineasPedidoCODIGO.AsString)<>'')Then
                        begin
                          DatosOrdenCompra.CDSOrdenCompraDet.Append;
                          DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOSetText(DatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULO,CDSLineasPedidoCODIGO.Value);
                          DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDASetText(DatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDA,CDSLineasPedidoCANTIDADPEDIDA.AsString);
                          //DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTALSetText(DatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTAL,CDSLineasPedidoPRECIO.AsString);
                          DatosOrdenCompra.CDSOrdenCompraDet.Post;
                          Lista.Add(CDSLineasPedidoID_DET_PEDIDO.AsString);
                        end;
                      CDSLineasPedido.Edit;
                      CDSLineasPedidoPEDIDO.Value:=1;
                    end;
                  CDSLineasPedido.Next;
                end;
              FormOrdenCompra.btConfirma.SetFocus;
              FormOrdenCompra.Confirma.Execute;
              //ShowMessage(Lista.Text);
            end;
        until fin=True;
        for I := 0 to Lista.Count-1 do
          begin
            QMarcarNotaPedido.Close;
            QMarcarNotaPedido.SQL.Clear;
            QMarcarNotaPedido.SQL.Add('update notapedidodet c set c.pedido=''P'' where c.id ='+Lista[i]);
            QMarcarNotaPedido.ExecSQL;
            QMarcarNotaPedido.Close;
          end;
        FormOrdenCompra.Close;
        CDSLineasPedido.Close;
        Application.ProcessMessages;
        CDSLineasPedido.Open;
      end
    else
      SHowMessage('No hay Empleado por defecto seleccionado, ver en Parámetros/Configuración Local...')
  else
    SHowMessage('No hay datos para procesar...');
  CDSLineasPedido.EnableControls;
  Recuperar.Execute;
end;

procedure TFormDetallesNotaPedido.lbProveedoresClick(Sender: TObject);
var Cadena:String;
I:Integer;
begin
  inherited;
  filtro:='''******''';   Cadena:='';
  for i := 0 to lbProveedores.Items.Count - 1 do
    begin
      if lbProveedores.Checked[I] Then
        begin
          Cadena:='';
          Cadena:=''''+Trim(copy(lbProveedores.Items[I],1,7))+'''';
          if Cadena='-' then Cadena:='';

          if Filtro='******' then
            filtro:=Cadena
          else
            filtro:=Filtro+','+Cadena;
        end;
    end;
  CDSLineasPedido.Filtered := False;
  CDSLineasPedido.Filter   := 'proveedor in ('+Filtro+')';
  if Filtro<>'' then
    CDSLineasPedido.Filtered := True;
  dbgDetalle.Width:=dbgDetalle.Width-1;
  dbgDetalle.Width:=dbgDetalle.Width+1;
end;

procedure TFormDetallesNotaPedido.pnPrincipalClick(Sender: TObject);
begin
  inherited;
  pnProveedores.Visible:=False;
end;

procedure TFormDetallesNotaPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_CompTX.ini');
  ArchivoIni.WriteString('codigo', 'codigo',ceProvee.Text);
  ArchivoIni.WriteString('nombre', 'nombre',edNombre.Text);
  ArchivoIni.Free;
  inherited;
  CDSSolicitante.Close;
  Action:=caFree;
end;

procedure TFormDetallesNotaPedido.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDetallesNotaPedido:=nil;
end;

procedure TFormDetallesNotaPedido.dbgDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if dbgDetalle.SelectedIndex=8 Then
    if (key=VK_delete) or (Key=vk_Back) Then
      BEGIN
        CDSLineasPedido.Edit;
        CDSLineasPedidoPROVEEDOR.AsString:='';
        CDSLineasPedido.Post;
      END;
end;

procedure TFormDetallesNotaPedido.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormDetallesNotaPedido.RecuperarExecute(Sender: TObject);
var Cadena:String;
i:Integer;
begin
  inherited;
  Flag:=False; // esta la uso para habilitar o no el Insert dentro de Lineas de pedido
   if rgLista.ItemIndex=0 then
     begin
       CDSLineasPedido.CommandText:='';
       CDSLineasPedido.CommandText:='select * from detallepedido(:solicitante) order by detalle';
       CDSPedido.CommandText      :='';
       CDSPedido.CommandText      :='select * from detallepedido(:solicitante) order by detalle';

     end
   else
     if rgLista.ItemIndex=1 then
       begin
         CDSLineasPedido.CommandText:='';
         CDSLineasPedido.CommandText:='select * from DETALLEPEDIDO_PORLISTAPROVEEDOR(:solicitante) order by detalle';
         CDSPedido.CommandText      :='';
         CDSPedido.CommandText      :='select * from DETALLEPEDIDO_PORLISTAPROVEEDOR(:solicitante) order by detalle';
        end;

  CDSLineasPedido.Close;
  CDSLineasPedido.Params.ParamByName('solicitante').AsString:=dbcSolicitante.Value;
  CDSLineasPedido.Open;
  CDSLineasPedido.First;
  CDSPedido.Close;
  CDSPedido.Params.ParamByName('solicitante').AsString:=dbcSolicitante.Value;
  CDSPedido.Open;
  CDSPedido.First;
  while not(CDSPedido.Eof) do
    begin
      QStock.Close;
      QStock.ParamByName('codigo').AsString:=CDSPedidoCODIGO.Value;
      QStock.OPen;
      if QStockDEPRODUCCION.Value='S' Then
        begin
          agregar_detalle(CDSPedidoCODIGO.Value,CDSPedidoCANTIDADPEDIDA.AsFloat);
          if CDSLineasPedido.Locate('Codigo',CDSPedidoCODIGO.Value,[]) Then
             CDSLineasPedido.delete;

        end;
      CDSPedido.Next;
    end;
  CDSPedido.First;

  ArmarListaProveedores;
  {
  QProvedoresLinea.Close;
  QProvedoresLinea.ParamByName('Solicitante').Value:=dbcSolicitante.Value;
  QProvedoresLinea.Open;

  QProvedoresLinea.First;
  while not(QProvedoresLinea.Eof) do
    begin
      lbProveedores.Items.Add(QProvedoresLinea.fields[0].AsString+' - '+QProvedoresLinea.fields[1].AsString );
      QProvedoresLinea.Next;
    end;
  QProvedoresLinea.Close;
  }

  filtro:='''******''';   Cadena:='';
  for i := 0 to lbProveedores.Items.Count - 1 do
    begin
      if lbProveedores.Checked[I] Then
        begin
          Cadena:='';
          Cadena:=''''+Trim(copy(lbProveedores.Items[I],1,7))+'''';
          if Filtro='''******''' then
            filtro:=Cadena
          else
            filtro:=Filtro+','+Cadena;
        end;
    end;
  if Filtro='''******''' then
    filtro:=Cadena;
  CDSLineasPedido.Filtered := False;
  if Filtro<>'' then
    begin
      CDSLineasPedido.Filter   := 'codigo in ('+Filtro+')';
      CDSLineasPedido.Filtered := True;
    end;
  dbgDetalle.Width:=dbgDetalle.Width-1;
  dbgDetalle.Width:=dbgDetalle.Width+1;


  Flag:=True;
end;

procedure TFormDetallesNotaPedido.rgListaClick(Sender: TObject);
begin
  inherited;
  Recuperar.Execute;
end;

procedure TFormDetallesNotaPedido.spClintesClick(Sender: TObject);
begin
  inherited;
  pnProveedores.Visible:=Not(pnProveedores.Visible);
end;

procedure TFormDetallesNotaPedido.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 // inherited;

end;

procedure TFormDetallesNotaPedido.FormResize(Sender: TObject);
begin
  inherited;
  if FormDetallesNotaPedido<>nil then
    if FormDetallesNotaPedido.Width<>1094 then
      FormDetallesNotaPedido.Width:=1094;
end;

procedure TFormDetallesNotaPedido.CDSLineasPedidoBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  if CDSLineasPedidoMuestraProveedor.Value='' Then
    begin
      sysutils.Abort;
    end;
end;

procedure TFormDetallesNotaPedido.dbcSolicitanteClick(Sender: TObject);
begin
  inherited;
  Recuperar.Execute;
end;

end.