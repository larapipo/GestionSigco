UNIT UListaPreciosPersonalizada;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Provider, Grids, Variants,
  DBGrids, ExtCtrls, DBCtrls, StdCtrls, Buttons,
  frxDBSet, frxClass, frxExportHTML, frxExportXLS,
  frxExportRTF,  ImgList, JvExControls, JvGradient, frxExportText,
  frxExportPDF, FMTBcd, SqlExpr, JvDBLookup, JvExDBGrids, JvDBGrid, ComCtrls,
  JvExComCtrls, JvDBTreeView, JvDBLookupTreeView, ActnList, Menus, DataExport,
  DataToXLS, CheckLst, JvExExtCtrls, JvExtComponent, JvRollOut,IniFiles, Spin,
  JvPanel, System.Actions,VirtualUI_SDK, Vcl.Mask, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxInplaceContainer, cxDBTL, cxTLData, JvComCtrls, JvCheckTreeView,
  JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement,
  AdvCheckTreeView, dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvThread, DataToAscii,StrUtils,USeparadorTXT, frxExportBaseDialog,
  System.ImageList, asgcheck, AsgSpellCheck, JvLabel, JvDBControls,
  frCoreClasses,Vcl.Imaging.jpeg;


TYPE
  TFormListaPreciosPersonalizada = CLASS(TForm)
    pnPrincipal: TPanel;
    DSListaPrecios: TDataSource;
    DSDeposito: TDataSource;
    frListaPrecios: TfrxReport;
    frDBListaPrecio: TfrxDBDataset;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    frDBSucursal: TfrxDBDataset;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    DSBuscaListaPrecio: TDataSource;
    Label5: TLabel;
    FrDBEmprsa: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    CDSBuscaListaPrecios: TClientDataSet;
    DSPBuscaListaPrecios: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    dbcDeposito: TJvDBLookupCombo;
    dbcListas: TJvDBLookupCombo;
    dbgPrecios: TJvDBGrid;
    pnPie: TPanel;
    rgOrden: TRadioGroup;
    btImprimir: TBitBtn;
    btSalir: TBitBtn;
    btIniciar: TBitBtn;
    chConIva: TCheckBox;
    jvgSubPie: TJvGradient;
    CDSBuscaListaPreciosID: TIntegerField;
    CDSBuscaListaPreciosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    GravarXLS: TAction;
    btExcel: TBitBtn;
    rgUnidad: TRadioGroup;
    DSPMarca: TDataSetProvider;
    CDSMarca: TClientDataSet;
    CDSMarcaMARCA_STK: TStringField;
    CDSMarcaDESCRIPCION_MARCA: TStringField;
    DSMarca: TDataSource;
    rollOrden: TJvRollOut;
    lbCampos: TListBox;
    Label7: TLabel;
    btAplicar: TButton;
    chAgruparMarcas: TCheckBox;
    spCantIdx: TSpinEdit;
    chAgruparRubros: TCheckBox;
    chAgruparSub: TCheckBox;
    btImprimirTabla: TBitBtn;
    lbIndice: TLabel;
    DSListaArtSubDet: TDataSource;
    frDBSubDetalle: TfrxDBDataset;
    chImagen: TCheckBox;
    pnSubDetalle: TJvPanel;
    dbgPreciosCant: TDBGrid;
    VerCodigoAlternativo: TMenuItem;
    ArmarArbol: TAction;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    btMarcas: TButton;
    Label3: TLabel;
    dbcLista2: TJvDBLookupCombo;
    DSBuscaListaPrecio2: TDataSource;
    CDSBuscaListaPrecios2: TClientDataSet;
    CDSBuscaListaPrecios2ID: TIntegerField;
    CDSBuscaListaPrecios2NOMBRE: TStringField;
    QSucursal: TFDQuery;
    QCambiarSubUnit: TFDQuery;
    QCambiarRubro: TFDQuery;
    QCambiarSubAll: TFDQuery;
    QActualizaEstado: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QSucursalHOST: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    QListaArtSubDet: TFDQuery;
    QLstCab: TFDQuery;
    DSLstCab: TDataSource;
    QLstCabID: TIntegerField;
    QLstCabNOMBRE: TStringField;
    lbLstPersonalizada: TLabel;
    stEstado: TStatusBar;
    spControlEsquemas: TFDStoredProc;
    pnAviso: TPanel;
    thControl: TJvThread;
    DataToTxtConStock: TDataToAscii;
    N1: TMenuItem;
    ExportarTXT: TAction;
    ExportaraTXT1: TMenuItem;
    dbcLstEsquema: TJvDBLookupCombo;
    btEsquemas: TBitBtn;
    Label4: TLabel;
    AdvStringGridSpellCheck1: TAdvStringGridSpellCheck;
    JvDBStatusLabel1: TJvDBStatusLabel;
    DBImage1: TDBImage;
    QListaPrecios_2: TFDQuery;
    QListaPrecios_2CODIGO: TStringField;
    QListaPrecios_2DETALLE: TStringField;
    QListaPrecios_2UNIDAD: TStringField;
    QListaPrecios_2PCOSTO: TFloatField;
    QListaPrecios_2MARGEN: TFloatField;
    QListaPrecios_2PVENTA: TFloatField;
    QListaPrecios_2MARCA: TStringField;
    QListaPrecios_2MUESTRAMARCA: TStringField;
    QListaPrecios_2RUBRO: TStringField;
    QListaPrecios_2MUESTRARUBRO: TStringField;
    QListaPrecios_2SUBRUBRO: TStringField;
    QListaPrecios_2PVENTA_CIVA: TFloatField;
    QListaPrecios_2MUESTRASUBRUBRO: TStringField;
    QListaPrecios_2SIGNOMONEDA: TStringField;
    QListaPrecios_2COTIZACION: TFloatField;
    QListaPrecios_2PRES_CANT: TFloatField;
    QListaPrecios_2PRES_UNID: TStringField;
    QListaPrecios_2FOTO: TStringField;
    QListaPrecios_2IMPRIME: TStringField;
    QListaPrecios_2ID_DETALLE: TIntegerField;
    QListaPrecios_2CODIGO_ALTERNATIVO: TStringField;
    QListaPrecios_2IVA_MODIFICADO: TStringField;
    QListaPrecios_2PVENTA_CIVA_2: TFloatField;
    QListaPrecios_2PVENTA_2: TFloatField;
    QListaPrecios_2EXISTENCIA: TFloatField;
    QListaPrecios_2ORDENRUBRO: TIntegerField;
    QListaPrecios_2TASA_IVA: TFloatField;
    QListaPrecios_2ULTIMO_PRECIO_COMPRA: TFloatField;
    QListaPrecios_2ULTIMO_PROVEEDOR: TStringField;
    QListaPrecios_2ULTIMO_NOM_PROVEEDOR: TStringField;
    QListaPrecios_2NRO_FAC_COMPRA: TStringField;
    QListaPrecios_2ULTIMA_FECHA_COMPRA: TSQLTimeStampField;
    QListaPrecios_2DESCUENTO_1: TFloatField;
    QListaPrecios_2DESCUENTO_2: TFloatField;
    QListaPrecios_2PCOSTO_PESOS: TFloatField;
    QListaPrecios_2PVENTA_PESOS: TFloatField;
    QListaPrecios_2PVENTA_CIVA_PESOS: TFloatField;
    QListaPrecios_2PVENTA_PESOS_2: TFloatField;
    QListaPrecios_2PVENTA_CIVA_PESOS_2: TFloatField;
    QListaPrecios_2IMAGEN: TBlobField;
    QListaArtSubDetID: TIntegerField;
    QListaArtSubDetID_LISTADETALLE: TIntegerField;
    QListaArtSubDetCODIGO: TStringField;
    QListaArtSubDetCANTIDAD: TFloatField;
    QListaArtSubDetCOSTO_EXENTO: TFloatField;
    QListaArtSubDetCOSTO_GRAVADO: TFloatField;
    QListaArtSubDetCOSTO_TOTAL: TFloatField;
    QListaArtSubDetRECARGO: TFloatField;
    QListaArtSubDetPRECIO_EXENTO: TFloatField;
    QListaArtSubDetPRECIO_GRAVADO: TFloatField;
    QListaArtSubDetIVA_TASA: TFloatField;
    QListaArtSubDetIVA_IMPORTE: TFloatField;
    QListaArtSubDetPRECIO: TFloatField;
    QListaArtSubDetDESCUENTO: TFloatField;
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE btIniciarClick(Sender: TObject);
    PROCEDURE btImprimirClick(Sender: TObject);
    PROCEDURE pnPrincipalDblClick(Sender: TObject);

    procedure btSalirClick(Sender: TObject);
    procedure lbCamposDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lbCamposDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lbCamposMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btAplicarClick(Sender: TObject);
    procedure lbCamposDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure dbgPreciosDblClick(Sender: TObject);
    procedure spCantIdxClick(Sender: TObject);
    procedure spCantIdxChange(Sender: TObject);
    procedure btImprimirTablaClick(Sender: TObject);
    function dbgPreciosCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure dbgPreciosColEnter(Sender: TObject);
    procedure VerCodigoAlternativoClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure chklstColumnasClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btMarcasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgPreciosCellClick(Column: TColumn);
    procedure dbcLst_olfChange(Sender: TObject);
    procedure thControlExecute(Sender: TObject; Params: Pointer);
    procedure thControlFinish(Sender: TObject);
    procedure ExportarTXTExecute(Sender: TObject);
    procedure btEsquemasClick(Sender: TObject);
    procedure QListaPrecios_2AfterScroll(DataSet: TDataSet);
    procedure QListaPrecios_2CalcFields(DataSet: TDataSet);
    procedure QListaPrecios_2CODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QListaPrecios_2IMPRIMESetText(Sender: TField; const Text: string);
    procedure QListaPrecios_2IMPRIMEChange(Sender: TField);
//    procedure ArmarArbolExecute(Sender: TObject);
  private
    procedure GenerarLista_2;
    procedure ProcesarImagenesArticulosSQL;
    procedure FormatearCamposNumericos(Query: TFDQuery);
    { Private declarations }
  public
    DirImagenes    : String;
    StartingPoint  : TPoint;
    ArchivoIni     : TIniFile;
    Cad1,Cad2,Cad3,Cad4,Cad5,Cad6,Cad7,Cad8,Cad9:String;
    ColumnasExpXLS : String;
    Cancelar       : Boolean;
    procedure Control;

   { Public declarations }
  END;

VAR
  FormListaPreciosPersonalizada: TFormListaPreciosPersonalizada;

IMPLEMENTATION



USES DMBuscadoresForm, UStock_2,UExportarExcelListaPrecios,UFiltroMarcas,UDMain_FD,
     UEsquemaLista;
{$R *.DFM}
{$R-}


PROCEDURE TFormListaPreciosPersonalizada.FormClose(Sender: TObject; VAR Action: TCloseAction);
var i:integer;
BEGIN
  Screen.Cursor:=crDefault;
 //*************************************************************
  ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'ListaPersonalizada.ini');
  ArchivoIni.WriteString('Lista', 'cad1', lbCampos.Items[0]);
  ArchivoIni.WriteString('Lista', 'cad2', lbCampos.Items[1]);
  ArchivoIni.WriteString('Lista', 'cad3', lbCampos.Items[2]);
  ArchivoIni.WriteString('Lista', 'cad4', lbCampos.Items[3]);
  ArchivoIni.WriteString('Lista', 'cad5', lbCampos.Items[4]);
  ArchivoIni.WriteString('Lista', 'cad6', lbCampos.Items[5]);
  ArchivoIni.WriteString('Lista', 'cad7', lbCampos.Items[6]);
  ArchivoIni.WriteString('Lista', 'cad8', lbCampos.Items[7]);
  ArchivoIni.WriteString('Lista', 'cad9', lbCampos.Items[8]);

  ArchivoIni.WriteInteger('Lista', 'CantIdx', spCantIdx.Value);

  ArchivoIni.WriteBool('Lista', 'Marcas', chAgruparMarcas.Checked);
  ArchivoIni.WriteBool('Lista', 'Rubro', chAgruparRubros.Checked);
  ArchivoIni.WriteBool('Lista', 'Sub', chAgruparSub.Checked);
  ArchivoIni.WriteBool('Lista', 'IVA',  chConIva.Checked);
  ArchivoIni.WriteInteger('Lista', 'esquema',  dbcLstEsquema.KeyValue);

  if Not(VarIsNull(dbcDeposito.KeyValue)) then
    ArchivoIni.WriteInteger('Lista', 'Deposito',  dbcDeposito.keyValue);

  ColumnasExpXLS:='';
  for i:=0 to FormExportarExcelLista.chklstColumnas.Items.Count-1 do
    begin
      if FormExportarExcelLista.chklstColumnas.Checked[i] Then
        ColumnasExpXLS:=ColumnasExpXLS+'1'
      else
        ColumnasExpXLS:=ColumnasExpXLS+'0'
    end;
  ArchivoIni.WriteString('columnas', 'xls', ColumnasExpXLS);
  ArchivoIni.Free;

 // tvRubros.SaveToFile(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'RubrosListaPrecios');
  //*************************************************************
  //CDSSubRubro.Close;
  CDSBuscaListaPrecios.close;
  CDSDepositos.Close;
  CDSMarca.Close;
  QListaPrecios_2.Close;
  if (Assigned(FormFiltrosMarcas)) then
    FreeAndNil(FormFiltrosMarcas);
  if (Assigned(FormExportarExcelLista)) then
    FreeAndNil(FormExportarExcelLista);

  Action := caFree;
END;

PROCEDURE TFormListaPreciosPersonalizada.FormDestroy(Sender: TObject);
BEGIN
  FormListaPreciosPersonalizada := NIL;
END;

procedure TFormListaPreciosPersonalizada.FormShow(Sender: TObject);
begin
 // ArmarArbol.Execute;
end;

procedure TFormListaPreciosPersonalizada.thControlExecute(Sender: TObject;
  Params: Pointer);
begin
  thControl.FreeOnTerminate:=True;
  pnAviso.Visible:=True;
  Control;
  thControl.Terminate;
end;


procedure TFormListaPreciosPersonalizada.thControlFinish(Sender: TObject);
begin
  pnAviso.Visible:=False;
end;

procedure TFormListaPreciosPersonalizada.lbCamposDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
 DropPosition,
 StartPosition: Integer;
 DropPoint: TPoint;
begin
  DropPoint.X := X;
  DropPoint.Y := Y;
  with Source as TListBox do
    begin
      StartPosition := ItemAtPos(StartingPoint,True) ;
      DropPosition  := ItemAtPos(DropPoint,True) ;
      Items.Move(StartPosition, DropPosition) ;
    end;
end;

procedure TFormListaPreciosPersonalizada.lbCamposDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
 Accept := Source = lbCampos;
end;

procedure TFormListaPreciosPersonalizada.lbCamposDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var cadena:String;
begin
  // color en ListBox
  cadena:=lbCampos.Items[Index];
  if (Index>=0) and (index<spCantIdx.Value) Then
   lbCampos.Canvas.Brush.Color:= clMoneyGreen;
  lbCampos.Canvas.Font.Color   := clBlack;
  lbCampos.Canvas.TextRect(Rect, Rect.Left, Rect.Top, cadena);
end;

procedure TFormListaPreciosPersonalizada.lbCamposMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StartingPoint.X := X;
  StartingPoint.Y := Y;
end;

PROCEDURE TFormListaPreciosPersonalizada.FormCreate(Sender: TObject);
var i,Esquema:integer;
BEGIN
  AutoSize := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  if Not(Assigned(FormExportarExcelLista)) then
    FormExportarExcelLista:=TFormExportarExcelLista.Create(Self);
  FormExportarExcelLista.Visible:=False;

  if Not(Assigned(FormFiltrosMarcas)) then
    FormFiltrosMarcas:=TFormFiltrosMarcas.Create(Self);
  FormFiltrosMarcas.Visible:=False;

  CDSDepositos.Open;

  CDSMarca.Close;
  CDSMarca.Open;
  CDSMarca.IndexFieldNames:='DESCRIPCION_MARCA';
  CDSBuscaListaPrecios.Open;
  CDSBuscaListaPrecios2.Open;

 // jvRollOut1.Collapsed:=True;
 // Directorio de Imagenes
  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='IMAGENES';
  DMMain_FD.QOpciones.Open;
  DirImagenes:=(DMMain_FD.QOpciones.Fields[0].AsString) + '\' ;
  DMMain_FD.QOpciones.CLose;
  //**********************
  FormFiltrosMarcas.chlFiltroMarcas.Clear;
  FormFiltrosMarcas.chlFiltroMarcas.Items.Append('Todos Las Marcas');
  CDSMarca.IndexFieldNames:='marca_stk';
  CDSMarca.First;
  CDSMarca.DisableControls;
  while Not(CDSMarca.Eof) do
    begin
      FormFiltrosMarcas.chlFiltroMarcas.Items.Append(CDSMarcaMARCA_STK.ASString+' '+CDSMarcaDESCRIPCION_MARCA.AsString);
      CDSMarca.Next;
    end;
  CDSMarca.First;
  CDSMarca.EnableControls;

  for I := 0 to FormFiltrosMarcas.chlFiltroMarcas.Count - 1 do
     FormFiltrosMarcas.chlFiltroMarcas.Checked[I]:=True;
  CDSBuscaListaPrecios.First;
  dbcListas.KeyValue:=CDSBuscaListaPreciosID.AsInteger;

  CDSBuscaListaPrecios2.First;
  dbcLista2.KeyValue:=CDSBuscaListaPrecios2ID.AsInteger;

  //*************************************************************
  ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'ListaPersonalizada.ini');
  Cad1:= ArchivoIni.ReadString('Lista', 'cad1', 'Codigo Marca');
  Cad2:= ArchivoIni.ReadString('Lista', 'cad2', 'Codigo Rubro');
  Cad3:= ArchivoIni.ReadString('Lista', 'cad3', 'Codigo SubRubro');
  Cad4:= ArchivoIni.ReadString('Lista', 'cad4', 'Codigo Articulo');
  Cad5:= ArchivoIni.ReadString('Lista', 'cad5', 'Detalle Marca');
  Cad6:= ArchivoIni.ReadString('Lista', 'cad6', 'Detalle Rubro');
  Cad7:= ArchivoIni.ReadString('Lista', 'cad7', 'Detalle SubRubro');
  Cad8:= ArchivoIni.ReadString('Lista', 'cad8', 'Detalle Articulo');
  Cad9:= ArchivoIni.ReadString('Lista', 'cad9', 'Orden Rubro');

  spCantIdx.Value         := ArchivoIni.ReadInteger('Lista', 'CantIdx', 1);
  chAgruparMarcas.Checked := ArchivoIni.ReadBool('Lista', 'Marcas', False);
  chAgruparRubros.Checked := ArchivoIni.ReadBool('Lista', 'Rubro', False);
  chAgruparSub.Checked    := ArchivoIni.ReadBool('Lista', 'Sub', False);
  chConIva.Checked        := ArchivoIni.ReadBool('Lista', 'IVA', False);
  esquema                 := ArchivoIni.ReadInteger('Lista', 'esquema',  -1);

  //*************************************************************
  ColumnasExpXLS := ArchivoIni.ReadString('columnas', 'xls', '111111111111111111111111');

  dbcDeposito.keyValue := ArchivoIni.ReadInteger('Lista', 'Deposito', CDSDepositosID.Value);

  ArchivoIni.Free;
   //*************************************************************
  lbCampos.Clear;
  lbCampos.Items.Append(Cad1);
  lbCampos.Items.Append(Cad2);
  lbCampos.Items.Append(Cad3);
  lbCampos.Items.Append(Cad4);
  lbCampos.Items.Append(Cad5);
  lbCampos.Items.Append(Cad6);
  lbCampos.Items.Append(Cad7);
  lbCampos.Items.Append(Cad8);
  lbCampos.Items.Append(Cad9);

//  lbCampos.Items.Append(Cad9);
  for i:= 0 to DataToXLS1.Columns.Count-1 do
    begin
      FormExportarExcelLista.chklstColumnas.Items.Add(QListaPrecios_2.Fields[i].DisplayName);
      FormExportarExcelLista.chklstColumnas.Checked[i] :=ColumnasExpXLS[i+1]='1';//   True;
      DataToXLS1.Columns[i].Save:=ColumnasExpXLS[i+1]='1';
    end;
  QLstCab.Close;
  QLstCab.Open;
  QLstCab.First;

  dbcLstEsquema.KeyValue    := Esquema;
  lbLstPersonalizada.Caption:= 'Esquema de Lista :'+dbcLstEsquema.Text;

  thControl.Execute(Self);
  dbcDeposito.keyValue := CDSDepositosID.Value;
  rollOrden.Collapsed  := True;

END;

PROCEDURE TFormListaPreciosPersonalizada.btIniciarClick(Sender: TObject);
var suc:integer;
BEGIN
  GenerarLista_2;

  {
  Screen.Cursor:=crHourGlass;
  if dbcLstEsquema.KeyValue<=0 then
    raise Exception.Create('No Hay deposito Asignado');
  IF (dbcListas.Value <> '') Then //and (rgTomaRecargo.ItemIndex=1) THEN
    BEGIN
      QSucursal.Close;
      CDSListaPrecios.Close;
      CDSListaPrecios.IndexFieldNames:='';
      CDSListaPrecios.DisableControls;
      CDSListaPrecios.CommandText:=('select * from lista_de_precios_personalizada2(:id ,:compra_venta,:lista_ad,:id_lista_perso,:deposito ) ');
      CDSListaPrecios.Params.ParamByName('id').Value       := StrToInt(dbcListas.Value);
      CDSListaPrecios.Params.ParamByName('Lista_Ad').Value := StrToInt(dbcLista2.Value);
      CDSListaPrecios.Params.ParamByName('deposito').Value := dbcDeposito.Value;

      if rgUnidad.ItemIndex=0 then
        CDSListaPrecios.Params.ParamByName('Compra_Venta').Value:= 'C'
      else
        if rgUnidad.ItemIndex=1 then
          CDSListaPrecios.Params.ParamByName('Compra_Venta').Value:= 'V';

      CDSListaPrecios.Params.ParamByName('id_lista_perso').Value  := dbcLstEsquema.KeyValue;
      CDSListaPrecios.Open;

      CDSListaArtSubDet.Close;
      CDSListaArtSubDet.Params.ParamByName('id').Value:=CDSListaPreciosID_DETALLE.Value;
      CDSListaArtSubDet.Open;

      btImprimir.Enabled := True;
      CDSListaPrecios.EnableControls;
    END
  ELSE
    ShowMessage('No se especificó una lista...!!!');
  ProcesarImagenesArticulos;
  Screen.Cursor    := crDefault;
  dbgPrecios.Width := dbgPrecios.Width-1;
  dbgPrecios.Width := dbgPrecios.Width+1;
  btAplicar.Click;
  }
END;

procedure TFormListaPreciosPersonalizada.FormatearCamposNumericos(Query: TFDQuery);
var
  i: Integer;
  Campo: TField;
begin
  // Abrimos el query
 // Query.Open;

  // Recorremos todos los campos
  for i := 0 to Query.FieldCount - 1 do
  begin
    Campo := Query.Fields[i];

    // Verificamos si es un campo numérico
    if Campo is TFloatField then
      begin
        TFloatField(Campo).DisplayFormat := ',0.00';
      end
    else if Campo is TBCDField then
      begin
      TBCDField(Campo).DisplayFormat := ',0.00'; // ¤ muestra el símbolo de moneda
    end;
  end;
end;



PROCEDURE TFormListaPreciosPersonalizada.GenerarLista_2;
var suc:integer;
BEGIN
  Screen.Cursor:=crHourGlass;
  if dbcLstEsquema.KeyValue<=0 then
    raise Exception.Create('No Hay deposito Asignado');
  IF (dbcListas.Value <> '') Then //and (rgTomaRecargo.ItemIndex=1) THEN
    BEGIN
      QSucursal.Close;
      QListaPrecios_2.Close;
      QListaPrecios_2.IndexFieldNames:='';
      QListaPrecios_2.DisableControls;
      QListaPrecios_2.SQL.Text:='select * from lista_de_precios_personalizada2(:id ,:compra_venta,:lista_ad,:id_lista_perso,:deposito ) ';
      QListaPrecios_2.ParamByName('id').Value       := StrToInt(dbcListas.Value);
      QListaPrecios_2.ParamByName('Lista_Ad').Value := StrToInt(dbcLista2.Value);
      QListaPrecios_2.ParamByName('deposito').Value := dbcDeposito.Value;

      if rgUnidad.ItemIndex=0 then
        QListaPrecios_2.ParamByName('Compra_Venta').Value:= 'C'
      else
        if rgUnidad.ItemIndex=1 then
          QListaPrecios_2.ParamByName('Compra_Venta').Value:= 'V';

      QListaPrecios_2.ParamByName('id_lista_perso').Value  := dbcLstEsquema.KeyValue;
      QListaPrecios_2.Open;

      QListaArtSubDet.Close;
      QListaArtSubDet.ParamByName('id').Value:=QListaPrecios_2ID_DETALLE.Value;
      QListaArtSubDet.Open;

      btImprimir.Enabled := True;
      QListaPrecios_2.EnableControls;
      FormatearCamposNumericos(QListaPrecios_2);
    END
  ELSE
    ShowMessage('No se especificó una lista...!!!');

 // ProcesarImagenesArticulosSQL;

  Screen.Cursor    := crDefault;
  dbgPrecios.Width := dbgPrecios.Width-1;
  dbgPrecios.Width := dbgPrecios.Width+1;
  btAplicar.Click;



END;


PROCEDURE TFormListaPreciosPersonalizada.btImprimirClick(Sender: TObject);
BEGIN
  
  CDSEmpresa.Open;
  frListaPrecios.LoadFromFile(DMMain_FD.PathReportesLst+'\LstPrecios.fr3');
// if rgTomaRecargo.ItemIndex=0 Then
//    frListaPrecios.Variables['titulo']:='''Lista de Precios'''
//  else
//  if rgTomaRecargo.ItemIndex=1 Then
  frListaPrecios.Variables['titulo']:=''''+dbcListas.Text+'''';


  if chConIva.Checked=True Then
    frListaPrecios.Variables['ConIva']:='''S'''
  else
  if chConIva.Checked=False Then
    frListaPrecios.Variables['ConIva']:='''N''';

  frListaPrecios.Variables['AgruparMarcas']:='''N''';
  if chAgruparMarcas.Checked then
    frListaPrecios.Variables['AgruparMarcas']:='''S''';

  frListaPrecios.Variables['AgruparRubros']:='''N''';
  if chAgruparRubros.Checked then
    frListaPrecios.Variables['AgruparRubros']:='''S''';

  frListaPrecios.Variables['AgruparSub']:='''N''';
  if chAgruparSub.Checked then
    frListaPrecios.Variables['AgruparSub']:='''S''';

  frListaPrecios.Variables['ConImagen']:='''N''';
  if chImagen.Checked then
    frListaPrecios.Variables['ConImagen']:='''S''';

  frListaPrecios.ShowReport;
  CDSEmpresa.Close;
END;

PROCEDURE TFormListaPreciosPersonalizada.pnPrincipalDblClick(Sender: TObject);
BEGIN
  frListaPrecios.DesignReport;
END;


procedure TFormListaPreciosPersonalizada.btMarcasClick(Sender: TObject);
begin
  FormFiltrosMarcas.Visible:=True;
  FormFiltrosMarcas.BringToFront;
end;


procedure TFormListaPreciosPersonalizada.btAplicarClick(Sender: TObject);
var Filtro,V1,V2,V3,v4:String;
  i: Integer;
begin
  if Not(QListaPrecios_2.IsEmpty) then
    begin
      QListaPrecios_2.IndexFieldNames:='';
      v1:='';
      v2:='';
      v3:='';
      v4:='';

      if lbcampos.Items[0]='Codigo Marca' then     V1:='Marca' else
      if lbcampos.Items[0]='Codigo Rubro' then     V1:='Rubro' else
      if lbcampos.Items[0]='Codigo SubRubro' then  V1:='SubRubro' else
      if lbcampos.Items[0]='Detalle Marca' then    V1:='MuestraMarca' else
      if lbcampos.Items[0]='Detalle Rubro' then    V1:='MuestraRubro' else
      if lbcampos.Items[0]='Detalle SubRubro' then V1:='MuestraSubRubro' else
      if lbcampos.Items[0]='Codigo Articulo' then  V1:='codigo' else
      if lbcampos.Items[0]='Detalle Articulo' then V1:='Detalle';
      if lbcampos.Items[0]='Orden Rubro' then      V1:='OrdenRubro';

      if spCantIdx.Value>1 then
        begin
          if lbcampos.Items[1]='Codigo Marca' then     V2:='Marca' else
          if lbcampos.Items[1]='Codigo Rubro' then     V2:='Rubro' else
          if lbcampos.Items[1]='Codigo SubRubro' then  V2:='SubRubro' else
          if lbcampos.Items[1]='Detalle Marca' then    V2:='MuestraMarca' else
          if lbcampos.Items[1]='Detalle Rubro' then    V2:='MuestraRubro' else
          if lbcampos.Items[1]='Detalle SubRubro' then V2:='MuestraSubRubro' else
          if lbcampos.Items[1]='Codigo Articulo' then  V2:='codigo' else
          if lbcampos.Items[1]='Detalle Articulo' then V2:='Detalle';
          if lbcampos.Items[1]='Orden Rubro' then      V2:='OrdenRubro';
        end;
      if spCantIdx.Value>2 then
        begin
          if lbcampos.Items[2]='Codigo Marca' then     V3:='Marca' else
          if lbcampos.Items[2]='Codigo Rubro' then     V3:='Rubro' else
          if lbcampos.Items[2]='Codigo SubRubro' then  V3:='SubRubro' else
          if lbcampos.Items[2]='Detalle Marca' then    V3:='MuestraMarca' else
          if lbcampos.Items[2]='Detalle Rubro' then    V3:='MuestraRubro' else
          if lbcampos.Items[2]='Detalle SubRubro' then V3:='MuestraSubRubro' else
          if lbcampos.Items[2]='Codigo Articulo' then  V3:='codigo' else
          if lbcampos.Items[2]='Detalle Articulo' then V3:='Detalle';
          if lbcampos.Items[2]='Orden Rubro' then      V3:='OrdenRubro';
        end;
      if spCantIdx.Value>3 then
        begin
          if lbcampos.Items[3]='Codigo Marca' then     V4:='Marca' else
          if lbcampos.Items[3]='Codigo Rubro' then     V4:='Rubro' else
          if lbcampos.Items[3]='Codigo SubRubro' then  V4:='SubRubro' else
          if lbcampos.Items[3]='Detalle Marca' then    V4:='MuestraMarca' else
          if lbcampos.Items[3]='Detalle Rubro' then    V4:='MuestraRubro' else
          if lbcampos.Items[3]='Detalle SubRubro' then V4:='MuestraSubRubro' else
          if lbcampos.Items[3]='Codigo Articulo' then  V4:='codigo' else
          if lbcampos.Items[3]='Detalle Articulo' then V4:='Detalle';
          if lbcampos.Items[3]='Orden Rubro' then      V4:='OrdenRubro';
        end;

      Filtro:='';

      if v1<>'' then
        Filtro:=Filtro+v1+';';
      if v2<>'' then
        Filtro:=Filtro+v2+';';
      if v3<>'' then
        Filtro:=Filtro+v3+';';
      if v4<>'' then
        Filtro:=Filtro+v4+';';
      Delete(Filtro,Length(Filtro),1);
      QListaPrecios_2.IndexFieldNames:=Filtro;
    end;
   lbIndice.Caption:='Lista Ordenada por : '+Filtro;

end;

procedure TFormListaPreciosPersonalizada.btCancelarClick(Sender: TObject);
begin
  Cancelar:=True;
end;

//*****************************************************************************


procedure TFormListaPreciosPersonalizada.ProcesarImagenesArticulosSQL;
const
  AnchoFinal = 100;
  AltoFinal  = 100;
var
  bmpRedimensionado: TBitmap;
  imaJpeg: TPicture;// TJpegImage;
  ms: TMemoryStream;
begin
  QListaPrecios_2.First;
  QListaPrecios_2.DisableControls;
  while not QListaPrecios_2.Eof do
    begin
      if FileExists(DirImagenes+QListaPrecios_2FOTO.AsString) then
        begin
          imajpeg           := TPicture.Create;// TJPEGImage.Create;
          bmpRedimensionado := TBitmap.Create;
          try
            // Cargar imagen original desde archivo
            imaJpeg.LoadFromFile(DirImagenes+QListaPrecios_2FOTO.AsString);

            // Redimensionar
            bmpRedimensionado.SetSize(AnchoFinal, AltoFinal);
            bmpRedimensionado.Canvas.StretchDraw(
              Rect(0, 0, AnchoFinal, AltoFinal),
            imaJpeg.Graphic);

            // Guardar imagen redimensionada en un stream
            ms := TMemoryStream.Create;
            try
              bmpRedimensionado.SaveToStream(ms);
              ms.Position := 0;

              // Guardar en el campo BLOB (suponemos que usás FireDAC en modo edit)
              QListaPrecios_2.Edit;
              TBlobField(QListaPrecios_2.FieldByName('IMAGEN')).LoadFromStream(ms);
              QListaPrecios_2.Post;
            finally
              ms.Free;
            end;

          finally
            imaJpeg.Free;
            //bmpOriginal.Free;
            bmpRedimensionado.Free;
          end;
        end;

      QListaPrecios_2.Next;
    end;
  QListaPrecios_2.First;
  QListaPrecios_2.EnableControls;
end;

procedure TFormListaPreciosPersonalizada.QListaPrecios_2AfterScroll(
  DataSet: TDataSet);
VAR
ImgBMP,imgBMPReSize:TBitmap;
begin
   ImgBMP       := TBitmap.Create;
   ImgBMP.Width := 500;
   ImgBMP.Height:= 500;

   if (QListaPrecios_2FOTO.AsString<>'') then
     begin
       try
         if FileExists(DirImagenes+QListaPrecios_2FOTO.Value) then
           begin
             QListaPrecios_2.Edit;
             if Trim(QListaPrecios_2FOTO.AsString)<>'' then
               begin
                 ImgBMP.LoadFromFile(DirImagenes+QListaPrecios_2FOTO.Value);
                 ImgBMP.Canvas.StretchDraw(ImgBMP.Canvas.ClipRect,ImgBMP);
                 if (QListaPrecios_2IMAGEN.IsNull) and (QListaPrecios_2FOTO.Value<>'')  then
                   QListaPrecios_2IMAGEN.Assign(ImgBMP);
               end;
             QListaPrecios_2.Post;
           end;
        except
         //  on EFileNotFound do
         //    Image1.Picture.LoadFromFile('c:\windows\Bosque.bmp');
           // ShowMessage('Imagen no Disponible');
        end;
      ImgBMP.Free;
    end;
  QListaArtSubDet.Close;
  QListaArtSubDet.ParamByName('id').Value:=QListaPrecios_2ID_DETALLE.Value;
  QListaArtSubDet.Open;
  pnSubDetalle.Visible:=Not(QListaArtSubDet.IsEmpty);
end;

procedure TFormListaPreciosPersonalizada.QListaPrecios_2CalcFields(
  DataSet: TDataSet);
begin
  QListaPrecios_2PCOSTO_PESOS.Value           := QListaPrecios_2PCOSTO.Value * QListaPrecios_2COTIZACION.AsFloat;
  QListaPrecios_2PVENTA_PESOS.AsFloat         := QListaPrecios_2PVENTA.AsFloat * QListaPrecios_2COTIZACION.AsFloat;
  QListaPrecios_2PVENTA_CIVA_PESOS.AsFloat    := QListaPrecios_2PVENTA_CIVA.AsFloat * QListaPrecios_2COTIZACION.AsFloat;

  QListaPrecios_2PVENTA_PESOS_2.AsFloat       := QListaPrecios_2PVENTA_2.AsFloat * QListaPrecios_2COTIZACION.AsFloat;
  QListaPrecios_2PVENTA_CIVA_PESOS_2.AsFloat  := QListaPrecios_2PVENTA_CIVA_2.AsFloat * QListaPrecios_2COTIZACION.AsFloat;

end;

procedure TFormListaPreciosPersonalizada.QListaPrecios_2CODIGOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text:=Trim(QListaPrecios_2CODIGO.Value);
  if VerCodigoAlternativo.Checked then
    Text:= Trim(QListaPrecios_2CODIGO_ALTERNATIVO.AsString);
  if QListaPrecios_2IVA_MODIFICADO.Value='S' then
    Text:=Text+'*';
end;

procedure TFormListaPreciosPersonalizada.QListaPrecios_2IMPRIMEChange(
  Sender: TField);
begin
  QActualizaEstado.Close;
  QActualizaEstado.ParamByName('Codigo').Value:=QListaPrecios_2CODIGO.Value;
  QActualizaEstado.ParamByName('estado').Value:=QListaPrecios_2IMPRIME.Value;
  QActualizaEstado.ExecSQL;
  QActualizaEstado.Close;
end;

procedure TFormListaPreciosPersonalizada.QListaPrecios_2IMPRIMESetText(
  Sender: TField; const Text: string);
begin
  QActualizaEstado.Close;
  QActualizaEstado.ParamByName('Codigo').Value:=QListaPrecios_2CODIGO.Value;
  QActualizaEstado.ParamByName('estado').Value:=QListaPrecios_2IMPRIME.Value;
  QActualizaEstado.ExecSQL;
  QActualizaEstado.Close;
end;

//******************************************************************************



procedure TFormListaPreciosPersonalizada.chklstColumnasClick(Sender: TObject);
var i:integer;
begin
  for I := 0 to FormExportarExcelLista.chklstColumnas.Items.Count-1 do
    DataToXLS1.Columns[I].Save:=FormExportarExcelLista.chklstColumnas.Checked[I];
end;

procedure TFormListaPreciosPersonalizada.Control;
begin
  spControlEsquemas.Close;
  spControlEsquemas.ExecProc;
  spControlEsquemas.Close;
end;


procedure TFormListaPreciosPersonalizada.dbcLst_olfChange(Sender: TObject);
begin
  //QLstRubros.Close;
//  QLstRubros.ParamByName('id').Value    := dbcLst.KeyValue;
//  QLstRubros.Open;
//
//  QLstSubRubros.Close;
//  QLstSubRubros.ParamByName('id').Value := dbcLst.KeyValue;
//  QLstSubRubros.Open;
//
//  QLstArticulos.Close;
//  QLstArticulos.ParamByName('id').Value := dbcLst.KeyValue;
//  QLstArticulos.Open;
//
//  lbLstPersonalizada.Caption:='Esquema de Lista :'+dbcLst.Text;

end;

procedure TFormListaPreciosPersonalizada.dbgPreciosCellClick(Column: TColumn);
begin
 // if rollRubros.Collapsed=False then
 //   rollRubros.Collapsed:=True;
end;

function TFormListaPreciosPersonalizada.dbgPreciosCheckIfBooleanField(
  Grid: TJvDBGrid; Field: TField; var StringForTrue,
  StringForFalse: string): Boolean;
begin
  result   := Field = QListaPrecios_2IMPRIME;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormListaPreciosPersonalizada.dbgPreciosColEnter(Sender: TObject);
begin
  if dbgPrecios.SelectedIndex<11 then
    dbgPrecios.SelectedIndex:=11;
end;

procedure TFormListaPreciosPersonalizada.dbgPreciosDblClick(Sender: TObject);
begin
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew:=QListaPrecios_2CODIGO.AsString;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;  
end;

procedure TFormListaPreciosPersonalizada.ExportarTXTExecute(Sender: TObject);
var Rs:Char;
I:Integer;
begin
  inherited;
  if Not(Assigned(FormSepardorTXT))  then
    FormSepardorTXT :=TFormSepardorTXT.Create(Self);
  FormSepardorTXT.ShowModal;
  if FormSepardorTXT.ModalResult=mrOk  then
   begin
     for I := 0 to Length(FormSepardorTXT.Caracter) do
       Rs:=FormSepardorTXT.Caracter[i];
     DataToTxtConStock.separator:= Rs;
   end;

  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (QListaPrecios_2.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Lista_Con_Stock';
      SaveDialog1.DefaultExt:='TXT';
      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        begin
          if VirtualUI.Active then
            begin
              if Not(AnsiEndsText( '.txt', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
            end;

          Cursor:=crHourGlass;
          DataToTxtConStock.SaveToFile(SaveDialog1.FileName);
          Cursor:=crDefault;

          Sleep(500);
          if Not(VirtualUI.Active) then
            ShowMessage('Lista con Stock Exportada ... Ubicación: '+SaveDialog1.FileName);
          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog1.FileName);
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');

end;

//procedure TFormListaPreciosPersonalizada.ArmarArbolExecute(Sender: TObject);
//VAR
//  Nodo1: TTreeNode;
//  N, M: Integer;
//BEGIN
//  Nodo1 := NIL;
//  tvRubros.Items.Clear;
//  tvRubros.AutoExpand:=False;
//
//  Cancelar:=False;
//  CDSSubRub.Close;
//  CDSRubros.Close;
//  CDSRubros.Open;
//  CDSRubros.First;
//  CDSRubros.DisableControls;
//  WHILE (NOT (CDSRubros.Eof)) or (Cancelar=True) DO
//    BEGIN
//    //  Application.ProcessMessages;
//      Nodo1 := tvRubros.Items.Add(NIL, CDSRubrosCODIGO_RUBRO.AsString + '-' + CDSRubrosDETALLE_RUBRO.Value);
//      if CDSRubrosCONTROL_RUBRO.Value='S' then
//        Nodo1.StateIndex:=2
//      else
//        Nodo1.StateIndex:=1;
//      tvRubros.Selected := Nodo1;
//      N := tvRubros.Selected.AbsoluteIndex;
//      CDSSubRub.Close;
//      CDSSubRub.Params.ParamByName('codigo').Value := CDSRubrosCODIGO_RUBRO.Value;
//      CDSSubRub.Open;
//      CDSSubRub.First;
//      CDSSubRub.DisableControls;
//      if CDSSubRub.RecordCount>1 then
//        begin
//          WHILE (NOT(CDSSubRub.Eof)) or (Cancelar=True) DO
//            BEGIN
//            //  Application.ProcessMessages;
//              Nodo1 := tvRubros.Items.AddChild(tvRubros.Items[N],
//              CDSSubRubCODIGO_SUBRUBRO.AsString + '-' + CDSSubRubDETALLE_SUBRUBRO.Value);
//              if CDSSubRubCONTROL_SUBRUBRO.Value='S' then
//                Nodo1.StateIndex:=2
//              else
//                Nodo1.StateIndex:=1;
//              tvRubros.Selected := Nodo1;
//              M := tvRubros.Selected.AbsoluteIndex;
//              CDSSubRub.Next;
//           END;
//        end
//      else
//        if CDSSubRub.RecordCount=1 then
//          begin
//             Nodo1 := tvRubros.Items.AddChild(tvRubros.Items[N],
//               CDSSubRubCODIGO_SUBRUBRO.AsString + '-' + CDSSubRubDETALLE_SUBRUBRO.Value);
//              if CDSSubRubCONTROL_SUBRUBRO.Value='S' then
//                Nodo1.StateIndex:=2
//              else
//                Nodo1.StateIndex:=1;
//             tvRubros.Selected := Nodo1;
//             M := tvRubros.Selected.AbsoluteIndex;
//          end;
//      CDSSubRub.EnableControls;
//      CDSRubros.Next;
//    END;
//  CDSSubRub.Close;
//  CDSRubros.Close;
//  CDSSubRub.EnableControls;
//  CDSRubros.EnableControls;
//end;

procedure TFormListaPreciosPersonalizada.btExcelClick(Sender: TObject);
begin
  FormExportarExcelLista.Visible:=True;
  FormExportarExcelLista.BringToFront;
end;


procedure TFormListaPreciosPersonalizada.btEsquemasClick(Sender: TObject);
begin
  if Not(Assigned(FormEsquemaPrecios)) then
    FormEsquemaPrecios:=TFormEsquemaPrecios.Create(Self);
  FormEsquemaPrecios.Tag:=dbcLstEsquema.KeyValue;
  FormEsquemaPrecios.ShowModal;
  QLstCab.Close;
  QLstCab.Open;
  QLstCab.First;
end;

procedure TFormListaPreciosPersonalizada.btImprimirTablaClick(Sender: TObject);
begin
  CDSEmpresa.Open;
  QListaPrecios_2.IndexFieldNames:='codigo';
  frListaPrecios.LoadFromFile(DMMain_FD.PathReportesLst+'\LstPreciosTabla.fr3');

  if chConIva.Checked=True Then
    frListaPrecios.Variables['ConIva']:='''S'''
  else
  if chConIva.Checked=False Then
    frListaPrecios.Variables['ConIva']:='''N''';
  frListaPrecios.ShowReport;
end;



procedure TFormListaPreciosPersonalizada.btSalirClick(Sender: TObject);
begin
  Close;
end;



procedure TFormListaPreciosPersonalizada.spCantIdxChange(Sender: TObject);
begin
  lbCampos.Refresh;
end;

procedure TFormListaPreciosPersonalizada.spCantIdxClick(Sender: TObject);
begin
  lbCampos.Refresh;

end;


//procedure TFormListaPreciosPersonalizada.tvRubrosClick(Sender: TObject);
//var Codigo,Estado:String;
//  Nodo:TTreeNode;
//begin
//  inherited;
//  Nodo:=tvRubros.Selected;
//  Estado:='N';
//  if (Nodo.StateIndex>1) Then
//    Estado:='S';
//
//  codigo := Copy(Nodo.Text,1,pos('-',Nodo.Text)-1);
//
//  if  tvRubros.Selected.Level=0 then
//     begin
//       QCambiarRubro.Close;
//       QCambiarRubro.ParamByName('Codigo').Value  := codigo;
//       QCambiarRubro.ParamByName('estado').Value  := Estado;
//       QCambiarRubro.ExecSQL;
//       QCambiarRubro.Close;
//       QCambiarSubAll.Close;
//       QCambiarSubAll.ParamByName('Codigo').Value  := codigo;
//       QCambiarSubAll.ParamByName('estado').Value  := Estado;
//       QCambiarSubAll.ExecSQL;
//       QCambiarSubAll.Close;
//     end
//   else
//     if  tvRubros.Selected.Level=1 then
//       begin
//         QCambiarSubUnit.Close;
//         QCambiarSubUnit.ParamByName('Codigo').Value  := codigo;
//         QCambiarSubUnit.ParamByName('estado').Value  := Estado;
//         QCambiarSubUnit.ExecSQL;
//         QCambiarSubUnit.Close;
//       end
//
//end;

//procedure TFormListaPreciosPersonalizada.tvRubrosCustomDrawItem(
//  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
//  var DefaultDraw: Boolean);
//begin
// if Node.Level=0 then
//    begin
//      Sender.Canvas.Font.Color:=clBlue;
//      Sender.Canvas.Font.Style:=[fsBold];
//    end
// else
//   if Node.Level=1 then
//      begin
//        Sender.Canvas.Font.Color:=clGreen;
//        Sender.Canvas.Font.Style:=[fsBold];
//      end
//   else
//     begin
//       Sender.Canvas.Font.Color:=clBlack;
//       Sender.Canvas.Font.Style:=[];
//     end;
//
//  if cdsFocused in State then
//    Sender.Canvas.Font.Color:=clWhite;
//end;

procedure TFormListaPreciosPersonalizada.VerCodigoAlternativoClick(
  Sender: TObject);
begin
  VerCodigoAlternativo.Checked:=Not(VerCodigoAlternativo.Checked);
  dbgPrecios.Refresh;
end;

END.