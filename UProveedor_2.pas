unit UProveedor_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBCtrls, StdCtrls, Grids, DBGrids,
  ExtCtrls, Mask, ComCtrls,Librerias, Db, ActnList, ImgList,
  Buttons, ToolWin, frxDBSet, frxClass,Variants, JvComponentBase,
  JvExControls, JvGradient, JvExDBGrids, JvDBGrid,  frxExportPDF,
  DataExport, DataToXLS,StrUtils,
  JvExComCtrls, JvDBTreeView, JvExMask, JvToolEdit, JvDBLookup,
  JvDBLookupComboEdit,dbclient, JvLabel, JvDBControls, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, JvFormPlacement, FMTBcd, SqlExpr,DBXCommon,JvMaskEdit, JvDBFindEdit,
  UCtaContables, System.Actions, JvAppStorage, JvAppIniStorage, CompBuscador,VirtualUI_SDK,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportBaseDialog, System.ImageList, AdvGroupBox, AdvDBLookupComboBox,
  Vcl.Menus, frCoreClasses,Vcl.Clipbrd;

type
  TFormProveedor_2 = class(TFormABMBase)
    pcGeneral: TPageControl;
    Pagina1: TTabSheet;
    pcDatos: TPageControl;
    Pag1: TTabSheet;
    Bevel5: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    dbtLocalidad: TDBText;
    dbtCPostal: TDBText;
    dbeCodigo: TDBEdit;
    dbeNombre: TDBEdit;
    dbeRaznSocial: TDBEdit;
    dbeNdeCuenta: TDBEdit;
    dbeDireccion: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    dbchActivo: TDBCheckBox;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    dbtTelediscado: TDBText;
    dbeTelefono2: TDBEdit;
    dbeTelefono1: TDBEdit;
    Pag2: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label13: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    dbtPercepIva: TDBText;
    dbtPercepIB: TDBText;
    dbeNCuit: TDBEdit;
    GroupBox2: TGroupBox;
    dbchRetieneIVA: TDBCheckBox;
    dbchRetieneIB: TDBCheckBox;
    dbchRetieneGanancia: TDBCheckBox;
    dbchTasaServicio: TDBCheckBox;
    DBMemo1: TDBMemo;
    dbcInscripcion: TDBLookupComboBox;
    Pag3: TTabSheet;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dbeNombreRepresentante: TDBEdit;
    debDireccionRepresentante: TDBEdit;
    debTelefonoRepresentante: TDBEdit;
    Pagina2: TTabSheet;
    BuscarCPostal: TAction;
    BuscarPercepIB: TAction;
    BuscarPercepIva: TAction;
    BuscarCondCompra: TAction;
    Listar: TAction;
    Imprimir: TAction;
    ToolButton1: TToolButton;
    frProveedore: TfrxReport;
    frDBDSProveedore: TfrxDBDataset;
    ImageList2: TImageList;
    rgEstado: TRadioGroup;
    dbcRubros: TDBLookupComboBox;
    dbcRubros_2: TDBLookupComboBox;
    chRubros: TCheckBox;
    Label14: TLabel;
    Label17: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    dbgCondCompra: TDBGrid;
    GroupBox3: TGroupBox;
    chExentoRetencioGanancia: TDBCheckBox;
    dbcRetencionesGanancias: TDBLookupComboBox;
    chExentoRetencioIIBB: TDBCheckBox;
    dbcRetencionIIBB: TDBLookupComboBox;
    Label18: TLabel;
    dbeNroIIBB: TDBEdit;
    dbeCorreo: TDBEdit;
    Label19: TLabel;
    Pag4: TTabSheet;
    dbgCompras: TJvDBGrid;
    dbgDetalles: TJvDBGrid;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    UpDown1: TUpDown;
    TraerCompras: TAction;
    BitBtn2: TBitBtn;
    lbTotal: TLabel;
    Label24: TLabel;
    dbgTotales: TJvDBGrid;
    Label25: TLabel;
    Bevel6: TBevel;
    DBText1: TDBText;
    DBCheckBox1: TDBCheckBox;
    DataToXLS1: TDataToXLS;
    dlgSave1: TSaveDialog;
    btExcel: TBitBtn;
    Pagina3: TTabSheet;
    dbgArticulos: TJvDBGrid;
    BitBtn4: TBitBtn;
    ListarArticulos: TAction;
    dbcSubRubro: TJvDBLookupCombo;
    dbcRubro: TJvDBLookupCombo;
    dbcMarca: TJvDBLookupCombo;
    BitBtn5: TBitBtn;
    ImprimirArticulos: TAction;
    frDBArticulos: TfrxDBDataset;
    BuscarArticulo: TAction;
    dbstArticulos: TJvDBStatusLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBNavigator1: TDBNavigator;
    img1: TImage;
    MarcarDefecto: TAction;
    lb1: TLabel;
    dbeULTIMA_COMPRA: TDBEdit;
    RxDBIdPostal: TJvDBComboEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    dbdateUltimaCompra: TJvDBDateEdit;
    dbDateAlta: TJvDBDateEdit;
    RxDBPercepcionIva: TJvDBComboEdit;
    cePercepcionIIBB: TJvDBComboEdit;
    cePercepcionIIBB_2: TJvDBComboEdit;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    dbgListaProveedores: TJvDBGrid;
    dbsArticulo: TJvDBFindEdit;
    FrameCtaContable1: TFrameCtaContable;
    Panel2: TPanel;
    Label27: TLabel;
    lcRubros: TJvDBLookupCombo;
    Label26: TLabel;
    lcCuentas: TJvDBLookupCombo;
    Label28: TLabel;
    DBCheckBox2: TDBCheckBox;
    BitBtn1: TBitBtn;
    Label29: TLabel;
    btImprimir: TBitBtn;
    btImprimirFicha: TBitBtn;
    ImprimirFicha: TAction;
    frDBProveedor: TfrxDBDataset;
    SpeedButton1: TSpeedButton;
    ActualizaCuitFc: TAction;
    frxPDFExport1: TfrxPDFExport;
    Label30: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    ComBuscadorPercIVA: TComBuscador;
    ComBuscadorPercIIBB: TComBuscador;
    ComBuscadorLocalidad: TComBuscador;
    ComBuscadorFPago: TComBuscador;
    dbchRetcioinIVA: TDBCheckBox;
    edTasaRet: TDBEdit;
    Label34: TLabel;
    chOrden: TCheckBox;
    TabSheet1: TTabSheet;
    AdvGroupBox1: TAdvGroupBox;
    DBEdit1: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    DBComboBox1: TDBComboBox;
    Label33: TLabel;
    DBEdit2: TDBEdit;
    Label35: TLabel;
    DSRegimenIva: TDataSource;
    dbcRegimenRet: TJvDBLookupCombo;
    SincronizaAListaPreciosProveedor: TAction;
    PopupMenu1: TPopupMenu;
    SincronizaAListaPreciosProveedor1: TMenuItem;
    Label36: TLabel;
    DBEdit3: TDBEdit;
    dbgMarcasProveedor: TDBGrid;
    ComBuscadorMarcas: TComBuscador;
    BuscarMarcas: TAction;
    Label37: TLabel;
    PopupMenuClipBoard: TPopupMenu;
    CopiarPortaPapeles1: TMenuItem;
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarCPostalExecute(Sender: TObject);
    procedure BuscarPercepIBExecute(Sender: TObject);
    procedure BuscarPercepIvaExecute(Sender: TObject);
    procedure BuscarCondCompraExecute(Sender: TObject);
    procedure ListarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbgCondCompraColEnter(Sender: TObject);
    procedure dbgCondCompraEditButtonClick(Sender: TObject);
    procedure dbgCondCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgCondCompraKeyPress(Sender: TObject; var Key: Char);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
//    procedure wwDBGProveeTitleButtonClick(Sender: TObject;
//      AFieldName: String);
    procedure FormShow(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure dbchRetieneIVAClick(Sender: TObject);
    procedure dbchRetieneIBClick(Sender: TObject);
    procedure dbeNdeCuentaExit(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbcRubrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chRubrosClick(Sender: TObject);
    procedure dbcRubros_2Click(Sender: TObject);
    procedure chExentoRetencioGananciaClick(Sender: TObject);
    procedure chExentoRetencioIIBBClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure TraerComprasExecute(Sender: TObject);
    procedure dbgDetallesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cePercepcionIIBBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBPercepcionIvaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cePercepcionIIBB_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btExcelClick(Sender: TObject);
    procedure ListarArticulosExecute(Sender: TObject);
    procedure dbcRubroClick(Sender: TObject);
    procedure dbgArticulosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgArticulosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ImprimirArticulosExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure dbgArticulosKeyPress(Sender: TObject; var Key: Char);
    procedure MarcarDefectoExecute(Sender: TObject);
    procedure dbgListaProveedoresTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgListaProveedoresDblClick(Sender: TObject);
    procedure dbgArticulosColEnter(Sender: TObject);
    procedure lcRubrosClick(Sender: TObject);
    procedure lcCuentasEnter(Sender: TObject);
    procedure lcRubrosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImprimirFichaExecute(Sender: TObject);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActualizaCuitFcExecute(Sender: TObject);
    procedure dbeCodigoExit(Sender: TObject);
    procedure dbcRetencionesGananciasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcRetencionIIBBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbchRetcioinIVAClick(Sender: TObject);
    procedure chOrdenClick(Sender: TObject);
    procedure SincronizaAListaPreciosProveedorExecute(Sender: TObject);
    procedure BuscarMarcasExecute(Sender: TObject);
    procedure dbgMarcasProveedorColEnter(Sender: TObject);
    procedure dbgMarcasProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure CopiarPortaPapeles1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private
    procedure CheckAndCopyIfMouseOver(Control: TControl);
    procedure CopyEditText(Edit: TEdit);
    procedure CheckControlsInPageControl(PageControl: TPageControl);
    { Private declarations }
  public
    procedure EditEnter(sender:TObject);
    { Public declarations }
  end;

var
  FormProveedor_2: TFormProveedor_2;

implementation

uses DMProveedores, UBuscadorProveedor, UBuscadorArticulos,
  UDMain_FD, DMStoreProcedureForm, DMContableForm;

{$R *.DFM}


procedure TFormProveedor_2.CopyEditText(Edit: TEdit);
begin
  if not Edit.Enabled then
  begin
    // Habilitar temporalmente el TEdit para copiar su contenido
    Edit.Enabled := True;
    Clipboard.AsText := Edit.Text;  // Copiamos el contenido al portapapeles
    Edit.Enabled := False;  // Deshabilitar nuevamente el TEdit
  end;
end;

procedure TFormProveedor_2.CheckAndCopyIfMouseOver(Control: TControl);
var
  MousePos: TPoint;
begin
  if Control is TEdit then
  begin
    // Obtener la posición relativa del mouse al control padre (TabSheet en este caso)
    MousePos := TTabSheet(Control.Parent).ScreenToClient(Mouse.CursorPos);

    // Verificar si el mouse está sobre el control (TEdit)
    if (MousePos.X > Control.Left) and (MousePos.X < Control.Left + Control.Width) and
       (MousePos.Y > Control.Top) and (MousePos.Y < Control.Top + Control.Height) then
    begin
      // Copiar el contenido al portapapeles cuando el mouse esté sobre el TEdit
      CopyEditText(TEdit(Control));
    end;
  end;
end;


procedure TFormProveedor_2.CheckControlsInPageControl(PageControl: TPageControl);
var
  i, j: Integer;
  TabSheet: TTabSheet;
begin
  // Iterar por todos los TabSheets del PageControl
  for i := 0 to pcGeneral.PageCount - 1 do
  begin
    TabSheet := pcDatos.Pages[i];

    // Recorrer todos los controles dentro del TabSheet
    for j := 0 to TabSheet.ControlCount - 1 do
    begin
      // Si es un PageControl anidado, se hace la misma verificación recursivamente
      if TabSheet.Controls[j] is TPageControl then
        CheckControlsInPageControl(TPageControl(TabSheet.Controls[j]))
      else
        CheckAndCopyIfMouseOver(TabSheet.Controls[j]);  // Verificar si es un TEdit y está el mouse sobre él
    end;
  end;
end;


procedure TFormProveedor_2.ActualizaCuitFcExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Esta Operación, actualiza el Nro de Cuit'+#13+
                'en todos los comprobantes de compra asociados a este Proveedor'+#13+
                '... esta seguro..???',mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
  begin
    DMMain_FD.fdcGestion.StartTransaction;
    try
      DatosProveedores.QActualizaCuitFc.Close;
      DatosProveedores.QActualizaCuitFc.ParamByName('Codigo').Value:=DatosProveedores.CDSProveedorCODIGO.Value;
      DatosProveedores.QActualizaCuitFc.ExecSQL();
      DMMain_FD.fdcGestion.Commit;
    Except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se pudo Modificar los Cuit...!!!');
    end;
  end;

end;

procedure TFormProveedor_2.AgregarExecute(Sender: TObject);
begin
  DatosProveedores.CDSProveedor.EmptyDataSet;
  DatosProveedores.CDSCondCompra.EmptyDataSet;
  DatosProveedores.CDSProveedor.Close;
  DatosProveedores.CDSProveedor.Params.ParamByName('codigo').Clear;
  DatosProveedores.CDSCondCompra.Close;
  DatosProveedores.CDSCondCompra.Params.ParamByName('codigo').Clear;

  DatosProveedores.CDSProveedor.Open;
  DatosProveedores.CDSCondCompra.Open;
  DatosProveedores.CDSArticulosProveedor.Close;
  DatosProveedores.CDSArticulosProveedor.Params.ParamByName('codigo').Clear;
  DatosProveedores.CDSArticulosProveedor.Open;


  inherited;
  pcGeneral.ActivePageIndex := 0;
  pcDatos.ActivePageIndex   := 0;
  dbeNombre.SetFocus;
end;

procedure TFormProveedor_2.CancelarExecute(Sender: TObject);
begin
  DatosProveedores.CDSProveedor.Cancel;
  IF DatosProveedores.CDSCondCompra.state <> dsBrowse THEN
    DatosProveedores.CDSCondCompra.Cancel;
  DatosProveedores.CDSProveedor.EmptyDataSet;
  DatosProveedores.CDSCondCompra.EmptyDataSet;
  DatosProveedores.CDSProveedor.Close;
  DatosProveedores.CDSCondCompra.Close;
  DatosProveedores.CDSProveedor.Open;
  DatosProveedores.CDSCondCompra.Open;

  inherited;
  DatosProveedores.CDSProveedor.Close;
  DatosProveedores.CDSProveedor.Params.ParamByName('codigo').clear;
  DatosProveedores.CDSProveedor.OPen;
  DatosProveedores.CDSCondCompra.Close;
  DatosProveedores.CDSCondCompra.Params.ParamByName('codigo').clear;
  DatosProveedores.CDSCondCompra.OPen;
  DatosProveedores.CDSArticulosProveedor.Close;
  DatosProveedores.CDSArticulosProveedor.Params.ParamByName('codigo').Clear;
  DatosProveedores.CDSArticulosProveedor.Open;

  DatosProveedores.CDSMarcaProveedor.Close;
  DatosProveedores.CDSMarcaProveedor.Params.ParamByName('codigo').Clear;
  DatosProveedores.CDSMarcaProveedor.Open;


  pcGeneral.ActivePageIndex:=0;
  pcDatos.ActivePageIndex:=0;
  btNuevo.SetFocus;
end;

procedure TFormProveedor_2.ConfirmaExecute(Sender: TObject);
var i:integer;
begin

  DatosProveedores.QBuscaCodigo.Close;
  DatosProveedores.QBuscaCodigo.ParamByName('codigo').Value:=DatosProveedores.CDSProveedorCODIGO.AsString;
  DatosProveedores.QBuscaCodigo.Open;
  if (Not(DatosProveedores.QBuscaCodigo.IsEmpty)) and (DSBase.State=dsInsert) Then
   RAISE Exception.Create('Codigo ya ingresado ...VERIFICAR...');
  DatosProveedores.QBuscaCodigo.Close;


  if (DatosProveedores.CDSProveedorRETIENE_IB.AsString='S') and
     (VarIsNull(DatosProveedores.CDSProveedorID_PERC_IBB.Value) or
      (DatosProveedores.CDSProveedorDESPERIB.Value='') )
  then
   RAISE Exception.Create('No se asigno codigo de retencion de IIBB...');

  if (DatosProveedores.CDSProveedorRETIENE_IVA.AsString='S') and
     (VarIsNull(DatosProveedores.CDSProveedorID_PERC_IVA.Value) or
     (DatosProveedores.CDSProveedorDESPERIVA.Value=''))
  then
   RAISE Exception.Create('No se asigno codigo de Percecpio de IVA...');

  if (DatosProveedores.CDSProveedorRETENCION_IVA.AsString='S') and
     (VarIsNull(DatosProveedores.CDSProveedorCODIGO_RET_IVA.Value))
  then
   RAISE Exception.Create('No se asigno codigo de Retencion de IVA...');



  IF DatosProveedores.CDSCondCompra.state <> dsBrowse THEN
    DatosProveedores.CDSCondCompra.Post;
  if DatosProveedores.CDSProveedorCONDICION_IVA.AsString<>'' Then
    if DatosProveedores.CDSProveedorNOMBRE.AsString<>'' Then
      begin
        {
        for I := 0 to DatosProveedores.CDSProveedor.FieldCount - 1 do
          begin
            if (DatosProveedores.CDSProveedor.Fields[i].Required=True) then
              ShowMessage(DatosProveedores.CDSProveedor.Fields[i].FieldName+'='+
              DatosProveedores.CDSProveedor.Fields[i].AsString);
          end;
         } 
        if DatosProveedores.CDSProveedor.State in [dsInsert,dsEdit] Then
          DatosProveedores.CDSProveedor.Post;
        DatosProveedores.ReAsignaFPago;
        DatoNew:=DatosProveedores.CDSProveedorCODIGO.AsString;
        inherited;
        Recuperar.Execute;
        btNuevo.SetFocus;
      end
    else
      ShowMessage('Falta indicar el nombre....')
  else
    ShowMessage('Falta indicar Condición de Iva....');
 // pcGeneral.ActivePageIndex:=0;
 // pcDatos.ActivePageIndex:=0;
end;

procedure TFormProveedor_2.CopiarPortaPapeles1Click(Sender: TObject);
begin
  inherited;
  if ActiveControl is TDBEdit then
  begin
    Clipboard.AsText := (ActiveControl as TDBEdit).Text;
  end;
end;

procedure TFormProveedor_2.BorrarExecute(Sender: TObject);
var Con_Movimiento:Boolean;
Detalle:String;
begin
//  inherited;
  Con_Movimiento:=False;

  DatosProveedores.QHayFacProvee.Close;
  DatosProveedores.QHayFacProvee.ParamByName('Codigo').Value := DatosProveedores.CDSProveedorCODIGO.Value;
  DatosProveedores.QHayFacProvee.open;

  DatosProveedores.QHayMovCC.Close;
  DatosProveedores.QHayMovCC.ParamByName('Codigo').Value := DatosProveedores.CDSProveedorCODIGO.Value;
  DatosProveedores.QHayMovCC.open;


  if (DatosProveedores.QHayFacProvee.Fields[0].AsString<>'') Then Con_Movimiento:=True;
  if (DatosProveedores.QHayMovCC.Fields[0].AsString<>'') Then Con_Movimiento:=True;

  IF (Con_Movimiento=True) THEN
    begin
     iF MessageDlg('Está por hacer una opreación de borrado, pero el regsitro'+ #13 +
       'sera pasado al modo INACTIVO, sin que se borre de la base de datos.' + #13+
       'Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes THEN
      BEGIN
        DatosProveedores.CDSProveedor.Edit;
        DatosProveedores.CDSProveedorACTIVO.Value := 'N';
        //DatosProveedores.wwCDSProvee.Post;
        Confirma.Execute;
      END;
    end
  else
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosProveedores.CDSProveedor.Delete;
        DatosProveedores.CDSProveedor.ApplyUpdates(0);
        // **** Ingreso en el Log File  **************
        Detalle:=  'Borrado de Proveedor: '+
                    DatosProveedores.CDSProveedorCODIGO.Value+'-'+
                    DatosProveedores.CDSProveedorNOMBRE.Value;

        DMMain_FD.LogFileFD(0,4,Detalle,'PROVEEDOR');

        {
        DMStoreProcedure.spGravarLogDBX.Close;
        DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 4;
        DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Borrado de Proveedor: '+
                                                              DatosProveedores.CDSProveedorCODIGO.Value+'-'+
                                                              DatosProveedores.CDSProveedorNOMBRE.Value;
        DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString   :='PROVEEDOR';
        DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString  :=DMMain_FD.UsuarioActivo;
        DMStoreProcedure.spGravarLogDBX.ExecProc;
        DMStoreProcedure.spGravarLogDBX.Close;
        }
        // ******************************************

        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo borrar el registro....!!!');
      end;
      DatosProveedores.CDSProveedor.Close;
      DatosProveedores.CDSProveedor.Params.ParamByName('codigo').Clear;
      DatosProveedores.CDSProveedor.Open;

      DatosProveedores.CDSCondCompra.Close;
      DatosProveedores.CDSCondCompra.Params.ParamByName('codigo').Clear;
      DatosProveedores.CDSCondCompra.Open;

      DatosProveedores.CDSArticulosProveedor.Close;
      DatosProveedores.CDSArticulosProveedor.Params.ParamByName('codigo').Clear;
      DatosProveedores.CDSArticulosProveedor.Open;
    END;

  DatosProveedores.QHayFacProvee.Close;
  DatosProveedores.QHayMovCC.open;

  pcGeneral.ActivePageIndex:=0;
  pcDatos.ActivePageIndex:=0;
end;

procedure TFormProveedor_2.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  iF NOT(DatosProveedores.DSLstProveedores.DataSet.IsEmpty) THEN
    BEGIN
      dlgSave1.FileName:='Proveedores';
      dlgSave1.DefaultExt:='XLS';

      if VirtualUI.Active then
        dlgSave1.FileName:=DlgSave1.FileName+'.'+DlgSave1.DefaultExt;

      if dlgSave1.Execute Then
        if dlgSave1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS1.SaveToFile(dlgSave1.FileName)
            else
              DataToXLS1.SaveToFile(dlgSave1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(dlgSave1.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormProveedor_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''N'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       DatoNew:=FormBuscadorProveedor.Codigo;
       Recuperar.Execute;
     end;

  pcGeneral.ActivePageIndex := 0;
  pcDatos.ActivePageIndex   := 0;
end;


procedure TFormProveedor_2.BuscarMarcasExecute(Sender: TObject);
begin
  inherited;
  DatosProveedores.CDSBuscaMarca.Close;
  DatosProveedores.CDSBuscaMarca.Open;
  ComBuscadorMarcas.Execute;
  IF ComBuscadorMarcas.rOk THEN
    DatosProveedores.CDSMarcaProveedorMARKASetText(DatosProveedores.CDSMarcaProveedorMARKA,ComBuscadorMarcas.id);
  DatosProveedores.CDSBuscaMarca.Close;
end;

procedure TFormProveedor_2.BuscarCPostalExecute(Sender: TObject);
begin
  inherited;
  DatosProveedores.CDSBuscaCPostal.Close;
  DatosProveedores.CDSBuscaCPostal.Open;
  ComBuscadorLocalidad.Execute;
  IF ComBuscadorLocalidad.rOk THEN
    DatosProveedores.CDSProveedorID_COD_POSTALSetText(DatosProveedores.CDSProveedorID_COD_POSTAL,IntToStr(comBuscadorLocalidad.Id));

  DatosProveedores.CDSBuscaCPostal.Close;
end;

procedure TFormProveedor_2.BuscarPercepIBExecute(Sender: TObject);
begin
  inherited;
  DatosProveedores.CDSBuscaPercepIB.Close;
  DatosProveedores.CDSBuscaPercepIB.Open;
  ComBuscadorPercIIBB.Execute;
  IF ComBuscadorPercIIBB.rOk THEN
    IF DatosProveedores.CDSProveedor.State IN [dsEdit, dsInsert] THEN
      if (Sender as TJvDBComboEdit).Name='cePercepcionIIBB' then
        DatosProveedores.CDSProveedorID_PERC_IBBSetText(DatosProveedores.CDSProveedorID_PERC_IBB,ComBuscadorPercIIBB.id)
      else
       if (Sender as TJvDBComboEdit).Name='cePercepcionIIBB_2' then
          DatosProveedores.CDSProveedorID_PERC_IBB_2SetText(DatosProveedores.CDSProveedorID_PERC_IBB_2,ComBuscadorPercIIBB.id);

  DatosProveedores.CDSBuscaPercepIB.Close;

end;

procedure TFormProveedor_2.BuscarPercepIvaExecute(Sender: TObject);
begin
  inherited;
  DatosProveedores.CDSBuscaPercepIVA.Close;
  DatosProveedores.CDSBuscaPercepIVA.Open;

  ComBuscadorPercIVA.Execute;
  IF ComBuscadorPercIVA.rOk THEN
    IF DatosProveedores.CDSProveedor.State IN [dsEdit, dsInsert] THEN
      DatosProveedores.AsignaPercepIva(ComBuscadorPercIVA.Id);

  DatosProveedores.CDSBuscaPercepIVA.Close;
end;

procedure TFormProveedor_2.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  // si el proveedore es mercaderias y/o servicios
  if (DatosProveedores.CDSProveedorTIPO_PROVEEDOR.AsString='M') or
     (DatosProveedores.CDSProveedorTIPO_PROVEEDOR.AsString='A') Then
    begin
      FormBuscadorArticulos.Param1:=3;
      FormBuscadorArticulos.Param2:=1;
    end
  else
    // si el proveedor es solo de servicios
    if (DatosProveedores.CDSProveedorTIPO_PROVEEDOR.AsString='G') Then
      begin
        FormBuscadorArticulos.Param1:=4;
        FormBuscadorArticulos.Param2:=5;
      end;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    DatosProveedores.CDSArticulosProveedorCODIGO_STKSetText(DatosProveedores.CDSArticulosProveedorCODIGO_STK, FormBuscadorArticulos.Codigo);

end;

procedure TFormProveedor_2.BuscarCondCompraExecute(Sender: TObject);
begin
  inherited;
  DatosProveedores.CDSBuscaFPago.Close;
  DatosProveedores.CDSBuscaFPago.Open;
  comBuscadorFPago.Execute;
  if comBuscadorFPago.rok Then
     DatosProveedores.CDSCondCompraCodigoPagoSetText(DatosProveedores.CDSCondCompraCODIGOPAGO, IntToStr(comBuscadorFPago.Id));
  DatosProveedores.CDSBuscaFPago.Close;
end;

procedure TFormProveedor_2.ListarArticulosExecute(Sender: TObject);
begin
  inherited;
  DatosProveedores.CDSArticulosProveedor.Close;
  DatosProveedores.CDSArticulosProveedor.IndexDefs.Clear;
  DatosProveedores.CDSArticulosProveedor.IndexName:='';
  DatosProveedores.CDSArticulosProveedor.Params.ParamByName('codigo').Value  :=DatosProveedores.CDSProveedorCODIGO.AsString;
  DatosProveedores.CDSArticulosProveedor.Params.ParamByName('marca').Value   :=dbcMarca.KeyValue;
  DatosProveedores.CDSArticulosProveedor.Params.ParamByName('rubro').Value   :=dbcRubro.KeyValue;
  DatosProveedores.CDSArticulosProveedor.Params.ParamByName('subrubro').Value:=dbcSubRubro.KeyValue;
  DatosProveedores.CDSArticulosProveedor.Open;

end;

procedure TFormProveedor_2.ListarExecute(Sender: TObject);
begin
  inherited;
  DatosProveedores.CDSLstProveedores.IndexDefs.Clear;
  DatosProveedores.CDSLstProveedores.IndexName:='';

  DatosProveedores.CDSLstProveedores.Close;
  if rgEstado.ItemIndex=0 Then
    begin
      if chRubros.Checked=False Then
        DatosProveedores.CDSLstProveedores.CommandText:=
        'select p.codigo,p.Nombre,p.Razon_social,p.direccion,i.detalle as MuestraInscripcion,p.n_de_cuit,p.cod_postal,p.localidad,p.telefono_1,p.telefono_2,p.correo,r.detalle as MuestraRubro,p.observaciones from poveedor p '+
        'left join inscripcion i on i.codigo=p.condicion_iva '+
        'left join Rubros_proveedores r on r.id=p.rubro '+
        'where p.activo=''S'' order by p.nombre'
      ELSE
        DatosProveedores.CDSLstProveedores.CommandText:=
        'select p.codigo,p.Nombre,p.Razon_social,p.direccion,i.detalle as MuestraInscripcion,p.n_de_cuit,p.cod_postal,p.localidad,p.telefono_1,p.telefono_2,p.correo,r.detalle as MuestraRubro,p.observaciones from poveedor p '+
        'left join inscripcion i on i.codigo=p.condicion_iva '+
        'left join Rubros_proveedores r on r.id=p.rubro '+
        'where p.activo=''S'' and p.rubro='+''+IntToStr(dbcRubros_2.keyValue)+''+' order by p.nombre'
     END
   else
  if rgEstado.ItemIndex=1 Then
    begin
      if chRubros.Checked=False Then
        DatosProveedores.CDSLstProveedores.CommandText:=
        'select p.codigo,p.Nombre,p.Razon_social,p.direccion,i.detalle as MuestraInscripcion,p.n_de_cuit,p.cod_postal,p.localidad,p.telefono_1,p.telefono_2,p.correo,r.detalle as MuestraRubro,p.observaciones from poveedor p '+
        'left join inscripcion i on i.codigo=p.condicion_iva '+
        'left join Rubros_proveedores r on r.id=p.rubro '+
        'where p.activo=''N'' order by p.nombre'
      else
        DatosProveedores.CDSLstProveedores.CommandText:=
        'select p.codigo,p.Nombre,p.Razon_social,p.direccion,i.detalle as MuestraInscripcion,p.n_de_cuit,p.cod_postal,p.localidad,p.telefono_1,p.telefono_2,p.correo,r.detalle as MuestraRubro,p.observaciones from poveedor p '+
        'left join inscripcion i on i.codigo=p.condicion_iva '+
        'left join Rubros_proveedores r on r.id=p.rubro '+
        'where p.activo=''N'' and p.rubro='+''+IntToStr(dbcRubros_2.keyValue)+''+' order by p.nombre';
    end;
   DatosProveedores.CDSLstProveedores.Open;
end;

procedure TFormProveedor_2.ImprimirArticulosExecute(Sender: TObject);
begin
  inherited;

  IF NOT (DatosProveedores.CDSArticulosProveedor.IsEmpty) THEN
    BEGIN
      DatosProveedores.CDSArticulosProveedor.IndexFieldNames:='rubro_stk;subrubro_stk;detalle_stk';
      frProveedore.PrintOptions.Printer:=PrNomListados;
      frProveedore.SelectPrinter;
      frProveedore.LoadFromFile(DMMain_FD.PathReportesLst+'\ArtiProv.fr3');
      frProveedore.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para listar...');

end;

procedure TFormProveedor_2.ImprimirExecute(Sender: TObject);
BEGIN
  
  IF NOT (DatosProveedores.CDSLstProveedores.IsEmpty) THEN
    BEGIN
      frProveedore.PrintOptions.Printer:=PrNomListados;
      frProveedore.SelectPrinter;
      frProveedore.LoadFromFile(DMMain_FD.PathReportesLst+'\Proveedores.fr3');
      frProveedore.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para listar...');

end;

procedure TFormProveedor_2.ImprimirFichaExecute(Sender: TObject);
begin
  inherited;
 
  IF NOT (DSBase.DataSet.IsEmpty) THEN
    BEGIN
      frProveedore.PrintOptions.Printer:=PrNomListados;
      frProveedore.SelectPrinter;
      frProveedore.LoadFromFile(DMMain_FD.PathReportesLst+'\FichaProveedores.fr3');
      frProveedore.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para Imprimir...');
end;

procedure TFormProveedor_2.dbgDetallesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if gdSelected in State Then
     begin
       dbgDetalles.Canvas.Font.Color:=clWhite;
       dbgDetalles.Canvas.Brush.Color:=clNavy ;
     end
  else
begin
  if DatosProveedores.CDSDetalleComprasTIPOCPBTE.Value='NC' then
    dbgDetalles.Canvas.Font.Color:=clRed
  else
    dbgDetalles.Canvas.Font.Color:=clDefault;
end;

  dbgDetalles.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormProveedor_2.lcCuentasEnter(Sender: TObject);
begin
  inherited;
  DatosProveedores.CDSCuentas.close;
  DatosProveedores.CDSCuentas.Params.ParamByName('rubro').Value:=lcRubros.KeyValue;
  DatosProveedores.CDSCuentas.Open;
end;

procedure TFormProveedor_2.lcCuentasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (Key=VK_DELETE) then
    begin
 //     DatosProveedores.CDSProveedorRUBRO_GASTO.Clear;
      DatosProveedores.CDSProveedorSUB_RUB_GASTOS.Clear;
    end;

end;

procedure TFormProveedor_2.lcRubrosClick(Sender: TObject);
begin
  inherited;
  DatosProveedores.CDSProveedorSUB_RUB_GASTOS.Clear;
  DatosProveedores.CDSCuentas.Close;
  DatosProveedores.CDSCuentas.Params.ParamByName('RUBRO').Value:=DatosProveedores.CDSRubrosCODIGO.Value;
  DatosProveedores.CDSCuentas.Open;

end;

procedure TFormProveedor_2.lcRubrosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (Key=VK_DELETE) then
    begin
      DatosProveedores.CDSProveedorSUB_RUB_GASTOS.Clear;
    end;
  
end;

procedure TFormProveedor_2.dbgListaProveedoresDblClick(Sender: TObject);
begin
  inherited;
  if Not(DatosProveedores.CDSLstProveedores.IsEmpty) Then
    begin
      DatosProveedores.CDSProveedor.Close;
      DatosProveedores.CDSProveedor.Params.ParamByName('codigo').Value     := dbgListaProveedores.Fields[0].AsString;
      DatosProveedores.CDSProveedor.Open;
      DatosProveedores.CDSCondCompra.Close;
      DatosProveedores.CDSCondCompra.Params.ParamByName('Codigo').Value    := dbgListaProveedores.Fields[0].AsString;
      DatosProveedores.CDSCondCompra.Open;
      pcGeneral.ActivePageIndex:=0;
      pcDatos.ActivePageIndex:=0;
    end;

end;

procedure TFormProveedor_2.dbgListaProveedoresTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgListaProveedores.DataSource.DataSet as TClientDataSet do
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

procedure TFormProveedor_2.dbgMarcasProveedorColEnter(Sender: TObject);
begin
  inherited;
  if (dbgMarcasProveedor.SelectedIndex>0) Then
    dbgMarcasProveedor.SelectedIndex:=0;
end;

procedure TFormProveedor_2.dbgMarcasProveedorKeyPress(Sender: TObject;
  var Key: Char);
var Tope:Integer;
begin
  inherited;
  Tope:=1;
//  else
  //  Tope:=9;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgMarcasProveedor.SelectedIndex < Tope) THEN
        dbgMarcasProveedor.SelectedIndex := dbgMarcasProveedor.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgMarcasProveedor.DataSource.DataSet.Eof THEN
            dbgMarcasProveedor.DataSource.DataSet.Append;
          dbgMarcasProveedor.SelectedIndex := 0;
          Key := #0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
        begin
          Key := #0;
          IF dbgMarcasProveedor.SelectedField = DatosProveedores.CDSMarcaProveedorMARKA THEN
            BuscarMarcas.Execute;
        end;
      END
  else
    if (key = #27) then
      dbgMarcasProveedor.DataSource.DataSet.Cancel;
end;

procedure TFormProveedor_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  WITH DatosProveedores DO
    BEGIN
      CDSProveedor.Close;
      CDSCondCompra.Close;
      CDSBuscaInscripcion.Close;
      CDSRubrosProv.Close;
      CDSListaComprobantes.Close;
      CDSListaCompCtdo.Close;
      CDSBuscaTasaRetGanacia.Close;
      CDSBuscaTasaRetIIBB.Close;
      CDSBuscaMarca.Close;
      CDSBuscaRubro.Close;
      CDSBuscaSubRubro.Close;
      CDSBuscaRegimen.Close;
    END;
  Action:=caFree;
  //FreeAndNil(DatosProveedores);
end;

procedure TFormProveedor_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  IF NOT (Assigned(DatosProveedores)) THEN
    Application.CreateForm(TDatosProveedores, DatosProveedores);
  DSBase.DataSet:=DatosProveedores.CDSProveedor;
  WITH DatosProveedores DO
    BEGIN
      AddClientDataSet(CDSProveedor, DSPProvee);
      AddClientDataSet(CDSArticulosProveedor, DSPArticulosProveedor);
      AddClientDataSet(CDSCondCompra, DSPCondCompra);
      AddClientDataSet(CDSMarcaProveedor, DSPMarcaProveedor);

      DatosProveedores.CDSProveedor.Open;// Open;
      CDSBuscaTasaRetGanacia.Open;
      CDSBuscaTasaRetIIBB.OPen;
      CDSBuscaMarca.OPen;
      CDSBuscaRubro.Open;
      CDSBuscaSubRubro.Open;
      CDSRubros.Open;
      CDSCuentas.Open;


      CDSCondCompra.Open;
      CDSArticulosProveedor.Open;
      CDSMarcaProveedor.Open;

      CDSBuscaInscripcion.Open;
      CDSRubrosProv.Open;
      CDSListaComprobantes.Open;
      CDSListaCompCtdo.Open;

      CDSProveedor.EmptyDataSet;
      CDSCondCompra.EmptyDataSet;

    END;
  AutoSize                  := True;
  pcGeneral.ActivePageIndex := 0;
  pcDatos.ActivePageIndex   := 0;
  pnPrincipal.Enabled       := True;
  pcGeneral.Enabled         := True;
  pcDatos.Enabled           := True;
  Pagina1.Enabled           := True;
  Pagina2.Enabled           := True;
  Pag1.Enabled              := False;
  Pag2.Enabled              := False;
  Pag3.Enabled              := False;
  Tabla                     := 'poveedor';
  Campo                     := 'codigo';
  dbcRubros_2.KeyValue      := DatosProveedores.CDSRubrosProv.Fields[0].AsInteger;

  var i,k,j:Integer;
  var PageControl: TPageControl;
  var TabSheet: TTabSheet;

  if pcGeneral.ActivePage = pagina1 then
  begin
    // Luego accedemos a las pestañas dentro del pagecontrol pcDatos
    for i := 0 to pcDatos.PageCount - 1 do
    begin
      TabSheet := pcDatos.Pages[i];  // Obtener cada TabSheet (pag1, pag2)
      TabSheet.Enabled := False;     // Deshabilitar inicialmente

      // Asignar el evento OnEnter y PopupMenu a los TDBEdit dentro de cada TabSheet
      for j := 0 to TabSheet.ControlCount - 1 do
      begin
        if TabSheet.Controls[j] is TDBEdit then
        begin
          // Asignar el evento OnEnter
          (TabSheet.Controls[j] as TDBEdit).OnEnter := EditEnter;

          // Asignar el PopupMenu
          (TabSheet.Controls[j] as TDBEdit).PopupMenu := PopupMenuClipBoard;  // PopupMenu1 es el nombre de tu TPopupMenu
        end;
      end;
    end;
  end;




end;

procedure TFormProveedor_2.dbgArticulosColEnter(Sender: TObject);
begin
  inherited;
  if dbgArticulos.SelectedIndex=4 then
    dbgArticulos.SelectedIndex:=3;

end;

procedure TFormProveedor_2.dbgArticulosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (DatosProveedores.CDSArticulosProveedorPORDEFECTO.Value='S') Then
    dbgArticulos.Canvas.Font.Style:=[fsBold]
  else
    dbgArticulos.Canvas.Font.Style:=[];
  dbgArticulos.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormProveedor_2.dbgArticulosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgArticulos.SelectedIndex < 3) THEN
        dbgArticulos.SelectedIndex := dbgArticulos.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgArticulos.DataSource.DataSet.Eof THEN
            dbgArticulos.DataSource.DataSet.Append;
          dbgArticulos.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      IF dbgArticulos.SelectedField = DatosProveedores.CDSArticulosProveedorCODIGO_STK THEN
        BuscarArticulo.Execute;
    END;
end;

procedure TFormProveedor_2.dbgArticulosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
 try
    Campo := Field.FieldName;
    with dbgArticulos.DataSource.DataSet as TClientDataSet do
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

procedure TFormProveedor_2.dbgCondCompraColEnter(Sender: TObject);
begin
  inherited;
  IF dbgCondCompra.SelectedIndex = 1 THEN
    dbgCondCompra.SelectedIndex := 2;
end;

procedure TFormProveedor_2.dbgCondCompraEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarCondCompra.Execute;
end;

procedure TFormProveedor_2.dbgCondCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) AND (dbgCondCompra.SelectedIndex = 2) THEN
    dbgCondCompra.SelectedIndex := 0;
end;

procedure TFormProveedor_2.dbgCondCompraKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF key = #10 THEN
    BEGIN
      Key := #0;
      BuscarCondCompra.Execute;
    END
  ELSE IF key = #13 THEN
    BEGIN
      key := #0;
      IF dbgCondCompra.SelectedIndex < 2 THEN
        dbgCondCompra.SelectedIndex := dbgCondCompra.SelectedIndex + 1
      ELSE
        BEGIN
          dbgCondCompra.DataSource.DataSet.Append;
          dbgCondCompra.SelectedIndex := 0;
        END;
    END;

end;

procedure TFormProveedor_2.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_delete Then
    DatosProveedores.CDSProveedorID_FACTURAPORDEFECTO.Clear;
end;

procedure TFormProveedor_2.DBLookupComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_delete Then
    DatosProveedores.CDSProveedorID_FACTURACTDODEFECTO.Clear;

end;

procedure TFormProveedor_2.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled        := True;
  pcGeneral.Enabled          := True;
  pcDatos.Enabled            := True;
  Pagina1.Enabled            := True;
  Pagina2.Enabled            := True;
  Pag1.Enabled               := DSBase.DataSet.State IN [dsInsert, dsEdit];
  Pag2.Enabled               := DSBase.DataSet.State IN [dsInsert, dsEdit];
  Pag3.Enabled               := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeCodigo.Enabled          := dsBase.DataSet.State=dsInsert;
  dbgCondCompra.Enabled      := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbgArticulos.ReadOnly      := (DSBase.DataSet.State=dsBrowse);
  DBNavigator1.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  FrameCtaContable1.Enabled  := DSBase.DataSet.State IN [dsInsert, dsEdit];
  ActualizaCuitFc.Enabled    :=(DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
end;

procedure TFormProveedor_2.EditEnter(sender: TObject);
begin
  if Sender is TDBEdit then
  begin
    (Sender as TDBEdit).Parent.Enabled := True;  // Habilita el TTabSheet donde está el TDBEdit
  end;
end;


procedure TFormProveedor_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormProveedor_2:=nil;
end;


procedure TFormProveedor_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // Verificar si la tecla Shift está presionada
  if (Key = VK_SHIFT) and (DSBase.DataSet.State=dsBrowse) and Not(DSBase.DataSet.IsEmpty) then
    begin
      //pnPrincipal.Enabled := True;
      //pcGeneral.Enabled   := True;
      //pcDatos.Enabled     := True;
      Pag1.Enabled        := True;
      Pag2.Enabled        := True;

      // Habilitar el panel principal
      // O habilitar alguna pestaña específica si así lo deseas:
      // pcDatos.Pages[0].Enabled := True;  // Habilitar la primera pestaña
    end;

end;

procedure TFormProveedor_2.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  begin
    if DSBase.DataSet.State=dsBrowse then
      begin
        Pag1.Enabled :=False;  // Habilitar el panel principal
        Pag2.Enabled :=False;  // Habilitar el panel principal

      end;
  end;
end;

procedure TFormProveedor_2.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);

begin
  // Obtener la pestaña activa del PageControl
   CheckControlsInPageControl(pcGeneral);
end;

procedure TFormProveedor_2.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date                      := EncodeDate(y,1,1);
  hasta.date                      := EncodeDate(y,12,31);

  RxDBPercepcionIva.Enabled       := False;
  cePercepcionIIBB.Enabled        := False;
  cePercepcionIIBB_2.Enabled      := False;
  // Contable ***************
  FrameCtaContable1.Visible       := DMMain_FD.GetUsaContabilidad;
  FrameCtaContable1.NombreTabla   := 'Poveedor';
  // ************************
  btNuevo.SetFocus;
  dbsArticulo.findMode            := fmAnyPos;
  DatosProveedores.CDSBuscaRegimen.Open;
 // DatosProveedores.DSBuscaRegimen.DataSet:=DatosProveedores.CDSBuscaRegimen;

end;

procedure TFormProveedor_2.MarcarDefectoExecute(Sender: TObject);
begin
  inherited;
  DatoNew:=DatosProveedores.CDSProveedorCODIGO.Value;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosProveedores.spMarcaProveeDefecto.Close;
    DatosProveedores.spMarcaProveeDefecto.ParamByName('codigo').Value:=DatosProveedores.CDSArticulosProveedorCODIGO_STK.Value;
    DatosProveedores.spMarcaProveeDefecto.ParamByName('id').Value    :=DatosProveedores.CDSArticulosProveedorID_PROVEESTOCK.Value;
    DatosProveedores.spMarcaProveeDefecto.ExecProc;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se marco el proveedor....!!!');
  end;
  DatosProveedores.spMarcaProveeDefecto.Close;
  Recuperar.Execute;
end;

procedure TFormProveedor_2.ModificarExecute(Sender: TObject);
begin
  inherited;
//  PageControl1.ActivePageIndex:=0;
//  PageControl2.ActivePageIndex:=0;
//  dbeNombre.SetFocus;
end;

procedure TFormProveedor_2.dbchRetieneIVAClick(Sender: TObject);
begin
  inherited;
  RxDBPercepcionIva.Enabled:=dbchRetieneIVA.Checked;
  If Not(dbchRetieneIVA.Checked) and (DSBase.State in [dsInsert,dsEdit]) Then
    begin
      DatosProveedores.CDSProveedorID_PERC_IVA.Clear;
      DatosProveedores.CDSProveedorDESPERIVA.Clear;
    end;
end;

procedure TFormProveedor_2.dbchRetieneIBClick(Sender: TObject);
begin
  inherited;
  cePercepcionIIBB.Enabled  :=dbchRetieneIB.Checked;
  cePercepcionIIBB_2.Enabled:=dbchRetieneIB.Checked;

  if Not(dbchRetieneIB.Checked) and (DSBase.State in [dsInsert,dsEdit]) Then
    begin
      DatosProveedores.CDSProveedorID_PERC_IBB.Clear;
      DatosProveedores.CDSProveedorDESPERIB.Clear;

      DatosProveedores.CDSProveedorID_PERC_IBB_2.Clear;
      DatosProveedores.CDSProveedorDESPERIB2.Clear;

    end;
end;

procedure TFormProveedor_2.dbeCodigoExit(Sender: TObject);
begin
  inherited;
  FrameCtaContable1.CodigoElemento:= dbeCodigo.Text;
end;

procedure TFormProveedor_2.dbeNdeCuentaExit(Sender: TObject);
begin
  inherited;
  pcDatos.ActivePageIndex:=1;
  dbcInscripcion.SetFocus;
end;

procedure TFormProveedor_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  FrameCtaContable1.CodigoElemento:= DatoNew;
  DatosProveedores.CDSProveedor.Close;
  DatosProveedores.CDSProveedor.Params.ParamByName('codigo').Value     := DatoNew;
  DatosProveedores.CDSProveedor.Open;
  if DMMain_FD.GetUsaContabilidad then
    begin
      FrameCtaContable1.CDSCtaContable.Close;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('Tabla').AsString := FrameCtaContable1.NombreTabla;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('Codigo').AsString:= DatoNew;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('SubIndice').AsString := '';
      FrameCtaContable1.CDSCtaContable.Open;
    end;

  DatosProveedores.CDSCondCompra.Close;
  DatosProveedores.CDSCondCompra.Params.ParamByName('Codigo').Value    := DatoNew;
  DatosProveedores.CDSCondCompra.Open;
  DatosProveedores.CDSRubros.Close;
  DatosProveedores.CDSRubros.Open;

  DatosProveedores.CDSCuentas.Close;
  DatosProveedores.CDSCuentas.Params.ParamByName('rubro').Value := AnsiRightStr( Trim(lcRubros.KeyValue),3);
  DatosProveedores.CDSCuentas.Open;

  DatosProveedores.CDSMarcaProveedor.Close;
  DatosProveedores.CDSMarcaProveedor.Params.ParamByName('codigo').Value := DatoNew;
  DatosProveedores.CDSMarcaProveedor.Open;

  //  DatosProveedores.CDSBuscadorProveedor.Close;
  DatoNew:=''+DatoNew+'';
  ListarArticulos.Execute;
end;

procedure TFormProveedor_2.RxDBPercepcionIvaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    begin
      DatosProveedores.CDSProveedorID_PERC_IVA.Clear;
      DatosProveedores.CDSProveedorDESPERIVA.Clear;
    end;
end;

procedure TFormProveedor_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frProveedore.DesignReport;
end;

procedure TFormProveedor_2.SincronizaAListaPreciosProveedorExecute(
  Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  Try
    DatosProveedores.spSincronizaListaPrecios.Close;
    DatosProveedores.spSincronizaListaPrecios.Params.ParamByName('codigo').Value:= DSBase.DataSet.FieldByName('codigo').Value;
    DatosProveedores.spSincronizaListaPrecios.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    ShowMessage('Operacion Ok ...');

  except
    DatosProveedores.spSincronizaListaPrecios.Close;
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Operacion no Realizada...');

  End;
end;

procedure TFormProveedor_2.TraerComprasExecute(Sender: TObject);
begin
  inherited;
  DatosProveedores.TotalCompra:=0;
  DatosProveedores.CDSDetalleCompras.Close;

  DatosProveedores.QZumaCompras.Close;
  DatosProveedores.QZumaCompras.ParamByName('codigo').Value:= DatosProveedores.CDSProveedorCODIGO.Value;
  DatosProveedores.QZumaCompras.ParamByName('desde').Value := Desde.Date;
  DatosProveedores.QZumaCompras.ParamByName('hasta').Value := Hasta.Date;
  DatosProveedores.QZumaCompras.ParamByName('grupo').Value := -1;

  DatosProveedores.QZumaCompras.Open;
  DatosProveedores.TotalCompra:=DatosProveedores.QZumaComprasTOTAL.AsFloat;
  DatosProveedores.QZumaCompras.Close;

  DatosProveedores.CDSCompras.Close;
  DatosProveedores.CDSCompras.Params.ParamByName('codigo').Value:= DatosProveedores.CDSProveedorCODIGO.Value;
  DatosProveedores.CDSCompras.Params.ParamByName('desde').Value := Desde.Date;
  DatosProveedores.CDSCompras.Params.ParamByName('hasta').Value := Hasta.Date;
  DatosProveedores.CDSCompras.Params.ParamByName('grupo').Value := -1;
  DatosProveedores.CDSCompras.Open;

  DatosProveedores.CDSDetallesTotales.Close;
  DatosProveedores.CDSDetallesTotales.Params.ParamByName('codigo').Value:= DatosProveedores.CDSProveedorCODIGO.Value;
  DatosProveedores.CDSDetallesTotales.Params.ParamByName('desde').Value := Desde.Date;
  DatosProveedores.CDSDetallesTotales.Params.ParamByName('hasta').Value := Hasta.Date;
  DatosProveedores.CDSDetallesTotales.Open;


  lbTotal.Caption:=FormatFloat(',0.00',DatosProveedores.TotalCompra);


 {
  if DatosProveedores.CDSComprasANIO.Value>0 then
    begin
      DatosProveedores.CDSDetalleCompras.Close;
      DatosProveedores.CDSDetalleCompras.Params.ParamByName('codigo').Value:= DatosProveedores.CDSProveedorCODIGO.Value;
      DatosProveedores.CDSDetalleCompras.Params.ParamByName('Desde').Value := Encodedate(DatosProveedores.CDSComprasANIO.Value,
                                                                              DatosProveedores.CDSComprasMES.Value,
                                                                              1);
      DatosProveedores.CDSDetalleCompras.Params.ParamByName('Hasta').Value := Encodedate(DatosProveedores.CDSComprasANIO.Value,
                                                                              DatosProveedores.CDSComprasMES.Value,
                                                                              DaysInMonth(DatosProveedores.CDSComprasANIO.Value,DatosProveedores.CDSComprasMES.Value));
      DatosProveedores.CDSDetalleCompras.Open;
    end
  else
    ShowMessage('No hay Movimientos para este período....');
  }
end;

procedure TFormProveedor_2.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var y,m,d:Word;
begin
  inherited;
  if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,(12))
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,(-12));

   DecodeDate(desde.date,y,m,d);
   hasta.Date:=EncodeDate(y,12,31);
   TraerCompras.Execute;
end;

procedure TFormProveedor_2.dbcRetencionesGananciasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_delete Then
    DatosProveedores.CDSProveedorCODIGO_REGIMEN_RET_GANACIA.Clear;

end;

procedure TFormProveedor_2.dbcRetencionIIBBKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=vk_delete Then
    DatosProveedores.CDSProveedorID_TASA_RETENCION_IB.Clear;

end;

procedure TFormProveedor_2.dbcRubroClick(Sender: TObject);
begin
  inherited;
  DatosProveedores.CDSBuscaSubRubro.Close;
  DatosProveedores.CDSBuscaSubRubro.Params.ParamByName('rubro').Value:= dbcRubro.KeyValue;
  DatosProveedores.CDSBuscaSubRubro.Open;
  ListarArticulos.Execute;
end;

procedure TFormProveedor_2.dbcRubrosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_delete Then
    DatosProveedores.CDSProveedorRUBRO.Clear;
end;

procedure TFormProveedor_2.dbchRetcioinIVAClick(Sender: TObject);
begin
  inherited;
//  if DSBase.State. then

  dbcRegimenRet.Enabled := dbchRetcioinIVA.Checked;
  edTasaRet.Enabled     := dbchRetcioinIVA.Checked;
end;

procedure TFormProveedor_2.chRubrosClick(Sender: TObject);
begin
  inherited;
  if chRubros.Checked Then
    dbcRubros_2.Enabled:=True
  else
    dbcRubros_2.Enabled:=False;
  Listar.Execute;
end;

procedure TFormProveedor_2.dbcRubros_2Click(Sender: TObject);
begin
  inherited;
  Listar.Execute;
end;

procedure TFormProveedor_2.cePercepcionIIBBKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=VK_DELETE) or (key=VK_BACK) Then
    begin
      DatosProveedores.CDSProveedorID_PERC_IBB.Clear;
      DatosProveedores.CDSProveedorDESPERIB.Clear;
    end;
end;

procedure TFormProveedor_2.cePercepcionIIBB_2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if (key=VK_DELETE) or (key=VK_BACK) Then
    begin
      DatosProveedores.CDSProveedorID_PERC_IBB_2.Clear;
      DatosProveedores.CDSProveedorDESPERIB2.Clear;
    end;
end;

procedure TFormProveedor_2.chExentoRetencioGananciaClick(Sender: TObject);
begin
  inherited;
  dbcRetencionesGanancias.Enabled:=Not(chExentoRetencioGanancia.Checked);
  if (DSBase.State in [dsInsert,dsEdit]) Then
    begin
      if Not(dbcRetencionesGanancias.Enabled)  Then
        begin
          dbcRetencionesGanancias.Color:=pnPrincipal.Color;
          DatosProveedores.CDSProveedorCODIGO_REGIMEN_RET_GANACIA.Value:=-1;
        end
      else
        begin
          dbcRetencionesGanancias.Color:=clWindow;
        end;
    end;
end;

procedure TFormProveedor_2.chExentoRetencioIIBBClick(Sender: TObject);
begin
  inherited;
  dbcRetencionIIBB.Enabled:=Not(chExentoRetencioIIBB.Checked);
  if (DSBase.State in [dsInsert,dsEdit]) Then
    begin
      if Not(dbcRetencionIIBB.Enabled)  Then
        begin
          dbcRetencionIIBB.Color:=pnPrincipal.Color;
          DatosProveedores.CDSProveedorID_TASA_RETENCION_IB.Value:=-1;
        end
      else
        begin
          dbcRetencionIIBB.Color:=clWindow;
        end;
    end;

end;

procedure TFormProveedor_2.chOrdenClick(Sender: TObject);
begin
  inherited;
  if DatosProveedores.CDSBuscaRegimen.State=dsBrowse then
    begin
      if chOrden.Checked then
        DatosProveedores.CDSBuscaRegimen.IndexFieldNames:='codigo'
      else
        DatosProveedores.CDSBuscaRegimen.IndexFieldNames:='detalle';
    end;
end;

end.