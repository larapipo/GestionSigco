unit UOCompraRecepcion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,DateUtils,
  ExtCtrls, Grids, DBGrids, DBClient, Provider, Menus, JvComponentBase,
  JvFormPlacement, ImgList, JvLabel, JvDBControls, JvExControls, JvGradient,
  FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid, Mask, JvExMask, JvToolEdit, JvDBLookup,
  Data.DB, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormOCompraRecepcion = class(TFormABMBase)
    DSCompra: TDataSource;
    DSPOCompra: TDataSetProvider;
    CDSOCompra: TClientDataSet;
    CDSOCompraID_OC: TIntegerField;
    CDSOCompraTIPOCPBTE: TStringField;
    CDSOCompraCLASECPBTE: TStringField;
    CDSOCompraNROCPBTE: TStringField;
    CDSOCompraCODIGO: TStringField;
    CDSOCompraNOMBRE: TStringField;
    CDSOCompraRAZONSOCIAL: TStringField;
    PopupMenu1: TPopupMenu;
    Anular: TAction;
    Anular1: TMenuItem;
    dbgOCompra: TJvDBGrid;
    CDSOCompraMUESTRASUCURSAL: TStringField;
    Recibida: TAction;
    DarporRecibida1: TMenuItem;
    pnPie: TPanel;
    Label1: TLabel;
    Desde: TJvDateEdit;
    Label2: TLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    RxLabel3: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSSucursal: TDataSource;
    Label3: TLabel;
    ceProveedor: TJvComboEdit;
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
    CDSProveedorSALDO_INICIAL: TFMTBCDField;
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
    CDSProveedorMUESTRATASARETIIBB: TFMTBCDField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFMTBCDField;
    BuscarProveedor: TAction;
    chTodoLosProvee: TCheckBox;
    chbLteFecha: TCheckBox;
    FDQOCompra: TFDQuery;
    CDSOCompraTOTAL: TFloatField;
    Panel2: TPanel;
    Label4: TLabel;
    spAnular: TFDStoredProc;
    CDSOCompraSUCURSAL: TIntegerField;
    CDSOCompraFECHA: TSQLTimeStampField;
    spRecibir: TFDStoredProc;
    procedure dbgOCompraDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgOCompraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AnularExecute(Sender: TObject);
    procedure dbgOCompraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgOCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RecibidaExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure ceProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure chTodoLosProveeClick(Sender: TObject);
    procedure chbLteFechaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOCompraRecepcion: TFormOCompraRecepcion;

implementation

uses UOrdenCompra,DMBuscadoresForm, UBuscadorProveedor,UDMain_FD;

{$R *.DFM}

procedure TFormOCompraRecepcion.dbgOCompraDblClick(Sender: TObject);
begin
  inherited;
  if CDSOCompraID_OC.AsString<>'' then
    begin
      if Not(Assigned(FormOrdenCompra)) Then
        FormOrdenCompra:=TFormOrdenCompra.Create(Application);
      FormOrdenCompra.Modo           := 'R';
      FormOrdenCompra.lbModo.Caption := 'En Modo Recepción';
      FormOrdenCompra.DatoNew        := CDSOCompraID_OC.AsString;
      FormOrdenCompra.TipoCpbte      := 'OC';
      FormOrdenCompra.Show;
      FormOrdenCompra.BringToFront;
      FormOrdenCompra.Recuperar.Execute;
    end;
end;

procedure TFormOCompraRecepcion.dbgOCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) then
    begin
      Key:=0;
      Anular.Execute;
    end;
//
//  else
//    if (key=VK_DELETE) then
//      begin
//        Key:=0;
//        Anular.Execute;
//      end
//

end;

procedure TFormOCompraRecepcion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSOCompra.Close;
  CDSSucursal.Close;
  Action:=caFree;
end;

procedure TFormOCompraRecepcion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOCompraRecepcion:=nil;
end;

procedure TFormOCompraRecepcion.FormResize(Sender: TObject);
begin
  inherited;
  if (Width>902)
    then width:=902;
  if (Width<902)
    then width:=902;
end;

procedure TFormOCompraRecepcion.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.Date));
  dbcSucursal.KeyValue:=SucursalPorDefecto;
end;

procedure TFormOCompraRecepcion.RecibidaExecute(Sender: TObject);
begin
  inherited;
  spRecibir.Close;
  spRecibir.ParamByName('id').Value        :=CDSOCompraID_OC.Value;
  spRecibir.ParamByName('Fecha').AsDateTime:=CDSOCompraFECHA.AsDateTime;
  spRecibir.ExecProc;
  spRecibir.Close;
  Buscar.Execute;
end;

procedure TFormOCompraRecepcion.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
  //  Desde.SetFocus;
end;

procedure TFormOCompraRecepcion.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSOCompra.Close;
  CDSOCompra.IndexDefs.Clear;
  CDSOCompra.IndexName:='';
  if chbLteFecha.Checked then
    begin
      CDSOCompra.params.parambyname('desde').Value:=  desde.Date;
      CDSOCompra.params.parambyname('hasta').Value:=  hasta.Date;
    end
  else
    begin
      CDSOCompra.params.parambyname('desde').Value:= EncodeDate(1000,1,1);
      CDSOCompra.params.parambyname('hasta').Value:= EncodeDate(9900,1,1);
    end;
  if chTodoLosProvee.Checked then
    CDSOCompra.params.parambyname('codigo').Value:= '******'
  else
    CDSOCompra.params.parambyname('codigo').Value:= ceProveedor.Text;

  CDSOCompra.params.ParamByName('Sucursal').Value := dbcSucursal.KeyValue;

  CDSOCompra.Open;
  dbgOCompra.Width:=dbgOCompra.Width+1;
  dbgOCompra.Width:=dbgOCompra.Width-1;
end;

procedure TFormOCompraRecepcion.BuscarProveedorExecute(Sender: TObject);
BEGIN
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
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
        END;
    END;
//  QProveedores.Close;
END;

procedure TFormOCompraRecepcion.ceProveedorKeyPress(Sender: TObject;
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
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
//          CorreoDestino          := CDSProveedorCORREO.Value;
        end;
    //  TraerCtaCte.Execute;
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

procedure TFormOCompraRecepcion.chbLteFechaClick(Sender: TObject);
begin
  inherited;
  Desde.Enabled:=chbLteFecha.Checked;
  Hasta.Enabled:=chbLteFecha.Checked;
  UpDown1.Enabled:=chbLteFecha.Checked;
  Buscar.Execute;
end;

procedure TFormOCompraRecepcion.chTodoLosProveeClick(Sender: TObject);
begin
  inherited;
   ceProveedor.Enabled:=Not(chTodoLosProvee.Checked);
   Buscar.Execute;
end;

procedure TFormOCompraRecepcion.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSSucursal.Open;
  CDSOCompra.Close;
  CDSOCompra.Open;
end;

procedure TFormOCompraRecepcion.FormActivate(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormOCompraRecepcion.dbgOCompraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (x>dbgOCompra.Left+5) and (x<dbgOCompra.Left+dbgOCompra.Width-5) and (y>dbgOCompra.Top) and (y<dbgOCompra.Top+16) Then
    sbEstado.SimpleText:=' Haciendo clik sobre el titulo se ordenan por ese Nombre'
  else
    sbEstado.SimpleText:='';
end;

procedure TFormOCompraRecepcion.dbgOCompraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:string;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgOCompra.DataSource.DataSet as TClientDataSet do
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

procedure TFormOCompraRecepcion.AnularExecute(Sender: TObject);
begin
  inherited;
  spAnular.Close;
  spAnular.ParamByName('id').Value:=CDSOCompraID_OC.Value;
  spAnular.ExecProc;
  spAnular.Close;
  Buscar.Execute;
end;

end.
