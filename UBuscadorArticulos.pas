unit UBuscadorArticulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  JvBaseEdits, FMTBcd, SqlExpr, DB, DBClient, Provider, JvComponentBase,
  JvBalloonHint, Menus, ActnList, DBCtrls, JvExExtCtrls, JvExtComponent,
  JvPanel, JvExDBGrids, JvDBGrid, Grids, DBGrids, StdCtrls, Buttons, JvExMask,
  JvToolEdit, JvExControls, JvDBLookup, Mask, JvLabel, JvDBControls, ExtCtrls,
  JvGradient, IniFiles,JvJCLUtils, System.Actions, JvFormPlacement,
  JvAppStorage, JvAppIniStorage,System.StrUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvOfficeButtons;

type
  TFormBuscadorArticulos = class(TForm)
    pnPrincipal: TPanel;
    pnlCabecera: TPanel;
    Label1: TLabel;
    edDato: TEdit;
    cbCampos: TComboBox;
    DSStock: TDataSource;
    ActionList1: TActionList;
    Aceptar: TAction;
    Cancelar: TAction;
    Buscar: TAction;
    dbgExitencias: TDBGrid;
    MainMenu: TMainMenu;
    Opciones1: TMenuItem;
    BExacta: TMenuItem;
    BComienzaCon: TMenuItem;
    BIncluye: TMenuItem;
    N1: TMenuItem;
    LeftCero: TMenuItem;
    VerPendientes: TAction;
    Label8: TLabel;
    DBText1: TDBText;
    DSListaPrecioCab: TDataSource;
    Label9: TLabel;
    dbcListasPrecios: TJvDBLookupCombo;
    pnDatos: TPanel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    JvBalloonHint1: TJvBalloonHint;
    DSPStock: TDataSetProvider;
    pnFiltros: TJvPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    dbcMarca: TJvDBLookupCombo;
    DSMarca: TDataSource;
    DSSubRubro: TDataSource;
    DSRubro: TDataSource;
    dbcRubros: TJvDBLookupCombo;
    dbcSubRubros: TJvDBLookupCombo;
    imgFiltraMarca: TImage;
    imgFiltraRubro: TImage;
    imgFiltraSubRub: TImage;
    btMuestraFiltro1: TBitBtn;
    limpiarfiltros: TAction;
    btnMuestraFiltro: TSpeedButton;
    btnOcultarFiltro: TSpeedButton;
    btMuestraFiltro: TBitBtn;
    Filtros: TAction;
    pn1: TPanel;
    lbl4: TLabel;
    dbtCodigo_reemplazo: TDBText;
    lbl5: TLabel;
    dbtREEMPLAZO_STK: TDBText;
    dbtREEMPLAZO_STK1: TDBText;
    CDSStock: TClientDataSet;
    dbtLinkURL: TDBText;
    Label11: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    CDSListaPrecioCab: TClientDataSet;
    DSPListaPrecioCab: TDataSetProvider;
    CDSListaPrecioCabID: TIntegerField;
    CDSListaPrecioCabNOMBRE: TStringField;
    CDSSubRubro: TClientDataSet;
    CDSRubro: TClientDataSet;
    CDSMarca: TClientDataSet;
    DSPSubRubro: TDataSetProvider;
    DSPRubro: TDataSetProvider;
    DSPMarca: TDataSetProvider;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSMarcaMARCA_STK: TStringField;
    CDSMarcaDESCRIPCION_MARCA: TStringField;
    CDSStockCODIGO_STK: TStringField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockUNIDAD: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockDESCRIPCION_MARCA: TStringField;
    CDSStockDETALLE_RUBRO: TStringField;
    CDSStockDETALLE_SUBRUBRO: TStringField;
    CDSStockMONEDA: TIntegerField;
    CDSStockSIGNO: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockURL: TStringField;
    CDSStockLISTAPRECIO: TIntegerField;
    edCalculadora: TJvCalcEdit;
    edDscto: TJvCalcEdit;
    edPrecio: TJvCalcEdit;
    Label12: TLabel;
    Label13: TLabel;
    imgFoto: TImage;
    CDSStockFotos: TClientDataSet;
    DSPStockFotos: TDataSetProvider;
    CDSStockFotosID: TIntegerField;
    CDSStockFotosCODIGO: TStringField;
    CDSStockFotosFOTO: TStringField;
    CDSStockFotosPOR_DEFECTO: TStringField;
    DBNavigator1: TDBNavigator;
    DSStockFotos: TDataSource;
    CDSStockMUESTRAPRECIO: TFloatField;
    N2: TMenuItem;
    OcultarPrecioSinIva: TMenuItem;
    CDSLPreciosUsuarios: TClientDataSet;
    DSPLPreciosUsuarios: TDataSetProvider;
    CDSLPreciosUsuariosID_LISTA: TIntegerField;
    CDSLPreciosUsuariosNOMBRE: TStringField;
    CDSLPreciosUsuariosID: TIntegerField;
    CDSLPreciosUsuariosEXCLUSIVO_EFECTIVO: TStringField;
    CDSLPreciosUsuariosF_PAGO: TIntegerField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSStockGARANTIAOFICIAL: TStringField;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    CDSStockPOSICION: TStringField;
    CDSLPreciosUsuariosID_USUARIO: TIntegerField;
    CDSExistencia: TClientDataSet;
    CDSExistenciaCODIGO_STK: TStringField;
    CDSExistenciaDETALLE_STK: TStringField;
    CDSExistenciaDEPOSITO_STK: TIntegerField;
    CDSExistenciaDEPOSITO_NOMBRE: TStringField;
    DSExistencia: TDataSource;
    DSPExistencia: TDataSetProvider;
    CDSExistenciaSEC: TStringField;
    CDSExistenciaUBIC: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    N3: TMenuItem;
    MostrarCodigoAlternativo1: TMenuItem;
    CDSStockPLU: TStringField;
    QStock: TFDQuery;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockCOTIZACION: TFloatField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockEXISTENCIA: TFloatField;
    CDSStockMUESTRAPRECIOIVA: TFloatField;
    QRubro: TFDQuery;
    QSubRubro: TFDQuery;
    QLPreciosUsuarios: TFDQuery;
    QMarca: TFDQuery;
    QListaPrecioCab: TFDQuery;
    QListaPrecioPorDefecto: TFDQuery;
    QPimeraListaPrecio: TFDQuery;
    QListaPrecioPorDefectoID: TIntegerField;
    QListaPrecioPorDefectoF_PAGO: TIntegerField;
    QPimeraListaPrecioMIN: TIntegerField;
    CDSStockDEPRODUCCION: TStringField;
    QMoneda_: TFDQuery;
    pnProducc: TPanel;
    dbgResultado: TDBGrid;
    QHayExcepcionesUsuario: TFDQuery;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    QStockFotos: TFDQuery;
    QStockFotosID: TIntegerField;
    QStockFotosCODIGO: TStringField;
    QStockFotosFOTO: TStringField;
    QStockFotosPOR_DEFECTO: TStringField;
    CDSExistenciaFULTAJUSTE: TSQLTimeStampField;
    lbModoBusqueda: TLabel;
    NuevoArt: TAction;
    CDSMonedas: TClientDataSet;
    DSPMonedas: TDataSetProvider;
    CDSMonedasID: TIntegerField;
    CDSMonedasMONEDA: TStringField;
    CDSMonedasCOTIZACION: TFloatField;
    CDSMonedasSIGNO: TStringField;
    CDSMonedasORDEN: TSmallintField;
    CDSMonedasCOTIZACION_COMPRA: TFloatField;
    pnIngrediente: TPanel;
    Label14: TLabel;
    FiltroTipoArticulo: TAction;
    CDSExistenciaFISICO: TFloatField;
    CDSExistenciaCOMPROMETIDO: TFloatField;
    CDSExistenciaSALDO: TFloatField;
    CDSExistenciaEN_TRANSITO: TFloatField;
    CDSExistenciaACOPIO: TFloatField;
    CDSStockENRECETA: TIntegerField;
    N4: TMenuItem;
    BusquedaPorListadeProveedor1: TMenuItem;
    CDSExistenciaPRIMERO: TIntegerField;
    Label15: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    lbPreciosProveedor: TLabel;
    CDSStockIDLISTAPROVE: TIntegerField;
    CDSStockPLU_2: TStringField;
    Panel1: TPanel;
    Label4: TLabel;
    DBStatusLabel1: TJvDBStatusLabel;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    btNuevoArt: TBitBtn;
    CDSStockPUBLICAR_WEB: TStringField;
    PopupMenu1: TPopupMenu;
    FiltrarPublicadosenWeb1: TMenuItem;
    Label16: TLabel;
    chMoneda: TAdvOfficeCheckBox;
    chExistencia: TAdvOfficeCheckBox;
    CDSStockARTICULO_VARIABLE: TStringField;
    DBText6: TDBText;
    CDSStockCODIGO_ART_VARIABLE: TStringField;
    CDSStockPERCIBE_IVA: TStringField;
    BuscarLotes: TAction;
    N5: TMenuItem;
    BuscarLotes1: TMenuItem;
    FiltrarLosArticulosTrazables1: TMenuItem;
    N6: TMenuItem;
    FiltrarInactivos: TMenuItem;
    FiltradeProduccion1: TMenuItem;
    N7: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure chbCamposClickCheck(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure edDatoClick(Sender: TObject);
    procedure edDatoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LeftCeroClick(Sender: TObject);
    procedure dbgrdResultado_1KeyPress(Sender: TObject; var Key: Char);
    procedure cbCamposChange(Sender: TObject);
    procedure BExactaClick(Sender: TObject);
    procedure BComienzaConClick(Sender: TObject);
    procedure BIncluyeClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdResultado_1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure VerPendientesExecute(Sender: TObject);
    procedure chExistenciaClick(Sender: TObject);
    procedure dbgrdResultado_1CellClick(Column: TColumn);
    procedure dbgResultadoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgResultadoCellClick(Column: TColumn);
    procedure dbgResultadoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure pnFiltrosDblClick(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure dbcSubRubrosClick(Sender: TObject);
    procedure dbcSubRubrosEnter(Sender: TObject);
    procedure dbcRubrosEnter(Sender: TObject);
    procedure limpiarfiltrosExecute(Sender: TObject);
    procedure FiltrosExecute(Sender: TObject);
    procedure dbcMarcaClick(Sender: TObject);
    procedure dbcRubrosClick(Sender: TObject);
    procedure CDSStockAfterScroll(DataSet: TDataSet);
    procedure dbtLinkURLClick(Sender: TObject);
    procedure edDatoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgResultadoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CDSStockFotosAfterScroll(DataSet: TDataSet);
    procedure imgFotoDblClick(Sender: TObject);
    procedure OcultarPrecioSinIvaClick(Sender: TObject);
    procedure CDSStockMUESTRAPRECIOIVAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSStockMUESTRAPRECIOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSStockSIGNOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgExitenciasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chMonedaClick(Sender: TObject);
    procedure CDSStockCODIGO_STKGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure MostrarCodigoAlternativo1Click(Sender: TObject);
    procedure dbgResultadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgResultadoTitleClick(Column: TColumn);
    procedure NuevoArtExecute(Sender: TObject);
    procedure FiltroTipoArticuloExecute(Sender: TObject);
    procedure BusquedaPorListadeProveedor1Click(Sender: TObject);
    procedure CDSExistenciaAfterOpen(DataSet: TDataSet);
    procedure FiltrarPublicadosenWeb1Click(Sender: TObject);
    procedure CDSStockPERCIBE_IVAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure BuscarLotesExecute(Sender: TObject);
    procedure FiltrarLosArticulosTrazables1Click(Sender: TObject);
    procedure FiltrarInactivosClick(Sender: TObject);
    procedure FiltradeProduccion1Click(Sender: TObject);
  private
    FCodigo:String;
    FPrecio:Real;  // Lo agregue por la pantalla de O de Trabajo en los cosumibles
    FProvee:String;
    FParametro1,FParametro2,FParametro3, FListaPrecio:Integer;
    FPorListaProveedor,FIdListaProveedor,FEsquema:Integer;
    procedure CargarImagenRedimensionadaDesdeCampo;
    { Private declarations }
  public
    { Public declarations }
   BuscadorIni,ArchivoIni   :TIniFile;
   Dato,DirImagenes   :String;
   CampoNro,BuscarPor:Integer;
   estado, HayExecpciones :boolean;
   Listas_de_Usuario:String;
  published
    NombreCampo:TStringList;
    property Codigo        : String  read FCodigo write FCodigo;
    property Precio        : Real    read FPrecio write FPrecio;
    property Param1        : Integer read FParametro1 write FParametro1;
    property Param2        : Integer read FParametro2 write FParametro2;
    property Param3        : Integer read FParametro3 write FParametro3 default  -1;

    property ListaPrecio       : Integer read FListaPrecio write FListaPrecio;
    property Esquema           : Integer read FEsquema write FEsquema;
    property PorListaProveedor : Integer read FPorListaProveedor write FPorListaProveedor;
    property IdListaProveedor  : Integer read FIdListaProveedor write FIdListaProveedor default -1;

  end;

var
  FormBuscadorArticulos: TFormBuscadorArticulos;

implementation

uses UStockPendiente, UImagen,UDMain_FD, UStock_2, UListaLotes;

{$R *.DFM}

procedure TFormBuscadorArticulos.FormCreate(Sender: TObject);
var i:integer;
begin
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  CDSMarca.Close;
  CDSSubRubro.Close;
  CDSRubro.Close;

  CDSMarca.Open;
  CDSSubRubro.Open;
  CDSRubro.Open;

  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorArticulos.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorArticulos.ini');
  //*************************************************************
  Dato                                  := BuscadorIni.ReadString('Dato', 'Dato', '');

  dbcMarca.Value                        := BuscadorIni.ReadString('Filtro', 'Marca', '****');
  dbcRubros.Value                       := BuscadorIni.ReadString('Filtro', 'Rubro', '***');
  dbgResultado.Columns.Items[4].Visible := BuscadorIni.ReadBool('precioiva', 'ver', True);
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=dbcRubros.Value;
  CDSSubRubro.Open;
  dbcSubRubros.Value := BuscadorIni.ReadString('Filtro', 'SubRubro', '*****');

  CampoNro                             := BuscadorIni.ReadInteger('Campo', 'Campo',2);
  cbCampos.ItemIndex                   := CampoNro;
  BExacta.Checked                      := BuscadorIni.ReadBool('Modo', 'Exacto', False);
  BIncluye.Checked                     := BuscadorIni.ReadBool('Modo', 'Incluye', False);
  BComienzaCon.Checked                 := BuscadorIni.ReadBool('Modo', 'Comienza', True);
  LeftCero.Checked                     := BuscadorIni.ReadBool('Modo', 'LeftCero', True);
  chMoneda.Checked                     := BuscadorIni.ReadBool('Modo', 'Moneda', True);
  estado                               := BuscadorIni.ReadBool('Existencia', 'SockCero', False);
  edDscto.Value                        := BuscadorIni.ReadFloat('dscto', 'dscto',0);
  MostrarCodigoAlternativo1.Checked    := BuscadorIni.ReadBool('Ver', 'CodigoAlt', False);
  BusquedaPorListadeProveedor1.Checked := BuscadorIni.ReadBool('Lst', 'Proveedor', False);
  FiltrarInactivos.Checked             := BuscadorIni.ReadBool('FiltrarInactivos', 'Estado', False);


  if CampoNro<0 Then CampoNro:=0;
  BuscadorIni.Free;
  AutoSize    := True;
  NombreCampo := TStringList.Create;

  for i:= 0 to 3 do
    begin
      NombreCampo.Add(CDSStock.Fields[i].FieldName);
     // chbCampos.Items. Add(QStock.Fields[i].DisplayName);
     // if i<4 Then chbCampos.Checked[i]:=True;
      cbCampos.Items.Add(CDSStock.Fields[i].DisplayName);
      cbCampos.ItemIndex:=1;
    end;

 //CamposVisibles:='';
 // for i:=0 to chbCampos.Items.Count-1 do
 //   begin
 //     chbCampos.Checked[i]:='1'=CamposVisibles[i+1];
 //   end;
 // chbCampos.OnClickCheck(Sender);
  CDSMonedas.Close;
  CDSMonedas.Open;
  imgFiltraMarca.Visible     := dbcMarca.Value<>'****';
  imgFiltraRubro.Visible     := dbcRubros.Value<>'***';
  imgFiltraSubRub.Visible    := dbcSubRubros.Value<>'*****';
  pnDatos.BevelOuter         := bvNone;
  dbcListasPrecios.Enabled   := DMMain_FD.ModificaListaPrecios;

  lbPreciosProveedor.Visible := BusquedaPorListadeProveedor1.Checked;

  // Verifica excepcion de Rubros por Usuario..
  QHayExcepcionesUsuario.Close;
  QHayExcepcionesUsuario.ParamByName('id').Value:=DMMain_FD.UsuarioActivoId;
  QHayExcepcionesUsuario.Open;
  HayExecpciones:=QHayExcepcionesUsuario.Fields[0].Value>0;
  QHayExcepcionesUsuario.Close;

  if MostrarCodigoAlternativo1.Checked then
    dbgResultado.Columns[0].Title.Caption:='Cod.Alt'
  else
    dbgResultado.Columns[0].Title.Caption:='Codigo';
  if BIncluye.Checked Then lbModoBusqueda.Caption     := '(Modo Incluye)';
  if BComienzaCon.Checked then lbModoBusqueda.Caption := '(Modo Comienza Con)';
  DMMain_FD.IdListaProveedor:= -1;
end;

procedure TFormBuscadorArticulos.chbCamposClickCheck(Sender: TObject);
var i:Integer;
begin
//  For i:= 0 to chbCampos.Items.Count-1 do
//  dbgResultado.Columns[i].Visible:=chbCampos.Checked[i]
end;

procedure TFormBuscadorArticulos.chExistenciaClick(Sender: TObject);
begin
  //Buscar.Execute;
   if Trim(cdsstock.Filter)='' then
     CDSStock.Filter:='EXISTENCIA>0'
   else
     CDSStock.Filter:=CDSStock.Filter+' and EXISTENCIA>0';

   CDSStock.Filtered:=chExistencia.Checked;

end;

procedure TFormBuscadorArticulos.chMonedaClick(Sender: TObject);
begin
  dbgResultado.Refresh;
end;

procedure TFormBuscadorArticulos.AceptarExecute(Sender: TObject);
begin
  if Not(CDSStock.IsEmpty) Then
    begin
      FCodigo := CDSStockCODIGO_STK.Value;
      FPrecio := CDSStockMUESTRAPRECIOIVA.AsFloat;
      if BusquedaPorListadeProveedor1.Checked then
        begin
          FPorListaProveedor         := 1;
          FIdListaProveedor          := CDSStockIDLISTAPROVE.Value;
          DMMain_FD.IdListaProveedor := FIdListaProveedor;
        end
      else
        begin
          FPorListaProveedor         := 0;
          FIdListaProveedor          := -1;
          DMMain_FD.IdListaProveedor := FIdListaProveedor;
        end;
      Close;
    end
  else
    begin
      FCodigo            := '';
      FPrecio            := 0;
      FPorListaProveedor := 0;
      Close;
    end;

 end;

procedure TFormBuscadorArticulos.CancelarExecute(Sender: TObject);
begin
  Codigo:='';
  Close;
end;

procedure TFormBuscadorArticulos.BuscarExecute(Sender: TObject);
VAR Modo,FormaWhere:String;
i:integer;
CadenaAux:String;
NuevoDato:String;
Lista:TStringList;
begin

  CDSStock.Close;
  CDSStock.AfterScroll:=nil;
  CDSStock.IndexDefs.Clear;
  CDSStock.IndexName:='';
  if BExacta.Checked Then
    Modo:=' = '
  Else
    if BComienzaCon.Checked Then
      Modo:=' starting with '
    else
      if BIncluye.Checked Then
        Modo:=' containing ';


  FormaWhere:= 's.'+NombreCampo[cbCampos.ItemIndex]+Modo+':dato';

  FormaWhere:= '(S.DETALLE_STK '+modo+' :dato) ';

//  if (NombreCampo[cbCampos.ItemIndex]='DETALLE_STK') and (BIncluye.Checked) and (Length(Trim(edDato.Text))>0) Then
    begin
      CadenaAux:=Trim(edDato.Text);
      if AnsiContainsText(CadenaAux,' ') Then
        begin
          Lista:=TStringList.Create;
          while CadenaAux<>'' do
            begin
              if pos(' ',CadenaAux)>0 then
                begin
                  NuevoDato:=Trim(copy(CadenaAux,1,pos(' ',CadenaAux)));
                  CadenaAux:=Trim(Copy(CadenaAux,pos(' ',CadenaAux)+1,Length(CadenaAux)));
                end
              else
                begin
                  NuevoDato:=(copy(CadenaAux,1,Length(CadenaAux)));
                  CadenaAux:='';
                end;

              Lista.Append(NuevoDato);
            end;
          NuevoDato:='';
          for I := 0 to Lista.Count -1 do
            begin
              if NuevoDato='' then
                NuevoDato:=' ( S.DETALLE_STK '+Modo+''''+Lista[i]+''' )'
              else
                NuevoDato:=NuevoDato+' and ( S.DETALLE_STK containing '''+Lista[i]+''' ) ';
            end;

          FormaWhere:= ' ( '+NuevoDato+' ) ';
        end;
    end;


  FormaWhere:= '('+FormaWhere+' or '+
               '(S.CODIGO_STK '+Modo+' :Dato8 ) or '+
               '(s.reemplazo_stk '+Modo+' :dato20 ) or '+
               '(s.plu '+Modo+' :dato5 ) or (s.plu_2 '+Modo+' :dato5 )) ';

  if BusquedaPorListadeProveedor1.Checked then
    FormaWhere:= '('+FormaWhere+' or '+
                 '(S.CODIGO_STK '+Modo+' :Dato8 ) or '+
                 '(d.codigo_proveedor '+Modo+' :dato20 ) or '+
                 '(s.plu '+Modo+' :dato5 ) or  (s.plu_2 '+Modo+' :dato5 )) ';

  if (FEsquema>-1) then
    FormaWhere:=FormaWhere+ ' and s.codigo_stk in (select la.codigo from lst_precios_articulos la where (la.estado=''S'' and (la.id_lst = :esquema)) or (:esquema=-1))';

  //***********************************************************
  //***** Verifico si las listas estan controladas por User.
  //***********************************************************

  if BusquedaPorListadeProveedor1.Checked=False then
    begin
      if Not(HayExecpciones) then
        CDSStock.CommandText:=
           'select s.codigo_stk,s.reemplazo_stk,s.plu,s.plu_2, s.detalle_stk,s.marca_stk,s.detalle_stk_adicional,'+
           's.rubro_stk,s.subrubro_stk,s.fijacion_precio_total,s.unidad,s.clase_articulo,s.fuap,'+
           'm.descripcion_marca,r.detalle_rubro,sr.detalle_subrubro,s.moneda,mon.cotizacion,mon.signo,'+
           's.presentacion_unidad,s.presentacion_cantidad,s.url,d.id_cab as listaPrecio,'+
           's.fecha_ultima_compra,s.fecha_alta,s.gtia_meses,s.garantiaoficial,s.posicion,s.deproduccion, s.control_trazabilidad, '+
           '( d.precio_gravado + d.precio_exento ) as MuestraPrecio,s.publicar_web,s.percibe_iva,'+
           '( d.precio ) as MuestraPrecioIva,s.articulo_variable,s.CODIGO_ART_VARIABLE,'+
           '(select sum(dpk.fisico) from depositostk dpk  where (dpk.codigo_stk = s.codigo_stk) ) as Existencia, '+
           '(select sum(pd.id) from stock_produccion_det pd where pd.codigo_stk=s.codigo_stk) as EnReceta,-1 as IdListaProve '+
           ' from stock s '+
           'left join marcas m on m.marca_stk=s.marca_stk '+
           'left join rubros r on r.codigo_rubro=s.rubro_stk '+
           'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk '+
           'left join listaprecioespecialArt d on d.codigoarticulo=s.codigo_stk '+
           'left join monedas mon on mon.id=s.moneda '+
           'where '+
           '      (( s.clase_Articulo = :clase or :clase = -1 ) or (s.clase_Articulo = :clase2 or :clase2 = -1 ) or (s.clase_Articulo = :clase3 or :clase3 = -1 ) or (s.clase_Articulo =9)) '+
           '      and (d.id_cab = :lista ) '+
           '      and (s.rubro_stk=:rubro or :rubro = ''***'' )'+
           '      and (s.subrubro_stk=:subrubro or :subrubro = ''*****'' ) '+
           '      and (s.marca_stk=:marca or :marca = ''****'' ) ' +
           '      and '+formaWhere+
           ' order by S.DETALLE_STK asc '
      else
        CDSStock.CommandText:=
           'select s.codigo_stk,s.reemplazo_stk,s.plu,s.plu_2, s.detalle_stk,s.marca_stk,s.detalle_stk_adicional,'+
           's.rubro_stk,s.subrubro_stk,s.fijacion_precio_total,s.unidad,s.clase_articulo,s.fuap,'+
           'm.descripcion_marca,r.detalle_rubro,sr.detalle_subrubro,s.moneda,mon.cotizacion,mon.signo,'+
           's.presentacion_unidad,s.presentacion_cantidad,s.url,d.id_cab as listaPrecio,'+
           's.fecha_ultima_compra,s.fecha_alta,s.gtia_meses,s.garantiaoficial,s.posicion,s.deproduccion, s.control_trazabilidad, '+
           '( d.precio_gravado + d.precio_exento ) as MuestraPrecio,s.publicar_web,s.percibe_iva,'+
           '( d.precio ) as MuestraPrecioIva,s.articulo_variable,s.CODIGO_ART_VARIABLE,'+
           '(select sum(dpk.fisico) from depositostk dpk  where (dpk.codigo_stk = s.codigo_stk) ) as Existencia, '+
           '(select sum(pd.id) from stock_produccion_det pd where pd.codigo_stk=s.codigo_stk) as EnReceta,-1 as IdListaProve '+
           ' from stock s '+
           'left join marcas m on m.marca_stk=s.marca_stk '+
           'left join rubros r on r.codigo_rubro=s.rubro_stk '+
           'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk '+
           'left join listaprecioespecialArt d on d.codigoarticulo=s.codigo_stk '+
           'left join monedas mon on mon.id=s.moneda '+
           'where '+
           '      (s.rubro_stk in (select ule.rubro from usuario_lista_eceptuar ule where ule.id_usuario='+IntToStr(DMMain_FD.UsuarioActivoId)+')) and '+
           '      (( s.clase_Articulo = :clase or :clase = -1 ) or (s.clase_Articulo = :clase2 or :clase2 = -1 ) or (s.clase_Articulo = :clase3 or :clase3 = -1 ) or (s.clase_Articulo =9))'+
           '      and (d.id_cab = :lista ) '+
           '      and (s.rubro_stk=:rubro or :rubro = ''***'' )'+
           '      and (s.subrubro_stk=:subrubro or :subrubro = ''*****'' ) '+
           '      and (s.marca_stk=:marca or :marca = ''****'' ) ' +
           '      and '+formaWhere+
           ' order by S.DETALLE_STK asc ';
    end
  else
    begin
     if Not(HayExecpciones) then
        CDSStock.CommandText:=
           'select s.codigo_stk,d.codigo_proveedor as reemplazo_stk, s.plu,s.plu_2,s.detalle_stk,lc.nombre as marca_stk, s.detalle_stk_adicional,'+
           's.rubro_stk,s.subrubro_stk,s.fijacion_precio_total,s.unidad,s.clase_articulo,s.fuap,'+
           'lc.nombre as descripcion_marca,r.detalle_rubro,sr.detalle_subrubro,s.moneda,mon.cotizacion,mon.signo,'+
           's.presentacion_unidad,s.presentacion_cantidad,s.url,d.id_cab as listaPrecio,s.publicar_web,s.percibe_iva, '+
           's.fecha_ultima_compra,s.fecha_alta,s.gtia_meses,s.garantiaoficial,s.posicion,s.deproduccion, s.control_trazabilidad, '+
           '( coalesce( (coalesce(d.precio,0) * (1+coalesce(lc.recargo,0)*0.01)),0) ) as MuestraPrecio,'+
           '( coalesce( (coalesce(d.precio,0) * (1+coalesce(lc.recargo,0)*0.01)),0) * (1+gr.tasa*0.01) ) as MuestraPrecioIva,s.articulo_variable,s.CODIGO_ART_VARIABLE,'+
           '(select sum(dpk.fisico) from depositostk dpk  where (dpk.codigo_stk = s.codigo_stk) ) as Existencia, '+
           '(select sum(pd.id) from stock_produccion_det pd where pd.codigo_stk=s.codigo_stk) as EnReceta,d.id as IdListaProve '+
           ' from stock s '+
           'left join marcas m on m.marca_stk = s.marca_stk '+
           'left join rubros r on r.codigo_rubro = s.rubro_stk '+
           'left join subrubros sr on sr.codigo_subrubro = s.subrubro_stk '+
           'left join lista_precios_prov_detalle d on d.codigo = s.codigo_stk '+
           'left join lista_precios_prov_cabecera lc on lc.id = d.id_cab '+
           'left join monedas mon on mon.id = s.moneda '+
           'left join gravamen gr on gr.codigo = s.tasa_iva '+
           'where '+
           '      (( s.clase_Articulo = :clase or :clase = -1 ) or (s.clase_Articulo = :clase2 or :clase2 = -1 ) or (s.clase_Articulo = :clase3 or :clase3 = -1 ) or (s.clase_Articulo =9)) '+
           '      and (s.rubro_stk=:rubro or :rubro = ''***'' )'+
           '      and (s.subrubro_stk=:subrubro or :subrubro = ''*****'' ) '+
           '      and (s.marca_stk=:marca or :marca = ''****'' ) ' +
           '      and '+formaWhere+
           ' order by S.DETALLE_STK asc '
      else
        CDSStock.CommandText:=
           'select s.codigo_stk,d.codigo_proveedor as reemplazo_stk,s.plu,s.plu_2 ,s.detalle_stk,lc.nombre as marca_stk, s.detalle_stk_adicional,'+
           's.rubro_stk,s.subrubro_stk,s.fijacion_precio_total,s.unidad,s.clase_articulo,s.fuap,'+
           'lc.nombre as descripcion_marca,r.detalle_rubro,sr.detalle_subrubro,s.moneda,mon.cotizacion,mon.signo,'+
           's.presentacion_unidad,s.presentacion_cantidad,s.url,d.id_cab as listaPrecio,s.publicar_web,s.percibe_iva,'+
           's.fecha_ultima_compra,s.fecha_alta,s.gtia_meses,s.garantiaoficial,s.posicion,s.deproduccion, s.control_trazabilidad, '+
           '( coalesce( (coalesce(d.precio,0) * (1+coalesce(lc.recargo,0)*0.01)),0) ) as MuestraPrecio,s.articulo_variable,s.CODIGO_ART_VARIABLE,'+
           '( coalesce( (coalesce(d.precio,0) * (1+coalesce(lc.recargo,0)*0.01)),0) * (1+gr.tasa*0.01) ) as MuestraPrecioIva,'+
           '(select sum(dpk.fisico) from depositostk dpk  where (dpk.codigo_stk = s.codigo_stk) ) as Existencia, '+
           '(select sum(pd.id) from stock_produccion_det pd where pd.codigo_stk=s.codigo_stk) as EnReceta,d.id as IdListaProve '+
           ' from stock s '+
           'left join marcas m on m.marca_stk = s.marca_stk '+
           'left join rubros r on r.codigo_rubro = s.rubro_stk '+
           'left join subrubros sr on sr.codigo_subrubro = s.subrubro_stk '+
           'left join lista_precios_prov_detalle d on d.codigo = s.codigo_stk '+
           'left join lista_precios_prov_cabecera lc on lc.id = d.id_cab '+
           'left join monedas mon on mon.id = s.moneda '+
           'left join gravamen gr on gr.codigo = s.tasa_iva '+
           'where '+
           '      (s.rubro_stk in (select ule.rubro from usuario_lista_eceptuar ule where ule.id_usuario='+IntToStr(DMMain_FD.UsuarioActivoId)+')) and '+
           '      (( s.clase_Articulo = :clase or :clase = -1 ) or (s.clase_Articulo = :clase2 or :clase2 = -1 ) or (s.clase_Articulo = :clase3 or :clase3 = -1 ) or (s.clase_Articulo =9))'+
           '      and (s.rubro_stk=:rubro or :rubro = ''***'' )'+
           '      and (s.subrubro_stk=:subrubro or :subrubro = ''*****'' ) '+
           '      and (s.marca_stk=:marca or :marca = ''****'' ) ' +
           '      and '+formaWhere+
           ' order by S.DETALLE_STK asc ';
    end;

  if CDSStock.Params.FindParam('clase')=Nil then
    CDSStock.Params.CreateParam(ftString,'clase',ptInput);
  if CDSStock.Params.FindParam('clase2')=Nil then
    CDSStock.Params.CreateParam(ftString,'clase2',ptInput);
  if CDSStock.Params.FindParam('clase3')=Nil then
    CDSStock.Params.CreateParam(ftString,'clase3',ptInput);
  if CDSStock.Params.FindParam('lista')=Nil then
    CDSStock.Params.CreateParam(ftInteger,'lista',ptInput);
  if CDSStock.Params.FindParam('marca')=Nil then
    CDSStock.Params.CreateParam(ftString,'marca',ptInput);
  if CDSStock.Params.FindParam('rubro')=Nil then
    CDSStock.Params.CreateParam(ftString,'rubro',ptInput);
  if CDSStock.Params.FindParam('subrubro')=Nil then
    CDSStock.Params.CreateParam(ftString,'subrubro',ptInput);

  if FEsquema>-1 then
    if CDSStock.Params.FindParam('esquema')=Nil then
      CDSStock.Params.CreateParam(ftSmallint,'esquema',ptInput);

  if not(NombreCampo[cbCampos.ItemIndex]='DETALLE_STK') and Not(BIncluye.Checked) Then
    if CDSStock.Params.FindParam('dato')=Nil then
      CDSStock.Params.CreateParam(ftString,'dato',ptInput);

  if CDSStock.Params.FindParam('Dato8')=Nil then
    CDSStock.Params.CreateParam(ftString,'Dato8',ptInput);

  if CDSStock.Params.FindParam('Dato5')=Nil then
    CDSStock.Params.CreateParam(ftString,'Dato5',ptInput);

  if CDSStock.Params.FindParam('Dato20')=Nil then
    CDSStock.Params.CreateParam(ftString,'Dato20',ptInput);


  CDSStock.Params.ParamByName('clase').Value       := Param1;
  CDSStock.Params.ParamByName('clase2').Value      := Param2;
  CDSStock.Params.ParamByName('clase3').Value      := Param3;

  CDSStock.Params.ParamByName('lista').Value       := dbcListasPrecios.KeyValue;
  CDSStock.Params.ParamByName('marca').AsString    := dbcMarca.Value;
  CDSStock.Params.ParamByName('rubro').AsString    := dbcRubros.Value;
  CDSStock.Params.ParamByName('subrubro').AsString := dbcSubRubros.Value;

  CDSStock.Params.ParamByName('DATO8').AsString    := Trim(copy(edDato.Text,1,8)); //+'%'
  CDSStock.Params.ParamByName('DATO5').AsString    := Trim(copy(edDato.Text,1,5)); //+'%'
  CDSStock.Params.ParamByName('DATO20').AsString   := Trim(copy(edDato.Text,1,20)); //+'%'

  if CDSStock.Params.FindParam('dato')<>Nil then
    CDSStock.Params.ParamByName('DATO').AsString   := edDato.Text;

  if CDSStock.Params.FindParam('dato')<>Nil then
    begin
      if (NombreCampo[cbCampos.ItemIndex]='CODIGO_STK') Then
        CDSStock.Params.ParamByName('DATO').Value:=''+copy(edDato.Text,1,8)//+'%'
      else
        CDSStock.Params.ParamByName('DATO').Value:=''+Trim(edDato.Text)+'';
    end;

  if CDSStock.Params.FindParam('esquema')<>Nil then
    CDSStock.Params.ParamByName('esquema').Value       := FEsquema;

  CDSStock.Filtered:=False;
  CDSStock.Filter:='';
  CDSStock.Open;

  if FiltrarPublicadosenWeb1.Checked then
    begin
      CDSStock.Filter:='publicar_WEB=''S''';
      CDSStock.Filtered:=tRUE;
    end;
  CDSStock.First;

  if BusquedaPorListadeProveedor1.Checked=True  then
    TStringField(CDSStock.FindField('DESCRIPCION_MARCA')).DisplayLabel :='Proveedor';

  CDSStock.AfterScroll:=CDSStockAfterScroll;
  CDSStock.Filtered   :=chExistencia.Checked;

// Verifico los campos y le doy formato si son Float  en DBGRID
  if Not(dbgExitencias.DataSource.DataSet.IsEmpty) Then
    begin
      for i:=0 to dbgExitencias.Columns.Count-1 do
        begin
          if dbgExitencias.Fields[i].DataType=ftFloat Then
            TFloatField(dbgExitencias.Fields[i]).DisplayFormat := ',0.00;-,0.00;-';
          if dbgExitencias.Fields[i].DataType=ftBCD Then
            TFloatField(dbgExitencias.Fields[i]).DisplayFormat := ',0.00;-,0.00;-';
          if dbgExitencias.Fields[i].DataType=ftFMTBcd Then
            TFloatField(dbgExitencias.Fields[i]).DisplayFormat := ',0.00;-,0.00;-';

        end;
    end;
  if Not(dbgResultado.DataSource.DataSet.IsEmpty) Then
    begin
      for i:=0 to dbgResultado.Columns.Count-1 do
        begin
          if dbgResultado.Fields[i].DataType=ftFloat Then
            TFloatField(dbgResultado.Fields[i]).DisplayFormat := ',0.000;-,0.000;-';
          if dbgResultado.Fields[i].DataType=ftBCD Then
            TFloatField(dbgResultado.Fields[i]).DisplayFormat := ',0.000;-,0.000;-';
          if dbgResultado.Fields[i].DataType=ftFMTBcd Then
            TFloatField(dbgResultado.Fields[i]).DisplayFormat := ',0.000;-,0.000;-';

        end;
    end;
  if dbgResultado.DataSource.DataSet.RecordCount>0 then
   dbgResultado.SetFocus;
  dbgResultado.Width:=dbgResultado.Width-1;
  dbgResultado.Width:=dbgResultado.Width+1;

  if (FiltrarInactivos.Checked) and (Not(CDSStock.IsEmpty))then
    begin
      if Trim(CDSStock.Filter)='' then
        CDSStock.Filter  :='CLASE_ARTICULO<>0'
      else
        if Trim(CDSStock.Filter)<>'' then
          CDSStock.Filter  :='and (CLASE_ARTICULO<>0)';

      CDSStock.Filtered:=True;
    end;

  BringToFront;

end;

procedure TFormBuscadorArticulos.BuscarLotesExecute(Sender: TObject);
begin
  if CDSStockCONTROL_TRAZABILIDAD.Value='S' then
    begin
      if Not(Assigned(FormListaLotes)) then
        FormListaLotes:=TFormListaLotes.create(Self);
      FormListaLotes.Codigo:=CDSStockCODIGO_STK.Value;
      FormListaLotes.ShowModal;
    end;
end;

procedure TFormBuscadorArticulos.BusquedaPorListadeProveedor1Click(
  Sender: TObject);
begin
 if BusquedaPorListadeProveedor1.Checked=True Then
    BusquedaPorListadeProveedor1.Checked:=False
  else
    if BusquedaPorListadeProveedor1.Checked=False Then
      BusquedaPorListadeProveedor1.Checked:=True;

  lbPreciosProveedor.Visible:=BusquedaPorListadeProveedor1.Checked;

  if BusquedaPorListadeProveedor1.Checked=True  then
    TStringField(CDSStock.FindField('DESCRIPCION_MARCA')).DisplayLabel :='Proveedor'
  else
    TStringField(CDSStock.FindField('DESCRIPCION_MARCA')).DisplayLabel :='Marca';

  Buscar.Execute;

end;

procedure TFormBuscadorArticulos.edDatoClick(Sender: TObject);
begin
 edDato.SelectAll;
end;

procedure TFormBuscadorArticulos.edDatoEnter(Sender: TObject);
begin
  edDato.SelectAll;
end;

procedure TFormBuscadorArticulos.edDatoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    begin
      dbgResultado.SetFocus;
       dbgResultado.DataSource.DataSet.Next;
    end;
  //else
  //  if Key = VK_UP then
  //    dbgResultado.SetFocus;

 //    edDato.Clear;
end;

procedure TFormBuscadorArticulos.edDatoKeyPress(Sender: TObject; var Key: Char);
var AuxCodBarra: string;
begin
  if Key = #13 Then
    begin
      Key:=#0;
      Buscar.Execute;
      if CDSStock.IsEmpty then
        begin
          AuxCodBarra :=  DMMain_FD.SearchCodigo(Trim(edDato.Text),DSStock,false);
          if not ContainsText(AuxCodBarra, edDato.Text) then
            begin
              edDato.Text :=  AuxCodBarra;
              Buscar.Execute;
            end;
        end;

      if CDSStock.RecordCount>0 then
        dbgResultado.SetFocus;
    end
  else
    if Key = #27 Then
      begin
        Key:=#0;
        Cancelar.Execute;
      end

end;

procedure TFormBuscadorArticulos.FiltradeProduccion1Click(Sender: TObject);
var filtro:string;
begin
  Filtro := CDSStock.Filter;
  CDSStock.Filter:='';
  FiltradeProduccion1.Checked  :=not(FiltradeProduccion1.Checked);
  CDSStock.Filtered:=False;
  if FiltradeProduccion1.Checked then
    begin
      CDSStock.Filter:=filtro +  ' and DEPRODUCCION=''S''';
      CDSStock.Filtered:=tRUE;
    end;
end;

procedure TFormBuscadorArticulos.FiltrarInactivosClick(Sender: TObject);
var Filtro:String;
Estado:Boolean;
begin
  Filtro                   := '';
  Estado                   := CDSStock.Filtered;
  FiltrarInactivos.Checked := not(FiltrarInactivos.Checked);
  CDSStock.Filtered        := False;
  Filtro                   := CDSStock.Filter;
  if FiltrarInactivos.Checked then
    if CDSStock.Filter<>'' then
      CDSStock.Filter:=Filtro+' AND CLASE_ARTICULO<>0'
    else
      CDSStock.Filter:='CLASE_ARTICULO<>0';

  CDSStock.Filtered:=Estado;

  if (CDSStock.Filter<>'') and (FiltrarInactivos.Checked) then
    begin
      if (CDSStock.Filter<>'') Then
        CDSStock.Filtered:=True;
    end
  else
    if (CDSStock.Filter<>'') and (Not(FiltrarInactivos.Checked)) then
      begin
        CDSStock.Filter :=ReplaceText('CLASE_ARTICULO<>0',CDSStock.Filter,'');
        if Trim(CDSStock.Filter)<>'' then
           CDSStock.Filter :=ReplaceText(' AND ',CDSStock.Filter,'');
        if (CDSStock.Filter<>'') Then
          CDSStock.Filtered:=True
        else
          CDSStock.Filtered:=False;
      end
    else
      begin
        if (CDSStock.Filter='') then
          CDSStock.Filtered:=False;
        FiltrarInactivos.Checked:=False;
      end;


end;

procedure TFormBuscadorArticulos.FiltrarLosArticulosTrazables1Click(
  Sender: TObject);
begin
  FiltrarLosArticulosTrazables1.Checked:=not(FiltrarLosArticulosTrazables1.Checked);
  FiltrarPublicadosenWeb1.Checked      :=False;
  CDSStock.Filtered:=False;
  CDSStock.Filter:='';
  if FiltrarLosArticulosTrazables1.Checked then
    begin
      CDSStock.Filter:='CONTROL_TRAZABILIDAD=''S''';
      CDSStock.Filtered:=tRUE;
    end;

end;

procedure TFormBuscadorArticulos.FiltrarPublicadosenWeb1Click(Sender: TObject);
begin
  FiltrarPublicadosenWeb1.Checked      :=not(FiltrarPublicadosenWeb1.Checked);
  FiltrarLosArticulosTrazables1.Checked:=False;
  CDSStock.Filtered:=False;
  CDSStock.Filter:='';
  if FiltrarPublicadosenWeb1.Checked then
    begin
      CDSStock.Filter:='publicar_WEB=''S''';
      CDSStock.Filtered:=tRUE;
    end;
end;

procedure TFormBuscadorArticulos.FiltrosExecute(Sender: TObject);
begin
 if pnFiltros.Visible=False then
    pnFiltros.Visible:=True
  else
    begin
      pnFiltros.Visible       := False;
      imgFiltraMarca.Visible  := dbcMarca.Value<>'****';
      imgFiltraRubro.Visible  := dbcRubros.Value<>'***';
      imgFiltraSubRub.Visible := dbcSubRubros.Value<>'*****';
      Buscar.Execute;
    end;
end;

procedure TFormBuscadorArticulos.FiltroTipoArticuloExecute(Sender: TObject);
var Filtros:String;
begin
  Filtros:=CDSStock.Filter;
end;

procedure TFormBuscadorArticulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:Byte;
begin
//  CamposVisibles:='';
//  for i:=0 to chbCampos.Items.Count-1 do
//    begin
 //     if chbCampos.Checked[i] Then
 //       CamposVisibles:=CamposVisibles+'1'
 //     else
 //       CamposVisibles:=CamposVisibles+'0'
 //   end;
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorArticulos.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorArticulos.ini');
 //*************************************************************
  BuscadorIni.WriteString('Dato', 'Dato', edDato.Text);

  BuscadorIni.WriteString('Filtro', 'Marca', dbcMarca.Value);
  BuscadorIni.WriteString('Filtro', 'Rubro', dbcRubros.Value);
  BuscadorIni.WriteString('Filtro', 'SubRubro', dbcSubRubros.Value);
  BuscadorIni.WriteBool('precioiva', 'ver', dbgResultado.Columns.Items[4].Visible);

  BuscadorIni.WriteInteger('campo', 'campo', cbCampos.ItemIndex);
 // BuscadorIni.WriteString('Ver', 'Ver', CamposVisibles);
  BuscadorIni.WriteBool('Modo', 'Exacto',BExacta.Checked);
  BuscadorIni.WriteBool('Modo', 'Incluye', BIncluye.Checked);
  BuscadorIni.WriteBool('Modo', 'Comienza',BComienzaCon.Checked);
  BuscadorIni.WriteBool('Modo', 'LeftCero', LeftCero.Checked);
  BuscadorIni.WriteBool('Existencia', 'SockCero', chExistencia.Checked);
  BuscadorIni.WriteFloat('dscto', 'dscto',edDscto.Value);
  BuscadorIni.WriteBool('Modo', 'Moneda', chMoneda.Checked);
  BuscadorIni.WriteBool('Ver', 'CodigoAlt', MostrarCodigoAlternativo1.Checked);
  BuscadorIni.WriteBool('Lst', 'Proveedor', BusquedaPorListadeProveedor1.Checked);
  BuscadorIni.WriteBool('FiltrarInactivos', 'Estado', FiltrarInactivos.Checked);

  BuscadorIni.Free;
  CDSStock.Close;
  CDSListaPrecioCab.Close;
  QListaPrecioPorDefecto.Close;
  QPimeraListaPrecio.Close;
  CDSExistencia.Close;
  Action:=caFree;
end;

procedure TFormBuscadorArticulos.FormDestroy(Sender: TObject);
begin
  FormBuscadorArticulos:=nil;
end;

procedure TFormBuscadorArticulos.FormShow(Sender: TObject);
var SucursalPorDefecto:Integer;
begin
  edDato.Text       := Dato;
  cbCampos.ItemIndex:= CampoNro;

  CDSListaPrecioCab.Close;
  CDSListaPrecioCab.Open;
  CDSListaPrecioCab.First;
  if ((IntToStr(FListaPrecio)='') or (FListaPrecio=0)) then
    begin
      QListaPrecioPorDefecto.Close;
      QListaPrecioPorDefecto.Open;
      if (QListaPrecioPorDefectoID.AsString<>'') then
        dbcListasPrecios.KeyValue:=QListaPrecioPorDefectoID.Value
      else
        begin
          QPimeraListaPrecio.Close;
          QPimeraListaPrecio.Open;
          if (QPimeraListaPrecioMIN.AsString<>'') then
             dbcListasPrecios.KeyValue:=QPimeraListaPrecioMIN.Value;
          QPimeraListaPrecio.Close;
        end;
      QListaPrecioPorDefecto.Close;
    end
  else
    dbcListasPrecios.KeyValue:=FListaPrecio;

  ArchivoIni         := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  SucursalPorDefecto := ArchivoIni.ReadInteger('Sucursal', 'Sucursal',1);
  ArchivoIni.Free;

  //***********************************************************
  // Asigno la lista por sucursal
  //***********************************************************
//  if ((IntToStr(FListaPrecio)='') or (FListaPrecio=0)) then
//    begin
//      dbcListasPrecios.KeyValue:= DMMain_fd.ListaPorDefecto(SucursalPorDefecto) ;// QListaDefectoSuc.Fields[0].AsInteger;
//    end;

  //***********************************************************
  //***** Verifico si las listas estan controladas por User.
  //***********************************************************
  if DMMain_FD.GetControlaLista then
    begin
      Listas_de_Usuario:='';
      CDSLPreciosUsuarios.Close;
      CDSLPreciosUsuarios.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivoId;
      CDSLPreciosUsuarios.Open;
      CDSLPreciosUsuarios.First;
      while not(CDSLPreciosUsuarios.eof) do
        begin
          if Listas_de_Usuario='' then
            Listas_de_Usuario:= CDSLPreciosUsuariosID.AsString
          else
            Listas_de_Usuario:= Listas_de_Usuario+','+CDSLPreciosUsuariosID.AsString;
          CDSLPreciosUsuarios.Next;
        end;
      CDSLPreciosUsuarios.Close;
      if Listas_de_usuario<>'' then
        Listas_de_Usuario:= 'id in ('+Listas_de_Usuario+')';
      CDSListaPrecioCab.Filtered :=False;
      CDSListaPrecioCab.Filter   :=Listas_de_Usuario;
      if Listas_de_usuario<>'' then
        CDSListaPrecioCab.Filtered :=True;
    end;

  chExistencia.Checked:=estado;

  // Directorio de Imagenes
  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='IMAGENES';
  DMMain_FD.QOpciones.Open;
  DirImagenes:=(DMMain_FD.QOpciones.Fields[0].AsString) + '\' ;
  DMMain_FD.QOpciones.CLose;
  //**********************
  BringToFront;
  pnFiltros.Visible :=False;
  Buscar.Execute;
  Codigo            :='';
  edDato.SetFocus;
  edDato.SelectAll;

end;

procedure TFormBuscadorArticulos.imgFotoDblClick(Sender: TObject);
begin
  if CDSStockFotosFOTO.AsString<>'' then
    begin
      if Not(Assigned(FormImagen)) then
        FormImagen := TFormImagen.Create(self);
      try
        FormImagen.Foto:= DirImagenes + CDSStockFotosFOTO.Value;
        FormImagen.ShowModal;
      Except
        FormImagen.Close;
      end;
    end;
end;

procedure TFormBuscadorArticulos.dbgResultadoCellClick(Column: TColumn);
begin
  if column.Index=5 then
    begin
      dbgResultado.ShowHint:=False;
      dbgResultado.Hint:='';
      dbgResultado.Hint:='Precio En moneda Corriente '+ #13 +
                         '---------------------------'+ #13 +
                         'S/Iva     '+FormatFloat('0.00',(CDSStockMUESTRAPRECIO.Value * CDSStockCOTIZACION.AsFloat))+#13+
                         'C/Iva     '+FormatFloat('0.00',CDSStockMUESTRAPRECIOIVA.AsFloat*CDSStockCOTIZACION.AsFloat);
      dbgResultado.ShowHint:=True;
    end;
end;

procedure TFormBuscadorArticulos.dbgResultadoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Estilo:TFontStyles;
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
begin
  inherited;

  if ((Date-CDSStockFUAP.AsDateTime)<=5) Then
    begin
      if gdSelected in State Then
        begin
          dbgResultado.Canvas.Font.Color :=clWhite;
          dbgResultado.Canvas.Brush.Color:=clNavy;
        end
      else
        begin
          dbgResultado.canvas.Font.color := clGreen;
          dbgResultado.Canvas.Brush.Color:= clWindow;
          if Column.Index=5 then // Precio con Iva en Todo Verde
            begin
              dbgResultado.canvas.Font.color := clBlack;
              dbgResultado.Canvas.Brush.Color:= clMoneyGreen;
            end;
          if Column.Index=7 then // Precio con Iva en Todo Verde
            begin
              dbgResultado.canvas.Font.color := clBlack;
              dbgResultado.Canvas.Brush.Color:= clSkyBlue;
            end;

        end;
    end
  else
    if (Date-CDSStockFUAP.AsDateTime)>DMMain_FD.IntervMaxDesdeULtActuPrecio Then
      begin
        if gdSelected in State Then
          begin
            dbgResultado.Canvas.Font.Color  :=clWhite;
            dbgResultado.Canvas.Brush.Color :=clNavy;
          end
        else
          begin
            dbgResultado.canvas.Font.color  := clRed;
            dbgResultado.Canvas.Brush.Color := clWindow;
            if Column.Index=5 then // Precio con Iva en Todo Verde
              begin
                dbgResultado.canvas.Font.color  := clBlack;
                dbgResultado.Canvas.Brush.Color := clMoneyGreen;
              end;
            if Column.Index=7 then // Precio con Iva en Todo Verde
              begin
                dbgResultado.canvas.Font.color := clBlack;
                dbgResultado.Canvas.Brush.Color:= clSkyBlue;
              end;
          end;
      end;

  if ((Date-CDSStockFECHA_ALTA.AsDateTime)<=5) Then
    begin
      if gdSelected in State Then
        begin
          dbgResultado.Canvas.Font.Color := clWhite;
          dbgResultado.Canvas.Brush.Color:= clNavy;
        end
      else
        begin
          dbgResultado.Canvas.Font.Color  := clBlack;;
          dbgResultado.canvas.Brush.color := clWindow;
        end;
    end;


  if CDSStockCONTROL_TRAZABILIDAD.Value='S' Then
    dbgResultado.Canvas.Font.Style :=[fsItalic];
 // else
 //   dbgResultado.Canvas.Font.Style :=[];

  if CDSStockDEPRODUCCION.Value='S' Then
    begin
      if gdSelected in State Then
        begin
          dbgResultado.Canvas.Font.Color := clWhite;
          dbgResultado.Canvas.Brush.Color:= clNavy;
        end
      else
        begin
          dbgResultado.Canvas.Font.Color  := clBlack;
          dbgResultado.canvas.Brush.color := clYellow;
        end;
    end;

  if CDSStockENRECETA.AsInteger>0 Then
    begin
      if gdSelected in State Then
        begin
          dbgResultado.Canvas.Font.Color := clWhite;
          dbgResultado.Canvas.Brush.Color:= clNavy;
        end
      else
        begin
          dbgResultado.Canvas.Font.Color  := clBlack;
          dbgResultado.canvas.Brush.color := clAqua;
        end;
    end;

  if (CDSStockGARANTIAOFICIAL.Value='S') and (Column.FieldName='GTIA_MESES') then
    begin
      if gdSelected in State Then
        dbgResultado.Canvas.Font.Color:=clYellow
      else
        dbgResultado.Canvas.Font.Color:=clBlue;
    end;

  if CDSStockCLASE_ARTICULO.Value =0 Then
    dbgResultado.Canvas.Font.Style := dbgResultado.Canvas.Font.Style+[fsStrikeOut];

  if CDSStockPUBLICAR_WEB.Value='S' Then
    begin
      if CDSStockARTICULO_VARIABLE.Value<>'N' then
        begin
          if Column.Index=0 then
            begin
              if CDSStockARTICULO_VARIABLE.Value='V' then
                dbgResultado.Canvas.Brush.Color:=clMoneyGreen
              else
                if CDSStockARTICULO_VARIABLE.Value='T' then
                  dbgResultado.Canvas.Brush.Color:=clWebLightSalmon;
            end;
        end;

      if gdSelected in State Then
        dbgResultado.Canvas.Font.Color:=clYellow
      else
        dbgResultado.Canvas.Font.Color:=clPurple;
    end;

  if Column.Index=8 then
    begin
      if CDSStockPERCIBE_IVA.Value='S' then
       dbgResultado.Canvas.Brush.Color:=clMoneyGreen
      else
        dbgResultado.Canvas.Brush.Color:=clWhite;
    end;

   dbgResultado.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormBuscadorArticulos.dbgResultadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_UP) and (CDSStock.RecNo<=1) and (Not(ActiveControl is TEdit)) then
    begin
      edDato.SetFocus;
      edDato.SelectAll;
    end;

end;

procedure TFormBuscadorArticulos.dbgResultadoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  dbgResultado.ShowHint:=False;
  if (X>(sender as  TDBGrid).Width-120) and (X<(sender as  TDBGrid).Width) then
    begin
      dbgResultado.Hint:='';
      dbgResultado.Hint:='Precio En moneda Corriente '+ #13 +
                         '---------------------------'+ #13 +
                         'S/Iva     '+FormatFloat('0.00',(CDSStockMUESTRAPRECIO.Value * CDSStockCOTIZACION.AsFloat))+#13+
                         'C/Iva     '+FormatFloat('0.00',CDSStockMUESTRAPRECIOIVA.AsFloat*CDSStockCOTIZACION.AsFloat);
          dbgResultado.ShowHint:=True;
    end;

end;

procedure TFormBuscadorArticulos.dbgResultadoTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgResultado.DataSource.DataSet as TClientDataSet do
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

procedure TFormBuscadorArticulos.dbgResultadoTitleClick(Column: TColumn);
var campo:string;
begin
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Column.Field.FieldName;
    with dbgResultado.DataSource.DataSet as TClientDataSet do
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


procedure TFormBuscadorArticulos.dbtLinkURLClick(Sender: TObject);
begin
  if Trim((Sender as TDBText).Caption)<>'' then
    OpenObject((Sender as TDBText).Caption);
end;

procedure TFormBuscadorArticulos.LeftCeroClick(
  Sender: TObject);
begin
  if LeftCero.Checked=True Then
    LeftCero.Checked:=False
  else
    if LeftCero.Checked=False Then
      LeftCero.Checked:=True;
end;

procedure TFormBuscadorArticulos.limpiarfiltrosExecute(Sender: TObject);
begin
  CDSMarca.Close;
  CDSRubro.Close;
  CDSSubRubro.Close;
  CDSMarca.Open;
  CDSRubro.Open;
  CDSSubRubro.Params.ParamByName('rubro').Clear;
  CDSSubRubro.Open;
  if pnFiltros.Visible=True then
    pnFiltros.Visible:=False;
  dbcMarca.Value          := '****';
  dbcRubros.Value         := '***';
  dbcSubRubros.Value      := '*****';
  imgFiltraMarca.Visible  := dbcMarca.Value<>'****';
  imgFiltraRubro.Visible  := dbcRubros.Value<>'***';
  imgFiltraSubRub.Visible := dbcSubRubros.Value<>'*****';
  Buscar.Execute;
 end;

procedure TFormBuscadorArticulos.MostrarCodigoAlternativo1Click(
  Sender: TObject);
begin
  MostrarCodigoAlternativo1.Checked:=Not(MostrarCodigoAlternativo1.Checked);
  if MostrarCodigoAlternativo1.Checked then
    dbgResultado.Columns[0].Title.Caption:='Cod.Alt'
  else
    dbgResultado.Columns[0].Title.Caption:='Codigo';

  dbgResultado.Refresh;
end;

procedure TFormBuscadorArticulos.NuevoArtExecute(Sender: TObject);
begin
  if not(Assigned(FormStock_2)) then
    FormStock_2   :=  TFormStock_2.Create(Application);
  FormStock_2.Show;

end;

procedure TFormBuscadorArticulos.OcultarPrecioSinIvaClick(Sender: TObject);
begin
  if dbgResultado.Columns.Items[4].Visible=True then
    dbgResultado.Columns.Items[4].Visible:=False
  else
  dbgResultado.Columns.Items[4].Visible:=True;  
end;

procedure TFormBuscadorArticulos.pnFiltrosDblClick(Sender: TObject);
begin
  pnFiltros.Visible:=False;
end;

procedure TFormBuscadorArticulos.dbgrdResultado_1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 Then Aceptar.Execute;
end;

procedure TFormBuscadorArticulos.cbCamposChange(Sender: TObject);
begin
  edDato.Text:='';
  edDato.SetFocus;
  cdsStock.Close;
end;

procedure TFormBuscadorArticulos.CDSExistenciaAfterOpen(DataSet: TDataSet);
begin
  CDSExistencia.DisableControls;
  CDSExistencia.First;
  while not(CDSExistencia.Eof) do
    Begin
      CDSExistencia.Edit;
      CDSExistenciaPRIMERO.Value:=0;
      CDSExistencia.Next;
    End;
  if CDSExistencia.Locate('DEPOSITO_STK',DMMain_FD.DepositoPorSucursal(DMMain_FD.SucursalPorDef),[]) Then
    begin
      CDSExistencia.Edit;
      CDSExistenciaPRIMERO.Value:=1;
      CDSExistencia.Post;
     end;
  CDSExistencia.First;
  CDSExistencia.EnableControls;

end;

procedure TFormBuscadorArticulos.CargarImagenRedimensionadaDesdeCampo;
var
  Ruta: string;
  Picture: TPicture;
  Redimensionada: TBitmap;
begin
  imgFoto.Picture := nil;

  Ruta := DirImagenes + CDSStockFotosFOTO.AsString;

  if not FileExists(Ruta) then Exit;

  Picture := TPicture.Create;
  Redimensionada := TBitmap.Create;
  try
    Picture.LoadFromFile(Ruta);
    Redimensionada.SetSize(300, 300);
    Redimensionada.Canvas.StretchDraw(Rect(0, 0, 300, 300), Picture.Graphic);
    imgFoto.Picture.Assign(Redimensionada);
  finally
    Picture.Free;
    Redimensionada.Free;
  end;
end;


procedure TFormBuscadorArticulos.CDSStockAfterScroll(DataSet: TDataSet);
begin
  CDSexistencia.IndexName:='';
  CDSExistencia.Close;


  CDSExistencia.CommandText:= 'SELECT codigo_stk, detalle_stk, fisico, comprometido, '+
                              '  fisico - comprometido - en_transito AS Saldo, '+
                              '  deposito_stk, en_transito, acopio, '+
                              '  deposito_nombre, sec, ubic, fultajuste '+
                              'FROM existencia_stk_unitario (:unidad, :codigo) '+
                              '  WHERE (((fisico - comprometido - en_transito) <> :fisico) OR :fisico = 1) '+
                              '  AND deposito_stk IN (SELECT u.deposito FROM deposito_usuario u WHERE u.id_usuario = :usuario) '+
' ORDER BY CASE '+
'           WHEN deposito_stk = :deposito_inicial THEN 0 '+
'           ELSE 1 ' +
'         END, '+
'          5 desc ';

  CDSExistencia.Params.ParamByName('Codigo').Value:=CDSStockCODIGO_STK.Value;
  CDSExistencia.Params.ParamByName('unidad').Value:='V';
  if chExistencia.Checked then
    CDSExistencia.Params.ParamByName('fisico').Value:=0
  else
    CDSExistencia.Params.ParamByName('fisico').Value:=1;
  CDSExistencia.Params.ParamByName('usuario').AsFloat :=DMMain_FD.UsuarioActivoId;
  CDSExistencia.Params.ParamByName('deposito_inicial').AsInteger:= StrToInt(DMMain_FD.Deposito);

  CDSExistencia.Open;

  dbgResultado.ShowHint := False;
  dbgResultado.Hint     := '';
  edCalculadora.Value   := CDSStockMUESTRAPRECIOIVA.AsFloat;
  edPrecio.Value        := CDSStockMUESTRAPRECIOIVA.AsFloat*((100-edDscto.Value)*0.01);
  imgFoto.Picture       := nil;
  CDSStockFotos.Close;
  CDSStockFotos.params.ParamByName('codigo').Value:=CDSStockCODIGO_STK.Value;
  CDSStockFotos.Open;
  if CDSStockFotos.RecordCount>0 then
    begin
      CDSStockFotos.First;
      CargarImagenRedimensionadaDesdeCampo;
//      try
//        if FileExists(DirImagenes+CDSStockFotosFOTO.AsString) then
//          imgFoto.Picture.LoadFromFile(DirImagenes+CDSStockFotosFOTO.AsString);
//      except
     //  on EFileNotFound do
     //    Image1.Picture.LoadFromFile('c:\windows\Bosque.bmp');
       // ShowMessage('Imagen no Disponible');
//      end;
    end;

  BuscarLotes.Enabled:=CDSStockCONTROL_TRAZABILIDAD.Value='S';
end;

procedure TFormBuscadorArticulos.CDSStockCODIGO_STKGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  //dbgResultado.Columns[0].Title.Caption:='Codigo';
  Text:=CDSStockCODIGO_STK.AsString;
  if MostrarCodigoAlternativo1.Checked then
    begin
      Text:=CDSStockREEMPLAZO_STK.AsString;
    //  dbgResultado.Columns[0].Title.Caption:='Cod.Alt';
    end;
end;

procedure TFormBuscadorArticulos.CDSStockFotosAfterScroll(DataSet: TDataSet);
begin
  try
    if FileExists(DirImagenes + CDSStockFotosFOTO.AsString) then
      imgFoto.Picture.LoadFromFile(DirImagenes + CDSStockFotosFOTO.AsString);
  except
//    ShowMessage('Imagen no Dispnonible');
  end;
end;

procedure TFormBuscadorArticulos.CDSStockMUESTRAPRECIOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Not(chMoneda.Checked) then
    Text:=FormatFloat(',0.000',CDSStockMUESTRAPRECIO.AsFloat * CDSStockCOTIZACION.AsFloat)
  else
    Text:=FormatFloat(',0.000',CDSStockMUESTRAPRECIO.AsFloat);
end;

procedure TFormBuscadorArticulos.CDSStockMUESTRAPRECIOIVAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Not(chMoneda.Checked) then
    Text:=FormatFloat(',0.000',CDSStockMUESTRAPRECIOIVA.AsFloat * CDSStockCOTIZACION.AsFloat)
  else
    Text:=FormatFloat(',0.000',CDSStockMUESTRAPRECIOIVA.AsFloat);
end;

procedure TFormBuscadorArticulos.CDSStockPERCIBE_IVAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  DisplayText := True;
  if Sender.AsString='S' then
    Text        := '*'
  else
    Text:='';

end;

procedure TFormBuscadorArticulos.CDSStockSIGNOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Not(chMoneda.Checked) then
    Text:='$'
  else
    Text:=CDSStockSIGNO.AsString;

end;

procedure TFormBuscadorArticulos.BExactaClick(Sender: TObject);
begin
  BExacta.Checked     :=True;
  BIncluye.Checked    :=False;
  BComienzaCon.Checked:=False;
end;

procedure TFormBuscadorArticulos.BComienzaConClick(Sender: TObject);
begin
  BExacta.Checked     := False;
  BIncluye.Checked    := False;
  BComienzaCon.Checked:= True;
  edDato.SetFocus;
  Buscar.Execute;
  if BIncluye.Checked Then lbModoBusqueda.Caption     := '(Modo Incluye)';
  if BComienzaCon.Checked then lbModoBusqueda.Caption := '(Modo Comienza Con)';

end;

procedure TFormBuscadorArticulos.BIncluyeClick(Sender: TObject);
begin
  BExacta.Checked      := False;
  BIncluye.Checked     := True;
  BComienzaCon.Checked := False;
  edDato.SetFocus;
  Buscar.Execute;
  if BIncluye.Checked Then lbModoBusqueda.Caption     := '(Modo Incluye)';
  if BComienzaCon.Checked then lbModoBusqueda.Caption := '(Modo Comienza Con)';

end;

procedure TFormBuscadorArticulos.bt1Click(Sender: TObject);
begin
  pnFiltros.Visible:=False;
end;

procedure TFormBuscadorArticulos.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=vk_UP) and (Shift=[ssCtrl]) Then
    edDato.SetFocus// DataSource.DataSet.Prior;
  else
    if (key=VK_DOWN) and (edDato.Focused) Then
        dbgResultado.SetFocus
    else
      if (Key=vk_return) and (dbgResultado.Focused) and
         (Not(dbgResultado.DataSource.DataSet.IsEmpty)) Then
        Aceptar.Execute
      else
        if ((key=VK_LEFT) or (key=VK_RIGHT)) and (Shift=[ssAlt]) then
          begin
            if (key=VK_LEFT) Then
              begin
                if cbCampos.ItemIndex<cbCampos.Items.Count-1 then
                  cbCampos.ItemIndex:=cbCampos.ItemIndex+1
                else
                  cbCampos.ItemIndex:=0
              end
            else
              if (key=VK_RighT) Then
                begin
                  if cbCampos.ItemIndex>0 then
                    cbCampos.ItemIndex:=cbCampos.ItemIndex-1
                  else
                    cbCampos.ItemIndex:=cbCampos.Items.Count-1;
                end;
            edDato.SetFocus;
          end
        else
          if (Key=VK_BACK) or (Key=VK_DELETE) then
            edDato.SetFocus;
end;

procedure TFormBuscadorArticulos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in ['A'..'Z','a'..'z','1'..'9','0','-','.',',',';']) and (dbgResultado.Focused) then
    begin
      edDato.SetFocus;
      edDato.Text :='';
      edDato.Text :=UpCase(Key);
      edDato.SelStart:=Length(edDato.Text);
      //edDato.
      Key:=#0;
    end;
end;

procedure TFormBuscadorArticulos.dbcMarcaClick(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormBuscadorArticulos.dbcRubrosClick(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormBuscadorArticulos.dbcRubrosEnter(Sender: TObject);
begin
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Clear;
  CDSSubRubro.Open;
  dbcSubRubros.Value:='*****';
end;

procedure TFormBuscadorArticulos.dbcSubRubrosClick(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormBuscadorArticulos.dbcSubRubrosEnter(Sender: TObject);
begin
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=dbcRubros.Value;
  CDSSubRubro.Open;
end;

procedure TFormBuscadorArticulos.dbgExitenciasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if (gdFocused in State) then
    begin
      dbgExitencias.canvas.brush.color := clNavy;
      dbgExitencias.canvas.Font.color  := clWhite;
    end
  else
    begin
      try
        if (dbgExitencias.DataSource.DataSet.FieldByName('FULTAJUSTE').AsDateTime)>Date-10 then
          begin
            dbgExitencias.Canvas.Font.Color:=clBlue;
            dbgExitencias.Canvas.Font.Style:=[fsBold];
          end;
      except
      end;
    end;
    //Esta línea es nueva
    dbgExitencias.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormBuscadorArticulos.dbgrdResultado_1CellClick(Column: TColumn);
begin
  dbgResultado.ShowHint:=False;
  dbgResultado.Hint:='';
  dbgResultado.Hint:='Precio En moneda Corriente '+ #13 +
                     '---------------------------'+ #13 +
                     'S/Iva     '+FormatFloat('0.00',CDSStockMUESTRAPRECIO.Value*CDSStockCOTIZACION.AsFloat)+#13+
                     'C/Iva     '+FormatFloat('0.00',CDSStockMUESTRAPRECIOIVA.AsFloat*CDSStockCOTIZACION.AsFloat);
  dbgResultado.ShowHint:=True;



end;

procedure TFormBuscadorArticulos.dbgrdResultado_1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
CONST
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($cc23c1);
begin
  inherited;
  if CDSStockCLASE_ARTICULO.Value=0 Then
    dbgResultado.Canvas.Font.Style :=[fsStrikeOut]
  else
    dbgResultado.Canvas.Font.Style :=[];

  if (Date-CDSStockFUAP.AsDateTime)>DMMain_FD.IntervMaxDesdeULtActuPrecio Then
    if gdSelected in State Then
      begin
        dbgResultado.Canvas.Font.Color:=clWhite;
        dbgResultado.Canvas.Brush.Color:=clNavy;
      end
    else
      begin
        dbgResultado.canvas.Font.color := clRed;
        dbgResultado.Canvas.Brush.Color:= clWindow;

     end;

  dbgResultado.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormBuscadorArticulos.VerPendientesExecute(Sender: TObject);
begin
  if Not(Assigned(FormStockPendiente)) Then
    FormStockPendiente:=TFormStockPendiente.Create(Application);
  FormStockPendiente.Codigo:=CDSStockCODIGO_STK.Value;
  FormStockPendiente.Show;
end;

end.