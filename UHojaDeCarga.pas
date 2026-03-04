unit UHojaDeCarga;

interface
{$D+}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Provider, DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvExMask,
  JvToolEdit, Mask, DBCtrls,DateUtils, frxClass, frxDBSet, JvMaskEdit,
  JvDBFindEdit, JvDBLookup, System.Actions, JvAppStorage, JvAppIniStorage,
  JvMemoryDataset, IBGenerator, CompBuscador,IniFiles, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvBaseEdits, JvExExtCtrls, JvExtComponent, JvPanel,
  System.ImageList, Vcl.Menus, JvDialogs, JvArrowButton, frCoreClasses,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCCloudBase, VCL.TMSFNCGeocoding;


  type
    TDireccionObj = class
    public
      Id       : Integer;
      Cliente  : string;
      Direccion: string;
      Lat      : Double;
      Lng      : Double;
    end;

  type
    TFormHojaDeCarga = class(TFormABMBase)
    CDSHojaCab: TClientDataSet;
    DSPHojaCab: TDataSetProvider;
    DSHojaCab: TDataSource;
    CDSHojaCabID: TIntegerField;
    CDSHojaCabFECHA: TSQLTimeStampField;
    CDSHojaCabRESPONSABLE: TStringField;
    CDSHojaCabNOTAS: TStringField;
    CDSHojaCabMUESTRARESPONSABLE: TStringField;
    lbFecha: TLabel;
    dbeFecha: TJvDBDateEdit;
    dbcResponsable: TJvDBComboEdit;
    dbeMuestraVendedor: TDBEdit;
    dbgDetalle: TJvDBGrid;
    DSPHojaDet: TDataSetProvider;
    CDSHojaDet: TClientDataSet;
    DSHojaDet: TDataSource;
    CDSHojaDetID: TIntegerField;
    CDSHojaDetID_CAB: TIntegerField;
    CDSHojaDetID_CPBTE: TIntegerField;
    CDSHojaDetTIPOCPBTE: TStringField;
    CDSHojaDetCLASECPBTE: TStringField;
    CDSHojaDetNROCPBTE: TStringField;
    CDSHojaDetNOMBRE: TStringField;
    CDSHojaDetENTREGADO: TStringField;
    Label3: TLabel;
    UpDown1: TUpDown;
    btSearch: TBitBtn;
    CDSHojaDetESTADOBOOLEANO: TBooleanField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFloatField;
    BuscarResponsable: TAction;
    DSPCompVta: TDataSetProvider;
    CDSCompVta: TClientDataSet;
    CDSCompVtaID_FC: TIntegerField;
    CDSCompVtaTIPOCPBTE: TStringField;
    CDSCompVtaCLASECPBTE: TStringField;
    CDSCompVtaNROCPBTE: TStringField;
    CDSCompVtaSUCURSAL: TIntegerField;
    CDSCompVtaCODIGO: TStringField;
    CDSCompVtaNOMBRE: TStringField;
    CDSCompVtaDIRECCION: TStringField;
    CDSCompVtaLOCALIDAD: TStringField;
    DSCompVta: TDataSource;
    Label4: TLabel;
    Desde: TJvDateEdit;
    Label5: TLabel;
    Hasta: TJvDateEdit;
    chbporDia: TCheckBox;
    Panel2: TPanel;
    dbeId: TDBEdit;
    Label1: TLabel;
    CDSDetalles: TClientDataSet;
    DSDetalles: TDataSource;
    DSPDetalles: TDataSetProvider;
    CDSDetallesID: TIntegerField;
    CDSDetallesID_CABFAC: TIntegerField;
    CDSDetallesCODIGOARTICULO: TStringField;
    CDSDetallesDETALLE: TStringField;
    frxReporte: TfrxReport;
    frCabecera: TfrxDBDataset;
    frDetalle: TfrxDBDataset;
    frDetalleMercaderia: TfrxDBDataset;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frResumenDetalle: TfrxDBDataset;
    Label6: TLabel;
    edNotas: TDBEdit;
    CDSCompVtaMUESTRADIRECCIONDESTINO: TStringField;
    CDSHojaDetDIRECCION: TStringField;
    EdBuscador: TEdit;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    dbcZona: TJvDBLookupCombo;
    Label8: TLabel;
    DSPBuscaZona: TDataSetProvider;
    CDSBuscaZona: TClientDataSet;
    CDSBuscaZonaID_ZONA: TIntegerField;
    CDSBuscaZonaDETALLE: TStringField;
    DSZona: TDataSource;
    CDSCompVtaNUMERO: TStringField;
    CDSCompVtaZONACLIENTE: TIntegerField;
    DBText1: TDBText;
    DBText2: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CDSCompVtaMUESTRAZONA: TStringField;
    CDSDetallesNETOGRAVADO: TFloatField;
    CDSDetallesUNITARIOFINAL: TFloatField;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    CDSHojaCabID_ZONA: TIntegerField;
    CDSZonas: TClientDataSet;
    DSZonas: TDataSource;
    CDSZonasID_ZONA: TIntegerField;
    CDSZonasDETALLE: TStringField;
    DSPZonas: TDataSetProvider;
    Label13: TLabel;
    cbZona: TJvDBLookupCombo;
    Button1: TButton;
    CDSCompVtaELECTRONICO: TStringField;
    CDSCompVtaCAE: TStringField;
    edFind: TJvDBFindEdit;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    Label14: TLabel;
    ibCab: TIBGenerator;
    ibDet: TIBGenerator;
    DBText3: TDBText;
    rgOrden: TRadioGroup;
    ComBuscadorVendedor: TComBuscador;
    QSetGenerador: TFDQuery;
    BitBtn1: TBitBtn;
    ImprimirAgrupado: TAction;
    Label15: TLabel;
    CDSHojaCabID_TRANSPORTE: TIntegerField;
    QSumaCantidad: TFDQuery;
    Label16: TLabel;
    QTransp: TFDQuery;
    DSPTransp: TDataSetProvider;
    CDSTrans: TClientDataSet;
    DSTrans: TDataSource;
    Label17: TLabel;
    RxLabel7: TLabel;
    lbCarga: TLabel;
    pnAvisoCargaMax: TPanel;
    QCompVta: TFDQuery;
    CDSCompVtaTOTAL: TFloatField;
    CDSCompVtaTOTALNETO: TFloatField;
    CDSCompVtaSALDO: TFloatField;
    QDetalles: TFDQuery;
    CDSDetallesCANTIDAD: TFloatField;
    cbTransporte: TJvDBLookupCombo;
    CDSTransID: TIntegerField;
    CDSTransDESCRIPCION: TStringField;
    CDSTransCAPACIDAD: TFloatField;
    CDSTransDOMINIO: TStringField;
    Label18: TLabel;
    dbcTransporte: TJvDBLookupCombo;
    QUniTransp: TFDQuery;
    DSPUniTransp: TDataSetProvider;
    CDSUniTransp: TClientDataSet;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    DSUniTransp: TDataSource;
    CDSCompVtaTRANSP: TIntegerField;
    pnComprobantes: TJvPanel;
    lvComprobantes: TListView;
    DSComprobantes: TDataSource;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSComprobantesLETRA: TStringField;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesFILTRO_COMPROBANTES: TStringField;
    DSPComprobantes: TDataSetProvider;
    spFiltroCpbte: TSpeedButton;
    QComprobante: TFDQuery;
    QComprobanteID_COMPROBANTE: TIntegerField;
    QComprobanteTIPO_COMPROB: TStringField;
    QComprobanteCLASE_COMPROB: TStringField;
    QComprobanteDENOMINACION: TStringField;
    QComprobanteSUCURSAL: TIntegerField;
    QComprobanteLETRA: TStringField;
    QComprobanteFILTRO_COMPROBANTES: TStringField;
    CDSCompVtaID_COMPROBANTE: TIntegerField;
    Panel3: TPanel;
    Label19: TLabel;
    SpeedButton1: TSpeedButton;
    spCerrar: TSpeedButton;
    QComprobanteMUESTRASUCURSAL: TStringField;
    CDSComprobantesMUESTRASUCURSAL: TStringField;
    QHojaDet: TFDQuery;
    QHojaCab: TFDQuery;
    QHojaCabID: TIntegerField;
    QHojaCabFECHA: TSQLTimeStampField;
    QHojaCabRESPONSABLE: TStringField;
    QHojaCabNOTAS: TStringField;
    QHojaCabCOMISION: TFloatField;
    QHojaCabID_ZONA: TIntegerField;
    QHojaCabID_TRANSPORTE: TIntegerField;
    QHojaCabID_CHOFER: TIntegerField;
    QHojaCabMUESTRARESPONSABLE: TStringField;
    CDSHojaDetNETO: TFloatField;
    CDSHojaDetSALDO: TFloatField;
    CDSHojaDetIMPORTE: TFloatField;
    CDSHojaCabCOMISION: TFloatField;
    CDSDetallesPRESENTACION_CANTIDAD: TFloatField;
    CDSDetallesPRESENTACION_UNIDAD: TStringField;
    CDSHojaDetCODIGO: TStringField;
    CDSPersonalCOMISION: TFloatField;
    CDSCompVtaVENDEDOR: TStringField;
    CDSCompVtaMUESTRAVENDEDOR: TStringField;
    BuscarCpbtes: TAction;
    dbcVendedores: TJvDBLookupCombo;
    Label20: TLabel;
    DSPVendedores: TDataSetProvider;
    CDSVendedores: TClientDataSet;
    DSVendedores: TDataSource;
    CDSVendedoresCODIGO: TStringField;
    CDSVendedoresNOMBRE: TStringField;
    CDSVendedoresCOMISION: TFloatField;
    ppmComprobantes: TPopupMenu;
    Caption1: TMenuItem;
    ClaseCpbteCl1: TMenuItem;
    NroCpbte1: TMenuItem;
    Nombre1: TMenuItem;
    Importe1: TMenuItem;
    Id1: TMenuItem;
    Vendedor1: TMenuItem;
    CDSHojaDetVENDEDOR: TStringField;
    CDSHojaDetMUESTRAVENDEDOR: TStringField;
    Panel5: TPanel;
    pnIndicaciones1: TPanel;
    dbgComprobantes: TJvDBGrid;
    colorSinDespachar: TShape;
    Label21: TLabel;
    Label22: TLabel;
    colorDespachados: TShape;
    lEntregados: TLabel;
    pnIndicaciones: TPanel;
    chDespachados: TCheckBox;
    colorEntregados: TShape;
    QResumenDetalleStock: TFDQuery;
    DSPResumenDetalle: TDataSetProvider;
    CDSResumenDetalle: TClientDataSet;
    CDSResumenDetalleCODIGOARTICULO: TStringField;
    CDSResumenDetalleDETALLE: TStringField;
    CDSResumenDetalleCANTIDAD: TFloatField;
    CDSResumenDetalleCANTIDAD_CONTENIDO: TFloatField;
    CDSResumenDetalleUNIDAD_CONTENIDO: TStringField;
    QResumenDetalleCpbtes: TFDQuery;
    chImprimeStock: TCheckBox;
    Label23: TLabel;
    CDSCompVtaPESOTOTAL: TFloatField;
    CDSCompVtaTotalContenido: TAggregateField;
    CDSHojaDetPESOTOTAL: TFloatField;
    CDSHojaDetTotalContenido: TAggregateField;
    CDSHojaCabCARGA_MAX: TFloatField;
    DBText4: TDBText;
    ePesoTotal: TDBEdit;
    ePesoCpbtes_: TDBEdit;
    QBuscaVendedores: TFDQuery;
    edPeso: TJvCalcEdit;
    ePesoCpbtes: TJvCalcEdit;
    JvArrowButton1: TJvArrowButton;
    popMenuImpresion: TPopupMenu;
    Impresion21: TMenuItem;
    Direccion1: TMenuItem;
    VerMapa: TAction;
    ToolButton2: TToolButton;
    sbMostrarMapa: TSpeedButton;
    rgOrdenDetalleArti: TRadioGroup;
    QCompVtaID_FC: TIntegerField;
    QCompVtaTIPOCPBTE: TStringField;
    QCompVtaCLASECPBTE: TStringField;
    QCompVtaNUMERO: TStringField;
    QCompVtaNROCPBTE: TStringField;
    QCompVtaSUCURSAL: TIntegerField;
    QCompVtaCODIGO: TStringField;
    QCompVtaNOMBRE: TStringField;
    QCompVtaDIRECCION: TStringField;
    QCompVtaLOCALIDAD: TStringField;
    QCompVtaTOTAL: TFloatField;
    QCompVtaMUESTRADIRECCIONDESTINO: TStringField;
    QCompVtaZONACLIENTE: TIntegerField;
    QCompVtaMUESTRAZONA: TStringField;
    QCompVtaTOTALNETO: TFloatField;
    QCompVtaELECTRONICO: TStringField;
    QCompVtaCAE: TStringField;
    QCompVtaSALDO: TFloatField;
    QCompVtaTRANSP: TIntegerField;
    QCompVtaID_COMPROBANTE: TIntegerField;
    QCompVtaVENDEDOR: TStringField;
    QCompVtaMUESTRAVENDEDOR: TStringField;
    QCompVtaENTREGADO: TStringField;
    QCompVtaPESOTOTAL: TFloatField;
    CDSCompVtaENTREGADO: TStringField;
    CDSHojaDetDIRECCIONFACTURA: TStringField;
    QHojaCabRECORRIDO_KM: TFloatField;
    CDSHojaCabID_CHOFER: TIntegerField;
    CDSHojaCabRECORRIDO_KM: TFloatField;
    DBEdit2: TDBEdit;
    Label24: TLabel;
    QHojaDetID: TIntegerField;
    QHojaDetID_CAB: TIntegerField;
    QHojaDetID_CPBTE: TIntegerField;
    QHojaDetTIPOCPBTE: TStringField;
    QHojaDetCLASECPBTE: TStringField;
    QHojaDetNROCPBTE: TStringField;
    QHojaDetNOMBRE: TStringField;
    QHojaDetIMPORTE: TFloatField;
    QHojaDetENTREGADO: TStringField;
    QHojaDetDIRECCION: TStringField;
    QHojaDetNETO: TFloatField;
    QHojaDetSALDO: TFloatField;
    QHojaDetCODIGO: TStringField;
    QHojaDetVENDEDOR: TStringField;
    QHojaDetMUESTRAVENDEDOR: TStringField;
    QHojaDetPESOTOTAL: TFloatField;
    QHojaDetDIRECCIONFACTURA: TStringField;
    QCompVtaMUESTRADIRECCIONCOMPLETA: TStringField;
    CDSCompVtaMUESTRADIRECCIONCOMPLETA: TStringField;
    QHojaDetDIRECCION_AMPLIADA: TStringField;
    CDSHojaDetDIRECCION_AMPLIADA: TStringField;
    DBText5: TDBText;
    TMSFNCGeocoding1: TTMSFNCGeocoding;
    RefrescarDireccion: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarResponsableExecute(Sender: TObject);
    procedure CDSHojaCabRESPONSABLESetText(Sender: TField; const Text: string);
    procedure CDSHojaDetESTADOBOOLEANOSetText(Sender: TField;
      const Text: string);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSHojaCabNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dbgDetalleDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgDetalleDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CDSHojaDetNewRecord(DataSet: TDataSet);
    function dbgDetalleCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure dbgComprobantesDblClick(Sender: TObject);
    procedure dbgComprobantesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure dbgComprobantesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure EdBuscadorChange(Sender: TObject);
    procedure EdBuscadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbcZonaChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edFindKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgComprobantesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure rgOrdenClick(Sender: TObject);
    procedure ImprimirAgrupadoExecute(Sender: TObject);
    procedure CDSHojaDetAfterPost(DataSet: TDataSet);
    procedure cbTransporteClick(Sender: TObject);
    procedure CDSHojaDetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dbcTransporteChange(Sender: TObject);
    procedure spFiltroCpbteClick(Sender: TObject);
    procedure lvComprobantesClick(Sender: TObject);
    procedure spFiltroAllClick(Sender: TObject);
    procedure spCerrarClick(Sender: TObject);
    procedure CDSComprobantesAfterPost(DataSet: TDataSet);
    procedure CDSHojaDetAfterDelete(DataSet: TDataSet);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure BuscarCpbtesExecute(Sender: TObject);
    procedure dbcVendedoresChange(Sender: TObject);
    procedure CaptionClick(Sender: TObject);
    procedure HastaKeyPress(Sender: TObject; var Key: Char);
    procedure chDespachadosClick(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure lEntregadosClick(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure frxReporteClosePreview(Sender: TObject);
    procedure frxReportePreview(Sender: TObject);
    procedure chImprimeStockClick(Sender: TObject);
    procedure ResumenDetalle;
    procedure CDSHojaDetTotalContenidoChange(Sender: TField);
    procedure CDSHojaCabCARGA_MAXChange(Sender: TField);
    procedure dbgComprobantesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgDetalleTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure CDSHojaDetBeforeDelete(DataSet: TDataSet);
    procedure Impresion21Click(Sender: TObject);
    procedure VerMapaExecute(Sender: TObject);
    procedure TMSFNCGeocoding1GetGeocodingResult(Sender: TObject;
      const AResult: TTMSFNCGeocodingRequest);
    procedure RefrescarDireccionExecute(Sender: TObject);
    procedure dbgDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    ListaDireccion: TStringList; // <--- esta es la que pasás al mapa
    FIdx: Integer;
    FGeoDone: Boolean;

    function NormalizarDir(const S: string): string;
    procedure LlenarListaDesdeCDS;
    procedure IniciarGeo;
    procedure GeocodificarSiguiente;

    function  GetCol(ind: word):      TColumn;
    function  GetppmItem(ind: word):  TMenuItem;
    function  ColsToStr   (Cols: TDBGridColumns) : string;
    procedure ColsFromStr (AStr: string);
    procedure ColVisible  (const Ind:   word; const Visible: boolean);
    function  GetExcedeCarga: Boolean;
    procedure CheckCarga;
    procedure GeocodingFinalizado;
  public
    { Public declarations }
    Cantidad  :Extended;
    Lista     :TListItem;
    Filtro    :String;
    FUNCTION  AsignarResponsable(Dato: String): Boolean;
    procedure AsignarCpbte;
    procedure AsignarCpbtes;
    procedure SumarPeso;
    procedure SumarPesoCpbtes;
    procedure AplicarFiltro;
    property  Cols[ind:word]:       TColumn read GetCol;
    property  ppmItems[ind:word]:   TMenuItem read GetppmItem;
    property  ExcedeCarga:   Boolean read GetExcedeCarga;
  end;

var

  FormHojaDeCarga : TFormHojaDeCarga;


implementation

{$R *.dfm}
uses UDMain_FD, DMBuscadoresForm, UBuscadorHojaCarga, UFactura_2,
     UFacturaCtdo_2, URemitos, UImprimirHojaCargaAgrupada,UMapaHojaCarga_2,
  UMapaHojaCarga;

var // Direccion       : TDirecciones;
     FIdx: Integer;

function  TFormHojaDeCarga.GetppmItem(ind: Word): TMenuItem;
begin
  if Ind < ppmComprobantes.Items.Count then
    Result  :=  ppmComprobantes.Items.Items[ind]
  else
    Result  :=  nil;
end;

function  TFormHojaDeCarga.GetCol(Ind: Word):  TColumn;
begin
  if Ind < dbgComprobantes.Columns.Count  then
    Result  :=  dbgComprobantes.Columns.Items[ind]
  else
    Result  :=  nil;
end;


function  TFormHojaDeCarga.ColsToStr(Cols: TDBGridColumns): string;
var
  ACol: TCollectionItem;        Res:  string;
begin
  Res :=  '';
  for ACol in Cols do
    if (ACol as TColumn).Visible then
      Res := Concat(Res,'1')
    else
      Res := Concat(Res,'0');

  Result  :=  Res;
end;

procedure TFormHojaDeCarga.ColsFromStr(AStr: string);
var
  X:  Word;
begin
  for x := 0 to Length(AStr)-1 do
    begin
      if AStr[x+1]='1' then ColVisible(x,True);
      if AStr[x+1]='0' then ColVisible(x,False);
    end;
end;


procedure TFormHojaDeCarga.ColVisible  (const Ind:   word; const Visible: boolean);
var
  ACol: TColumn;  AItem: TMenuItem;
begin
  ACol  :=  Cols[Ind];
  AItem :=  ppmItems[Ind];
  if ACol <> nil then ACol.Visible  :=  Visible;
  if AItem<> nil then AItem.Checked :=  Visible;
end;

procedure TFormHojaDeCarga.AgregarExecute(Sender: TObject);
begin
  CDSHojaCab.Close;
  CDSHojaCab.Params.ParamByName('id').Clear;
  CDSHojaCab.Open;

  CDSHojaDet.Close;
  CDSHojaDet.Params.ParamByName('id_cab').Clear;
  CDSHojaDet.Open;
  inherited;
  if ((dbcResponsable.Visible) and (dbcResponsable.Enabled)) then
    dbcResponsable.SetFocus;
end;

procedure TFormHojaDeCarga.AplicarFiltro;
var i:Integer;
begin
  CDSCompVta.Filtered:=False;
  CDSCompVta.Filter  :='';
  Filtro:='';
  for I := 0 to lvComprobantes.Items.Count - 1 do
    begin
      lista:=lvComprobantes.Items[i];
      if lista.Checked then
        begin
          if Filtro='' then
            Filtro:='(ID_COMPROBANTE = '+ Lista.SubItems.Strings[0]+')'
          else
            Filtro:=Filtro+' or (ID_COMPROBANTE = '+ Lista.SubItems.Strings[0]+')';
        end;
    end;

  if Filtro<>'' then
    begin
      if chDespachados.Checked then
        Filtro  := '((ENTREGADO is null) or (ENTREGADO='''')) and ('+ Filtro + ')';
      CDSCompVta.Filter       := Filtro;
      CDSCompVta.Filtered     := True;
    end
  else
    begin
      if chDespachados.Checked then
        begin
          CDSCompVta.Filter    := '(ENTREGADO is null) or (ENTREGADO='''')';
          CDSCompVta.Filtered  := True;
        end
      else
        begin
          CDSCompVta.Filter    := '';
          CDSCompVta.Filtered  := False;
        end;
    end;

  pnIndicaciones.Visible  :=  not chDespachados.Checked;

  dbgComprobantes.Refresh;
end;


FUNCTION TFormHojaDeCarga.GetExcedeCarga: Boolean;
begin
  Result  :=  (not CDSHojaCabCARGA_MAX.IsNull) and
              (CDSHojaCabCARGA_MAX.AsFloat > 0) and
              (CDSHojaDetTotalContenido.Value > CDSHojaCabCARGA_MAX.AsFloat);

end;

procedure TFormHojaDeCarga.CheckCarga;
begin
  if ExcedeCarga then
    begin
      ePesoTotal.Font.Color     := clRed;
      pnAvisoCargaMax.Visible   := True;
    end
  else
    begin
      ePesoTotal.Font.Color     := clGreen;
      pnAvisoCargaMax.Visible   := False;
    end;
end;

FUNCTION TFormHojaDeCarga.AsignarResponsable(Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSHojaCabMUESTRARESPONSABLE.Value  :=CDSPersonalNOMBRE.Value;
      if ( CDSPersonalCOMISION.AsString<>'' ) then
        CDSHojaCabCOMISION.AsFloat          :=CDSPersonalCOMISION.AsFloat
      else
        CDSHojaCabCOMISION.AsFloat            :=0;
    END
  ELSE
    begin
      Result:=False;
      CDSHojaCabMUESTRARESPONSABLE.Clear;
      CDSHojaCabCOMISION.AsFloat            :=0;
    end;
  CDSPersonal.Close;
END;



procedure TFormHojaDeCarga.BuscarCpbtesExecute(Sender: TObject);
begin
  inherited;
  CDSCompVta.Close;
  CDSCompVta.IndexFieldNames:='';
  CDSCompVta.IndexDefs.Clear;
  CDSCompVta.Params.ParamByName('Desde').Value     := Desde.Date;
  CDSCompVta.Params.ParamByName('Hasta').Value     := Hasta.Date;
  CDSCompVta.Params.ParamByName('Sucursal').Value   := -1;
  CDSCompVta.Params.ParamByName('Vendedor').Value   := dbcVendedores.KeyValue;
  CDSCompVta.Params.ParamByName('zona').Value       := dbcZona.KeyValue;
  CDSCompVta.Params.ParamByName('transporte').Value := dbcTransporte.KeyValue;
  CDSCompVta.Open;
  CDSCompVta.IndexFieldNames:='NroCpbte';

  AplicarFiltro;
  SumarPesoCpbtes;
end;

procedure TFormHojaDeCarga.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorHojaCarga)) then
    FormBuscadorHojaCarga:=TFormBuscadorHojaCarga.Create(self);
  FormBuscadorHojaCarga.ShowModal;
  if FormBuscadorHojaCarga.ModalResult=mrOk then
    begin
      DatoNew:=IntToStr(FormBuscadorHojaCarga.Id);
      Recuperar.Execute;
    end;
end;

procedure TFormHojaDeCarga.BuscarResponsableExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaVendedor.Close;
  CDSBuscaVendedor.Open;
  ComBuscadorVendedor.Execute;

  IF comBuscadorVendedor.rOk THEN
    CDSHojaCabRESPONSABLESetText(CDSHojaCabRESPONSABLE,comBuscadorVendedor.Id);
//
//
//  IF wwBuscadorVendedor.Execute THEN
//    if wwBuscadorVendedor.LookupTable.fieldByName('codigo').AsString<>'' Then
//      CDSHojaCabRESPONSABLESetText(CDSHojaCabRESPONSABLE,wwBuscadorVendedor.LookupTable.fieldByName('codigo').AsString);
  CDSBuscaVendedor.Close;
end;

procedure TFormHojaDeCarga.Button1Click(Sender: TObject);
var
  Aux: Boolean;
begin
  inherited;
  if (CDSCompVta.IsEmpty=False) and (DSBase.State <> dsBrowse) then
    begin
      CDSCompVta.DisableControls;
      Aux :=  CDSCompVta.Filtered;
      CDSCompVta.Filtered :=  False;
      CDSHojaDet.DisableControls;

      CDSCompVta.First;
      while Not(CDSCompVta.Eof) do
        begin
          AsignarCpbte;
     //     dbgComprobantesDblClick(sender);
          CDSCompVta.Next
        end;
      //CDSCompVta.First;
      CDSCompVta.Filtered   :=  Aux;
      CDSCompVta.EnableControls;
      CDSHojaDet.EnableControls;
    end;
end;

procedure TFormHojaDeCarga.CancelarExecute(Sender: TObject);
begin
  CDSCompVta.Close;
  CDSCompVta.Params.ParamByName('Desde').Clear;
  CDSCompVta.Params.ParamByName('Hasta').Clear;
  CDSCompVta.Params.ParamByName('Sucursal').Clear;
  CDSCompVta.Open;
  inherited;
  pnAvisoCargaMax.Visible := False;
end;

procedure TFormHojaDeCarga.CaptionClick(Sender: TObject);
begin
//  inherited;
  ColVisible( ppmComprobantes.Items.IndexOf(Sender as TMenuItem),
              not (Sender as TMenuItem).Checked);


end;

procedure TFormHojaDeCarga.CDSComprobantesAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSComprobantes.ApplyUpdates(0);
end;

procedure TFormHojaDeCarga.CDSHojaCabCARGA_MAXChange(Sender: TField);
begin
  inherited;
  CheckCarga;
end;

procedure TFormHojaDeCarga.CDSHojaCabNewRecord(DataSet: TDataSet);
var i:Integer;
begin
  inherited;
  i:=ibCab.IncrementFD(1);

  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSHojaCabID.Value:=1
  else
    CDSHojaCabID.Value:= QUltimoCodigo2.Fields[0].AsInteger + 1 ;

  if i < CDSHojaCabID.Value then
    begin
      QSetGenerador.Close;//.IncrementFD(CDSHojaCabID.Value-i)
      QSetGenerador.SQL.Text:= 'SET GENERATOR NEXT_ID_HOJACAR_CAB TO '+ IntToStr( QUltimoCodigo2.Fields[0].AsInteger + 1);
      QSetGenerador.ExecSQL;
      QSetGenerador.Close;
    end
  else
    CDSHojaCabID.Value:= i;
  QUltimoCodigo2.Close;

  CDSHojaCabFECHA.AsDateTime    := Date;
  CDSHojaCabCOMISION.AsFloat    := 0;
  CDSHojaCabID_ZONA.Value       := -1;
  CDSHojaCabID_TRANSPORTE.Value := -1;
  CDSHojaCabRECORRIDO_KM.Value  := 0;

  dbcResponsable.SetFocus;
end;

procedure TFormHojaDeCarga.CDSHojaCabRESPONSABLESetText(Sender: TField;
  const Text: string);
begin
 IF (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
      IF (NOT (AsignarResponsable(Sender.AsString))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo no Válido');
        END;
    END;
end;

procedure TFormHojaDeCarga.CDSHojaDetAfterDelete(DataSet: TDataSet);
var I:Integer;
Puntero:TBookmark;
begin
  inherited;
  case rgOrden.ItemIndex of
    0:CDSHojaDet.IndexFieldNames:='ID';
    1:CDSHojaDet.IndexFieldNames:='TIPOCPBTE;NROCPBTE';
    2:CDSHojaDet.IndexFieldNames:='NOMBRE';
  end;
end;

procedure TFormHojaDeCarga.CDSHojaDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  SumarPeso;
end;


procedure TFormHojaDeCarga.CDSHojaDetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if CDSCompVta.Locate('ID_FC',CDSHojaDetID_CPBTE.AsString,[]) Then
    begin
      CDSCompVta.Edit;
      CDSCompVtaENTREGADO.Clear;
      CDSCompVta.Post;
    end;
end;

procedure TFormHojaDeCarga.CDSHojaDetESTADOBOOLEANOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  CDSHojaDet.Edit;
  if Sender.AsBoolean=True then
    CDSHojaDetENTREGADO.Value:='S'
  else
    CDSHojaDetENTREGADO.Value:='N';
  CDSHojaDet.Post;
end;

procedure TFormHojaDeCarga.CDSHojaDetNewRecord(DataSet: TDataSet);
var i:Integer;
begin
  inherited;
  CDSHojaDetID.Value         := ibDet.IncrementFD(1);// CDSHojaDet.RecordCount+1;
  CDSHojaDetID_CAB.Value     := CDSHojaCabID.Value;
  CDSHojaDetSALDO.AsFloat    := 0;
end;

procedure TFormHojaDeCarga.CDSHojaDetReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TFormHojaDeCarga.CDSHojaDetTotalContenidoChange(Sender: TField);
begin
  inherited;
  CheckCarga;
end;

procedure TFormHojaDeCarga.chDespachadosClick(Sender: TObject);
begin
  inherited;
  BuscarCpbtes.Execute;
end;

procedure TFormHojaDeCarga.chImprimeStockClick(Sender: TObject);
begin
  inherited;
  with (Sender as TCheckBox) do
    begin
      if Checked then
        caption := 'Mov. de Stock'
      else
        Caption := 'Detalle en Cpbtes';
    end;
end;

procedure TFormHojaDeCarga.ConfirmaExecute(Sender: TObject);
var I:Integer;
Puntero:TBookmark;
begin
  DatoNew:=CDSHojaCabID.AsString;
 // if not(CDSHojaDet.IsEmpty) then
    begin
      inherited;
      Recuperar.Execute;
      if not(CDSHojaDet.IsEmpty) then
        case rgOrden.ItemIndex of
          0:CDSHojaDet.IndexFieldNames := 'ID';
          1:CDSHojaDet.IndexFieldNames := 'TIPOCPBTE;NROCPBTE';
         2:CDSHojaDet.IndexFieldNames := 'NOMBRE';
        end;
    end;

end;

procedure TFormHojaDeCarga.dbcTransporteChange(Sender: TObject);
begin
  inherited;
  BuscarCpbtes.Execute;
end;

procedure TFormHojaDeCarga.dbcVendedoresChange(Sender: TObject);
begin
  inherited;
  BuscarCpbtes.Execute;

end;

procedure TFormHojaDeCarga.dbcZonaChange(Sender: TObject);
begin
  inherited;
  BuscarCpbtes.Execute;
end;

procedure TFormHojaDeCarga.AsignarCpbte;
var
  Cambios:  Boolean;
begin
 // if (dbgComprobantes.DataSource.DataSet.FieldByName('ENTREGADO').IsNull) then
    if Not(CDSHojaDet.Locate('ID_CPBTE;TIPOCPBTE',VarArrayOf([dbgComprobantes.DataSource.DataSet.FieldByName('ID_FC').AsString,dbgComprobantes.DataSource.DataSet.FieldByName('TIPOCPBTE').AsString]),[])) Then
    begin
      if CDSHojaCabID_ZONA.Value<=0 then
        CDSHojaCabID_ZONA.Value:=dbcZona.KeyValue;
      CDSHojaDet.Append;
      WITH dbgComprobantes.DataSource.DataSet DO
        BEGIN
          CDSHojaDetID_CPBTE.AsInteger          := FieldByName('ID_FC').AsInteger;
          CDSHojaDetTIPOCPBTE.AsString          := FieldByName('TipoCpbte').AsString;
          CDSHojaDetCLASECPBTE.AsString         := FieldByName('ClaseCpbte').AsString;
          CDSHojaDetNROCPBTE.AsString           := FieldByName('NroCpbte').AsString;

          CDSHojaDetNOMBRE.AsString             := FieldByName('Nombre').AsString;
          CDSHojaDetIMPORTE.AsFloat             := FieldByName('Total').AsFloat;
          CDSHojaDetNETO.AsFloat                := FieldByName('TotalNeto').AsFloat;
          CDSHojaDetSALDO.AsFloat               := FieldByName('Saldo').AsFloat;
          CDSHojaDetDIRECCION.AsString          := FieldByName('MUESTRADIRECCIONDESTINO').AsString;
          CDSHojaDetCODIGO.AsString             := FieldByName('CODIGO').AsString;
          CDSHojaDetVENDEDOR.AsString           := FieldByName('Vendedor').AsString;
          CDSHojaDetMUESTRAVENDEDOR.AsString    := FieldByName('MuestraVendedor').AsString;
          CDSHojaDetPESOTOTAL.AsFloat           := FieldByName('PesoTotal').AsFloat;
          CDSHojaDetENTREGADO.AsString          := 'N';
          CDSHojaDetDIRECCION_AMPLIADA.AsString := FieldByName('MUESTRADIRECCIONCOMPLETA').AsString;
          if dbgComprobantes.DataSource.DataSet.State=dsBrowse then
            dbgComprobantes.DataSource.DataSet.Edit;
          dbgComprobantes.DataSource.DataSet.FieldByName('ENTREGADO').AsString :=  'N';
          dbgComprobantes.DataSource.DataSet.Post;
        END;
      CDSHojaDet.Post;
      edFind.Text:='';
    end;
end;

procedure TFormHojaDeCarga.AsignarCpbtes;
var
  Act: TBookmark;    x: Integer;
begin
  if (CDSHojaCab.State<>dsBrowse) then
    begin
      AsignarCpbte;
      if dbgComprobantes.SelectedRows.Count > 1 then
        begin
          for x :=  0 to dbgComprobantes.SelectedRows.Count-1  do
            begin
              dbgComprobantes.DataSource.DataSet.GotoBookmark(dbgComprobantes.SelectedRows.Items[x]);
              AsignarCpbte;
            end;
          dbgComprobantes.SelectedRows.Clear;
        end;
    end;
end;

procedure TFormHojaDeCarga.dbgComprobantesDblClick(Sender: TObject);
begin
 // inherited;
  AsignarCpbtes;
  SumarPesoCpbtes;

end;

procedure TFormHojaDeCarga.dbgComprobantesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
VAR CDSClone:TClientDataSet;
begin
  inherited;

  if (Not(CDSCompVta.IsEmpty)) then
    begin
      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSHojaDet,True);
      begin
        if not CDSCompVtaENTREGADO.IsNull then
          begin
            if CDSCompVtaENTREGADO.AsString='N' then
              dbgComprobantes.canvas.brush.color  := colorDespachados.Brush.Color
            else
              dbgComprobantes.canvas.brush.color  := colorEntregados.Brush.Color;
          end
        else
          dbgComprobantes.canvas.brush.color      := colorSinDespachar.Brush.Color;
        if (CDSClone.Locate('ID_CPBTE;TIPOCPBTE',VarArrayOf([CDSCompVtaID_FC.AsString,CDSCompVtaTIPOCPBTE.AsString]),[])) Then
          dbgComprobantes.canvas.brush.color:= clMoneyGreen
      end;
      FreeAndNil(CDSClone);
    end;

   if gdSelected	in state Then
    begin
      dbgComprobantes.Canvas.brush.Color :=clBlue;
      dbgComprobantes.Canvas.Font.Color  :=clWhite;
    end;

  dbgComprobantes.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

// falta modificar en el cliente para que tome la nueva direccion
procedure TFormHojaDeCarga.dbgComprobantesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Key=#13) and (Not(CDSCompVta.IsEmpty)) then
     begin
       Key:=#0;
       //dbgComprobantesDblClick(Sender);
       AsignarCpbte;
     end;
end;

procedure TFormHojaDeCarga.dbgComprobantesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  ACol,ARow: integer;
begin
  if (ssLeft in Shift) and (DSBase.State in [dsInsert, dsEdit]) then
    begin
      dbgComprobantes.MouseToCell(X,Y,ACol,ARow);
      if ARow >= 0 then
        dbgComprobantes.BeginDrag(False);
    end;
  inherited;
end;

procedure TFormHojaDeCarga.dbgComprobantesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgComprobantes.DataSource.DataSet as TClientDataSet do
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

procedure TFormHojaDeCarga.FormClose(Sender: TObject; var Action: TCloseAction);
var i:Integer;
begin
  inherited;
  for I := 0 to lvComprobantes.Items.Count - 1 do
     begin
       lista:=lvComprobantes.Items[i];
       if CDSComprobantes.Locate('ID_COMPROBANTE',Lista.SubItems.Strings[0],[]) then
         begin
           CDSComprobantes.Edit;
           if Lista.Checked then
             CDSComprobantesFILTRO_COMPROBANTES.Value:='S'
           else
             CDSComprobantesFILTRO_COMPROBANTES.Value:='N';
           CDSComprobantes.Post;
         end;
     end;
                            
  ArchivoINI            := TIniFile.Create(ExtractFilePath(ParamStr(0))+'HojaCarga.ini');
  ArchivoINI.WriteInteger('orden', 'index', rgOrden.ItemIndex);
  ArchivoINI.WriteInteger('ordenDetalle', 'index', rgOrdenDetalleArti.ItemIndex);

  ArchivoINI.WriteString ('Comprobantes','Columnas',ColsToStr(dbgComprobantes.Columns));
  ArchivoINI.WriteBool   ('Comprobantes','SinDespachar',chDespachados.Checked);
  ArchivoIni.WriteBool   ('Comprobantes','ImprimeStock',chImprimeStock.Checked);
  ArchivoIni.WriteInteger('Personalizacion','colorSinDespachar',colorSinDespachar.Brush.Color);    
  ArchivoIni.WriteInteger('Personalizacion','colorDespachados',colorDespachados.Brush.Color);
  ArchivoIni.WriteInteger('Personalizacion','colorEntregados',colorEntregados.Brush.Color);
  ArchivoINI.Free;

  CDSTrans.Close;
  CDSBuscaVendedor.Close;
  CDSBuscaZona.Close;
  CDSZonas.Close;
  CDSVendedores.Close;

  Action:=caFree;
end;


procedure TFormHojaDeCarga.FormCreate(Sender: TObject);
var
  Columnas: string;
begin
  inherited;
  SinBde:=2;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  ArchivoINI                    := TIniFile.Create(DMMain_FD.MainPath+'HojaCarga.ini');
  rgOrden.ItemIndex             := ArchivoINI.ReadInteger('orden', 'index', 0);
  rgOrdenDetalleArti.ItemIndex  := ArchivoINI.ReadInteger('ordenDetalle', 'index', 0);

  Columnas                      := ArchivoINI.ReadString('Comprobantes','Columnas','11111000'); /// 1 visible, 0 invisible. Por defecto todas visibles.
  chDespachados.Checked         := ArchivoINI.ReadBool  ('Comprobantes','SinDespachar',True);
  chImprimeStock.Checked        := ArchivoIni.ReadBool  ('Comprobantes','ImprimeStock',False);
  colorSinDespachar.Brush.Color := ArchivoIni.ReadInteger('Personalizacion','colorSinDespachar',clWhite);
  colorDespachados.Brush.Color  := ArchivoIni.ReadInteger('Personalizacion','colorDespachados',clInfoBk);
  colorEntregados.Brush.Color   := ArchivoIni.ReadInteger('Personalizacion','colorEntregados',clMoneyGreen);

  ArchivoINI.Free;

  ColsFromStr(Columnas);

  AddClientDataset(CDSHojaCab, DSPHojaCab);
  AddClientDataset(CDSHojaDet, DSPHojaDet);
  CDSZonas.Open;
  CDSBuscaZona.Open;
  CDSVendedores.Open;

  CDSTrans.Close;
  CDSTrans.Open;

  CDSUniTransp.Close;
  CDSUniTransp.Open;

  CDSHojaCab.Close;
  CDSHojaCab.Params.ParamByName('id').Clear;
  CDSHojaCab.Open;

  CDSHojaDet.Close;
  CDSHojaDet.Params.ParamByName('id_cab').Clear;
  CDSHojaDet.Open;

  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('suc').Value:= -1;
  CDSComprobantes.Open;


  lvComprobantes.Clear;
  CDSComprobantes.First;
  while not(CDSComprobantes.Eof) DO
    begin
      Lista:=lvComprobantes.Items.Add;
      Lista.Checked := CDSComprobantesFILTRO_COMPROBANTES.AsString='S';
      Lista.SubItems.Add(CDSComprobantesID_COMPROBANTE.AsString);
      Lista.SubItems.Add(CDSComprobantesTIPO_COMPROB.AsString);
      Lista.SubItems.Add(CDSComprobantesCLASE_COMPROB.AsString);
      Lista.SubItems.Add(CDSComprobantesDENOMINACION.AsString);
      Lista.SubItems.Add(CDSComprobantesMUESTRASUCURSAL.AsString);

      CDSComprobantes.Next;
    end;
  Tabla:='HojaCarga_cab';
  Campo:='Id';

  pnAvisoCargaMax.Visible:=False;

  ListaDireccion:=TStringList.Create;
  TMSFNCGeocoding1.APIKey := DMMain_FD.GetApiKeyGoogle;
 // Hasta.Date:=Date;

end;

procedure TFormHojaDeCarga.FormDestroy(Sender: TObject);
var i:Integer;
begin
  inherited;
  if Assigned(ListaDireccion) and (ListaDireccion.Count>0) then
  begin
    for I := 0 to ListaDireccion.Count - 1 do
      ListaDireccion.Objects[I].Free;
    FreeAndNil(ListaDireccion);
  end;
  FormHojaDeCarga:=nil;
end;

procedure TFormHojaDeCarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) AND
     (NOT (ActiveControl IS TEdit)) AND
     (NOT (ActiveControl IS TJvDBFindEdit )) Then
    inherited;

end;


procedure TFormHojaDeCarga.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date  := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date  := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date  := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
  desde.date  := Date;
  Hasta.Date  := Date;
  //btSearch.Click;
  BuscarCpbtes.Execute;
  //Desde.SetFocus;
end;

procedure TFormHojaDeCarga.frxReporteClosePreview(Sender: TObject);
begin
  inherited;
  CDSResumenDetalle.Close;
end;

procedure TFormHojaDeCarga.frxReportePreview(Sender: TObject);
begin
  inherited;
  ResumenDetalle;
end;

procedure TFormHojaDeCarga.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  BuscarCpbtes.Execute;
end;

procedure TFormHojaDeCarga.HastaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    BuscarCpbtes.Execute;
end;

procedure TFormHojaDeCarga.Impresion21Click(Sender: TObject);
begin
  inherited;
  CDSHojaDet.IndexFieldNames         :='NOMBRE';
  CDSDetalles.IndexFieldNames        :='DETALLE';
  CDSResumenDetalle.IndexFieldNames  :='DETALLE';

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;

  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\HojaCarga_2.fr3');
  frxReporte.Variables['Responsable']:=''''+dbeMuestraVendedor.Text+'''';
  frxReporte.Variables['Zona']       :=''''+cbZona.Text+'''';
  frxReporte.Variables['TRANSPORTE'] :=''''+cbTransporte.Text+'''';

  frxReporte.ShowReport;

end;

procedure TFormHojaDeCarga.ImprimirAgrupadoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormImpresionHojaCargaAgrupada)) then
    FormImpresionHojaCargaAgrupada := TFormImpresionHojaCargaAgrupada.Create(Self);
  FormImpresionHojaCargaAgrupada.ShowModal;
end;

procedure TFormHojaDeCarga.ResumenDetalle;
begin
  CDSResumenDetalle.Close;
  if chImprimeStock.Checked then
    DSPResumenDetalle.DataSet :=  QResumenDetalleStock
  else
    DSPResumenDetalle.DataSet :=  QResumenDetalleCpbtes;

  CDSResumenDetalle.Close;
  CDSResumenDetalle.ParamByName('id').Value   :=  DSBase.DataSet.FieldByName('ID').AsInteger;
  CDSResumenDetalle.Open;

end;

procedure TFormHojaDeCarga.ImprimirExecute(Sender: TObject);
begin
  inherited;
  CDSHojaDet.IndexFieldNames         :='NOMBRE';
  case rgOrdenDetalleArti.ItemIndex of
    0:CDSResumenDetalle.IndexFieldNames  :='CODIGOARTICULO';
    1:CDSResumenDetalle.IndexFieldNames  :='DETALLE';
  end;

  case rgOrden.ItemIndex of
    0:CDSHojaDet.IndexFieldNames:='ID';
    1:CDSHojaDet.IndexFieldNames:='TIPOCPBTE;NROCPBTE';
    2:CDSHojaDet.IndexFieldNames:='NOMBRE';
  end;


  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;

  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\HojaCarga.fr3');
  frxReporte.Variables['Responsable']:= ''''+dbeMuestraVendedor.Text+'''';
  frxReporte.Variables['Zona']       := ''''+cbZona.Text+'''';
  frxReporte.Variables['TRANSPORTE'] := ''''+cbTransporte.Text+'''';

  frxReporte.ShowReport;

end;

procedure TFormHojaDeCarga.Label21Click(Sender: TObject);
var
  Col: TColor;
begin
  inherited;
  if DMMain_FD.Colores(Col) then
    colorSinDespachar.Brush.Color :=  Col;     
  dbgComprobantes.Refresh;
end;

procedure TFormHojaDeCarga.Label22Click(Sender: TObject); 
var
  Col: TColor;
begin
  inherited;
  if DMMain_FD.Colores(Col) then
    colorDespachados.Brush.Color :=  Col;   
  dbgComprobantes.Refresh;
end;

procedure TFormHojaDeCarga.lEntregadosClick(Sender: TObject);   
var
  Col: TColor;
begin
  inherited;
  if DMMain_FD.Colores(Col) then
    colorEntregados.Brush.Color :=  Col;
  dbgComprobantes.Refresh;
end;

procedure TFormHojaDeCarga.lvComprobantesClick(Sender: TObject);
begin
  inherited;
  AplicarFiltro;
end;

procedure TFormHojaDeCarga.cbTransporteClick(Sender: TObject);
begin
  inherited;
  if cbTransporte.KeyValue>-1 then lbCarga.Caption:= FormatFloat('0.00',cbTransporte.LookupSource.DataSet.FieldByName('CAPACIDAD').AsFloat)
  else
  lbCarga.Caption:= FormatFloat('0.00',0);

end;

procedure TFormHojaDeCarga.rgOrdenClick(Sender: TObject);
begin
  inherited;
  case rgOrden.ItemIndex of
    0:CDSHojaDet.IndexFieldNames:='ID';
    1:CDSHojaDet.IndexFieldNames:='TIPOCPBTE;NROCPBTE';
    2:CDSHojaDet.IndexFieldNames:='NOMBRE';
  end;
end;

procedure TFormHojaDeCarga.RecuperarExecute(Sender: TObject);
begin
  inherited;
  pnAvisoCargaMax.Visible:=False;

  CDSDetalles.MasterSource    :=nil;
  CDSDetalles.MasterFields    :='';
  CDSDetalles.IndexFieldNames :='';

  CDSHojaCab.Close;
  CDSHojaCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSHojaCab.Open;

  CDSHojaDet.Close;
  CDSHojaDet.Params.ParamByName('id_cab').Value:=StrToInt(DatoNew);
  CDSHojaDet.Open;

  CDSDetalles.Close;
  CDSDetalles.Params.ParamByName('id').Value  := StrToInt(DatoNew);
  CDSDetalles.Open;
  if Not(CDSDetalles.IsEmpty) then
    begin
      CDSDetalles.First;
      CDSDetalles.Delete;
    end;

  CDSCompVta.Close;
  CDSCompVta.Params.ParamByName('Desde').Clear;
  CDSCompVta.Params.ParamByName('Hasta').Clear;
  CDSCompVta.Params.ParamByName('Sucursal').Clear;
  CDSCompVta.Open;

  if Not(CDSDetalles.IsEmpty) then
    begin
      CDSDetalles.MasterSource    :=DSHojaDet;
      CDSDetalles.IndexFieldNames :='ID_CABFAC';
      CDSDetalles.MasterFields    :='ID_CPBTE';
    end;

  SumarPeso;
  CheckCarga;

  dbgDetalle.Width      := dbgDetalle.Width+1;
  dbgDetalle.Width      := dbgDetalle.Width-1;

  dbgComprobantes.Width := dbgComprobantes.Width+1;
  dbgComprobantes.Width := dbgComprobantes.Width-1;

end;

procedure TFormHojaDeCarga.RefrescarDireccionExecute(Sender: TObject);
begin
  inherited;
  begin
    CDSHojaDet.Edit;
    CDSHojaDetDIRECCION_AMPLIADA.AsString := DMMain_FD.GetLdrDireccionPlus(CDSHojaDetCODIGO.AsString,0);
    CDSHojaDet.Post;
  END;
end;

procedure TFormHojaDeCarga.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormHojaDeCarga.spCerrarClick(Sender: TObject);
begin
  inherited;
  pnComprobantes.Visible:=False;
end;

procedure TFormHojaDeCarga.spFiltroAllClick(Sender: TObject);
var
  i: Integer;
  Estado:Boolean;
begin
  inherited;
  Estado:=lvComprobantes.Items[0].Checked;
  for i := 0 to lvComprobantes.Items.Count - 1 do
    lvComprobantes.Items[i].Checked:=Not(Estado);

  AplicarFiltro;

end;

procedure TFormHojaDeCarga.spFiltroCpbteClick(Sender: TObject);
begin
  inherited;
  pnComprobantes.Visible:=Not(pnComprobantes.Visible);
end;

procedure TFormHojaDeCarga.SumarPeso;
var CDSClone:TClientDataSet;
PesoActual : Extended;
CargaMax   : Extended;
begin

   if CDSHojaCab<>nil then
     begin
       if cbTransporte.KeyValue>-1 then
         lbCarga.Caption:= FormatFloat('0.00',cbTransporte.LookupSource.DataSet.FieldByName('CAPACIDAD').AsFloat)
       else
         lbCarga.Caption:= FormatFloat('0.00',0);
       PesoActual:=0;
       CDSClone:=TClientDataSet.Create(self);
       CDSClone.CloneCursor(CDSHojaDet,True);
       CDSClone.First;
       while not(CDSClone.Eof) do
         begin
           QSumaCantidad.Close;
           QSumaCantidad.ParamByName('id').Value  := CDSClone.FieldByName('ID_CPBTE').Value;
           QSumaCantidad.ParamByName('Tipo').Value:= CDSClone.FieldByName('TIPOCPBTE').Value;
           QSumaCantidad.Open;
           PesoActual := PesoActual + QSumaCantidad.Fields[0].AsFloat;
           CDSClone.Next;
         end;
       edPeso.Value  := PesoActual;
       CargaMax      := CDSTransCAPACIDAD.Value;

       pnAvisoCargaMax.Visible:=False;

       if CDSHojaCabID_TRANSPORTE.Value<=0 then CargaMax:=0;

       if (PesoActual>CargaMax) and (CargaMax>0) then
         begin
           edPeso.DisabledTextColor := clRed;
           pnAvisoCargaMax.Visible  := True;
         end
       else
         if (PesoActual<=CargaMax) and (CargaMax>0) then
           begin
             edPeso.DisabledTextColor := clGreen;
             pnAvisoCargaMax.Visible  := False;
           end
         else
           if (CargaMax<=0) then
             edPeso.DisabledTextColor:=clBlack;

       CDSClone.Close;

       FreeAndNil(CDSClone);
     end;
end;

procedure TFormHojaDeCarga.SumarPesoCpbtes;
var
CDSClone:TClientDataSet;
PesoActual : Extended;
CargaMax   : Extended;
begin
  if CDSCompVta<>nil then
   begin
     PesoActual:=0;
     CDSClone:=TClientDataSet.Create(self);
     CDSClone.CloneCursor(CDSCompVta,False);
     CDSClone.First;
     while not(CDSClone.Eof) do
       begin
         QSumaCantidad.Close;
         QSumaCantidad.ParamByName('id').Value  := CDSClone.FieldByName('ID_FC').Value;
         QSumaCantidad.ParamByName('Tipo').Value:= CDSClone.FieldByName('TIPOCPBTE').Value;
         QSumaCantidad.Open;
         PesoActual := PesoActual + QSumaCantidad.Fields[0].AsFloat;
         CDSClone.Next;
       end;
     ePesoCpbtes.Value  := PesoActual;

     CDSClone.Close;
     FreeAndNil(CDSClone);
   end;
end;


function TFormHojaDeCarga.dbgDetalleCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field = CDSHojaDetENTREGADO;
  StringForTrue  := 'S';
  StringForFalse := 'N';

end;

procedure TFormHojaDeCarga.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (CDSHojaDetTIPOCPBTE.AsString='FC') or
     (CDSHojaDetTIPOCPBTE.AsString='NC') or
     (CDSHojaDetTIPOCPBTE.AsString='ND') Then
    begin
       IF NOT (Assigned(FormCpbte_2)) THEN
              FormCpbte_2    := TFormCpbte_2.Create(self);
            FormCpbte_2.DatoNew   := CDSHojaDetID_CPBTE.AsString;
            FormCpbte_2.TipoCpbte := CDSHojaDetTIPOCPBTE.Value;
            FormCpbte_2.Recuperar.Execute;
            FormCpbte_2.Show;
       end
   else
    if (CDSHojaDetTIPOCPBTE.AsString='FO') Then
    begin
       IF NOT (Assigned(FormCpbteCtdo_2)) THEN
              FormCpbteCtdo_2    := TFormCpbteCtdo_2.Create(self);
            FormCpbteCtdo_2.DatoNew   := CDSHojaDetID_CPBTE.AsString;
            FormCpbteCtdo_2.TipoCpbte := CDSHojaDetTIPOCPBTE.Value;
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
       end
  else
    if (CDSHojaDetTIPOCPBTE.AsString='RE') Then
    begin
       IF NOT (Assigned(FormRemitos)) THEN
              FormRemitos    := TFormRemitos.Create(self);
            FormRemitos.DatoNew   := CDSHojaDetID_CPBTE.AsString;
            FormRemitos.TipoCpbte := CDSHojaDetTIPOCPBTE.Value;
            FormRemitos.Recuperar.Execute;
            FormRemitos.Show;
       end;

end;

procedure TFormHojaDeCarga.dbgDetalleDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  if Source = dbgComprobantes then
    begin
      AsignarCpbtes;
      (dbgDetalle.DataSource.DataSet  as TClientDataSet).IndexFieldNames  :=  'NROCPBTE';
      SumarPesoCpbtes;
    end;
end;

procedure TFormHojaDeCarga.dbgDetalleDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  IF Source = dbgComprobantes THEN
    accept := True
  ELSE
    Accept := False;
end;

procedure TFormHojaDeCarga.dbgDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=vk_f6 then
    begin
      Modificar.execute;
      refrescardireccion.execute;
      Confirma.execute;
    end;
end;

procedure TFormHojaDeCarga.dbgDetalleTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
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

procedure TFormHojaDeCarga.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  dbgComprobantes.Refresh;
end;

procedure TFormHojaDeCarga.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled   :=True;
  dbgDetalle.ReadOnly   :=DSBase.State=dsBrowse;
  dbcResponsable.Enabled:=Not(DSBase.State=dsBrowse);
  dbeFecha.Enabled      :=Not(DSBase.State=dsBrowse);
  edNotas.Enabled       :=Not(DSBase.State=dsBrowse);
  cbZona.Enabled        :=Not(DSBase.State=dsBrowse);
  DBNavigator1.Enabled  :=DSBase.State<>dsBrowse;
  cbTransporte.Enabled  :=Not(DSBase.State=dsBrowse);
  Imprimir.Enabled      :=(DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
end;

procedure TFormHojaDeCarga.EdBuscadorChange(Sender: TObject);
var Aux:String;
begin
  if Trim(EdBuscador.Text)<>'' then
    begin
      Aux:=Copy('00000000',1,8-(Length(Trim(EdBuscador.Text))))+Trim(EdBuscador.Text);
      CDSCompVta.Locate('NUMERO',Trim(Aux),[loPartialKey]);
    end;
end;

procedure TFormHojaDeCarga.EdBuscadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if key=VK_RETURN then
    begin
      key:=0;
      dbgComprobantesDblClick(Sender);
      EdBuscador.Text:='';
      EdBuscador.SetFocus;
    end
  ELSE
    if (key=VK_UP) and (Not(CDSCompVta.IsEmpty)) then
       cdscOMPvTA.Prior
    ELSE
      if (key=VK_DOWN) and (Not(CDSCompVta.IsEmpty)) then
         cdscOMPvTA.Next

  
end;

procedure TFormHojaDeCarga.edFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_RETURN then
    begin
      key:=0;
      if Not(CDSCompVta.IsEmpty) then
        begin
          dbgComprobantesDblClick(Sender);
          edFind.Text:='';
        end;
       edFind.SetFocus;
    end
end;

procedure TFormHojaDeCarga.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
  if chbporDia.Checked=False then
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
    end
  else
    if chbporDia.Checked=True then
      begin
        if Button=btnext Then
          Desde.Date := IncDay(Desde.Date,(1))
        else
          if Button=btPrev Then
            Desde.Date := IncDay(Desde.Date,(-1));
        Hasta.Date:=desde.Date;
      end;

  BuscarCpbtes.Execute;

end;

////////////// Rutinas para el Mapeo y rutas ///////////////////////////////////


procedure TFormHojaDeCarga.TMSFNCGeocoding1GetGeocodingResult(
  Sender: TObject; const AResult: TTMSFNCGeocodingRequest);
var
  Obj: TDireccionObj;
  CurrentIdx: Integer;
begin
  CurrentIdx := FIdx;

  if (AResult.ErrorMessage = '') and (AResult.Items.Count > 0) then
  begin
    if CurrentIdx < ListaDireccion.Count then
    begin
      Obj := TDireccionObj(ListaDireccion.Objects[CurrentIdx]);
      if Assigned(Obj) then
      begin
        Obj.Lat := AResult.Items[0].Coordinate.Latitude;
        Obj.Lng := AResult.Items[0].Coordinate.Longitude;
      end;
    end;
  end;

  Inc(FIdx);
  if FIdx >= ListaDireccion.Count then
    GeocodingFinalizado
  else
    GeocodificarSiguiente;
end;

procedure TFormHojaDeCarga.GeocodificarSiguiente;
var
  Q: string;
  Obj: TDireccionObj;
  CurrentIdx: Integer;
begin
  if FIdx >= ListaDireccion.Count then
  begin
    GeocodingFinalizado;
    Exit;
  end;

  CurrentIdx := FIdx;
  Obj := TDireccionObj(ListaDireccion.Objects[CurrentIdx]);
  if not Assigned(Obj) then
  begin
    Inc(FIdx);
    GeocodificarSiguiente;
    Exit;
  end;

  Q := NormalizarDir(Obj.Direccion);
  if Trim(Q) = '' then
  begin
    Inc(FIdx);
    GeocodificarSiguiente;
    Exit;
  end;

  TMSFNCGeocoding1.GetGeocoding(Q,
    procedure(const ARequest: TTMSFNCGeocodingRequest;
              const ARequestResult: TTMSFNCCloudBaseRequestResult)
    var
      TargetObj: TDireccionObj;
    begin
      if CurrentIdx < ListaDireccion.Count then
      begin
        TargetObj := TDireccionObj(ListaDireccion.Objects[CurrentIdx]);
        if Assigned(TargetObj) and (ARequest.ErrorMessage = '') and (ARequest.Items.Count > 0) then
        begin
          TargetObj.Lat := ARequest.Items[0].Coordinate.Latitude;
          TargetObj.Lng := ARequest.Items[0].Coordinate.Longitude;
        end;
      end;

      Inc(FIdx);
      if FIdx >= ListaDireccion.Count then
        GeocodingFinalizado
      else
        GeocodificarSiguiente;
    end
  );
end;

function TFormHojaDeCarga.NormalizarDir(const S: string): string;
begin
  Result := Trim(S);
  if (Result <> '') and (Pos('NN', Result) <> 0) then
    Result := StringReplace(Result,'NN','Mar del Plata',[rfReplaceAll]);

  if (Result <> '') and (Pos('Argentina', Result) = 0) then
    Result := Result + ' Argentina';
end;

procedure TFormHojaDeCarga.IniciarGeo;
begin
  if (ListaDireccion = nil) or (ListaDireccion.Count = 0) then
  begin
    ShowMessage('No hay direcciones para geocodificar.');
    Exit;
  end;
  FIdx     := 0;
  FGeoDone := False;
  GeocodificarSiguiente;
end;

procedure TFormHojaDeCarga.LlenarListaDesdeCDS;
var
  Obj: TDireccionObj;
  Bmk: TBookmark;
begin
  if Assigned(ListaDireccion) then
  begin
    while ListaDireccion.Count > 0 do
    begin
      ListaDireccion.Objects[0].Free;
      ListaDireccion.Delete(0);
    end;
  end
  else
    ListaDireccion := TStringList.Create;

  Bmk := CDSHojaDet.GetBookmark;
  try
    CDSHojaDet.DisableControls;
    CDSHojaDet.First;

    Obj           := TDireccionObj.Create;
    Obj.Id        := 0;
    Obj.Cliente   := 'Depósito Central';
    Obj.Direccion := DMMain_FD.GetDireccionEmpresa;// 'Av. Ejemplo 123, Mar del Plata';
    Obj.Lat       := 0;// -38.0;
    Obj.Lng       := 0;//-57.55;
    ListaDireccion.AddObject(IntToStr(Obj.Id), Obj);


    while not CDSHojaDet.Eof do
    begin
      Obj           := TDireccionObj.Create;
      Obj.Id        := CDSHojaDetID.AsInteger;
      Obj.Cliente   := CDSHojaDetNOMBRE.AsString;
      Obj.Direccion := CDSHojaDetDIRECCION_AMPLIADA.AsString;
      Obj.Lat       := 0;
      Obj.Lng       := 0;
      ListaDireccion.AddObject(IntToStr(Obj.Id), Obj);
      CDSHojaDet.Next;
    end;
  finally
    CDSHojaDet.GotoBookmark(Bmk);
    CDSHojaDet.FreeBookmark(Bmk);
    CDSHojaDet.EnableControls;
  end;
end;

procedure TFormHojaDeCarga.GeocodingFinalizado;
begin
  if FGeoDone then Exit; // evitar doble ejecución
    FGeoDone := True;

  if ListaDireccion.Count > 0 then
    begin
      if not Assigned(FormMapaHojaCarga) then
        FormMapaHojaCarga := TFormMapaHojaCarga.Create(Self);
      FormMapaHojaCarga.LstDirecciones := ListaDireccion;
      FormMapaHojaCarga.ShowModal;
    end;

end;

procedure TFormHojaDeCarga.VerMapaExecute(Sender: TObject);
begin
  LlenarListaDesdeCDS;
  IniciarGeo; // el mapa se abrirá en GeocodingFinalizado
end;

/////////////////////////////////////////////////////////////////////////////

end.
