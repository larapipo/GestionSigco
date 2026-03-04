unit UListaPreciosProveedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, Mask, DBCtrls, Grids, DBGrids,
  IBGenerator, ADODB, frxDBSet, frxClass, Menus, ImgList,
  JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit,
  JvExDBGrids, JvDBGrid,IniFiles, DBXCommon, System.Actions, JvAppStorage,
  JvAppIniStorage, JvThread, Datasnap.Provider, Datasnap.DBClient,
  CompBuscador,System.AnsiStrings, Data.DBXInterBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvGaugeCircle,
  JvExStdCtrls, JvCombobox, JvDBCombobox, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait, JvADOQuery, AdvUtil, AdvObj, BaseGrid, AdvGrid,
  tmsAdvGridExcel, AdvGridWorkbook, AdvCustomComponent, AdvPDFIO, AdvGridPDFIO,
  AdvMenus, AdvGridPopupToolBar, AsgListb, JvDataSource, System.Math,
  AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, System.ImageList,System.Types,
  frCoreClasses,UPrecioImportFNC_VCL;

type
  TFormListaPreciosProvee = class(TFormABMBase)
    pnCabecera: TPanel;
    Label2: TLabel;
    Label12: TLabel;
    DSPLPProveedorDet: TDataSetProvider;
    IBGDet: TIBGenerator;
    IBGCab: TIBGenerator;
    BuscarProveedor: TAction;
    OpenDialog: TOpenDialog;
    ImportarLista: TAction;
    pnAviso: TPanel;
    dbgArticulos: TDBGrid;
    frxReport: TfrxReport;
    frListaDet: TfrxDBDataset;
    frListaCab: TfrxDBDataset;
    AgregarStock: TAction;
    ppmLista: TPopupMenu;
    AgregarStock1: TMenuItem;
    dbmObs: TDBMemo;
    ActualizaUno: TAction;
    ActualizaTodos: TAction;
    ActulizaUno1: TMenuItem;
    DBEdit1: TDBEdit;
    dbgBonificaciones: TDBGrid;
    DSPDescuentos: TDataSetProvider;
    CDSDescuentos: TClientDataSet;
    CDSDescuentosID: TIntegerField;
    CDSDescuentosID_CAB: TIntegerField;
    DSDescuentos: TDataSource;
    IBDesctos: TIBGenerator;
    btRecalcular: TBitBtn;
    btn1: TToolButton;
    Recalcular: TAction;
    BuscarArticulo: TAction;
    RxDBECodigo: TJvDBComboEdit;
    dbeFechaCompra: TJvDBDateEdit;
    AgregarStock_2: TAction;
    AgregarStock21: TMenuItem;
    BorrarRubro: TAction;
    N1: TMenuItem;
    BorrarRubroSubRubro1: TMenuItem;
    DesasignarArticulos: TAction;
    DesasignarArticulos1: TMenuItem;
    AgregarLote: TAction;
    pgbCalculos: TProgressBar;
    JvHilo: TJvThread;
    Memo1: TMemo;
    BorrarStockTodos: TAction;
    N2: TMenuItem;
    BorrarStock1: TMenuItem;
    QLPProveedorDet: TFDQuery;
    btImprimir: TBitBtn;
    QDescuentos: TFDQuery;
    QDescuentosID: TIntegerField;
    QDescuentosID_CAB: TIntegerField;
    QDescuentosBONIFICACION: TFloatField;
    CDSDescuentosBONIFICACION: TFloatField;
    QLPProveedorCab: TFDQuery;
    QLPProveedorCabID: TIntegerField;
    QLPProveedorCabCODIGO_PROVEE: TStringField;
    QLPProveedorCabNOMBRE: TStringField;
    QLPProveedorCabFECHA: TSQLTimeStampField;
    QLPProveedorCabLISTA_NRO: TStringField;
    DSPLPProveedorCab: TDataSetProvider;
    CDSLPProveedorCab: TClientDataSet;
    CDSLPProveedorCabID: TIntegerField;
    CDSLPProveedorCabCODIGO_PROVEE: TStringField;
    CDSLPProveedorCabNOMBRE: TStringField;
    CDSLPProveedorCabFECHA: TSQLTimeStampField;
    CDSLPProveedorCabLISTA_NRO: TStringField;
    Label3: TLabel;
    btAcualizarTodo: TBitBtn;
    Label8: TLabel;
    RecalcularDesc: TAction;
    AgregarStockTodos: TAction;
    AgregartodosaStock1: TMenuItem;
    mmOpciones: TMainMenu;
    chAlfa: TMenuItem;
    chPrecioVta: TMenuItem;
    chbConIva: TMenuItem;
    chSinIva: TMenuItem;
    chSumaIva: TMenuItem;
    chbUsarCodigoProvee: TMenuItem;
    chGravCodAlter: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    chAltaImp: TMenuItem;
    ToolBar2: TToolBar;
    BuscaEnStock: TAction;
    BuscarArtEnStock1: TMenuItem;
    BuscaTodosEnStock: TAction;
    BuscaTodosEnStock1: TMenuItem;
    chActCostos: TMenuItem;
    BuscarfichadeArtculo1: TMenuItem;
    ppmXLSCols: TAdvPopupMenu;
    piCodigoProveedor: TMenuItem;
    piCodigoInt: TMenuItem;
    piDetalle: TMenuItem;
    piPrecioLista: TMenuItem;
    piDescuento: TMenuItem;
    piPrecio: TMenuItem;
    piMoneda: TMenuItem;
    piMarca: TMenuItem;
    piRubro: TMenuItem;
    piSubrubro: TMenuItem;
    piPresCant: TMenuItem;
    piPresUni: TMenuItem;
    CDSLPProveedorDet: TClientDataSet;
    CDSLPProveedorDetID: TIntegerField;
    CDSLPProveedorDetID_CAB: TIntegerField;
    CDSLPProveedorDetCODIGO_PROVEEDOR: TStringField;
    CDSLPProveedorDetCODIGO: TStringField;
    CDSLPProveedorDetDETALLE: TStringField;
    CDSLPProveedorDetPRECIO_LISTA: TFloatField;
    CDSLPProveedorDetDESCUENTO: TFloatField;
    CDSLPProveedorDetPRECIO: TFloatField;
    CDSLPProveedorDetRUBRO: TStringField;
    CDSLPProveedorDetSUBRUBRO: TStringField;
    CDSLPProveedorDetMARCA: TStringField;
    CDSLPProveedorDetCODIGOBARRA: TStringField;
    CDSLPProveedorDetDETALLE_ADICIONAL: TStringField;
    CDSLPProveedorDetFECHA_ACTUALIZ: TSQLTimeStampField;
    CDSLPProveedorDetMONEDA: TIntegerField;
    CDSLPProveedorDetPRESENTACION_UNIDAD: TStringField;
    CDSLPProveedorDetPRESENTACION_CANTIDAD: TFloatField;
    CDSLPProveedorDetIVA_TASA: TFloatField;
    CDSLPProveedorDetMUESTRARUBRO: TStringField;
    CDSLPProveedorDetMUESTRASUBRUBRO: TStringField;
    CDSLPProveedorDetDESCRIPCION_MARCA: TStringField;
    CDSLPProveedorDetMUESTRAMONEDA: TStringField;
    BitBtn1: TBitBtn;
    ModificarUno: TAction;
    ConfirmaUno: TAction;
    QUltimoCodigo2ULTID: TIntegerField;
    edBuscar: TDBAdvSearchEdit;
    pnGrilla: TPanel;
    dbgDetalle: TJvDBGrid;
    dbeNombre: TDBEdit;
    N5: TMenuItem;
    mCodigos: TMenuItem;
    cbChar2: TMenuItem;
    cbCeros: TMenuItem;
    cbGuion: TMenuItem;
    cbPunto: TMenuItem;
    Opciones1: TMenuItem;
    cbJustifica: TMenuItem;
    cbJustDerecha: TMenuItem;
    cbJustIzquierda: TMenuItem;
    cbEspacios: TMenuItem;
    pnDetalle: TPanel;
    Label1: TLabel;
    spAyudaFormato: TSpeedButton;
    JvDBStatusLabel2: TJvDBStatusLabel;
    btBuscaXLS: TSpeedButton;
    edPath: TEdit;
    btImportar: TBitBtn;
    btCancel: TBitBtn;
    chkSubRubroPordef: TCheckBox;
    cbRubroPorDef: TJvDBComboBox;
    cbSubRubPorDef: TJvDBComboBox;
    pbCarga: TProgressBar;
    chbFiltro: TCheckBox;
    gListaXLS: TAdvStringGrid;
    CambiaCodAct: TAction;
    edPrefijo: TEdit;

    chPrefijo: TCheckBox;
    DSLPProveedorDet: TDataSource;
    pnActDatosStk: TPanel;
    grActDatosStk: TGroupBox;
    chDetalleStk: TCheckBox;
    chMarca: TCheckBox;
    chSubRubroStk: TCheckBox;
    chCodigoBarraStk: TCheckBox;
    CheckBox4: TCheckBox;
    BitBtn2: TBitBtn;
    btOkStk: TBitBtn;
    ActualizarDatosStkUno: TAction;
    ActualizaDatosStk: TMenuItem;
    ActualizarDatosStkTodos: TAction;
    ActualizaDatosStkTodos: TMenuItem;
    DesasignarTodos: TAction;
    DesasignaTodos: TMenuItem;
    chbSacarCeroLeft: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Splitter1: TSplitter;
    QLPProveedorCabRECARGO: TFloatField;
    CDSLPProveedorCabRECARGO: TFloatField;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    CDSLPProveedorDetCANT: TIntegerField;
    PonerProvee_Marca: TAction;
    PonerProveeMarca1: TMenuItem;
    AdvGridExcelIO1: TAdvGridExcelIO;
    CambiarProveedor: TAction;
    SpeedButton1: TSpeedButton;
    ToolButton1: TToolButton;
    QLPProveedorDetID: TIntegerField;
    QLPProveedorDetID_CAB: TIntegerField;
    QLPProveedorDetCODIGO_PROVEEDOR: TStringField;
    QLPProveedorDetCODIGO: TStringField;
    QLPProveedorDetDETALLE: TStringField;
    QLPProveedorDetPRECIO: TFloatField;
    QLPProveedorDetDESCUENTO: TFloatField;
    QLPProveedorDetPRECIO_LISTA: TFloatField;
    QLPProveedorDetRUBRO: TStringField;
    QLPProveedorDetSUBRUBRO: TStringField;
    QLPProveedorDetMARCA: TStringField;
    QLPProveedorDetCODIGOBARRA: TStringField;
    QLPProveedorDetDETALLE_ADICIONAL: TStringField;
    QLPProveedorDetFECHA_ACTUALIZ: TSQLTimeStampField;
    QLPProveedorDetMONEDA: TIntegerField;
    QLPProveedorDetPRESENTACION_UNIDAD: TStringField;
    QLPProveedorDetPRESENTACION_CANTIDAD: TFloatField;
    QLPProveedorDetIVA_TASA: TFloatField;
    QLPProveedorDetMUESTRARUBRO: TStringField;
    QLPProveedorDetMUESTRASUBRUBRO: TStringField;
    QLPProveedorDetDESCRIPCION_MARCA: TStringField;
    QLPProveedorDetCANT: TIntegerField;
    QLPProveedorDetMUESTRAMONEDA: TStringField;
    Button1: TButton;
    CDSDatosImportados: TClientDataSet;
    pcGeneral: TPageControl;
    pagImportacion: TTabSheet;
    pagResult: TTabSheet;
    dbgImportacion: TDBGrid;
    DSDatosImportados: TDataSource;
    procedure CDSLPProveedorCabCODIGO_PROVEESetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSLPProveedorCabNewRecord(DataSet: TDataSet);
    procedure CDSLPProveedorDetCODIGOSetText(Sender: TField;
      const Text: String);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleEnter(Sender: TObject);
    procedure CDSLPProveedorDetDETALLESetText(Sender: TField;
      const Text: String);
    procedure ImportarListaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure spAyudaFormatoClick(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSLPProveedorDetNewRecord(DataSet: TDataSet);
    procedure dbgDetalleTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btImprimirClick(Sender: TObject);
    procedure AgregarStockExecute(Sender: TObject);
    procedure ActualizaUnoExecute(Sender: TObject);
    procedure ActualizaTodosExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSDescuentosNewRecord(DataSet: TDataSet);
    procedure RecalcularExecute(Sender: TObject);
    procedure CDSDescuentosAfterPost(DataSet: TDataSet);
    procedure CDSDescuentosAfterDelete(DataSet: TDataSet);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSLPProveedorDetPRECIO_LISTASetText(Sender: TField;
      const Text: string);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure AgregarStock_2Execute(Sender: TObject);
    procedure BorrarRubroExecute(Sender: TObject);
    procedure DesasignarArticulosExecute(Sender: TObject);
    procedure chbFiltroClick(Sender: TObject);
    procedure dbgDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCancelClick(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure AgregarLoteExecute(Sender: TObject);
    procedure CDSLPProveedorDetDESCUENTOSetText(Sender: TField;
      const Text: string);
    procedure JvHiloExecute(Sender: TObject; Params: Pointer);
    procedure btImportarClick(Sender: TObject);
    procedure JvHiloFinishAll(Sender: TObject);
    procedure BorrarStockTodosExecute(Sender: TObject);
    function  ExisteStock: Boolean;
    procedure chkSubRubroPordefClick(Sender: TObject);
    procedure IniciaInd;
    procedure BorrarExecute(Sender: TObject);
    procedure CancelarStock;
    procedure ModificarExecute(Sender: TObject);
    procedure RecalcularDescExecute(Sender: TObject);
    procedure AgregarStockTodosExecute(Sender: TObject);
    function  IniciaCodAct: string;
    procedure chSinIvaClick(Sender: TObject);
    procedure chbConIvaClick(Sender: TObject);
    procedure chSumaIvaClick(Sender: TObject);
    procedure chGravCodAlterClick(Sender: TObject);
    procedure chbUsarCodigoProveeClick(Sender: TObject);
    procedure BuscaEnStockExecute(Sender: TObject);
    procedure BuscaTodosEnStockExecute(Sender: TObject);
    procedure btBuscaXLSClick(Sender: TObject);

    procedure ActIndXLS;
    procedure gListaXLSGetEditorProp(Sender: TObject; ACol, ARow: Integer;
      AEditLink: TEditLink);
    procedure gListaXLSGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure gListaXLSComboObjectChange(Sender: TObject; ACol, ARow,
      AItemIndex: Integer; ASelection: string; AObject: TObject);
    procedure gListaXLSGetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure gListaXLSLoadCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure ModificarUnoExecute(Sender: TObject);
    procedure ConfirmaUnoExecute(Sender: TObject);
    procedure gListaXLSGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
//    procedure gListaXLSGetAlignment(Sender: TObject; ARow, ACol: Integer;
//      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure edBuscarSelect(Sender: TObject);
    procedure edBuscarDropDownHeaderButtonClick(Sender: TObject;
      ButtonIndex: Integer);
    procedure  ColBusqueda(col:integer);
    procedure gListaXLSCanSort(Sender: TObject; ACol: Integer; var DoSort: Boolean);
    procedure dbgBonificacionesExit(Sender: TObject);
    procedure gListaXLSCanDeleteRow(Sender: TObject; ARow: Integer; var CanDelete: Boolean);
    procedure cbJustIzquierdaClick(Sender: TObject);
    procedure cbJustDerechaClick(Sender: TObject);
    procedure cbEspaciosClick(Sender: TObject);
    procedure cbCerosClick(Sender: TObject);
    procedure cbGuionClick(Sender: TObject);
    procedure cbPuntoClick(Sender: TObject);
    procedure chAlfaClick(Sender: TObject);
    procedure chPrefijoClick(Sender: TObject);
    procedure CDSLPProveedorDetPRECIOSetText(Sender: TField;
      const Text: string);
    procedure ActualizarDatosStkUnoExecute(Sender: TObject);
    procedure ActualizarDatosStkTodosExecute(Sender: TObject);
    procedure IniciaProgress;
    procedure FinProgress;
    function  SubRubroPorDef: boolean;
    procedure Desasignar;
    procedure DesasignarTodosExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure JvHiloFinish(Sender: TObject);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PonerProvee_MarcaExecute(Sender: TObject);
    procedure gListaXLSGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TAsgVAlignment);
    procedure CambiarProveedorExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    Cancel:     Boolean;
    Import:     Boolean;
    ContErr:    Integer;
    CantAltas:  Integer;
    ActCostos:  Boolean;
    HayAltas:   boolean;
    DstoTot:    Double;
    CodAct:     string;
    CodTasaIva: integer;
    ColList:    TStringList;
    ControlUno: boolean;
    fX:         Integer; // Fila Actual XLS
    BM:         TBookMark;
    UltId:      integer;  // Ultimo ID de lista detalle, para comprobar los art nuevos.
    colBusca:   Integer;



  public
    { Public declarations }
    CodigoAlfa:String;
    Justifica, Caracter:Integer;
    GeneraCodigoBarra,CodigoSecuencial :String;
    Codigo:String;//,CodigoProv:String;
    StockIngresado:tStringList;
    function Generar_Codigo:string;
    FUNCTION AsignaProveedor(Dato: STRING): Boolean;
    procedure Actualizar;
    procedure AddStock(const Actualiza: boolean = false);
    procedure Progress;
    Function AgregarMarca(Detalle: string):String;
    Function AgregarRubro(Detalle:string):String;
    function AgregarSubRubro(Detalle:String; Rubro: string):String;
    function BuscaArtEnStock(CodAlt:string; Det:string = ''):string;
    function Codifica(Codigo:string):string;
    function CheckFloat(var Value:string):boolean;
    function GetUltCodInt:string;
    function SacaSufijo(cod:string):string;
    function Fact9(rango:integer):integer;
    function SumaChar(Str: string):string;
  end;

const

  ICod       = 0;
  IDet       = 1;
  IPr        = 2;
  IPrLis     = 3;
  IRub       = 4;
  ISubR      = 5;
  IMarc      = 6;
  IIva       = 7;
  IMoneda    = 8;
  IPresCant  = 9;
  IPresUni   =10;
  ICodBarras =11;
  IDetAd     =12;
  IDescuento =13;

var
  FormListaPreciosProvee: TFormListaPreciosProvee;
  A,B,C:Real;
  Ind: Array [ICod..IDescuento] of ShortInt;     // 0 cod, 1 det, 2 Precio, 3 PrecioLista... etc


implementation

uses  DMListaPreciosProv,UBuscadorProveedor, UAvisoProceso, UStock_2,
      UBuscadorArticulos, UBuscadorSubRubrosStock, UBuscadorMarcas, UDMain_FD,
  UCambioProveedorListaPrecios;
{$R *.DFM}
{$R-}
procedure TFormListaPreciosProvee.IniciaInd;
var
  x: Integer;
begin
  for x := ICod to IDescuento do
    Ind[x]:=-1;
end;

procedure TFormListaPreciosProvee.ActIndXLS;
var X,I:integer; N:string;
begin
  X :=  -1;
end;

function TFormListaPreciosProvee.Codifica(Codigo:String):string;
begin
  if chAlfa.Checked=False Then
    codigo := copy('00000000',1,8-length(CODIGO)) + Codigo
  else
    begin
      if cbJustIzquierda.Checked Then
        begin
          if cbEspacios.Checked Then
            codigo  := Codigo+copy('        ',1,8-length(CODIGO))
          else
          if cbGuion.Checked Then
            codigo  := Codigo+copy('--------',1,8-length(CODIGO))
          else
          if cbPunto.Checked Then
            codigo  := Codigo+copy('........',1,8-length(CODIGO))
          else //  if cbCeros.Checked then
            codigo  := Codigo+copy('00000000',1,8-length(CODIGO));
        end
      else
        if cbJustDerecha.Checked Then
          begin
            if cbEspacios.Checked Then
              codigo   := copy('        ',1,8-length(CODIGO))+Codigo
            else
            if cbGuion.Checked Then
              codigo   := copy('--------',1,8-length(CODIGO))+Codigo
            else
            if cbPunto.Checked Then
              codigo   := copy('........',1,8-length(CODIGO))+Codigo
            else   //if cbCeros.Checked then
              codigo   := copy('00000000',1,8-length(CODIGO))+Codigo;
         end;
    end;
  Result  :=  codigo;
end;

function TFormListaPreciosProvee.CheckFloat(var Value:string):boolean;      // Devuelve el valor string corregido para usar como float
var Aux: Double; SAux:string; Pos:integer;                                  // (Reemplaza "," y saca los espacios y signos "$")
begin
      if (Value<>'') then
        begin
          if ( TryStrToFloat(Value,Aux)) then
            Result  :=  true
          else
            begin
              SAux  :=  trim(StringReplace(Value,'$','',[]));
              Pos   :=  LastDelimiter(',',SAux);
              if Pos>0 then
                SAux  :=  StuffString(SAux,Pos,1,'.');

              if TryStrToFloat(SAux,Aux) then
                begin
                  Value   :=  FloatToStr(Aux);
                  Result  :=  True;
                end
              else
                Result  :=  False;
            end
        end
      else
        Result  :=  False;
end;

function TFormListaPreciosProvee.BuscaArtEnStock(CodAlt:string; Det:string = ''):string;
var
  CodAux:string;
begin
  CodAux  := '';
  with DatosListaPrecioProv do
    begin
      if chbUsarCodigoProvee.checked then
        begin
          QBuscaArticulo.Close;
          QBuscaArticulo.Params.ParamByName('codigo').Value :=  Codifica(CodAlt);
          QBuscaArticulo.Open;
          if not QBuscaArticulo.IsEmpty then
            CodAux  :=  QBuscaArticuloCODIGO_STK.AsString
          else
            CodAux  :=  '';
          QBuscaArticulo.Close;
        end;
      if CodAux='' then
        begin
          QBuscaArtEnStock.Close;
          QBuscaArtEnStock.Params.ParamByName('CodAlt').Value :=  CodAlt;
          QBuscaArtEnStock.Open;
          if not QBuscaArtEnStock.IsEmpty then
            begin
              if QBuscaArtEnStock.RecordCount=1 then
                CodAux    :=  QBuscaArtEnStockCODIGO_STK.AsString
              else
                begin
                  if Length(Det)>45 then Det  :=  LeftStr(Det,45);
                  if QBuscaArtEnStock.Locate('DETALLE_STK',Det,[loPartialKey,loCaseInsensitive]) then
                    CodAux  :=  QBuscaArtEnStockCODIGO_STK.AsString
                  else
                    CodAux  :=  '';
                end;
            end
          else
            CodAux    :=  '';
          QBuscaArtEnStock.Close;
        end;

      Result    :=  CodAux;

    end;
end;

procedure TFormListaPreciosProvee.BuscaEnStockExecute(Sender: TObject);
var
  CodAux:string;
begin
  inherited;
  CodAux   :=  BuscaArtEnStock(CDSLPProveedorDetCODIGO_PROVEEDOR.AsString,CDSLPProveedorDetDETALLE_ADICIONAL.AsString);
  if CodAux<>'' then
    begin
      ModificarUno.Execute;
      CDSLPProveedorDetCODIGO.AsString  :=  CodAux;
      ConfirmaUno.Execute;
    end
  else
    Showmessage( 'Artículo no encontrado.');
end;

function TFormListaPreciosProvee.GetUltCodInt: string;
var Cod: string;
begin
  Cod:='';
  with DatosListaPrecioProv do
    begin
      QUltimoCodigoIntLista.Close;
      QUltimoCodigoIntLista.ParamByName('Lista').value :=  CDSLPProveedorCabID.AsInteger;
      QUltimoCodigoIntLista.Open;
      if not QUltimoCodigoIntLista.IsEmpty then
        Cod :=  QUltimoCodigoIntListaCODIGO.AsString;
      QUltimoCodigoIntLista.Close;
    end;
  Result  :=  Cod;

end;


function TFormListaPreciosProvee.IniciaCodAct: string;
var Cod, CodL: string; N: integer;
begin
  Cod :=  '';
  if (CodigoSecuencial='S')  Then
    begin
      with  DatosListaPrecioProv do
        begin
          QUltimoCodigoStk.Close;
          if chAlfa.Checked then
            QUltimoCodigoStk.ParamByName('Prefijo').Value   :=  edPrefijo.Text + '%'
          else
            QUltimoCodigoStk.ParamByName('Prefijo').Value   :=  '[0-9]{8}';
          QUltimoCodigoStk.Open;

          if QUltimoCodigoStk.Fields[0].AsString<>'' Then
              Cod:= QUltimoCodigoStk.Fields[0].AsString
          else
            Cod:=edPrefijo.Text + RightStr('00000000', 8-Length(edPrefijo.Text));

          QUltimoCodigoStk.Close;
        end;
    end;
  Result  :=  Cod;
end;


procedure TFormListaPreciosProvee.PonerProvee_MarcaExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSLPProveedorDet.IsEmpty) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosListaPrecioProv.spMarka_Provee.Close;
        DatosListaPrecioProv.spMarka_Provee.ParamByName('CODIGO').Value:=DSBase.DataSet.FieldByName('CODIGO_PROVEE').Value;
        DatosListaPrecioProv.spMarka_Provee.ExecProc;
        DatosListaPrecioProv.spMarka_Provee.Close;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se aplica el cambio...');
      end;
    end;
end;

procedure TFormListaPreciosProvee.Progress;
begin
  pbCarga.Position:=pbCarga.Position+1;
end;

Function TFormListaPreciosProvee.AgregarMarca(Detalle: string):String;
var V_Codigo:String;
begin
  V_Codigo :='';
  DatosListaPrecioProv.QUltimoCodMarca.Close;
  DatosListaPrecioProv.QUltimoCodMarca.Open;
  if DatosListaPrecioProv.QUltimoCodMarca.Fields[0].AsString<>'' then
    V_Codigo:=Copy('0000',1,4-Length(IntToStr(DatosListaPrecioProv.QUltimoCodMarca.Fields[0].AsInteger+1)))+IntToStr(DatosListaPrecioProv.QUltimoCodMarca.Fields[0].AsInteger+1)
   else
    V_Codigo:='0000';
   DatosListaPrecioProv.QUltimoCodMarca.Close;
   DatosListaPrecioProv.spABMMarca.Close;
   DatosListaPrecioProv.spABMMarca.ParamByName('CODIGO').Value                := V_Codigo;
   DatosListaPrecioProv.spABMMarca.ParamByName('Detalle').AsString            := Detalle;
   DatosListaPrecioProv.spABMMarca.ExecProc;
   DatosListaPrecioProv.spABMMarca.Close;
   Result := V_Codigo;
end;


Function TFormListaPreciosProvee.AgregarRubro(Detalle:string):String;
var V_Codigo:String;
begin
  V_Codigo  :='';
  DatosListaPrecioProv.QUltimoCodRub.Close;
  DatosListaPrecioProv.QUltimoCodRub.Open;
  if DatosListaPrecioProv.QUltimoCodRub.Fields[0].AsString<>'' then
    V_Codigo:=Copy('000',1,3-Length(IntToStr(DatosListaPrecioProv.QUltimoCodRub.Fields[0].AsInteger+1)))+IntToStr(DatosListaPrecioProv.QUltimoCodRub.Fields[0].AsInteger+1)
  else
    V_Codigo:='001';
  DatosListaPrecioProv.spABMRubro.Close;
  DatosListaPrecioProv.spABMRubro.ParamByName('CODIGO').Value                := V_Codigo;
  DatosListaPrecioProv.spABMRubro.ParamByName('Detalle').AsString            := Copy(Detalle,1,35);
  DatosListaPrecioProv.spABMRubro.ExecProc;
  DatosListaPrecioProv.spABMRubro.Close;
  Result := V_Codigo;
end;

function TFormListaPreciosProvee.AgregarSubRubro(Detalle:String; Rubro: string):String;
var V_Codigo:String;
Ok:Boolean;
begin
  V_Codigo:='';
  DatosListaPrecioProv.QUltimoCodSubRub.Close;
  DatosListaPrecioProv.QUltimoCodSubRub.ParamByName('codigo').AsString:=Rubro;
  DatosListaPrecioProv.QUltimoCodSubRub.Open;
  if DatosListaPrecioProv.QUltimoCodSubRub.Fields[0].AsString<>'' then
    V_Codigo:=Copy('00000',1,5-Length(IntToStr(DatosListaPrecioProv.QUltimoCodSubRub.Fields[0].AsInteger+1)))+IntToStr(DatosListaPrecioProv.QUltimoCodSubRub.Fields[0].AsInteger+1)
  else
    V_Codigo:=Rubro+'01';
  Ok :=False;
  while Not(Ok) do
    begin
      DatosListaPrecioProv.QVerifi_SubRubro.Close;
      DatosListaPrecioProv.QVerifi_SubRubro.ParamByName('codigo').AsString:=V_Codigo;
      DatosListaPrecioProv.QVerifi_SubRubro.Open;
      if DatosListaPrecioProv.QVerifi_SubRubroCODIGO_SUBRUBRO.AsString<>'' then
        begin
          Ok:=False;
          V_Codigo:=Copy('00000',1,5-Length(IntToStr(StrToInt(V_Codigo)+1)))+(IntToStr(StrToInt(V_Codigo)+1));
        end
      else
        Ok:=True;
    end;
  DatosListaPrecioProv.spABMSubRubro.Close;
  DatosListaPrecioProv.spABMSubRubro.ParamByName('CODIGO').AsString       := V_Codigo;
  DatosListaPrecioProv.spABMSubRubro.ParamByName('Detalle').AsString      := Copy(Detalle,1,45);
  DatosListaPrecioProv.spABMSubRubro.ParamByName('codigo_Rubro').AsString := Rubro;
  DatosListaPrecioProv.spABMSubRubro.ExecProc;
  DatosListaPrecioProv.spABMSubRubro.Close;
  Result := V_Codigo;
end;



function  TFormListaPreciosProvee.ExisteStock:boolean;
begin
  if (CDSLPProveedorDetCODIGO.AsString='') or (CDSLPProveedorDetCODIGO=NIL) then
    Result:=False
  else
    Result:=True;
end;


procedure TFormListaPreciosProvee.ActualizarDatosStkUnoExecute(Sender: TObject);
begin
  inherited;
  if ExisteStock then
    begin
      ModificarUno.Execute;
      AddStock(True);
      ConfirmaUno.Execute;
    end;
end;

procedure TFormListaPreciosProvee.Actualizar;
VAR i,SPos:Byte;
Nombre,Codigo, CodRub, CodSubRub, CodMarc, DetRub, DetSubr, DetMarc, SAux, SValue:String;
Precio1,Precio2,Iva:Real;
IvaTasa:Extended;
begin
  if (gListaXLS.AllCells[Ind[ICod],fX]<>'') and (gListaXLS.AllCells[ind[IDet],fX]<>'') then
    begin
      //For i:=0 to ADODSListaXLS.FieldCount-1 do
      Precio1 := 0;
      Precio2 := 0;
      iva     := 0;
      IvaTasa := 21.00;

      if Ind[IIva]<>-1 then
        begin
          if not TryStrToFloat(gListaXLS.AllCells[Ind[IIva],fX],IvaTasa) then     // Si no encuentra un número, verifica A,B,C.
            if (gListaXLS.AllCells[Ind[IIva],fX]<>'') Then
              begin
                if gListaXLS.AllCells[Ind[IIva],fX]='A' then
                  IvaTasa:=A
                  else
                if gListaXLS.AllCells[Ind[IIva],fX]='B' then
                  IvaTasa:=B
                  else
                if gListaXLS.AllCells[Ind[IIva],fX]='C' then
                  IvaTasa:=C
                  else
                    IvaTasa := 21.00;
              end;
        end;
      iva:=1+IvaTasa/100;

      CDSLPProveedorDetIVA_TASA.AsFloat   :=  IvaTasa;

      // Nombre:=UpperCase(ADODSListaXLS.Fields[i].FieldName);
      if Ind[Idet]<>-1 then
        CDSLPProveedorDetDETALLE.AsString               :=  LeftStr(UpperCase(gListaXLS.AllCells[Ind[IDet],fX]),45);

      if Ind[IDetAd]<>-1 then
        CDSLPProveedorDetDETALLE_ADICIONAL.AsString     :=  UpperCase(gListaXLS.AllCells[Ind[IDetAd],fX])
      else
        CDSLPProveedorDetDETALLE_ADICIONAL.AsString     :=  CDSLPProveedorDetDETALLE.AsString;

      if Ind[IDescuento]<>-1 then
        begin
          try
            if gListaXLS.AllCells[Ind[IDescuento],fX]<>'' then
              CDSLPProveedorDetDESCUENTO.Text :=  FloatToStr(gListaXLS.Floats[Ind[IDescuento],fX]);
          except
            CDSLPProveedorDetDESCUENTO.AsFloat := 0;
          end;
        end;

      if Ind[IMoneda]<>-1 then
        begin
          if gListaXLS.AllCells[Ind[IMoneda],fX]<>'' then
            begin
              try
                if (gListaXLS.AllCells[Ind[IMoneda],fX]='$')
                or (UpperCase(gListaXLS.AllCells[Ind[IMoneda],fX])='PES') then
                  begin
                    CDSLPProveedorDetMONEDA.AsInteger          := 1;
                  end
                else
                  if not DatosListaPrecioProv.QMonedas.Locate('SIGNO', LowerCase(gListaXLS.AllCells[Ind[IMoneda],fX]),[]) then
                    if DatosListaPrecioProv.QMonedas.Locate('ID',gListaXLS.Ints[Ind[IMoneda],fX],[]) then
                        CDSLPProveedorDetMONEDA.AsInteger      :=  DatosListaPrecioProv.QMonedasID.AsInteger
                    else
                      CDSLPProveedorDetMONEDA.AsInteger  := 1
                  else
                    CDSLPProveedorDetMONEDA.AsInteger   :=  DatosListaPrecioProv.QMonedasID.AsInteger;
              except
                CDSLPProveedorDetMONEDA.AsInteger     := 1;
              end;

            end
          else
            CDSLPProveedorDetMONEDA.AsInteger         := 1;
        end;

      if Ind[IPr]<>-1 Then
        BEGIN
         { SValue    :=  gListaXLS.cells[Ind[IPr],fX];

          if not TryStrToFloat(SValue,Precio1) then
            begin
              SAux  :=  trim(StringReplace(SValue,'$','',[]));
              SPos   :=  LastDelimiter(',',SAux);
              if SPos>0 then
                SAux  :=  StuffString(SAux,SPos,1,'.');

              if not TryStrToFloat(SAux,Precio1) then
                Precio1   :=  0.0;
            end;  }
          Precio1:=gListaXLS.Floats[Ind[IPr],fX];
          Precio2:=gListaXLS.Floats[Ind[IPr],fX];

          if chbConIva.Checked then
            begin
              Precio1:=Precio1/(iva);
              Precio2:=Precio2/(iva);
            end
          else
            if chSumaIva.Checked then
              begin
                Precio1:=Precio1*(iva);
                Precio2:=Precio2*(iva);
              end;

          precio2                               := Precio2 * DstoTot;
          CDSLPProveedorDetPRECIO_LISTA.AsFloat := RoundTo(Precio1,-3);
          CDSLPProveedorDetPRECIO.AsFloat       := RoundTo(Precio2,-3);;
        END;

      if (Ind[IPrLis]<>-1) and (gListaXLS.Floats[Ind[IPrLis],fX]<>0) Then
        BEGIN
          Precio1   := gListaXLS.Floats[Ind[IPrLis],fX];
          if chbConIva.Checked then
            Precio1:=Precio1/(iva)
          else
            if chSumaIva.Checked then
              Precio1 :=  Precio1*(iva);

          CDSLPProveedorDetPRECIO_LISTA.AsFloat:=RoundTo(Precio1,-3);

          if Ind[IPr]=-1 Then
            CDSLPProveedorDetPRECIO.AsFloat   :=  RoundTo( CDSLPProveedorDetPRECIO_LISTA.AsFloat * DstoTot ,-3);
        END;
      // *********************************************************************************************
      // *******************  M A R C A S ************************************************************
      // *********************************************************************************************
      if (Ind[IMarc]<>-1) then
        begin
          DetMarc := gListaXLS.AllCells[Ind[IMarc],fX];
          if DetMarc<>'' then
            begin
              if (Length(DetMarc)<=4) then
                begin
                  CodMarc :=  Copy('0000',1,4-Length(DetMarc))+DetMarc;
                  DatosListaPrecioProv.QBuscaMarcaCod.Close;
                  DatosListaPrecioProv.QBuscaMarcaCod.ParamByName('codigo').Value :=  CodMarc;
                  DatosListaPrecioProv.QBuscaMarcaCod.Open;
                  if not DatosListaPrecioProv.QBuscaMarcaCod.IsEmpty then
                    begin
                      CDSLPProveedorDetMarca.AsString                 :=  CodMarc;
                      CDSLPProveedorDetDESCRIPCION_MARCA.AsString     :=  DatosListaPrecioProv.QBuscaMarcaCodDESCRIPCION_MARCA.AsString;
                    end
                  else
                    begin
                      CDSLPProveedorDetMarca.AsString                 :=  '';
                      CDSLPProveedorDetDESCRIPCION_MARCA.AsString     :=  LeftStr(UpperCase(DetMarc),25);
                    end;
                  DatosListaPrecioProv.QBuscaMarcaCod.Close;
                end
              else
                begin
                  CDSLPProveedorDetMarca.AsString                 :=  '';
                  CDSLPProveedorDetDESCRIPCION_MARCA.AsString     :=  LeftStr(UpperCase(DetMarc),25);
                end;
            end;

        end;
      // *********************************************************************************************
      // *******************  R U B R O S ************************************************************
      // *********************************************************************************************
      if (Ind[IRub]<>-1) then
        begin
          DetRub  :=   gListaXLS.AllCells[Ind[IRub],fX];
          if (DetRub <>'') then
            begin
              if (Length(DetRub)<=3) then
                begin
                  CodRub  :=  Copy('000',1,3-Length(DetRub))+DetRub;
                  DatosListaPrecioProv.QBuscadorCodRubro.Close;
                  DatosListaPrecioProv.QBuscadorCodRubro.ParamByName('codigo').Value  := CodRub;
                  DatosListaPrecioProv.QBuscadorCodRubro.Open;

                  if not DatosListaPrecioProv.QBuscadorCodRubro.IsEmpty then
                    begin
                      CDSLPProveedorDetRUBRO.AsString        := CodRub;
                      CDSLPProveedorDetMUESTRARUBRO.AsString := DatosListaPrecioProv.QBuscadorCodRubroDETALLE_RUBRO.AsString;
                    end
                  else
                    begin
                      CDSLPProveedorDetRUBRO.AsString        := '';
                      CDSLPProveedorDetMUESTRARUBRO.AsString := LeftStr(UpperCase(DetRub),35);
                    end;
                  DatosListaPrecioProv.QBuscadorCodRubro.Close;
                end
              else
                begin
                  CDSLPProveedorDetRUBRO.AsString        := '';
                  CDSLPProveedorDetMUESTRARUBRO.AsString := LeftStr(UpperCase(DetRub),35);
                end;
            end;
        end;
      // *********************************************************************************************
      // ******************* S U B - R U B R O S ************************************************************
      // *********************************************************************************************
      if Ind[ISubR]<>-1 then
        begin
          DetSubr     :=   gListaXLS.AllCells[Ind[ISubR],fX];
          if (DetSubr<>'') then
            begin
              if (Length(DetSubr)<=5) then
                begin
                  CodSubRub  :=  Copy('00000',1,5-Length(DetSubr))+DetSubr;
                  DatosListaPrecioProv.QBuscadorCodSubRubro.Close;
                  DatosListaPrecioProv.QBuscadorCodSubRubro.ParamByName('rubro').Value   := CDSLPProveedorDetRUBRO.AsString;
                  DatosListaPrecioProv.QBuscadorCodSubRubro.ParamByName('codigo').Value  := CodSubRub;
                  DatosListaPrecioProv.QBuscadorCodSubRubro.Open;

                  if not DatosListaPrecioProv.QBuscadorCodSubRubro.IsEmpty  then
                    begin
                      CDSLPProveedorDetSUBRUBRO.AsString            :=  CodSubRub;
                      CDSLPProveedorDetMUESTRASUBRUBRO.AsString     :=  DatosListaPrecioProv.QBuscadorCodSubRubroDETALLE_SUBRUBRO.AsString;
                    end
                  else
                    begin
                      CDSLPProveedorDetSUBRUBRO.AsString        := '';
                      CDSLPProveedorDetMUESTRASUBRUBRO.AsString := LeftStr(UpperCase(DetSubr),45);
                    end;
                  DatosListaPrecioProv.QBuscadorCodSubRubro.Close;
                end
              else
                begin
                  CDSLPProveedorDetSUBRUBRO.AsString        := '';
                  CDSLPProveedorDetMUESTRASUBRUBRO.AsString := LeftStr(UpperCase(DetSubr),45);
                end;
            end;
        end;

      if Ind[IPresCant]<>-1 then
        begin
          if gListaXLS.AllCells[Ind[IPresCant],fX]<>'' then
            try
              CDSLPProveedorDetPRESENTACION_CANTIDAD.AsFloat  :=  gListaXLS.Floats[Ind[IPresCant],fX];
            except
              CDSLPProveedorDetPRESENTACION_CANTIDAD.AsFloat  :=  1;
            end
          else
            CDSLPProveedorDetPRESENTACION_CANTIDAD.AsFloat    :=  1;
        end;

      if Ind[IPresUni]<>-1 then
        begin
          if gListaXLS.AllCells[Ind[IPresUni],fX]<>'' then
            try
              if DatosListaPrecioProv.QUnidades.Locate('SIGLAS',UpperCase(gListaXLS.AllCells[Ind[IPresUni],fX]),[]) then
                CDSLPProveedorDetPRESENTACION_UNIDAD.AsString   :=  DatosListaPrecioProv.QUnidadesSIGLAS.AsString
              else
                CDSLPProveedorDetPRESENTACION_UNIDAD.AsString   :=  'UNI';
            except
              CDSLPProveedorDetPRESENTACION_UNIDAD.AsString   :=  'UNI';
            end
          else
            CDSLPProveedorDetPRESENTACION_UNIDAD.AsString   :=  'UNI';
        end;

      if Ind[ICodBarras]<>-1 then
        begin
          if Trim(gListaXLS.AllCells[Ind[ICodBarras],fX])<>'' then
            CDSLPProveedorDetCODIGOBARRA.AsString :=  Trim(gListaXLS.AllCells[Ind[ICodBarras],fX]);
        end;


      if Ind[IDescuento]<>-1 then
        begin
          try
            if gListaXLS.Floats[Ind[IDescuento],fX]<>0 then
              CDSLPProveedorDetDESCUENTOSetText(CDSLPProveedorDetDESCUENTO, gListaXLS.AllCells[Ind[IDescuento],fX])
            else
              CDSLPProveedorDetDESCUENTO.Text          :=  '0';
          except
            CDSLPProveedorDetDESCUENTO.Text            :=  '0';
          end;

        end;

      if CDSLPProveedorDet.State <> dsBrowse then
        CDSLPProveedorDet.Post;
    end
  else
    begin
      Inc(ContErr);
      gListaXLS.RowFontColor[fX] := clRed;
    end;

end;

procedure TFormListaPreciosProvee.ActualizarDatosStkTodosExecute(
  Sender: TObject);
begin
  inherited;
  IniciaProgress;
  CDSLPProveedorDet.Filtered  :=  True;
  CDSLPProveedorDet.First;
  while not CDSLPProveedorDet.Eof do
    begin
      if ExisteStock then AddStock(True);
      CDSLPProveedorDet.Next;
    end;
  CDSLPProveedorDet.Filtered  :=  False;
  FinProgress;
end;

function TFormListaPreciosProvee.Fact9(rango:integer):integer;
var Cod,aux: extended;
begin
  Cod :=  0;
  aux :=  0;
  while aux<rango do
    begin
      Cod :=  Cod + 9 * Power(10,aux);
      aux :=  aux + 1;
    end;
  result  :=  Round(cod);
end;

function TFormListaPreciosProvee.SacaSufijo(cod:string):string;
var Num2,Len: integer; Cadena, pref: string;
begin
  Num2:=-1;
  if not TryStrToInt(Cod[length(cod)-1],Num2) then
    result  :=  SumaChar(Cod)
  else
    begin
      Num2  :=0;
      pref  :='';
      Len   :=  Length(cod);
      while (Len>2) and (not TryStrToInt(RightStr(Cod,Len),Num2)) do Len:=Len-1;
      if Num2<0 then                //si el ultimo caracter es un - evito que tome el numero negativo
        begin
          Num2  :=  Num2*-1;
          Len   :=  Len-1;
        end;
      if Len>2 then
        begin
          Num2  :=  Num2 + 1;

          if Num2>=Fact9(Len) then
            begin
              Len  := Len+1;
              Num2 := 0;
            end;
        end
      else
        len  := 3;
      pref      :=  LeftStr(cod,Length(cod)-len);
      Cadena    :=  IntToStr(num2);
      while Length(Cadena)<len do Cadena  :=  '0' + Cadena;

      Result    :=  pref + Cadena;
    end;
end;

function TFormListaPreciosProvee.SumaChar(Str: string):string;
var Ch: Char; ChCod:integer; Aux:string;
begin
  Aux     :=  str;
  Ch      :=  Str[Length(Str)];
  ChCod   :=  Ord(Ch);
  ChCod   :=  ChCod +1;
  Aux[Length(Aux)]  :=  Chr(ChCod);
  Result  :=  Aux;
end;



function TFormListaPreciosProvee.Generar_Codigo:string;
var num, len :Integer;
dato, Aux:String;
begin
  if (CodigoSecuencial='S')  Then
    begin
      CodAct    :=  Codifica(SacaSufijo(CodAct));
      Result    :=  CodAct;
    end
  else
    begin
      DatosListaPrecioProv.QBuscadorCodigo.Close;
      if (CDSLPProveedorDetRUBRO.AsString='') or (CDSLPProveedorDetSUBRUBRO.AsString='') then
        begin
          if Not(assigned(FormBuscadorSubRubroStock)) then
            FormBuscadorSubRubroStock:=TFormBuscadorSubRubroStock.Create(Self);
          FormBuscadorSubRubroStock.ShowModal;
          if FormBuscadorSubRubroStock.ModalResult=mrOk then
            begin
              CDSLPProveedorDetRUBRO.AsString          :=FormBuscadorSubRubroStock.CodigoRubro;
              CDSLPProveedorDetSUBRUBRO.AsString       :=FormBuscadorSubRubroStock.Codigo;
              CDSLPProveedorDetMUESTRARUBRO.ASString   :=FormBuscadorSubRubroStock.MuestraRubro;
              CDSLPProveedorDetMUESTRASUBRUBRO.ASString:=FormBuscadorSubRubroStock.MuestraSubRubro;
            end;
        end;

      if (CDSLPProveedorDetRUBRO.AsString<>'')and (CDSLPProveedorDetSUBRUBRO.AsString<>'') then
        begin
          DatosListaPrecioProv.QBuscadorCodigo.ParamByName('Id_Rubro').Value := CDSLPProveedorDetRUBRO.AsString;
          DatosListaPrecioProv.QBuscadorCodigo.ParamByName('Id_SubRubro').Value := CDSLPProveedorDetSUBRUBRO.AsString;
          DatosListaPrecioProv.QBuscadorCodigo.Open;

          dato   :=  CDSLPProveedorDetSUBRUBRO.AsString;
          IF (DatosListaPrecioProv.QBuscadorCodigo.Fields[0].AsString<>'') THEN
            Num    := StrToInt( RightStr(DatosListaPrecioProv.QBuscadorCodigo.Fields[0].Value,3))+1
          ELSE
            Num := 0;

          Aux    :=  Copy('000',1,3-Length(IntToStr(Num)))+IntToStr(Num);

          if StrToInt(Aux)<=999 then
            result := Dato + aux
          else
            result :=  '';

        end
      else
        result    :=  '';
    end;
end;


procedure TFormListaPreciosProvee.gListaXLSCanDeleteRow(Sender: TObject;
  ARow: Integer; var CanDelete: Boolean);
begin
  inherited;
  if (ARow = 0) Then
    CanDelete := MessageDlg(' ¿Confirma borrar la primer fila? ',mtConfirmation, mbYesNo,0)=mrYes;

end;

procedure TFormListaPreciosProvee.gListaXLSCanSort(Sender: TObject; ACol: Integer; var DoSort: Boolean);
begin
  inherited;
  DoSort:=False;
end;


procedure TFormListaPreciosProvee.gListaXLSComboObjectChange(Sender: TObject;
  ACol, ARow, AItemIndex: Integer; ASelection: string; AObject: TObject);
var x,y: integer; Value: String;
  I: Integer;
begin
  inherited;

  x := ICod;
  while (Ind[x]<>ACol) and (x <= IDescuento) do  Inc(x);
  if x<=IDescuento then   Ind[x]:= -1;          // Si la columna ya era otro índice

  if (AItemIndex>-1) then
    begin
      y :=  0;
      while (y<gListaXLS.ColCount) do           // Si otra columna era el mismo índice
        begin
          if gListaXLS.ComboIndex[y,0] = AItemIndex then
            begin
              gListaXLS.ComboIndex[y,0]    := -1;
              gListaXLS.Cells[y,0]         := gListaXLS.OriginalCellValue;
              gListaXLS.FontStyles[y,0]    := [];
            end;
          inc(y);
          if y=ACol then Inc(y);
        end;

      Ind[AItemIndex] :=  ACol;
      gListaXLS.FontStyles[ACol, 0]:= [fsBold];

      if AItemIndex in [IPr,IPrLis, IDescuento] then
        begin
          for I := 1 to gListaXLS.RowCount-1 do
            begin
              Value :=  gListaXLS.Cells[ACol,I];
              if CheckFloat(Value) then
                gListaXLS.Cells[ACol,I]   :=  Value;
            end;
        end;

    end
  else
    gListaXLS.FontStyles[ACol, 0]:= [];

end;

//procedure TFormListaPreciosProvee.gListaXLSGetAlignment(Sender: TObject; ARow,
//  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
//begin
//  inherited;
//  if ACol = Ind[ICod] then
//    HAlign  := taLeftJustify
//  else
//  if (ACol = Ind[iPr])
//    or (ACol = Ind[IPrLis])
//    or (ACol = Ind[IIva]) then
//      HAlign  :=  taRightJustify
//  else
//    HAlign  :=  taLeftJustify;
//end;

procedure TFormListaPreciosProvee.gListaXLSGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TAsgVAlignment);
begin
  inherited;
  if ACol = Ind[ICod] then
    HAlign  := taLeftJustify
  else
  if (ACol = Ind[iPr])
    or (ACol = Ind[IPrLis])
    or (ACol = Ind[IIva]) then
      HAlign  :=  taRightJustify
  else
    HAlign  :=  taLeftJustify;

end;

procedure TFormListaPreciosProvee.gListaXLSGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  inherited;
  if ARow=0 then
    ABrush.Color  :=  clSkyBlue;

end;

procedure TFormListaPreciosProvee.gListaXLSGetEditorProp(Sender: TObject; ACol,
  ARow: Integer; AEditLink: TEditLink);
begin
  inherited;
  if ARow=0 then
  begin
      gListaXLS.ClearComboString;
      gListaXLS.AddComboString('codigo_proveedor');
      gListaXLS.AddComboString('Detalle');
      gListaXLS.AddComboString('Precio');
      gListaXLS.AddComboString('PrecioLista');
      gListaXLS.AddComboString('Rubro');
      gListaXLS.AddComboString('SubRubro');
      gListaXLS.AddComboString('Marca');
      gListaXLS.AddComboString('Iva_tasa');
      gListaXLS.AddComboString('Moneda');
      gListaXLS.AddComboString('presentacion_cantidad');
      gListaXLS.AddComboString('Presentacion_unidad');
      gListaXLS.AddComboString('CodigoBarras');
      gListaXLS.AddComboString('Detalle_Adicional');
      gListaXLS.AddComboString('Descuento');
    end;
end;

procedure TFormListaPreciosProvee.gListaXLSGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  inherited;
  if ARow=0 then
    AEditor :=  edComboEdit;

end;

procedure TFormListaPreciosProvee.gListaXLSGetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: string);
begin
  inherited;
  if (ACol = Ind[iPr]) or (ACol = Ind[IPrLis])then
      FloatFormat  :=  '%.3n'
  else
    if (ACol = Ind[IIva]) or (ACol = Ind[IDescuento]) then
        FloatFormat :=  '%.2n'
    else
      IsFloat :=  False;

end;


procedure TFormListaPreciosProvee.gListaXLSLoadCell(Sender: TObject; ACol,
  ARow: Integer; var Value: string);
var
  X,Pos: Integer; N,SAux:string; Aux:double;
begin
  inherited;
   if ARow<20 then
    begin
      X := -1;

      N   :=  Trim(UpperCase(Value));

      if N = 'CODIGO_PROVEEDOR'then
        X:=  ICod
      else
      if N = 'DETALLE' then
        X:=  IDet
      else
      if N = 'PRECIO' then
        X:=  IPr
      else
      if N = 'PRECIOLISTA' then
        X:=  IPrLis
      else
      if N = 'RUBRO' then
        X:=  IRub
      else
      if N = 'SUBRUBRO' then
        X:=  ISubr
      else
      if N = 'MARCA' then
        X:=  IMarc
      else
      if N = 'IVA_TASA' then
        X:=  IIva
      else
      if N= 'MONEDA' then
        X:=  IMoneda
      else
      if N= 'PRESENTACION_CANTIDAD' then
        X:=  IPresCant
      else
      if N= 'PRESENTACION_UNIDAD' then
        X:= IPresUni
      else
      if N = 'DETALLE_ADICIONAL' then
        X:=  IDetAd
      else
      if N= 'DESCUENTO' then
        X:= IDescuento;

      if X>=0 then
        gListaXLSComboObjectChange(Sender,ACol,0,X,N,nil);
    end;

end;

FUNCTION TFormListaPreciosProvee.AsignaProveedor(Dato: STRING): Boolean;
var NroLista:Integer;
BEGIN
  NroLista:=1;
  DatosListaPrecioProv.CDSProveedores.Close;
  DatosListaPrecioProv.CDSProveedores.Params.ParamByName('Codigo').Value := Dato;
  DatosListaPrecioProv.CDSProveedores.Open;
  IF NOT (DatosListaPrecioProv.CDSProveedores.Eof) THEN
    BEGIN
      DatosListaPrecioProv.QUltimaLista.Close;
      DatosListaPrecioProv.QUltimaLista.ParamByName('Codigo').Value:=Dato;
      DatosListaPrecioProv.QUltimaLista.Open;
      if DatosListaPrecioProv.QUltimaLista.Fields[0].AsString<>'' then
        begin
          NroLista  :=  DatosListaPrecioProv.QUltimaLista.Fields[0].AsInteger+1;
          DSBase.DataSet.Cancel;
          DatoNew   :=  DatosListaPrecioProv.QUltimaLista.Fields[1].AsString;
          Recuperar.Execute;
          DSBase.DataSet.Edit;
        end
      else
        begin
          DSBase.DataSet.Cancel;
          Agregar.Execute;
          NroLista:=1;
          CDSLPProveedorCabCODIGO_PROVEE.AsString :=  Dato;
        end;
      CDSLPProveedorCabNOMBRE.AsString      := DatosListaPrecioProv.CDSProveedoresNOMBRE.AsString;
      CDSLPProveedorCabLISTA_NRO.AsString   := IntToStr(NroLista);
      DatosListaPrecioProv.QUltimaLista.Close;
      Result := True;
    END
  ELSE
     Result := False;
  DatosListaPrecioProv.CDSProveedores.Close;
END;


procedure TFormListaPreciosProvee.CDSDescuentosAfterDelete(DataSet: TDataSet);
begin
  inherited;
  RecalcularDesc.Execute;
end;

procedure TFormListaPreciosProvee.CDSDescuentosAfterPost(DataSet: TDataSet);
begin
  inherited;
  RecalcularDesc.Execute;

end;

procedure TFormListaPreciosProvee.CDSDescuentosNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSDescuentosID.Value             := IBDesctos.IncrementFD(1);
  CDSDescuentosID_CAB.Value         := CDSLPProveedorCabID.Value;
  CDSDescuentosBONIFICACION.AsFloat := 0;
end;

procedure TFormListaPreciosProvee.CDSLPProveedorCabCODIGO_PROVEESetText(
  Sender: TField; const Text: String);
VAR
  Aux: STRING;
BEGIN
  if (Text<>#13) and (Text<>'') Then
    begin
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF NOT (AsignaProveedor(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          //SysUtils.Abort;
          RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      RxDBECodigo.Text := Aux;
    end;
END;


procedure TFormListaPreciosProvee.FormCreate(Sender: TObject);
var formato, OpIva, x:integer; OpCod:boolean;
begin
  inherited;
  IniciaInd;
  CodAct:='0';
  SinBDE:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=False;
  // Aca asigino los parametros del SQLConnections del Main
  if  not(Assigned(DatosListaPrecioProv)) then
      DatosListaPrecioProv:=TDatosListaPrecioProv.Create(Self);

  with DatosListaPrecioProv DO
    begin
      SQLThreads.Connected := False;
      SQLThreads.Params    := DMMain_FD.fdcGestion.Params;
      SQLThreads.Connected := True;
    end;

  AddClientDataSet(CDSLPProveedorCab,DSPLPProveedorCab);
  AddClientDataSet(CDSLPProveedorDet,DSPLPProveedorDet);
  AddClientDataSet(CDSDescuentos,DSPDescuentos);

  CDSLPProveedorCab.Close;
  CDSLPProveedorCab.Params.ParamByName('id').Clear;
  CDSLPProveedorCab.Open;

  CDSLPProveedorDet.Close;
  CDSLPProveedorDet.Params.ParamByName('id').Clear;
  CDSLPProveedorDet.OPen;

  CDSDescuentos.Close;
  CDSDescuentos.Params.ParamByName('id').Clear;
  CDSDescuentos.OPen;

  DatosListaPrecioProv.QMonedas.Open;
  DatosListaPrecioProv.QUnidades.Open;
  DatosListaPrecioProv.QBuscaIva.Open;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'LstPrecioProvee.ini');
  //*************************************************************
  CodigoAlfa                  := ArchivoIni.ReadString('Importacion', 'Alfa', 'N');
  Justifica                   := ArchivoIni.ReadInteger('Importacion', 'Justifica', 0);
  Caracter                    := ArchivoIni.ReadInteger('Importacion', 'Caracter', 0);
  OpIva                       := ArchivoIni.ReadInteger('Importacion', 'OpIVA',0);
  OpCod                       := ArchivoIni.ReadBool('Importacion','OpCodigo',FALSE);
  chAltaImp.Checked           := ArchivoIni.ReadBool('Importacion', 'AltaStock',False);
  chActCostos.Checked         := ArchivoIni.ReadBool('Importacion','ActCostos',True);
  colBusca                    := ArchivoIni.ReadInteger('Busqueda','colBusca',3);
 // CodAct                      := ArchivoIni.ReadString('Carga','CodAct',IniciaCodAct);

  Height                      := ArchivoIni.ReadInteger('Form','Height',850);
  Width                       := ArchivoIni.ReadInteger('Form','Width',900);
  Top                         := ArchivoIni.ReadInteger('Form','Top',50);
  Left                        := ArchivoIni.ReadInteger('Form','Left',50);


  A                           := ArchivoIni.ReadFloat('TASA', 'A', 21);
  B                           := ArchivoIni.ReadFloat('TASA', 'B', 0);
  C                           := ArchivoIni.ReadFloat('TASA', 'C', 10.5);
  ArchivoIni.Free;

  colBusqueda(colBusca);

  chbUsarCodigoProvee.Checked := OpCod;
  chGravCodAlter.Checked      := not OpCod;

  chAlfa.Checked              :=  (chbUsarCodigoProvee.Checked) or (CodigoAlfa='S');
  cbJustifica.Enabled         :=  chAlfa.Checked;
  cbChar2.Enabled             :=  chAlfa.Checked;

  if Justifica = 0 then       cbJustIzquierda.Checked   :=  True
                   else       cbJustDerecha.Checked     :=  True;

  if Caracter = 1 then        cbEspacios.Checked  :=  True  else
  if Caracter = 2 then        cbGuion.Checked     :=  True  else
  if Caracter = 3 then        cbPunto.Checked     :=  True  else
 {if Caracter = 0 then}       cbCeros.Checked     :=  True;


  HayAltas                    :=  False;

  case OpIva of
    0:  chSinIva.Checked      :=  True;
    1:  chbConIva.Checked     :=  True;
    2:  chSumaIva.Checked     :=  True;
  end;


  Import                      := False;
  ControlUno                  := False;

  StockIngresado:=TStringList.Create;

 // Verifico si Genera Codigo Barra
  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='GENERACB';
  DMMain_FD.QOpciones.Open;
  if (DMMain_FD.QOpciones.Fields[0].AsString<>'') then
    GeneraCodigoBarra:=Trim(DMMain_FD.QOpciones.Fields[0].AsString[1])
  else
    GeneraCodigoBarra:='N';
  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='SECUENCIAL';
  DMMain_FD.QOpciones.Open;
  CodigoSecuencial:=Trim(DMMain_FD.QOpciones.Fields[0].AsString[1]);
  DMMain_FD.QOpciones.CLose;

  for x := 0 to gListaXLS.ColCount-1 do
    gListaXLS.AllColWidths[x]  :=  150;//gListaXLS.AutoSizeCol(x);

  Tabla:='LISTA_PRECIOS_PROV_CABECERA';
  Campo:='id';
  pcGeneral.ActivePageIndex:=0;
end;

procedure TFormListaPreciosProvee.AgregarExecute(Sender: TObject);
begin
  CDSLPProveedorCab.Close;
  CDSLPProveedorCab.Params.ParamByName('id').Clear;
  CDSLPProveedorCab.Open;

  CDSLPProveedorDet.Close;
  CDSLPProveedorDet.Params.ParamByName('id').Clear;
  CDSLPProveedorDet.OPen;

  CDSDescuentos.Close;
  CDSDescuentos.Params.ParamByName('id').Clear;
  CDSDescuentos.Open;

  inherited;
  RxDBECodigo.SetFocus;
  StockIngresado.Clear;

  dbgDetalle.ReadOnly :=  False;

end;

procedure TFormListaPreciosProvee.AgregarLoteExecute(Sender: TObject);
begin
  inherited;
 //
end;

procedure TFormListaPreciosProvee.CancelarStock;
var i:integer;
begin
  if StockIngresado.Count>0 then
    begin
      Screen.Cursor:=crHourGlass;
      sbEstado.SimpleText:='Borrando Articulos Dados de Alta...';
      for i :=0 to StockIngresado.Count-1 do
        begin
          try
            DatosListaPrecioProv.QBorrarStock.Close;
            DatosListaPrecioProv.QBorrarStock.ParamByName('codigo').AsString    :=  StockIngresado[i];
            DatosListaPrecioProv.QBorrarStock.ExecSQL;
            DatosListaPrecioProv.QBorrarStock.Close;
          except

          end;
        end;
      Screen.Cursor:=crDefault;
      sbEstado.SimpleText:='.';
    end;
end;
procedure TFormListaPreciosProvee.CambiarProveedorExecute(Sender: TObject);
var Q:TFDQuery;
begin
  inherited;
  if FormCambioProveedorLista=nil then
    FormCambioProveedorLista:=TFormCambioProveedorLista.Create(Self);
  FormCambioProveedorLista.ShowModal;
  if FormCambioProveedorLista.modalResult=mrOk then
    begin
      if (FormCambioProveedorLista.Codigo<>'') and (FormCambioProveedorLista.Nombre<>'') then
        begin
          Q:=TFDQuery.Create(nil);
          Q.Connection:=DMMain_FD.fdcGestion;
          Q.SQL.Text := 'update lista_precios_prov_cabecera set codigo_provee='+QuotedStr(FormCambioProveedorLista.Codigo)+
                                                       ',nombre = '+QuotedStr(FormCambioProveedorLista.Nombre)+
                                                       ' where id = ' + DSBase.DataSet.FieldByName('Id').AsString;

                                                       //          DSBase.DataSet.FieldByName('CODIGO_PROVEE').Value:=FormCambioProveedorLista.Codigo;
          Q.ExecSQL;
          FreeAndNil(Q);
          Recuperar.Execute;
        end;
    end;
  if FormCambioProveedorLista<>nil then
    FreeAndNil(FormCambioProveedorLista);
end;

procedure TFormListaPreciosProvee.CancelarExecute(Sender: TObject);
var i:integer;
begin
  pbCarga.Position:=0;
 // ADODSListaXLS.Active   := False;
 // ADOConnection.Connected:=False;


  CDSLPProveedorCab.Cancel;
  CDSLPProveedorDet.Cancel;

  CDSLPProveedorCab.Close;
  CDSLPProveedorCab.Params.ParamByName('id').Clear;
  CDSLPProveedorCab.Open;

  CDSLPProveedorDet.Close;
  CDSLPProveedorDet.Params.ParamByName('id').Clear;
  CDSLPProveedorDet.OPen;

  CDSDescuentos.Close;
  CDSDescuentos.Params.ParamByName('id').Clear;
  CDSDescuentos.Open;

  //ADODSListaXLS.Close;
  gListaXLS.Clear;
  edPath.Clear;
  gListaXLS.RowCount:= 1;
  gListaXLS.ColCount:= 1;
  gListaXLS.ResetUpdate;
  inherited;

  CancelarStock;

  StockIngresado.Clear;
  dbgDetalle.ReadOnly :=  True;
end;


procedure TFormListaPreciosProvee.cbCerosClick(Sender: TObject);
begin
  inherited;
  cbEspacios.Checked  :=  False;
  cbGuion.Checked     :=  False;
  cbCeros.Checked     :=  True;
  cbPunto.Checked     :=  False;
end;

procedure TFormListaPreciosProvee.cbEspaciosClick(Sender: TObject);
begin
  cbEspacios.Checked  :=  True;
  cbGuion.Checked     :=  False;
  cbCeros.Checked     :=  False;
  cbPunto.Checked     :=  False;
end;

procedure TFormListaPreciosProvee.cbGuionClick(Sender: TObject);
begin
  inherited;
  cbEspacios.Checked  :=  False;
  cbGuion.Checked     :=  True;
  cbCeros.Checked     :=  False;
  cbPunto.Checked     :=  False;
end;

procedure TFormListaPreciosProvee.cbJustDerechaClick(Sender: TObject);
begin
  inherited;
  cbJustIzquierda.Checked :=  not cbJustDerecha.Checked;
end;

procedure TFormListaPreciosProvee.cbJustIzquierdaClick(Sender: TObject);
begin
  inherited;
  cbJustDerecha.Checked     :=  not cbJustIzquierda.Checked;

end;

procedure TFormListaPreciosProvee.cbPuntoClick(Sender: TObject);
begin
  inherited;
  cbEspacios.Checked  :=  False;
  cbGuion.Checked     :=  False;
  cbCeros.Checked     :=  False;
  cbPunto.Checked     :=  True;
end;

procedure TFormListaPreciosProvee.chkSubRubroPordefClick(Sender: TObject);
begin
  inherited;
  cbRubroPorDef.Enabled       := chkSubRubroPorDef.Checked;
  cbSubRubPorDef.Enabled      := chkSubRubroPorDef.Checked;
  if chkSubRubroPorDef.Checked then
    begin
      DatosListaPrecioProv.CDSRubros.Open;
      DatosListaPrecioProv.CDSSubRubros.Open;
    end
  else
    begin
      DatosListaPrecioProv.CDSRubros.Close;
      DatosListaPrecioProv.CDSSubRubros.Close;
    end


end;

procedure TFormListaPreciosProvee.chPrefijoClick(Sender: TObject);
begin
  inherited;
  edPrefijo.Visible := chPrefijo.Checked;
end;

procedure TFormListaPreciosProvee.chSinIvaClick(Sender: TObject);
begin
  inherited;
  chSinIva.Checked    :=  True;
  chbConIva.Checked   :=  False;
  chSumaIva.Checked   :=  False;
end;

procedure TFormListaPreciosProvee.chSumaIvaClick(Sender: TObject);
begin
  inherited;
  chSumaIva.Checked   :=  True;
  chbConIva.Checked   :=  False;
  chSinIva.Checked    :=  False;
end;

procedure TFormListaPreciosProvee.FormClose(Sender: TObject;
  var Action: TCloseAction);
var OpIva, OpJustifica, OpCaracter:integer;
begin
  inherited;

  CDSLPProveedorCab.Close;
  CDSLPProveedorDet.Close;
  CDSDescuentos.Close;

  DatosListaPrecioProv.QMonedas.Close;
  DatosListaPrecioProv.QUnidades.Close;
  DatosListaPrecioProv.QBuscaIva.Close;

  while Not(jvHilo.Terminated) do
    jvHilo.Terminate;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'LstPrecioProvee.ini');
  //*************************************************************
  if chAlfa.Checked then
    ArchivoIni.WriteString('Importacion', 'Alfa',  'S')
  else
    ArchivoIni.WriteString('Importacion', 'Alfa',  'N');

  OpIva:=0;
  if chbConIva.Checked then OpIva:=1
  else if chSumaIva.Checked then OpIva:=2;

  OpCaracter  :=  0;
  OpJustifica :=  0;

  if cbJustIzquierda.checked  then  OpJustifica := 1;
  if cbEspacios.Checked       then  OpCaracter  :=  1 else
  if cbGuion.Checked          then  OpCaracter  :=  2 else
  if cbPunto.Checked          then  OpCaracter  :=  3;
 {if cbCeros.checked          then  OpCaracter  :=  0;}

  ArchivoIni.WriteInteger('Importacion', 'Justifica', OpJustifica);
  ArchivoIni.WriteInteger('Importacion', 'Caracter', OpCaracter);
  ArchivoIni.WriteInteger('Importacion', 'OpIva',OpIva);
  ArchivoIni.WriteBool('Importacion', 'OpCodigo', chbUsarCodigoProvee.Checked);
  ArchivoIni.WriteBool('Importacion', 'AltaStock', chAltaImp.Checked);
  ArchivoIni.WriteBool('Importacion','ActCostos',chActCostos.Checked);
  ArchivoIni.WriteInteger('Busqueda','colBusca',colBusca);
  ArchivoIni.WriteFloat('TASA', 'A', A);
  ArchivoIni.WriteFloat('TASA', 'B', B);
  ArchivoIni.WriteFloat('TASA', 'C', C);
  ArchivoIni.WriteInteger('Form','Height',Height);
  ArchivoIni.WriteInteger('Form','Width',Width);
  ArchivoIni.WriteInteger('Form','Top',Top);
  ArchivoIni.WriteInteger('Form','Left',Left);

  DatosListaPrecioProv.SQLThreads.Free;
  ArchivoIni.Free;

  FreeAndNil(DatosListaPrecioProv);

  Action:=caFree;

end;

procedure TFormListaPreciosProvee.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListaPreciosProvee:=nil;
end;

procedure TFormListaPreciosProvee.FormResize(Sender: TObject);
begin
  inherited;
  if FormListaPreciosProvee<>nil then
    if FormListaPreciosProvee.Width<1001 then
      FormListaPreciosProvee.Width:=1001;
end;

procedure TFormListaPreciosProvee.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       CDSLPProveedorCabCODIGO_PROVEESetText(CDSLPProveedorCabCODIGO_PROVEE, FormBuscadorProveedor.Codigo);
     end;
end;

procedure TFormListaPreciosProvee.BuscaTodosEnStockExecute(Sender: TObject);
var
  CodAux:string;
  CantOK, CantErr: Integer;
begin
  inherited;
  CantOk    :=  0;
  CantErr   :=  0;
  CDSLPProveedorDet.DisableControls;
  Modificar.execute;
  if not CDSLPProveedorDet.Isempty then CDSLPProveedorDet.First;
  while not CDSLPProveedorDet.Eof do
    begin
      if CDSLPProveedorDetCODIGO.AsString='' then
        begin
          CodAux  :=  BuscaArtEnStock(CDSLPProveedorDetCODIGO_PROVEEDOR.AsString,CDSLPProveedorDetDETALLE.AsString);
          if CodAux<>'' then
            begin
              if CDSLPProveedorDet.State = dsBrowse then  CDSLPProveedorDet.Edit;
              CDSLPProveedorDetCODIGO.AsString  :=  CodAux;
              CDSLPProveedorDet.Post;
              inc(CantOk);
            end
          else
            inc(CantErr);
        end;
      CDSLPProveedorDet.Next;
    end;
  CDSLPProveedorDet.EnableControls;
  Showmessage('Búsqueda finalizada: ' + IntToStr(CantOk) + ' encontrados, ' + IntToStr(CantErr) + ' faltantes.');
end;

procedure TFormListaPreciosProvee.Button1Click(Sender: TObject);
var
  Opt: TImportOptions;
  Map: TColumnMap;
begin
  Opt.HasHeader    := True;
  Opt.StartRow     := 1;
  Opt.MaxProbeRows := 200;
  Opt.ProfileName  := RxDBECodigo.Text;// 'ProveedorX';
  Opt.INIPath      := ''; // opcional

  if not LoadMappingFromINI(Opt, Map) then
    begin
      DetectColumnsAdv(gListaXLS, Opt, Map);
      if not ShowMappingDialogAdv(gListaXLS, Map) then Exit;
    end;

  ImportGridToCDS_Adv(gListaXLS, Opt, Map, CDSDatosImportados);
  SaveMappingToINI(Opt, Map);
  Map.Free;

  ShowMessage(Format('Importado OK: %d filas', [CDSDatosImportados.RecordCount]));
end;



procedure TFormListaPreciosProvee.RxDBECodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSLPProveedorCabCODIGO_PROVEE.Clear;
      CDSLPProveedorCabNOMBRE.Clear;
    end;
end;

procedure TFormListaPreciosProvee.SalirExecute(Sender: TObject);
begin
  if DSBase.DataSet.State<>dsBrowse then
    Cancelar.Execute;

  inherited;

end;

procedure TFormListaPreciosProvee.CDSLPProveedorCabNewRecord(
  DataSet: TDataSet);
begin
  inherited;
   CDSLPProveedorCabID.Value            :=IBGCab.IncrementFD(1);
   CDSLPProveedorCabFECHA.AsDateTime    :=Date;
   CDSLPProveedorCabLISTA_NRO.AsString  :='1';
   CDSLPProveedorCabRECARGO.AsFloat     :=0;
end;

procedure TFormListaPreciosProvee.CDSLPProveedorDetCODIGOSetText(Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      //Sender.AsString := Copy('00000000', 1, 8 - Length(Text)) + Text;
      if CDSLPProveedorDet.State in [dsBrowse] then
        CDSLPProveedorDet.Edit;
      if DMMain_FD.JustificaCodigo='D' Then
        Sender.AsString:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text)) + Text
      else
        if DMMain_FD.JustificaCodigo='I' Then
          Sender.AsString:=Text+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text));
      DatosListaPrecioProv.QBuscaArticulo.Close;
      DatosListaPrecioProv.QBuscaArticulo.ParamByName('Codigo').Value:=Sender.AsString;
      DatosListaPrecioProv.QBuscaArticulo.Open;
      if DatosListaPrecioProv.QBuscaArticuloCODIGO_STK.AsString='' Then
        begin
          ShowMessage('Codigo no Valido....');
          Sender.Clear;
        end;
    end
  else
    Sender.Clear;
end;

procedure TFormListaPreciosProvee.dbgBonificacionesExit(Sender: TObject);
begin
  if CDSDescuentos.State in [dsInsert,dsEdit] then CDSDescuentos.Post;
  inherited;

end;

procedure TFormListaPreciosProvee.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
   if  dbgDetalle.SelectedIndex in [0] Then
    dbgDetalle.SelectedIndex:=dbgDetalle.SelectedIndex+1;

end;

procedure TFormListaPreciosProvee.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (Trim(CDSLPProveedorDetCODIGO.AsString)<>'')and (DSBase.State=dsBrowse) then
    begin
      if (Not(Assigned(FormStock_2))) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=Trim(CDSLPProveedorDetCODIGO.AsString);
      FormStock_2.Recuperar.Execute;
    end;
end;

procedure TFormListaPreciosProvee.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (CDSLPProveedorDetCANT.AsFloat>1) then
    dbgDetalle.Canvas.Font.Color:=clBlue
  else
    dbgDetalle.Canvas.Font.Color:=clDefault;


  if (gdFocused in State) then
    begin
      dbgDetalle.canvas.brush.color := ClBlack;
      dbgDetalle.canvas.Font.color  := clWhite;
    end;
    //Esta línea es nueva
  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormListaPreciosProvee.dbgDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_INSERT) and (Shift=[]) and (DSBase.State=dsBrowse) and (Not(CDSLPProveedorDet.IsEmpty)) Then
    AgregarStock_2.Execute
  else
    if (Key=VK_INSERT) and (Shift=[ssCtrl]) and (DSBase.State=dsBrowse) and (Not(CDSLPProveedorDet.IsEmpty)) then
      AgregarStock.Execute
    else
      if (key=VK_DELETE)  and (dbgDetalle.SelectedIndex=1) then
        begin
          CDSLPProveedorDet.Edit;
          CDSLPProveedorDetCODIGO.Clear;
          CDSLPProveedorDetRUBRO.Clear;
          CDSLPProveedorDetSUBRUBRO.Clear;
          CDSLPProveedorDet.Post;
        end;

end;

procedure TFormListaPreciosProvee.dbgDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgDetalle.SelectedIndex < 6) THEN
        dbgDetalle.SelectedIndex := dbgDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgDetalle.DataSource.DataSet.Eof THEN
           // dbgDetalle.DataSource.DataSet.Append;
          dbgDetalle.SelectedIndex := 1;
        END;
    end
  else
    if Key=#10  then
      begin
        Key := #0;
        IF dbgDetalle.SelectedField = CDSLPProveedorDetCODIGO THEN
           BuscarArticulo.Execute;
      end;
end;

procedure TFormListaPreciosProvee.dbgDetalleEnter(Sender: TObject);
begin
  inherited;
  dbgDetalle.SelectedIndex:=1;
end;

procedure TFormListaPreciosProvee.CDSLPProveedorDetDESCUENTOSetText(
  Sender: TField; const Text: string);
var Dscto:Real;
begin
  inherited;
  Sender.AsString:=Text;
  if CDSLPProveedorDet.State=dsBrowse then
    CDSLPProveedorDet.Edit;
  CDSLPProveedorDetPRECIO.Value:=CDSLPProveedorDetPRECIO_LISTA.Value;

  CDSDescuentos.DisableControls;
  CDSDescuentos.First;
  while not(CDSDescuentos.Eof) do
    begin
      Dscto                           := CDSLPProveedorDetPRECIO.AsFloat * -1 * CDSDescuentosBONIFICACION.AsFloat * 0.01;
      CDSLPProveedorDetPRECIO.AsFloat := CDSLPProveedorDetPRECIO.AsFloat - Dscto;
      CDSDescuentos.Next;
    end;
  CDSLPProveedorDetPRECIO.AsFloat := CDSLPProveedorDetPRECIO.AsFloat * (1- CDSLPProveedorDetDESCUENTO.ASFloat*0.01);
  CDSDescuentos.First;
  CDSDescuentos.EnableControls;

end;

procedure TFormListaPreciosProvee.CDSLPProveedorDetDETALLESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=UpperCase(Text);
end;

procedure TFormListaPreciosProvee.ImportarListaExecute(Sender: TObject);
var
  Count: integer;
  Detalle: string;
  precio: double;
  IndPrecio: integer;

begin
  inherited;
  Cancel                          :=  False;
  ContErr  :=  -1;
  CDSLPProveedorDet.DisableControls;

  if (DSBase.State in [dsInsert,dsEdit]) and (Ind[ICod]<>-1) then
    begin
      ContErr     := 0;
      CantAltas   := 0;
      Count       := 0;

      CDSDescuentos.First;
      DstoTot :=  1;
      while not(CDSDescuentos.Eof) and (CDSDescuentosID.AsString<>'') do
        begin
          DstoTot   := (1 + CDSDescuentosBONIFICACION.AsFloat * 0.01) * DstoTot;
          CDSDescuentos.Next;
        end;

      fX:=1;
      IndPrecio :=  -1;
      if Ind[IPr]>-1 then IndPrecio :=  IPr
      else
        if Ind[IPrLis]>-1 then IndPrecio := IPrLis;

      while (fX<gListaXLS.RowCount) and (Cancel=False) do
        begin
          codigo    := trim(gListaXLS.Cells[Ind[ICod],fX]);

          if chbSacarCeroLeft.Checked then
            while LeftStr(codigo,1)='0' do
              codigo := RightStr(codigo,Length(codigo)-1);


          if (Codigo<>'') and (trim(gListaXLS.Cells[Ind[IDet],fX])<>'')
                          and (IndPrecio>-1)
                          and (trim(gListaXLS.Cells[Ind[IndPrecio],fX])<>'')
                          and (TryStrToFloat(gListaXLS.Cells[Ind[IndPrecio],fX],precio)) then
            begin
              if (CDSLPProveedorCab.State=dsEdit)
                and (CDSLPProveedorDet.Locate('CODIGO_PROVEEDOR',Codigo,[])) then       //or  (CDSLPProveedorDet.Locate('DETALLE',LeftStr(gListaXLS.AllCells[Ind[ICod],X][Ind[IDet]].AsString)),45),[])))
                CDSLPProveedorDet.Edit
              else
                begin
                  CDSLPProveedorDet.append;
                  inc(CantAltas);
                  CDSLPProveedorDetCODIGO_PROVEEDOR.AsString:= Codigo;
                end;
              Count := Count +1;
              JvHilo.Synchronize(Actualizar);
              JvHilo.Synchronize(Progress);

            end;
          inc(fX);
        end;
    end;
  if CDSLPProveedorDet.State <> dsBrowse then
    CDSLPProveedorDet.Post;

  Import      :=  False;

  CDSLPProveedorDet.EnableControls;

  if ContErr=-1 then
    begin
      ShowMessage('Faltan Columnas obligatorias ("CODIGO_PROVEEDOR"/"DETALLE"/"PRECIO"). Por favor seleccionar en la primer fila de la grilla inferior.');
      gListaXLS.SetFocus;
      gListaXLS.SelectCells(0,0,0,0);
    end
  else
    if ContErr=0 then
      ShowMessage('Importación Finalizada con Éxito. ' + IntToStr(CantAltas) + ' Art. Nuevos')
    else
      ShowMessage('Importación Finalizada. ' + IntToStr(ContErr) + ' errores!');

  if CantAltas>0 then HayAltas := True;
  pbCarga.Position:=0;
  pbCarga.Hide;
  CDSLPProveedorCabFECHA.AsDateTime := Date;

end;

{procedure TFormListaPreciosProvee.edBuscarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  Aux:String;
begin
  inherited;
  if edBuscar.Text<>'' then
    begin
      Aux :=  QuotedStr('%'+edBuscar.Text+'%');
      CDSLPProveedorDet.Filter := ' DETALLE LIKE ' + Aux +
                              ' or codigo_proveedor like ' + Aux;

    end
  else
    CDSLPProveedorDet.Filter := '';
end;  }

{procedure TFormListaPreciosProvee.edBuscarKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  Case Key of

    VK_RETURN:    begin
                    dbgDetalle.SetFocus;
                    dbgDetalle.DataSource.DataSet.First;
                  end;
    VK_DOWN:      begin
                    dbgDetalle.SetFocus;
                    dbgDetalle.DataSource.DataSet.Next;
                  end;
    VK_UP:        begin
                    dbgDetalle.SetFocus;
                    dbgDetalle.DataSource.DataSet.Prior;
                  end;
    VK_BACK:      edBuscar.Find('');
    VK_DELETE:    edBuscar.Find('');

  End;
end;       }

procedure TFormListaPreciosProvee.JvHiloExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  ImportarLista.Execute;
  jvHilo.Terminate;
  btCancelar.Enabled := False;
  btBorrar.Enabled   := True;
  btSalir.Enabled    := True;
end;

procedure TFormListaPreciosProvee.JvHiloFinish(Sender: TObject);
begin
  inherited;
  btCancel.Enabled          := False;
  btCancelar.Enabled        := True;
  edPath.Clear;
  gListaXLS.RowCount:= 1;
  gListaXLS.ColCount:= 1;
  gListaXLS.ResetUpdate;
  Screen.Cursor:=crDefault;
end;

procedure TFormListaPreciosProvee.JvHiloFinishAll(Sender: TObject);
begin
  inherited;
  btCancel.Enabled          := False;
  btCancelar.Enabled        := True;
  edPath.Clear;
  Screen.Cursor:=crDefault;
end;

procedure TFormListaPreciosProvee.ModificarExecute(Sender: TObject);
begin
  inherited;
  dbgDetalle.ReadOnly :=  False;
end;

procedure TFormListaPreciosProvee.ModificarUnoExecute(Sender: TObject);
begin
  if CDSLPProveedorCab.State=dsBrowse then
    begin
      Modificar.Execute;
      ControlUno  :=  True;
      BM          :=  CDSLPProveedorDet.GetBookmark;
    end;
  if CDSLPProveedorDet.State=dsBrowse then
      CDSLPProveedorDet.Edit;
  inherited;

end;

procedure TFormListaPreciosProvee.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (CDSLPProveedorDetCODIGO_PROVEEDOR.AsString<>'') then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
      FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.Param3:=3;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto;
      FormBuscadorArticulos.Esquema     := -1;

      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        begin
          ModificarUno.Execute;
          CDSLPProveedorDetCODIGOSetText(CDSLPProveedorDetCODIGO,FormBuscadorArticulos.Codigo);
          ConfirmaUno.Execute;
        end;
    end;
end;

procedure TFormListaPreciosProvee.BuscarExecute(Sender: TObject);
begin
  inherited;
  DatosListaPrecioProv.CDSBuscadorLista.Close;
  DatosListaPrecioProv.CDSBuscadorLista.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.Id Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  DatosListaPrecioProv.CDSBuscadorLista.Close;
end;

procedure TFormListaPreciosProvee.RecalcularDescExecute(Sender: TObject);
begin
  inherited;
  if (not CDSDescuentos.IsEmpty) and
     (not CDSLPProveedorDet.IsEmpty) and
     (MessageDlg(' ¿Suma descuento a la lista ya cargada? ',mtConfirmation,mbYesNo,0)=mrYes)  then
    begin
      CDSLPProveedorDet.DisableControls;
      if CDSLPProveedorDet.State<>dsBrowse then CDSLPProveedorDet.Post;
      CDSLPProveedorDet.First;
      while not CDSLPProveedorDet.Eof do
        begin
          CDSLPProveedorDet.Edit;
          CDSLPProveedorDetDESCUENTO.Text   :=  CDSLPProveedorDetDESCUENTO.AsString;
          CDSLPProveedorDet.Post;
          CDSLPProveedorDet.Next;
        end;
      CDSLPProveedorDet.EnableControls;
    end;
end;

procedure TFormListaPreciosProvee.RecalcularExecute(Sender: TObject);
var Dscto:Real;
begin
  inherited;
  if CDSLPProveedorDet.RecordCount>0 then
    begin
      pgbCalculos.Step     := 1;
      pgbCalculos.Min      := 0;
      pgbCalculos.Max      := CDSLPProveedorDet.RecordCount-1;
      pgbCalculos.Position := 0;

          sbEstado.Panels[0].Text:='Calculando....';
          Application.ProcessMessages;
          Screen.Cursor:=crHourGlass;
          CDSLPProveedorDet.DisableControls;
          CDSLPProveedorDet.First;

          while not(CDSLPProveedorDet.Eof) do
            begin
              if CDSLPProveedorDet.State=dsBrowse then
                CDSLPProveedorDet.Edit;
              CDSLPProveedorDetPRECIO.Value:=CDSLPProveedorDetPRECIO_LISTA.Value;

              CDSDescuentos.First;
              CDSDescuentos.DisableControls;
              while not(CDSDescuentos.Eof) do
                begin
                  Dscto                           := CDSLPProveedorDetPRECIO.AsFloat * -1 * CDSDescuentosBONIFICACION.AsFloat * 0.01;
                  CDSLPProveedorDetPRECIO.AsFloat := CDSLPProveedorDetPRECIO.AsFloat - Dscto;
                  CDSDescuentos.Next;
                end;
              CDSDescuentos.First;
              CDSDescuentos.EnableControls;

              CDSLPProveedorDetPRECIO.AsFloat := CDSLPProveedorDetPRECIO.AsFloat * (1- CDSLPProveedorDetDESCUENTO.ASFloat*0.01);
              pgbCalculos.Position:=pgbCalculos.Position+1;
              CDSLPProveedorDet.Next;
            end;
          CDSLPProveedorDet.First;
          CDSLPProveedorDet.EnableControls;

      Screen.Cursor          := crDefault;
      pgbCalculos.Position   := 0;
      sbEstado.Panels[0].Text:= '';
      Application.ProcessMessages;
    end;
end;

procedure TFormListaPreciosProvee.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSLPProveedorCab.close;
  CDSLPProveedorCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSLPProveedorCab.Open;

  CDSLPProveedorDet.Close;
  CDSLPProveedorDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSLPProveedorDet.Open;



  CDSDescuentos.Close;
  CDSDescuentos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSDescuentos.Open;

  dbgDetalle.Width:= dbgDetalle.Width+1;
  dbgDetalle.Width:= dbgDetalle.Width-1;

  gListaXLS.Clear;
  gListaXLS.Enabled   :=  False;

  QUltimoCodigo2.Close;
  QUltimoCodigo2.ParamByName('id').Value    :=StrToInt(DatoNew);
  QUltimoCodigo2.Open;
  if not QUltimoCodigo2.IsEmpty then
    UltID           :=  QUltimoCodigo2UltID.AsInteger
  else
    UltID           :=  -1;
  QUltimoCodigo2.Close;

end;

procedure TFormListaPreciosProvee.ConfirmaExecute(Sender: TObject);
begin
  edPath.Clear;
  CDSLPProveedorDet.DisableControls;


  Cancel  :=  False;

  DatoNew:=IntToStr(CDSLPProveedorCabID.Value);
  inherited;
  HayAltas  :=  False;
  Recuperar.Execute;


  if (HayAltas)
    and (chAltaImp.Checked=True)
    and (MessageDlg('¿Procede a Agregar los art. importados al Stock?',
         mtConfirmation, [mbYes,mbNo],0)=mrYes)
    and (not ControlUno)
  then
    AgregarStockTodos.Execute;

  if (CDSLPProveedorCab.State=dsBrowse)
    and (chActCostos.Checked)
    and (CDSLPProveedorDet.ChangeCount > 0)//(StrToInt(CDSLPProveedorCabLISTA_NRO.AsString)>1)
    and (MessageDlg(' ¿Actualiza los costos en Stock?',mtConfirmation,[mbYes,mbNo],0)=mrYes)
    and (Not ControlUno)
  then
    ActualizaTodos.Execute;

  CDSLPProveedorDet.EnableControls;
  ControlUno          :=  False;
  dbgDetalle.ReadOnly :=  True;
end;

procedure TFormListaPreciosProvee.ConfirmaUnoExecute(Sender: TObject);
begin
  inherited;
//  CDSLPProveedorDet.EnableControls;
  if CDSLPProveedorDet.State in [dsInsert, dsEdit] then CDSLPProveedorDet.Post;
  if ControlUno then
    begin
  //    CDSLPProveedorCab.EnableControls;
      if CDSLPProveedorCab.State in [dsInsert, dsEdit] then Confirma.Execute;
      if BM<>nil then CDSLPProveedorDet.GotoBookmark(BM);

    end;
end;

procedure TFormListaPreciosProvee.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListaPreciosProvee.spAyudaFormatoClick(Sender: TObject);
begin
  inherited;
 if pnAviso.Visible=True Then
    pnAviso.Visible:=False
  else
    pnAviso.Visible:=True;
end;

procedure TFormListaPreciosProvee.Desasignar;
begin
  if ExisteStock then
    begin
//      DatosListaPrecioProv.QDesaplicaCodigo.Close;
//      DatosListaPrecioProv.QDesaplicaCodigo.ParamByName('Codigo').Value:=CDSLPProveedorDetCODIGO_PROVEEDOR.Value;
//      DatosListaPrecioProv.QDesaplicaCodigo.ParamByName('Id').Value    :=CDSLPProveedorDetID.Value;
//      DatosListaPrecioProv.QDesaplicaCodigo.ExecSQL;
//      DatosListaPrecioProv.QDesaplicaCodigo.Close;

      if CDSLPProveedorDet.State = dsBrowse then  CDSLPProveedorDet.Edit;
      CDSLPProveedorDetCODIGO.Text  :=  '';
      CDSLPProveedorDet.Post;
    end;
end;

procedure TFormListaPreciosProvee.DesasignarArticulosExecute(Sender: TObject);
begin
  inherited;
  try
    ModificarUno.Execute;
    Desasignar;
    ConfirmaUno.Execute;
  Except
    ShowMessage('Fallo la Operación..');
  end;
end;


procedure TFormListaPreciosProvee.DesasignarTodosExecute(Sender: TObject);
begin
  inherited;
  Modificar.Execute;
  IniciaProgress;
//  CDSLPProveedorDet.Filtered  :=  True;
  CDSLPProveedorDet.First;
  while not CDSLPProveedorDet.eof do
    begin
      Desasignar;
      CDSLPProveedorDet.Next;
    end;
//  CDSLPProveedorDet.Filtered  :=  False;
  FinProgress;
end;

procedure TFormListaPreciosProvee.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  ActualizaTodos.Enabled  := DSBase.State = dsBrowse;

 // pnDetalle.Enabled  := (CDSLPProveedorCabCODIGO_PROVEE<>nil) and (CDSLPProveedorCabCODIGO_PROVEE.AsString <>'') ;

//  Prev.Enabled :=(DSBase.State in [dsBrowse]);
//  Next.Enabled :=(DSBase.State in [dsBrowse]);
//  if DSBase.DataSet.IsEmpty then
//    begin
//      Prev.Enabled:=False;
//      next.Enabled:=False;
//    end;

  pnCabecera.Enabled           := DSBase.State in [dsInsert,dsEdit,dsBrowse];
  pnDetalle.Enabled            := DSBase.State in [dsInsert,dsEdit,dsBrowse];
  pnPrincipal.Enabled          := True;
  Recalcular.Enabled           := (DSBase.State in [dsInsert,dsEdit]) and Not(DSBase.DataSet.IsEmpty);
  CambiarProveedor.Enabled     := (DSBase.State in [dsBrowse]) and Not(DSBase.DataSet.IsEmpty);

  AgregarStock.Enabled         := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  AgregarStock_2.Enabled       := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  AgregarStockTodos.Enabled    := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  DesasignarTodos.Enabled      := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  ActualizaTodos.Enabled       := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));

  DesasignarArticulos.Enabled  := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  BuscarArticulo.Enabled       := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  ActualizaUno.Enabled         := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  ActualizarDatosStkUno.Enabled:= (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  BorrarStockTodos.Enabled     := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));

  BorrarRubro.Enabled          := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  btBuscaXLS.Enabled           := (DSBase.State <> dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  btImportar.Enabled           := (DSBase.State in [dsInsert,dsEdit]);
  PonerProvee_Marca.Enabled    := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
end;

procedure TFormListaPreciosProvee.edBuscarDropDownHeaderButtonClick(
  Sender: TObject; ButtonIndex: Integer);
begin
  inherited;
  colBusqueda(ButtonIndex);
  edBuscar.DropDownHeader.Visible :=  false;
  edBuscar.DropDownHeader.Visible :=  True;
  edBuscar.SearchList.Repaint;
end;

procedure TFormListaPreciosProvee.colBusqueda(col:  Integer);
var
  x: Integer;
begin
  colBusca    :=  col;

  if col=3 then
    edBuscar.FilterCondition.AllColumns :=  true
  else
    begin
      edBuscar.FilterCondition.AllColumns :=  False;
      edBuscar.FilterCondition.Column     :=  col;
    end;

  for x := 0 to 3 do
    edBuscar.DropDownHeader.Buttons.Items[x].ImageIndex :=  11;

  edBuscar.DropDownHeader.Buttons.Items[col].ImageIndex :=  10;

end;

procedure TFormListaPreciosProvee.edBuscarSelect(Sender: TObject);
begin
  if dbgDetalle.DataSource.DataSet.Locate('CODIGO_PROVEEDOR',edBuscar.SearchList.SelectedItem.Captions[0],[]) then
    dbgDetalle.SetFocus;
  inherited;
end;

procedure TFormListaPreciosProvee.CDSLPProveedorDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSLPProveedorDetID_CAB.Value                   := CDSLPProveedorCabID.Value;
  CDSLPProveedorDetID.Value                       := IBGDet.IncrementFD(1);
  CDSLPProveedorDetDETALLE_ADICIONAL.AsString     := '';
  CDSLPProveedorDetDESCUENTO.AsFloat              := 0;
  CDSLPProveedorDetPRECIO_LISTA.AsFloat           := 0;
  CDSLPProveedorDetPRECIO.AsFloat                 := 0;
  CDSLPProveedorDetPRESENTACION_CANTIDAD.AsFloat  := 1;
  CDSLPProveedorDetPRESENTACION_UNIDAD.AsString   := 'UNI';
  CDSLPProveedorDetMONEDA.AsInteger               :=  1;
  CDSLPProveedorDetIVA_TASA.AsFloat               :=  21;
  CDSLPProveedorDetRUBRO.AsString                 :=  '';
  CDSLPProveedorDetSUBRUBRO.AsString              :=  '';
  CDSLPProveedorDetMARCA.AsString                 :=  '';
  CDSLPProveedorDetMUESTRARUBRO.AsString          :=  '';
  CDSLPProveedorDetMUESTRASUBRUBRO.AsString       :=  '';
  CDSLPProveedorDetDESCRIPCION_MARCA.AsString     :=  '';
end;

procedure TFormListaPreciosProvee.CDSLPProveedorDetPRECIOSetText(Sender: TField;
  const Text: string);
var
  Precio2, Dscto:  double;
begin
  if Trim(Text)<>'' then
    begin
      inherited;
      Sender.AsString :=  Text;
      CDSDescuentos.DisableControls;
      CDSDescuentos.First;
      Precio2 :=  CDSLPProveedorDetPRECIO_LISTA.AsFloat;
      while not(CDSDescuentos.Eof) do
        begin
          Dscto                           :=  Precio2 * -1 * CDSDescuentosBONIFICACION.AsFloat * 0.01;
          Precio2                         :=  Precio2 - Dscto;
          CDSDescuentos.Next;
        end;
      CDSLPProveedorDetDESCUENTO.AsFloat  :=  (Sender.AsFloat / Precio2 -1)*-100;

      CDSDescuentos.First;
      CDSDescuentos.EnableControls;
    end;
end;

procedure TFormListaPreciosProvee.CDSLPProveedorDetPRECIO_LISTASetText(
  Sender: TField; const Text: string);
var Precio2,Dscto:Real;
begin
  inherited;

  Sender.AsString:=Text;
  if Sender.AsString='' then Sender.AsString:='0';
  CDSLPProveedorDetDESCUENTO.Text   :=  CDSLPProveedorDetDESCUENTO.AsString;

end;

procedure TFormListaPreciosProvee.chAlfaClick(Sender: TObject);
begin
  inherited;
  cbChar2.Enabled     := chAlfa.Checked;
  cbJustifica.Enabled :=  chAlfa.Checked;
end;

procedure TFormListaPreciosProvee.chbConIvaClick(Sender: TObject);
begin
  inherited;
  chbConIva.Checked   :=  True;
  chSinIva.Checked    :=  False;
  chSumaIva.Checked   :=  False;
end;

procedure TFormListaPreciosProvee.chbFiltroClick(Sender: TObject);
begin
  inherited;
  CDSLPProveedorDet.Filtered:=False;
  CDSLPProveedorDet.Filter  :=' ( codigo = '''' ) or ( codigo is null ) ';
  CDSLPProveedorDet.Filtered:=chbFiltro.Checked;

end;

procedure TFormListaPreciosProvee.chbUsarCodigoProveeClick(Sender: TObject);
begin
 // inherited;
  chbUsarCodigoProvee.Checked   := True;
  chGravCodAlter.Checked        := False;
  chAlfa.Checked                := True;
  cbChar2.Enabled               := True;
  cbJustifica.Enabled           := True;
end;

procedure TFormListaPreciosProvee.chGravCodAlterClick(Sender: TObject);
begin
  inherited;
  chGravCodAlter.Checked        := True;
  chbUsarCodigoProvee.Checked   := False;
end;

procedure TFormListaPreciosProvee.dbgDetalleTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  CDSLPProveedorDet.IndexFieldNames:=Field.FieldName;
end;

procedure TFormListaPreciosProvee.btBuscaXLSClick(Sender: TObject);
var x:integer;
begin
  inherited;
  IniciaInd;
  HayAltas    :=  False;
  if (DSBase.State in [dsInsert,dsEdit]) and (OpenDialog.Execute) Then
    if  OpenDialog.FileName<>'' Then
    //  if ExtractFileExt(OpenDialog.FileName)='xls' then
       begin
        edPath.Text             := OpenDialog.FileName;
        gListaXLS.Enabled       := True;
        //gListaXLS.LoadFromXLS (edPath.Text);
        gListaXLS.StartUpdate;

        AdvGridExcelIO1.XLSImport(edPath.Text);

        for x := 0 to gListaXLS.ColCount-1 do
          gListaXLS.AllColWidths[x] := 120;
        gListaXLS.Width:= gListaXLS.Width-100;
        gListaXLS.Width:= gListaXLS.Width+100;

        gListaXLS.EndUpdate;
       end;

end;

procedure TFormListaPreciosProvee.btCancelClick(Sender: TObject);
begin
 // inherited;
  Cancel:=True;
  btCancel.Enabled:=False;
  edPath.Clear;
end;

procedure TFormListaPreciosProvee.btImportarClick(Sender: TObject);
begin
  inherited;
  pbCarga.Show;
  pbCarga.Min :=  0;
  pbCarga.Max :=  gListaXLS.RowCount;
  if gListaXLS.RowCount>2 then
    begin
      Screen.Cursor             := crHourGlass;
      //dbgDetalle.Visible        := False;
      btCancel.Enabled          := True;
      btCancelar.Enabled        := False;
      pnPrincipal.Enabled       := False;
      jvHilo.FreeOnTerminate    := True;
      jvHilo.Execute(self);
      pnPrincipal.Enabled       := True;
    end;
end;

procedure TFormListaPreciosProvee.btImprimirClick(Sender: TObject);
begin
  inherited;
  if Not(CDSLPProveedorDet.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\LstPreciosProveedor.fr3');
      frxReport.ShowReport;
    end;
end;

procedure TFormListaPreciosProvee.BitBtn1Click(Sender: TObject);
begin
  inherited;
  pnAviso.Hide;
end;

procedure TFormListaPreciosProvee.BorrarExecute(Sender: TObject);
begin
  if MessageDlg('¿Desea intentar eliminar los artículos cargados al stock? (Recuerde que si tiene movimientos no se podrá.',mtWarning,mbYesNo,0)=mrYes then
    begin
      Screen.Cursor             := crHourGlass;
      CDSLPProveedorDet.DisableControls;
      CDSLPProveedorDet.First;
      BorrarStockTodos.Execute;
      CDSLPProveedorDet.EnableControls;
    end;
  inherited;
end;

procedure TFormListaPreciosProvee.BorrarRubroExecute(Sender: TObject);
begin
  inherited;
  if (CDSLPProveedorDetCODIGO.AsString='') and (Not(CDSLPProveedorDet.IsEmpty)) then
    begin
  //    DMMain_FD.fdcGestion.StartTransaction;
      try
        ModificarUno.Execute;
        DatosListaPrecioProv.QBorrarRubro.Close;
        DatosListaPrecioProv.QBorrarRubro.ParamByName('Codigo').Value:=CDSLPProveedorDetCODIGO_PROVEEDOR.Value;
        DatosListaPrecioProv.QBorrarRubro.ParamByName('Id').Value    :=CDSLPProveedorDetID.Value;
        DatosListaPrecioProv.QBorrarRubro.ExecSQL;
        DatosListaPrecioProv.QBorrarRubro.Close;
        ConfirmaUno.Execute;
       // DMMain_FD.fdcGestion.Commit;
      Except
        //DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Fallo la Operación..');
      end;
     // Recuperar.Execute;
    end
  else
    ShowMessage('Debe borrar la Asignacion...o no hay dato para procesar...');
end;

procedure TFormListaPreciosProvee.BorrarStockTodosExecute(Sender: TObject);
var
ContBorr: integer;
begin
  inherited;
  ContBorr:=0;
  if (CDSLPProveedorDet.RecordCount>0) and (MessageDlg(' ¿Confirma borrado de Todos los art. en stock?',mtWarning,[mbYes,mbNo],0)=mrYes) then
    begin
      IniciaProgress;
      CDSLPProveedorDet.First;
      DatosListaPrecioProv.SQLThreads.StartTransaction;
      try
        while not(CDSLPProveedorDet.Eof) do
          begin
            try
              DatosListaPrecioProv.QBorrarStock.Close;
              DatosListaPrecioProv.QBorrarStock.ParamByName('codigo').AsString:=CDSLPProveedorDetCODIGO.AsString;
              DatosListaPrecioProv.QBorrarStock.ExecSQL;
              DatosListaPrecioProv.QBorrarStock.Close;
            except
              inc(ContErr);
            end;
            CDSLPProveedorDet.Next;
            Progress;
            inc(ContBorr);
          end;
        DatosListaPrecioProv.SQLThreads.Commit;
        Showmessage( IntToStr(ContBorr) + ' Art. Borrados correctamente');
      Except
        DatosListaPrecioProv.SQLThreads.Rollback;
        Showmessage('ERROR EN EL BORRADO. CODIGO PROBLEMÁTICO:' + CDSLPProveedorDetCODIGO.AsString);
        sbEstado.SimpleText:='Fallo la Operación de Borrado de Stock codigo: '+CDSLPProveedorDetCODIGO.AsString;
      end;

      FinProgress;
      Recuperar.Execute;
    end;
end;

procedure TFormListaPreciosProvee.AgregarStockExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSLPProveedorDet.IsEmpty) then
    begin
      if Not(Assigned(FormStock_2)) Then
        FormStock_2:=TFormStock_2.Create(Self);
      if CDSLPProveedorDetCODIGO.Value='' Then
        begin
          FormStock_2.Agregar.Execute;
          FormStock_2.AltaListaProveedor := True;
          FormStock_2.CodigoProveedor    := CDSLPProveedorCabCODIGO_PROVEE.AsString;
          FormStock_2.CodigoArtProveedor := CDSLPProveedorDetCODIGO_PROVEEDOR.AsString;

          FormStock_2.DSBase.DataSet.FieldByName('Detalle_stk').Value                 := CDSLPProveedorDetDETALLE.Value;
          FormStock_2.DSBase.DataSet.FieldByName('DETALLE_STK_ADICIONAL').AsString    := CDSLPProveedorDetDETALLE_ADICIONAL.AsString;
          FormStock_2.DSBase.DataSet.FieldByName('Costo_Gravado_stk').Value           := CDSLPProveedorDetPRECIO.Value;
          FormStock_2.DSBase.DataSet.FieldByName('Fijacion_precio_Gravado').Value     := CDSLPProveedorDetPRECIO.Value;

          DatosListaPrecioProv.QBuscaMarcaCod.Close;
          DatosListaPrecioProv.QBuscaMarcaCod.ParamByName('codigo').Value             := CDSLPProveedorDetMARCA.AsString;
          DatosListaPrecioProv.QBuscaMarcaCod.Open;
          if Not(DatosListaPrecioProv.QBuscaMarcaCod.IsEmpty) then
            FormStock_2.DSBase.DataSet.FieldByName('MARCA_STK').Value                 := CDSLPProveedorDetMARCA.AsString;
          DatosListaPrecioProv.QBuscaMarcaCod.Close;

          FormStock_2.DSBase.DataSet.FieldByName('reemplazo_stk').Value               := CDSLPProveedorDetCODIGO_PROVEEDOR.AsString;
        end
      else
        begin
          FormStock_2.DatoNew  := CDSLPProveedorDetCODIGO.AsString;
          FormStock_2.Recuperar.Execute;
        end;

    end;

end;

procedure TFormListaPreciosProvee.IniciaProgress;
begin
  ContErr :=  0;
  pbCarga.Show;
  pbCarga.Min :=  0;
  pbCarga.Max :=  CDSLPProveedorDet.RecordCount;
  pbCarga.Position  :=  0;
  Cancel  :=  False;
  CDSLPProveedorDet.DisableControls;

end;

procedure TFormListaPreciosProvee.FinProgress;
begin
  CDSLPProveedorDet.EnableControls;
  pbCarga.Position  :=  0;
  pbCarga.Hide;
end;

function  TFormListaPreciosProvee.SubRubroPorDef: boolean;
begin
    if ((not chkSubRubroPorDef.Checked) or (cbRubroPorDef.ItemIndex  < 0) or
                                           (cbSubRubPorDef.ItemIndex < 0))
        and
        (MessageDlg(' No indicó Subrubro por defecto, los artículos a cargar que hayan sido importados' +
                    ' sin un Rubro y Subrubro requerirán que se los seleccione (uno por uno).' +
                    ' ¿Desea elegir RUBRO/SUBRUBRO por defecto?',
              mtConfirmation,[mbYes,mbNo],0,mbYes)=mrYes) then
        begin
          if Not(assigned(FormBuscadorSubRubroStock)) then
            FormBuscadorSubRubroStock:=TFormBuscadorSubRubroStock.Create(Self);
          FormBuscadorSubRubroStock.ShowModal;
          if FormBuscadorSubRubroStock.ModalResult=mrOk then
            begin
              chkSubRubroPorDef.Checked := True;
              DatosListaPrecioProv.CDSRubros.Locate('CODIGO_RUBRO',FormBuscadorSubRubroStock.CodigoRubro,[]);
              DatosListaPrecioProv.CDSSubRubros.Locate('CODIGO_SUBRUBRO',FormBuscadorSubRubroStock.Codigo,[]);

              Result  :=  True;
            end
          else
            Result    :=  False;
        end
    else
      Result          :=  False;
end;


procedure TFormListaPreciosProvee.AgregarStockTodosExecute(Sender: TObject);
begin
  inherited;
  if (CodigoSecuencial='S') or (MessageDlg('Se recomienda Codificación de Artículos secuencial. ' +
                                           'De lo contrario podrá importar sólo 1000 artículos por subrubro.' +
                                           ' ¿Continúa de todos modos?', mtWarning, [mbYes,mbNo],0,mbYes)=mrYes) then
    begin
      SubrubroPorDef;
      CodAct  :=  IniciaCodAct;
      IniciaProgress;
      DatosListaPrecioProv.SQLThreads.StartTransaction;

      try
        if (CDSLPProveedorDet.Active) and (not CDSLPProveedorDet.IsEmpty) then
          begin
            Modificar.Execute;
            CDSLPProveedorDet.IndexFieldNames :=  'ID';
            CDSLPProveedorDet.Last;

            if CDSLPProveedorDetID.AsInteger > UltID then
              begin
                if CDSLPProveedorDet.Locate('ID',UltID,[]) then
                  CDSLPProveedorDet.Next;
              end
            else
              CDSLPProveedorDet.First;
          end;
        while (not CDSLPProveedorDet.Eof) and (Not Cancel) do
          begin
            if not ExisteStock then AddStock;
            Progress;
            CDSLPProveedorDet.Next;
          end;

        if Not Cancel then
          DatosListaPrecioProv.SQLThreads.Commit
        else
          begin
            Showmessage(' Carga Interrumpida por el usuario.');
            DatosListaPrecioProv.SQLThreads.RollBack;
          end;

      except
        DatosListaPrecioProv.SQLThreads.RollBack;
        Showmessage('Error al cargar a Stock.');
      end;

      FinProgress;
      CodAct  :=  IniciaCodAct;
    end;
end;

procedure TFormListaPreciosProvee.AgregarStock_2Execute(Sender: TObject);
begin
  CodAct    :=  IniciaCodAct;
  ModificarUno.Execute;
  AddStock;
  ConfirmaUno.Execute;
end;

procedure TFormListaPreciosProvee.AddStock(const Actualiza: boolean = false);
var codigo, CodRub, CodSubRub, CodMarca, DetRub, DetSubRub, DetMarca:string; NoCod: boolean; CostoFinal, CostoNeto: extended;
begin
  CodRub    :=  '';
  CodSubRub :=  '';
  CodMarca  :=  '';
  if (CDSLPProveedorDetCODIGO.AsString='') or (Actualiza) then
    begin
      if Actualiza then
        with DatosListaPrecioProv do
          begin
            QBuscaArticulo.Close;
            QBuscaArticulo.ParamByName('codigo').Value := CDSLPProveedorDetCODIGO.AsString;
            QBuscaArticulo.Open;
            if not QBuscaArticulo.IsEmpty then
              begin
                CodRub    :=  QBuscaArticuloRUBRO_STK.AsString;
                DetRub    :=  QBuscaArticuloMUESTRARUBRO.AsString;
                CodSubRub :=  QBuscaArticuloSUBRUBRO_STK.AsString;
                DetSubRub :=  QBuscaArticuloMUESTRASUBRUBRO.AsString;
                CodMarca  :=  QBuscaArticuloMARCA_STK.AsString;
                DetMarca  :=  QBuscaArticuloMUESTRAMARCA.AsString;
              end;
            QBuscaArticulo.Close;
          end;

      if CDSLPProveedorDet.State=dsBrowse then  CDSLPProveedorDet.Edit;
        if (CDSLPProveedorDetMUESTRARUBRO.AsString='')  then
          begin
            if Actualiza then
              CDSLPProveedorDetRUBRO.AsString                 :=  CodRub
            else
              if  (chkSubRubroPordef.Checked) then
                begin
                  CDSLPProveedorDetRUBRO.AsString               :=  DatosListaPrecioProv.CDSRubrosCODIGO_RUBRO.AsString;
                  CDSLPProveedorDetMUESTRARUBRO.AsString        :=  DatosListaPrecioProv.CDSRubrosDETALLE_RUBRO.AsString;
                end
              else
                begin
                  if Not(assigned(FormBuscadorSubRubroStock)) then
                    FormBuscadorSubRubroStock:=TFormBuscadorSubRubroStock.Create(Self);
                  FormBuscadorSubRubroStock.CodigoStk :=  codigo;
                  FormBuscadorSubRubroStock.CodigoAlt :=  Trim(CDSLPProveedorDetCODIGO_PROVEEDOR.AsString);
                  FormBuscadorSubRubroStock.Detalle   :=  UpperCase(CDSLPProveedorDetDETALLE.AsString);
                  FormBuscadorSubRubroStock.ShowModal;
                  if FormBuscadorSubRubroStock.ModalResult=mrOk then
                    begin
                      CDSLPProveedorDetRUBRO.AsString          := FormBuscadorSubRubroStock.CodigoRubro;
                      CDSLPProveedorDetSUBRUBRO.AsString       := FormBuscadorSubRubroStock.Codigo;
                      CDSLPProveedorDetMUESTRARUBRO.ASString   := FormBuscadorSubRubroStock.MuestraRubro;
                      CDSLPProveedorDetMUESTRASUBRUBRO.ASString:= FormBuscadorSubRubroStock.MuestraSubRubro;
                    end
                  else
                    Cancel      :=  TRUE;

                  FormBuscadorSubRubroStock.Close;
                  FreeAndNil(FormBuscadorSubRubroStock);
                  if Cancel then  Exit;
                end;
          end
        else
          begin
            if (CDSLPProveedorDetRUBRO.AsString = '') or (CDSLPProveedorDetMUESTRARUBRO.Value <> DetRub) then
              begin
                DatosListaPrecioProv.QBuscadorRubro.Close;
                DatosListaPrecioProv.QBuscadorRubro.ParamByName('descripcion').Value  := Uppercase(CDSLPProveedorDetMUESTRARUBRO.AsString);
                DatosListaPrecioProv.QBuscadorRubro.Open;
                if DatosListaPrecioProv.QBuscadorRubroCODIGO_RUBRO.Value<>'' then
                   CDSLPProveedorDetRUBRO.AsString  := DatosListaPrecioProv.QBuscadorRubroCODIGO_RUBRO.AsString
                else
                  CDSLPProveedorDetRUBRO.AsString   := AgregarRubro(UpperCase(CDSLPProveedorDetMUESTRARUBRO.AsString));
                DatosListaPrecioProv.QBuscadorRubro.Close;
              end;
          end;


        if (CDSLPProveedorDetMUESTRASUBRUBRO.AsString='')  then
          begin
            if Actualiza then
              CDSLPProveedorDetSUBRUBRO.AsString  :=  CodSubRub // DEBO MANTENER EL SUBRUBRO EN STOCK
            else
              if  (chkSubRubroPordef.Checked) then
                begin
                  CDSLPProveedorDetSUBRUBRO.AsString               :=  DatosListaPrecioProv.CDSSubRubrosCODIGO_SUBRUBRO.AsString;
                  CDSLPProveedorDetMUESTRASUBRUBRO.AsString        :=  DatosListaPrecioProv.CDSSubRubrosDETALLE_SUBRUBRO.AsString;
                end;
          end
        else
          begin
            if (CDSLPProveedorDetSUBRUBRO.AsString='') or (CDSLPProveedorDetMUESTRASUBRUBRO.AsString <> DetSubRub) then
              begin
                DatosListaPrecioProv.QBuscadorSubRrub.Close;
                DatosListaPrecioProv.QBuscadorSubRrub.ParamByName('descripcion').Value:= Uppercase(CDSLPProveedorDetMUESTRASUBRUBRO.AsString);
                DatosListaPrecioProv.QBuscadorSubRrub.ParamByName('rubro').Value      := CDSLPProveedorDetRUBRO.AsString;
                DatosListaPrecioProv.QBuscadorSubRrub.Open;
                if DatosListaPrecioProv.QBuscadorSubRrubCODIGO_SUBRUBRO.Value<>'' then
                  CDSLPProveedorDetSUBRUBRO.AsString           := DatosListaPrecioProv.QBuscadorSubRrubCODIGO_SUBRUBRO.AsString
                else
                  CDSLPProveedorDetSUBRUBRO.AsString           := AgregarSubRubro(UpperCase(CDSLPProveedorDetMUESTRASUBRUBRO.AsString),CDSLPProveedorDetRUBRO.AsString);
                DatosListaPrecioProv.QBuscadorSubRrub.Close;
              end;
          end;

      if (Actualiza) then
        codigo  :=  CDSLPProveedorDetCODIGO.AsString
      else
        if chbUsarCodigoProvee.Checked=True then
          codigo:=CDSLPProveedorDetCODIGO_PROVEEDOR.AsString
        else                  // aca controlo el codigo del articulo
          if (CDSLPProveedorDetCODIGO.AsString='') then
            codigo  := Generar_Codigo
          else
            codigo  := Trim(CDSLPProveedorDetCODIGO_PROVEEDOR.AsString);

      //**********************************************************

      if Codigo<>'' then
        begin
          Try
            DatosListaPrecioProv.spABMStock.Close;
            if not Actualiza then codigo  :=  Codifica(Codigo);

            DatosListaPrecioProv.spABMStock.Close;
            DatosListaPrecioProv.spABMStock.ParamByName('CODIGO').Value                 := codigo;
            DatosListaPrecioProv.spABMStock.ParamByName('Detalle').AsString             := UpperCase(CDSLPProveedorDetDETALLE.AsString);

            if not CDSLPProveedorDetDETALLE_ADICIONAL.IsNull then
              DatosListaPrecioProv.spABMStock.ParamByName('Detalle_Adicional').AsString := UpperCase(CDSLPProveedorDetDETALLE_ADICIONAL.AsString)
            else
              DatosListaPrecioProv.spABMStock.ParamByName('Detalle_Adicional').AsString := UpperCase(CDSLPProveedorDetDETALLE.AsString);

            if chGravCodAlter.Checked then
              DatosListaPrecioProv.spABMStock.ParamByName('codigo_alternativo').AsString:= Trim(CDSLPProveedorDetCODIGO_PROVEEDOR.AsString)
            else
              DatosListaPrecioProv.spABMStock.ParamByName('codigo_alternativo').AsString:= Codigo;

            DatosListaPrecioProv.spABMStock.ParamByName('PRESENTACION_CANTIDAD').Value  := CDSLPProveedorDetPRESENTACION_CANTIDAD.AsFloat;

            DatosListaPrecioProv.spABMStock.ParamByName('PRESENTACION_UNIDAD').Value    := CDSLPProveedorDetPRESENTACION_UNIDAD.AsString;

            if (CDSLPProveedorDetDESCRIPCION_MARCA.AsString<>'') and ((CDSLPProveedorDetMARCA.AsString = '') or
                                                                      (CDSLPProveedorDetDESCRIPCION_MARCA.AsString <> DetMarca)) then
              begin
                DatosListaPrecioProv.QBuscadorMarca.Close;
                DatosListaPrecioProv.QBuscadorMarca.ParamByName('descripcion').Value    :=Trim(CDSLPProveedorDetDESCRIPCION_MARCA.AsString);
                DatosListaPrecioProv.QBuscadorMarca.Open;
                if DatosListaPrecioProv.QBuscadorMarcaMARCA_STK.AsString<>'' then
                  CDSLPProveedorDetMARCA.Value   := DatosListaPrecioProv.QBuscadorMarcaMARCA_STK.AsString
                else
                  CDSLPProveedorDetMARCA.Value   := AgregarMarca(Uppercase(CDSLPProveedorDetDESCRIPCION_MARCA.AsString));
                DatosListaPrecioProv.QBuscadorMarca.Close;
                DatosListaPrecioProv.spABMStock.ParamByName('Marca').AsString           := CDSLPProveedorDetMARCA.AsString;
              end
            else
              DatosListaPrecioProv.spABMStock.ParamByName('Marca').AsString             := CodMarca;


            if (CDSLPProveedorDetRUBRO.AsString<>'') then
              DatosListaPrecioProv.spABMStock.ParamByName('Rubro').AsString             := CDSLPProveedorDetRUBRO.AsString;

            if (CDSLPProveedorDetSUBRUBRO.AsString<>'') then
              DatosListaPrecioProv.spABMStock.ParamByName('SubRubro').AsString          := CDSLPProveedorDetSUBRUBRO.AsString;

            DatosListaPrecioProv.spABMStock.ParamByName('modo_gravamen').Value         := 'G';       // SIEMPRE GRAVADOS IVA 21%
            if CompareValue(CDSLPProveedorDetIVA_TASA.Value,21,0.1)=EqualsValue then
               begin
                 DatosListaPrecioProv.spABMStock.ParamByName('tasa_iva').Value               := 1;
                 DatosListaPrecioProv.spABMStock.ParamByName('sobretasa_iva').Value          := 1;
               end
             else
               if CompareValue(CDSLPProveedorDetIVA_TASA.Value,10.5,0.1)=EqualsValue then
                 begin
                   DatosListaPrecioProv.spABMStock.ParamByName('tasa_iva').Value               := 4;
                   DatosListaPrecioProv.spABMStock.ParamByName('sobretasa_iva').Value          := 4;
                 end;



           // DatosListaPrecioProv.spABMStock.ParamByName('tasa_iva').Value               := 1;
           // DatosListaPrecioProv.spABMStock.ParamByName('sobretasa_iva').Value          := 1;
            DatosListaPrecioProv.spABMStock.ParamByName('costo_exento').Value           := 0;

            if (CDSLPProveedorDetIVA_TASA.IsNull) or
               (CDSLPProveedorDetIVA_TASA.AsFloat < 5) then
               begin
                 CDSLPProveedorDetIVA_TASA.AsFloat                                     := 21.00;     // CORRIJO ERRORES VIEJOS CON TASA 1.00 ,
                                                                                                      // tasa mínima 5% (arbitraria)
                 DatosListaPrecioProv.spABMStock.ParamByName('tasa_iva').Value         := 1;
                 DatosListaPrecioProv.spABMStock.ParamByName('sobretasa_iva').Value    := 1;
               end;


            CostoFinal  :=  CDSLPProveedorDetPRECIO.AsFloat * ( 1 + CDSLPProveedorDetIVA_TASA.AsFloat/100);
            CostoNeto   :=  RoundTo(CostoFinal / ( 1 + CDSLPProveedorDetIVA_TASA.AsFloat/100),-4);

            DatosListaPrecioProv.spABMStock.ParamByName('costo_gravado').Value          := CostoNeto;

            DatosListaPrecioProv.spABMStock.ParamByName('moneda').Value                 := CDSLPProveedorDetMONEDA.AsInteger;

            if (CDSLPProveedorDetRUBRO.AsString<>'') and (CDSLPProveedorDetSUBRUBRO.AsString<>'') then
              begin
                DatosListaPrecioProv.spABMStock.ExecProc;
                DatosListaPrecioProv.spABMStock.Close;

                if chPrecioVta.Checked then
                  begin
                    DatosListaPrecioProv.CDSListas.Close;
                    DatosListaPrecioProv.CDSListas.Open;
                    DatosListaPrecioProv.CDSListas.First;
                    while not(DatosListaPrecioProv.CDSListas.Eof) do
                      begin
                        DatosListaPrecioProv.spActualizaPrecioVta.Close;
                        DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('Lista').Value     :=DatosListaPrecioProv.CDSListasID.Value;
                        DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('Codigo').Value    :=Codigo;
                        DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('Costo').Value     :=CostoNeto;
                        DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('Precio').Value    :=CDSLPProveedorDetPRECIO_LISTA.AsFloat;
                        DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('CODIgo_reemplazo').Clear;
                        DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('Fecha').Value     :=Date;
                        DatosListaPrecioProv.spActualizaPrecioVta.ExecProc;
                        DatosListaPrecioProv.spActualizaPrecioVta.Close;
                        DatosListaPrecioProv.CDSListas.Next;
                      end;
                    DatosListaPrecioProv.CDSListas.Close;
                  end;
                if GeneraCodigoBarra='S' then
                  begin
                    DatosListaPrecioProv.spAltaCB.Close;
                    DatosListaPrecioProv.spAltaCB.ParamByName('CODIGO').Value             :=  codigo;
                    DatosListaPrecioProv.spAltaCB.ParamByName('CODIGOBARRA').Value        := '1'+codigo;
                    DatosListaPrecioProv.spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := 1;
                    DatosListaPrecioProv.spAltaCB.ExecProc;
                    DatosListaPrecioProv.spAltaCB.Close;
                  end;

                if (CDSLPProveedorDetCODIGOBARRA<>NIL) and (Trim(CDSLPProveedorDetCODIGOBARRA.AsString)<>'') then
                  begin
                    DatosListaPrecioProv.spAltaCB.Close;
                    DatosListaPrecioProv.spAltaCB.ParamByName('CODIGO').Value             :=  codigo;
                    DatosListaPrecioProv.spAltaCB.ParamByName('CODIGOBARRA').Value        := Trim(CDSLPProveedorDetCODIGOBARRA.AsString);
                    if (CDSLPProveedorDetPRESENTACION_CANTIDAD<>nil) then
                      DatosListaPrecioProv.spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := CDSLPProveedorDetPRESENTACION_CANTIDAD.AsFloat
                    else
                      DatosListaPrecioProv.spAltaCB.ParamByName('CANTIDAD_POR_BULTO').Value := 1;
                    DatosListaPrecioProv.spAltaCB.ExecProc;
                    DatosListaPrecioProv.spAltaCB.Close;
                  end;

                CDSLPProveedorDetCODIGO.AsString:=codigo;
                StockIngresado.Add(codigo);
              end
            else
              CDSLPProveedorDetCODIGO.Value:='';
          except
            CDSLPProveedorDetCODIGO.Value   :=  CDSLPProveedorDetCODIGO.OldValue;;
            Inc(ContErr);
          end;

          if CDSLPProveedorDet.State in [dsInsert, dsEdit] then CDSLPProveedorDet.Post;

        end
      else
        Inc(ContErr);
    end
  else
    //ShowMessage('Articulos ya ingresado...');
    inc(ContErr);
end;

procedure TFormListaPreciosProvee.ActualizaUnoExecute(Sender: TObject);
var CostoNeto,CostoNetoOld: extended;
begin
  inherited;
  if (CDSLPProveedorDetCODIGO.AsString<>'') and (Not(CDSLPProveedorDet.IsEmpty)) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        CostoNeto     :=  RoundTo((CDSLPProveedorDetPRECIO.AsFloat  * (1+ CDSLPProveedorDetIVA_TASA.AsFloat/100)) / (1+ CDSLPProveedorDetIVA_TASA.AsFloat/100) {1.21},-4);
        CostoNetoOld  :=  RoundTo((CDSLPProveedorDetPRECIO.OldValue * (1+ CDSLPProveedorDetIVA_TASA.AsFloat/100)) / (1+ CDSLPProveedorDetIVA_TASA.AsFloat/100){1.21},-4);

        DatosListaPrecioProv.spActualizaPrecios.Close;
        DatosListaPrecioProv.spActualizaPrecios.ParamByName('Fecha').AsDateTime:= dbeFechaCompra.Date;
        DatosListaPrecioProv.spActualizaPrecios.ParamByName('codigo').AsString := CDSLPProveedorDetCODIGO.AsString;
        DatosListaPrecioProv.spActualizaPrecios.ParamByName('precio').AsFloat  := CostoNeto;
        DatosListaPrecioProv.spActualizaPrecios.ExecProc;
        DatosListaPrecioProv.spActualizaPrecios.Close;

        if chPrecioVta.Checked then
          begin
            DatosListaPrecioProv.CDSListas.Close;
            DatosListaPrecioProv.CDSListas.Open;
            DatosListaPrecioProv.CDSListas.First;
            while not(DatosListaPrecioProv.CDSListas.Eof) do
              begin
                DatosListaPrecioProv.spActualizaPrecioVta.Close;
                DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('Lista').AsInteger         := DatosListaPrecioProv.CDSListasID.AsInteger;
                DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('Codigo').AsString         := CDSLPProveedorDetCODIGO.AsString;
                DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('Costo').AsFloat           := CostoNeto;
                DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('Precio').AsFloat          := CDSLPProveedorDetPRECIO_LISTA.AsFloat;
                DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('CODIgo_reemplazo').Clear;
                DatosListaPrecioProv.spActualizaPrecioVta.ParamByName('Fecha').Value             := dbeFechaCompra.Date;
                DatosListaPrecioProv.spActualizaPrecioVta.ExecProc;
                DatosListaPrecioProv.CDSListas.Next;
                DatosListaPrecioProv.spActualizaPrecioVta.Close;
              end;
            DatosListaPrecioProv.CDSListas.Close;
          end;
        DatosListaPrecioProv.spInformaCambioPrecio.Close;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('codigo').AsString             := CDSLPProveedorDetCODIGO.AsString;

        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('costo_old').AsFloat           := CostoNetoOld;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('costo_old_gravado').AsFloat   := CostoNetoOld;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('costo_old_exento').AsFloat    := 0;

        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('costo_new').AsFloat           := CostoNeto;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('costo_new_gravado').AsFloat   := CostoNeto;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('costo_new_exento').AsFloat    := 0;

        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('fprecio_old').AsFloat         := CostoNetoOld;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('fprecio_old_gravado').AsFloat := CostoNetoOld;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('fprecio_old_exento').AsFloat  := 0;

        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('fprecio_new').AsFloat         := CostoNeto;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('fprecio_new_gravado').AsFloat := CostoNeto;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('fprecio_new_exento').AsFloat  := 0;

        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('usuario').AsString            := DMMain_FD.UsuarioActivo;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('fecha').Value                 := Now;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('motivo').AsString             := 'Cambio de precio Desde Lista Proveedores';

        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('id_cambio_precio').AsInteger  := -1;
        DatosListaPrecioProv.spInformaCambioPrecio.ParamByName('id_fc_compra').Clear;

        DatosListaPrecioProv.spInformaCambioPrecio.ExecProc;


        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
        inc(ContErr);
      end;
    end;
  DatosListaPrecioProv.spActualizaPrecios.Close;
end;

procedure TFormListaPreciosProvee.ActualizaTodosExecute(Sender: TObject);
begin
  inherited;
  if (not(CDSLPProveedorDet.IsEmpty)) {and (DSBase.State=dsBrowse)} then
    begin
      IniciaProgress;
    //  CDSLPProveedorDet.Filter    := 'codigo<>'+ '''';
    //  CDSLPProveedorDet.Filtered  :=  True;
      if Not(CDSLPProveedorDet.IsEmpty) then
        begin
          CDSLPProveedorDet.First;
          while not(CDSLPProveedorDet.Eof) do
            begin
              if CDSLPProveedorDetCODIGO.AsString<>'' Then
                ActualizaUno.Execute;
              CDSLPProveedorDet.Next;
              Progress;
              Application.ProcessMessages;
            end;
        end;
      FinProgress;
      //CDSLPProveedorDet.Filter    := '';
      //CDSLPProveedorDet.Filtered  :=  False;//
//      CDSLPProveedorDet.EnableControls;
//      Application.ProcessMessages;
//      pbCarga.Hide;
    end;
 end;

end.
