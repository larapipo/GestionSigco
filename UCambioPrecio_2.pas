unit UCambioPrecio_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, StdCtrls, Db, DBClient, Provider,
  ActnList, Buttons, ToolWin, JvComponentBase, ImgList,Variants,
  ComCtrls, JvExControls, JvGradient, ExtCtrls, JvExStdCtrls, JvEdit,
  JvDBSearchEdit, JvCombobox, JvDBSearchComboBox, DBGrids, JvLabel,
  JvDBControls, JvExDBGrids, JvDBGrid, CheckLst, Menus, JvDBLookup,IniFiles,
  JvDBGridExport, DataExport, DataToXLS, System.Actions, JvAppStorage,
  JvAppIniStorage, cxGraphics, cxControls, cxLookAndFeels,Math,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,DBXCommon,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,System.Types,
  cxCheckBox, Data.FMTBcd, frxClass, frxDBSet, Data.SqlExpr, JvBaseEdits,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, JvFormPlacement,
  CompBuscador,VirtualUI_SDK, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.DBCtrls, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl, VCL.TMSFNCProgressBar,
  dxSkinWXI, frCoreClasses;

type
  TFormCambioPrecio_2 = class(TFormABMBase)
    DSPConsultaStock: TDataSetProvider;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DSRubro: TDataSource;
    DSMarca: TDataSource;
    DSSubRubro: TDataSource;
    CDSConsultaStock: TClientDataSet;
    CDSConsultaStockNuevoFPExento: TFloatField;
    CDSConsultaStockNuevoFPGravado: TFloatField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    img1: TImage;
    pnColumnas: TPanel;
    chklstColumnas: TCheckListBox;
    pm1: TPopupMenu;
    Culumnas1: TMenuItem;
    DSListaPrecioCab: TDataSource;
    ControlVisualColumnas: TAction;
    CalculaPrecioVta: TAction;
    pnCabecera: TPanel;
    dbcListas: TJvDBLookupCombo;
    Label4: TLabel;
    dbcMarca: TJvDBLookupCombo;
    dbcRubro: TJvDBLookupCombo;
    dbcSubRubro: TJvDBLookupCombo;
    CDSListaPrecioCab: TClientDataSet;
    DSPListaPrecioCab: TDataSetProvider;
    CDSListaPrecioCabID: TIntegerField;
    CDSListaPrecioCabNOMBRE: TStringField;
    CDSConsultaStockCODIGO_STK: TStringField;
    CDSConsultaStockDETALLE_STK: TStringField;
    CDSConsultaStockMARCA_STK: TStringField;
    CDSConsultaStockRUBRO_STK: TStringField;
    CDSConsultaStockSUBRUBRO_STK: TStringField;
    CDSConsultaStockMODO_GRAVAMEN: TStringField;
    CDSListaArt: TClientDataSet;
    CDSListaArtID: TIntegerField;
    CDSListaArtID_CAB: TIntegerField;
    CDSListaArtCODIGOARTICULO: TStringField;
    DSPListaArt: TDataSetProvider;
    CambioCodigo: TAction;
    dbfDetalle: TJvDBFindEdit;
    chbFiltra: TCheckBox;
    chbModo: TCheckBox;
    JvGradient3: TJvGradient;
    DSPLstMarca: TDataSetProvider;
    CDSLstMarca: TClientDataSet;
    DSLstMarca: TDataSource;
    CDSLstMarcaMARCA_STK: TStringField;
    CDSLstMarcaDESCRIPCION_MARCA: TStringField;
    CDSConsultaStockMUESTRAMARCA: TStringField;
    chConIVA: TCheckBox;
    edFactor: TJvCalcEdit;
    spMultiplicar: TSpeedButton;
    DSMoneda: TDataSource;
    dbcMoneda: TJvDBLookupCombo;
    chActulizaPrecioVtaOtrasListas: TCheckBox;
    chSincronizaPrecioNetoCosto: TCheckBox;
    CDSConsultaStockMONEDA: TIntegerField;
    CDSConsultaStockMUESTRAMONEDA: TStringField;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    CDSListaArtFECHA: TSQLTimeStampField;
    frxReport: TfrxReport;
    frDBStock: TfrxDBDataset;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    rgAplicaCoef: TRadioGroup;
    ExportarXLS: TAction;
    btExcel: TBitBtn;
    SaveDialog1: TSaveDialog;
    DataToXLS1: TDataToXLS;
    CDSConsultaStockREEMPLAZO_STK: TStringField;
    JvDBFindEdit1: TJvDBFindEdit;
    Label5: TLabel;
    lbAvisoPrecio: TLabel;
    cxGConsultaDBTableView1: TcxGridDBTableView;
    cxGConsultaLevel1: TcxGridLevel;
    cxGConsulta: TcxGrid;
    cxGConsultaDBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGConsultaDBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGConsultaDBTableView1RECARGO: TcxGridDBColumn;
    cxGConsultaDBTableView1TASA: TcxGridDBColumn;
    cxGConsultaDBTableView1NuevoFPExento: TcxGridDBColumn;
    cxGConsultaDBTableView1NuevoFPGravado: TcxGridDBColumn;
    cxGConsultaDBTableView1MUESTRAMARCA: TcxGridDBColumn;
    cxGConsultaDBTableView1MUESTRAMONEDA: TcxGridDBColumn;
    cxGConsultaDBTableView1FIJACION_PRECIO_GRAVADO: TcxGridDBColumn;
    cxGConsultaDBTableView1FIJACION_PRECIO_EXENTO: TcxGridDBColumn;
    cxGConsultaDBTableView1PRECIO_GRAVADO: TcxGridDBColumn;
    cxGConsultaDBTableView1PRECIO_EXENTO: TcxGridDBColumn;
    cxGConsultaDBTableView1IVA_IMPORTE: TcxGridDBColumn;
    cxGConsultaDBTableView1PRECIO: TcxGridDBColumn;
    CDSConsultaStockMODIFICADO: TBooleanField;
    cxGConsultaDBTableView1MOD: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxGConsultaDBTableView1REEMPLAZO_STK: TcxGridDBColumn;
    QMoneda_: TFDQuery;
    QConsultaStock: TFDQuery;
    CDSConsultaStockRECARGO: TFloatField;
    CDSConsultaStockPRECIO_EXENTO: TFloatField;
    CDSConsultaStockPRECIO_GRAVADO: TFloatField;
    CDSConsultaStockPRECIO: TFloatField;
    CDSConsultaStockCOSTO_GRAVADO_STK: TFloatField;
    CDSConsultaStockCOSTO_EXENTO_STK: TFloatField;
    CDSConsultaStockCOSTO_IVA: TFloatField;
    CDSConsultaStockFIJACION_PRECIO_IVA: TFloatField;
    CDSConsultaStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSConsultaStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSConsultaStockIVA_IMPORTE: TFloatField;
    CDSConsultaStockTASA: TFloatField;
    CDSConsultaStockCOSTO_GRAVADO: TFloatField;
    CDSConsultaStockCOSTO_EXENTO: TFloatField;
    CDSConsultaStockCOSTO_TOTAL: TFloatField;
    CDSConsultaStockSIGNO: TStringField;
    QListaPrecioPorDefectoFD: TFDQuery;
    QListaPrecioPorDefectoFDID: TIntegerField;
    QListaPrecioPorDefectoFDF_PAGO: TIntegerField;
    QRubro_: TFDQuery;
    QMarca_: TFDQuery;
    QSubRubro_: TFDQuery;
    JvDBFindEdit2: TJvDBFindEdit;
    Label8: TLabel;
    QCambiaMonedaFD: TFDQuery;
    QCambiaMarcaFD: TFDQuery;
    QListArt: TFDQuery;
    QListArtID: TIntegerField;
    QListArtID_CAB: TIntegerField;
    QListArtCODIGOARTICULO: TStringField;
    QListArtCOSTO_GRAVADO: TFloatField;
    QListArtCOSTO_EXENTO: TFloatField;
    QListArtCOSTO_TOTAL: TFloatField;
    QListArtIVA_TASA: TFloatField;
    QListArtRECARGO: TFloatField;
    QListArtPRECIO_GRAVADO: TFloatField;
    QListArtIVA_IMPORTE: TFloatField;
    QListArtPRECIO_EXENTO: TFloatField;
    QListArtPRECIO: TFloatField;
    QListArtFECHA: TSQLTimeStampField;
    CDSListaArtPRECIO: TFloatField;
    CDSListaArtRECARGO: TFloatField;
    CDSListaArtCOSTO_GRAVADO: TFloatField;
    CDSListaArtCOSTO_EXENTO: TFloatField;
    CDSListaArtCOSTO_TOTAL: TFloatField;
    CDSListaArtIVA_TASA: TFloatField;
    CDSListaArtPRECIO_GRAVADO: TFloatField;
    CDSListaArtIVA_IMPORTE: TFloatField;
    CDSListaArtPRECIO_EXENTO: TFloatField;
    edDesde: TEdit;
    edHasta: TEdit;
    Label9: TLabel;
    chbRangoCodigo: TCheckBox;
    spCambiaPrecioFD: TFDStoredProc;
    spInformaCambioPrecioFD: TFDStoredProc;
    rgAplicaPrecioFijo: TRadioGroup;
    edPrecioFijo: TJvCalcEdit;
    spPrecioFijo: TSpeedButton;
    spDividir: TSpeedButton;
    CDSRubro: TClientDataSet;
    DSPRubro: TDataSetProvider;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSRubroCONTROL_RUBRO: TStringField;
    CDSRubroFUERA_PROMO: TStringField;
    CDSRubroORDEN: TIntegerField;
    DSPSubRub: TDataSetProvider;
    CDSSubRub: TClientDataSet;
    DSPMarca: TDataSetProvider;
    CDSMarca: TClientDataSet;
    CDSSubRubCODIGO_SUBRUBRO: TStringField;
    CDSSubRubDETALLE_SUBRUBRO: TStringField;
    CDSSubRubCODIGO_RUBRO: TStringField;
    CDSMarcaMARCA_STK: TStringField;
    CDSMarcaDESCRIPCION_MARCA: TStringField;
    CDSMarcaOBSERVACION_MARCA: TStringField;
    DSPMoneda: TDataSetProvider;
    CDSMoneda: TClientDataSet;
    CDSMonedaID: TIntegerField;
    CDSMonedaMONEDA: TStringField;
    CDSMonedaCOTIZACION: TFloatField;
    CDSMonedaSIGNO: TStringField;
    CDSMonedaORDEN: TSmallintField;
    CDSMonedaCOTIZACION_COMPRA: TFloatField;
    CDSConsultaStockACTUALIZA_EXCEPCION: TStringField;
    Label10: TLabel;
    DBText1: TDBText;
    CDSListaPrecioCabACTUALIZA_EXCEPCION: TStringField;
    CDSListaPrecioCabMUESTRAACTUALIZA: TStringField;
    CDSConsultaStockMUESTRACODIGOBARRA: TStringField;
    CDSConsultaStockMUESTRAPRECIOVTA: TFloatField;
    CDSConsultaStockCANTIDAD: TIntegerField;
    N1: TMenuItem;
    ImprimirEtiquetas: TAction;
    ImprimirEtiquetas1: TMenuItem;
    CDSConsultaStockDETALLE: TStringField;
    CDSConsultaStockCODIGOARTICULO: TStringField;
    DBText2: TDBText;
    CDSConsultaStockSTOCKFISICO: TFloatField;
    chConStock: TCheckBox;
    Redondear_05: TAction;
    pbRedondeo: TTMSFNCProgressBar;
    N2: TMenuItem;
    Redondear_0: TAction;
    Redondear0decimales1: TMenuItem;
    Redondear2decimales1: TMenuItem;
    dbcProveedores: TJvDBLookupCombo;
    Label11: TLabel;
    QProveedores_Marca: TFDQuery;
    DSProveedores_Marca: TDataSource;
    QMarcas_Proveedor: TFDQuery;
    AplicarMarcas: TAction;
    N3: TMenuItem;
    AplicarMarcas1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSConsultaStockAfterInsert(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure dbcRubroClick(Sender: TObject);
    procedure Culumnas1Click(Sender: TObject);
    procedure ControlVisualColumnasExecute(Sender: TObject);
    procedure chklstColumnasClickCheck(Sender: TObject);
    procedure CDSConsultaStockRECARGOSetText(Sender: TField;
      const Text: string);
    procedure CDSConsultaStockNuevoFPGravadoSetText(Sender: TField;
      const Text: string);
    procedure CDSConsultaStockNuevoFPExentoSetText(Sender: TField;
      const Text: string);
    procedure CalculaPrecioVtaExecute(Sender: TObject);
    procedure CDSConsultaStockPRECIOSetText(Sender: TField; const Text: string);
    procedure CambioCodigoExecute(Sender: TObject);
    procedure chbModoClick(Sender: TObject);
    procedure spMultiplicarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure frxReportBeforePrint(Sender: TfrxReportComponent);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure CDSListaArtPRECIOSetText(Sender: TField; const Text: string);
    procedure cxGConsultaDBTableView1DblClick(Sender: TObject);
    procedure cxGConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGConsultaDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure CDSConsultaStockBeforePost(DataSet: TDataSet);
    procedure lbAvisoPrecioClick(Sender: TObject);
    procedure chbRangoCodigoClick(Sender: TObject);
    procedure edDesdeExit(Sender: TObject);
    procedure edHastaExit(Sender: TObject);
    procedure dbfDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSConsultaStockAfterScroll(DataSet: TDataSet);
    procedure spPrecioFijoClick(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure IniciaConsulta;
    procedure CDSListaPrecioCabCalcFields(DataSet: TDataSet);
    procedure ImprimirEtiquetasExecute(Sender: TObject);
    procedure CDSConsultaStockCalcFields(DataSet: TDataSet);
    procedure chConStockClick(Sender: TObject);
    procedure Redondear_05Execute(Sender: TObject);
    procedure Redondear_0Execute(Sender: TObject);
    procedure dbcProveedoresClick(Sender: TObject);
    procedure AplicarMarcasExecute(Sender: TObject);
  private
    procedure Redondear(Presicion: Integer);
    procedure FinRedondeo(Sender: TObject);
    { Private declarations }
  public
    CambioPrecio        :TIniFile;
    ColumnasVisble      :String;
    TipoCta:String;
    Hubocambios         :Boolean;
    Cancelar:Boolean; 
    { Public declarations }
  end;

var
  FormCambioPrecio_2: TFormCambioPrecio_2;

implementation

uses  UDMain_FD, UStock_2, UCambioCodigoStock, UEtiquetas_Compra;

{$R *.DFM}

procedure TFormCambioPrecio_2.FinRedondeo(Sender:TObject);
begin
  pbRedondeo.Value   := 0;
  cxGConsultaDBTableView1.EndUpdate;
  cxGConsultaDBTableView1.DataController.EndFullUpdate;
  cxGConsultaDBTableView1.DataController.Refresh;
  Screen.Cursor:=crDefault;
end;


procedure TFormCambioPrecio_2.Redondear(Presicion:Integer);
var Valor  : String;
    Precio : Real;
    T:TThread;
begin
    begin
      pbRedondeo.Minimum := 0;
      pbRedondeo.Maximum := CDSConsultaStock.RecordCount-1;
      pbRedondeo.Value   := 0;
      cxGConsultaDBTableView1.DataController.BeginFullUpdate;
      cxGConsultaDBTableView1.BeginUpdate;
      Screen.Cursor:=crHourGlass;
      t:=TThread.CreateAnonymousThread(
        procedure
          var Valor  : String;
              Precio : Real;
        begin
          CDSConsultaStock.First;
          CDSConsultaStock.DisableControls;
          while not (CDSConsultaStock.Eof)  do
            begin
              T.Synchronize(nil,
              procedure
                begin
                  pbRedondeo.Value:=pbRedondeo.Value+1;
                  Application.ProcessMessages;
                end);
              CDSConsultaStock.Edit;
              Precio :=CDSConsultaStockPRECIO.AsFloat;
              Valor  :=FloatToStr(DMMain_FD.Redondeo(Precio,Presicion));
              CDSConsultaStockPRECIOSetText(CDSConsultaStockPRECIO,Valor);
              CDSConsultaStock.Next;
            end;
          CDSConsultaStock.First;
          CDSConsultaStock.EnableControls;
        end);
      t.OnTerminate:=FinRedondeo;
      t.Start;
    end

end;



procedure TFormCambioPrecio_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:Byte;
begin
  DMMain_FD.LogFileFD(1,2,'Cierre Formulario de Cambios de **** Precio Manual *****....','ACTPRECMAN');

  ColumnasVisble:='';
  for i:=0 to chklstColumnas.Items.Count-1 do
    begin
      if chklstColumnas.Checked[i] Then
        ColumnasVisble:=ColumnasVisble+'1'
      else
        ColumnasVisble:=ColumnasVisble+'0'
    end;
  if DMMain_FD.UsuarioActivo<>'' Then
    CambioPrecio := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_CambioPrecio.ini')
  else
    CambioPrecio := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_CambioPrecio.ini');
 //*************************************************************
  CambioPrecio.WriteString('Dato', 'Dato', ColumnasVisble);
  CambioPrecio.WriteBool('Precios','sincroniza', chSincronizaPrecioNetoCosto.Checked );
  CambioPrecio.WriteBool('Precios','listas', chActulizaPrecioVtaOtrasListas.Checked);
  CDSMoneda.Close;
  CambioPrecio.Free;
  Action:=caFree;

  inherited;
end;

procedure TFormCambioPrecio_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCambioPrecio_2:=nil;
end;

procedure TFormCambioPrecio_2.FormCreate(Sender: TObject);
VAR Mascara:String;
i:Byte;
begin
//  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSMarca.Open;
  CDSRubro.Open;
  CDSSubRub.Open;
  CDSMoneda.Open;
  CDSListaPrecioCab.Close;
  CDSListaPrecioCab.Params.ParamByName('uso').Value:='*';
  CDSListaPrecioCab.OPen;
  //aplica la mascara
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='STOCK';
  DMMain_FD.QOpciones.Open;
  Mascara := DMMain_FD.QOpciones.Fields[0].AsString;
  DMMain_FD.QOpciones.Close;

  if DMMain_FD.UsuarioActivo<>'' Then
    CambioPrecio := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_CambioPrecio.ini')
  else
    CambioPrecio := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_CambioPrecio.ini');
  //*************************************************************
  ColumnasVisble                         := CambioPrecio.ReadString('Dato', 'Dato', '11111111111111111');
  chSincronizaPrecioNetoCosto.Checked    := CambioPrecio.ReadBool('Precios','sincroniza', False);
  chActulizaPrecioVtaOtrasListas.Checked := CambioPrecio.ReadBool('Precios','listas', True);
  // Forzar el cambio en todas las listas... esto no esta habilitado al user.Solo por el cambio de costo
  if chActulizaPrecioVtaOtrasListas.Checked=False then
    chActulizaPrecioVtaOtrasListas.Checked:=True;

  CambioPrecio.Free;
  //***************
  pnPrincipal.Enabled:=True;

 // Actualiza Precio Vta
  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='COSTOVTA';
  DMMain_FD.QOpciones.Open;
  DMMain_FD.ActualizaPrecioVta:=Trim(DMMain_FD.QOpciones.Fields[0].AsString[1])='S';
  DMMain_FD.QOpciones.CLose;
  //********************************************
  lbAvisoPrecio.Visible:=Not(DMMain_FD.ActualizaPrecioVta);

  for i:= 0 to cxGConsultaDBTableView1.ColumnCount -1  do
    begin
      chklstColumnas.Items.Add(cxGConsultaDBTableView1.Columns[i].Caption);
      chklstColumnas.Checked[i]:=ColumnasVisble[i+1]='1';//   True;
    end;
  ControlVisualColumnas.Execute;
  if DMMain_FD.ActualizaPrecioVta=True then
    lbAvisoPrecio.Font.Color:=clBlack else
    lbAvisoPrecio.Font.Color:=clRed;

  DMMain_FD.LogFileFD(1,0,'Apertura Cambios de Precios Manual ... Incio de Formulario....','ACTPRECMAN');
  dbcMoneda.KeyValue  :=  '$';

  QProveedores_Marca.Open;

end;

procedure TFormCambioPrecio_2.DSBaseStateChange(Sender: TObject);
begin
  pnPrincipal.Enabled:=True;
end;

procedure TFormCambioPrecio_2.edDesdeExit(Sender: TObject);
var i:Integer;
begin
  inherited;
  try
    i:=StrToInt((Sender as TEdit).Text);
    (Sender as TEdit).Text:=Copy('0000000',1,8-length(Trim((Sender as TEdit).Text)))+Trim((Sender as TEdit).Text);
  except
    (Sender as TEdit).Text:='00000000';
  end;
end;

procedure TFormCambioPrecio_2.edHastaExit(Sender: TObject);
var i:Integer;
begin
  inherited;
  try
    i:=StrToInt((Sender as TEdit).Text);
    (Sender as TEdit).Text:=Copy('0000000',1,8-length(Trim((Sender as TEdit).Text)))+Trim((Sender as TEdit).Text);
  except
    (Sender as TEdit).Text:='00000000';
  end;
end;

procedure TFormCambioPrecio_2.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSConsultaStock.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName:='CambioPreciosStock';

      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute then
        if SaveDialog1.FileName<>'' then
          begin
            if VirtualUI.Active then
              DataToXLS1.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    end;
end;

procedure TFormCambioPrecio_2.CalculaPrecioVtaExecute(Sender: TObject);
var Precio,Precio2,PrecioActual,PrecioGravadoActual,PrecioExnetoActual:Extended;
begin
  inherited;
  CDSConsultaStock.Edit;
  PrecioActual        := CDSConsultaStockPRECIO.AsFloat;
  PrecioGravadoActual := CDSConsultaStockPRECIO_GRAVADO.AsFloat;
  PrecioExnetoActual  := CDSConsultaStockPRECIO_EXENTO.AsFloat;

  if (CDSConsultaStockNuevoFPExento.Value + CDSConsultaStockNuevoFPGravado.Value)>0 then
    begin
      CDSConsultaStockPRECIO_GRAVADO.AsFloat := CDSConsultaStockNuevoFPGravado.AsFloat * (1+CDSConsultaStockRECARGO.AsFloat * 0.01);
      // se supone que tiene impuestos internos
      if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
        CDSConsultaStockPRECIO_EXENTO.AsFloat  := CDSConsultaStockNuevoFPExento.AsFloat
       else
        CDSConsultaStockPRECIO_EXENTO.AsFloat  := CDSConsultaStockNuevoFPExento.AsFloat * (1+CDSConsultaStockRECARGO.AsFloat * 0.01);

      CDSConsultaStockIVA_IMPORTE.AsFloat  := RoundTo(CDSConsultaStockPRECIO_GRAVADO.AsFloat * CDSConsultaStockTASA.AsFloat * 0.01,-4);
      CDSConsultaStockIVA_IMPORTE.AsFloat  := RoundTo(CDSConsultaStockIVA_IMPORTE.AsFloat,-3);

      CDSConsultaStockPRECIO.AsFloat       := RoundTo((CDSConsultaStockPRECIO_GRAVADO.AsFloat +
                                                       CDSConsultaStockPRECIO_EXENTO.AsFloat +
                                                       CDSConsultaStockIVA_IMPORTE.AsFloat),-3);
    end
  else
    begin
      CDSConsultaStockPRECIO_GRAVADO.AsFloat := CDSConsultaStockFIJACION_PRECIO_GRAVADO.AsFloat * (1+CDSConsultaStockRECARGO.AsFloat * 0.01);
      // si es exento y gravado es por que tiene Imp.Inte
      if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
        CDSConsultaStockPRECIO_EXENTO.AsFloat  := CDSConsultaStockFIJACION_PRECIO_EXENTO.AsFloat
      else
        CDSConsultaStockPRECIO_EXENTO.AsFloat  := CDSConsultaStockFIJACION_PRECIO_EXENTO.AsFloat * (1+CDSConsultaStockRECARGO.AsFloat * 0.01);
      CDSConsultaStockIVA_IMPORTE.AsFloat      := RoundTo(CDSConsultaStockPRECIO_GRAVADO.AsFloat * CDSConsultaStockTASA.AsFloat * 0.01,-3);

      CDSConsultaStockPRECIO.AsFloat:= RoundTo((CDSConsultaStockPRECIO_GRAVADO.AsFloat +
                                                CDSConsultaStockPRECIO_EXENTO.AsFloat +
                                                CDSConsultaStockIVA_IMPORTE.AsFloat),-3);
    end;

  if (DMMain_FD.ActualizaPrecioVta=False) and (CDSConsultaStockACTUALIZA_EXCEPCION.Value='N') then
     begin
       CDSConsultaStockPRECIO_GRAVADO.AsFloat:=PrecioGravadoActual;
       CDSConsultaStockPRECIO_EXENTO.AsFloat :=PrecioExnetoActual;
       CDSConsultaStockPRECIO.AsFloat        :=StrToFloat(FormatFloat('0.000',PrecioActual));
       if CDSConsultaStockPRECIO_GRAVADO.ASFloat>0 then
         CDSConsultaStockRECARGO.ASFLoat := (((CDSConsultaStockPRECIO_GRAVADO.ASFloat - CDSConsultaStockNuevoFPGravado.ASFLoat) / CDSConsultaStockPRECIO_GRAVADO.ASFloat) * 100)
       else
         CDSConsultaStockRECARGO.ASFLoat := 100;

       if PrecioActual>0 then

       CDSConsultaStockPRECIOSetText(CDSConsultaStockPRECIO,FormatFloat('0.00',PrecioActual));
     end;
end;

procedure TFormCambioPrecio_2.CambioCodigoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambioCodigoStock)) then
    FormCambioCodigoStock :=TFormCambioCodigoStock.Create(Self);
  FormCambioCodigoStock.CodigoNew:=CDSConsultaStockCODIGO_STK.Value;
  FormCambioCodigoStock.CodigoOld:=CDSConsultaStockCODIGO_STK.Value;
  FormCambioCodigoStock.ShowModal;
  if FormCambioCodigoStock.ModalResult=mrOk then
  begin
    CDSConsultaStock.Close;
    CDSConsultaStock.Params.ParamByName('marca').Value    := dbcMarca.KeyValue;
    CDSConsultaStock.Params.ParamByName('rubro').Value    := dbcRubro.KeyValue;
    CDSConsultaStock.Params.ParamByName('SubRubro').Value := dbcSubRubro.KeyValue;
    CDSConsultaStock.Params.ParamByName('lista').Value    := dbcListas.KeyValue;
    CDSConsultaStock.Open;
    CDSConsultaStock.First;
  end;
end;

procedure TFormCambioPrecio_2.CancelarExecute(Sender: TObject);
begin
 // inherited;
  //DMMain_FD.LogFileFD(1,2,'Cancelacion de Cambios de **** Precio Manual....','ACTPRECMAN',DMMain_FD.UsuarioActivo);
  if CDSConsultaStock.State in [dsEdit,dsInsert] then
    CDSConsultaStock.CancelUpdates;
  IniciaConsulta;
end;

procedure TFormCambioPrecio_2.dbcProveedoresClick(Sender: TObject);
var Filtro:String;
begin
  inherited;
  Filtro:='';
  CDSConsultaStock.Filtered :=False;
  if (Not(CDSConsultaStock.IsEmpty)) Then
    BEGIN
      DMMain_FD.LogFileFD(1,2,'Filtra por Proveedor... Generacion Consulta Marca:'+dbcMarca.Text+
                             ' - Rubro:'+dbcRubro.Text+' - SubRubro:'+dbcSubRubro.Text+' ..' ,'ACTPRECMAN');

      if dbcProveedores.KeyValue<>'******' then
        begin
          QMarcas_Proveedor.Close;
          QMarcas_Proveedor.ParamByName('codigo').AsString := dbcProveedores.KeyValue;
          QMarcas_Proveedor.Open;
          while Not QMarcas_Proveedor.Eof do
            begin
              if Filtro='' then
                Filtro:=QuotedStr(QMarcas_Proveedor.Fields[0].AsString)
              else
                Filtro:=Filtro+','+QuotedStr(QMarcas_Proveedor.Fields[0].AsString);
              QMarcas_Proveedor.Next;
            end;
          Filtro:='MARCA_STK IN ('+Filtro+')';
          CDSConsultaStock.Filter   := Filtro;
          CDSConsultaStock.Filtered := True;

        end;
     QMarcas_Proveedor.Close;

    END;
end;

procedure TFormCambioPrecio_2.CDSConsultaStockAfterInsert( DataSet: TDataSet);
begin
  inherited;
  CDSConsultaStock.Cancel;
end;

procedure TFormCambioPrecio_2.CDSConsultaStockAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if CDSConsultaStock.State in [dsInsert,dsEdit,dsBrowse] then
    begin
      if CDSConsultaStockMODO_GRAVAMEN.Value='G' then
        begin
          CDSConsultaStockNuevoFPExento.ReadOnly :=True;
          CDSConsultaStockNuevoFPGravado.ReadOnly:=False;
        end
      else
        if CDSConsultaStockMODO_GRAVAMEN.Value='E' then
          begin
            CDSConsultaStockNuevoFPExento.ReadOnly :=False;
            CDSConsultaStockNuevoFPGravado.ReadOnly:=True;
          end
        else
          begin
            CDSConsultaStockNuevoFPExento.ReadOnly :=False;
            CDSConsultaStockNuevoFPGravado.ReadOnly:=False;
          end;
    end;
end;

procedure TFormCambioPrecio_2.CDSConsultaStockBeforePost(DataSet: TDataSet);
begin
  inherited;
  CDSConsultaStockMODIFICADO.Value:=True;
end;

procedure TFormCambioPrecio_2.CDSConsultaStockCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSConsultaStockDETALLE.Value        := CDSConsultaStockDETALLE_STK.Value;
  CDSConsultaStockCODIGOARTICULO.Value := CDSConsultaStockCODIGO_STK.Value;

end;

procedure TFormCambioPrecio_2.CDSConsultaStockNuevoFPExentoSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  // reasigno el costo del articulo
 // CDSConsultaStockFIJACION_PRECIO_EXENTO.AsFloat:=Sender.AsFloat;
  CDSConsultaStockCOSTO_EXENTO.AsFloat           :=Sender.AsFloat;
  CDSConsultaStockFIJACION_PRECIO_EXENTO.AsFloat :=Sender.AsFloat;

  CalculaPrecioVta.Execute;
end;

procedure TFormCambioPrecio_2.CDSConsultaStockNuevoFPGravadoSetText(
  Sender: TField; const Text: string);
var aux1,aux2:extended;
begin
  inherited;
  Sender.AsString:=text;
  // reasigno el costo del articulo
  // CDSConsultaStockFIJACION_PRECIO_GRAVADO.AsFloat:=Sender.AsFloat;

  if chConIVA.Checked then
    begin
      Sender.AsFloat:=Sender.AsFloat/(1+CDSConsultaStockTASA.AsFloat*0.01);
    end;

  aux1    :=roundto( Sender.AsFloat,-5);
  aux2    :=roundTo( aux1,-5);

  CDSConsultaStockCOSTO_GRAVADO.AsFloat          :=aux2;
  CDSConsultaStockFIJACION_PRECIO_GRAVADO.AsFloat:=aux2;

  CalculaPrecioVta.Execute;
end;

procedure TFormCambioPrecio_2.CDSConsultaStockPRECIOSetText(Sender: TField;
  const Text: string);
var Recargo,Precio,CostoFinal,AuxG,AuxF:Extended;
begin
  if chSincronizaPrecioNetoCosto.Checked then
      CDSConsultaStockRECARGO.AsFloat:=0;//SetText(CDSConsultaStockRECARGO,'0');
  Sender.AsString:= Text;
  AuxF           := Sender.AsFloat;
  // si es exento y gravado es por que tiene imp inte
  if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    AuxF        := Sender.AsFloat - CDSConsultaStockCOSTO_EXENTO.ASFloat
  else
    if CDSConsultaStockMODO_GRAVAMEN.Value='E' then
      begin
        AuxF                               := Sender.AsFloat;
      end;



  if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    CostoFinal := CDSConsultaStockCOSTO_GRAVADO.AsFloat * (1 + CDSConsultaStockTASA.AsFloat * 0.01)
  else
    // esta era la lina unica original, le agregue por si tiene Imp.Int la de arriba
    if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['G']) then
      CostoFinal := CDSConsultaStockCOSTO_GRAVADO.AsFloat * (1 + CDSConsultaStockTASA.AsFloat * 0.01) + CDSConsultaStockCOSTO_EXENTO.AsFloat
    else
      if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['E']) then
        CostoFinal := CDSConsultaStockCOSTO_EXENTO.AsFloat;

  if costoFinal>0 then
    begin
      if AuxF>=CostoFinal then
        Recargo:=   (((AuxF - CostoFinal) / CostoFinal) * 100) //    Recargo:=   (((AuxF - CostoFinal) / CostoFinal) * 100)
      else
        if (AuxF<CostoFinal) and (AuxF>0) then
          Recargo:=   (((AuxF - CostoFinal) / AuxF) * 100)
        else
          Recargo:=0;
    end
  else
    Recargo:=100;

  if Abs(Trunc(Recargo*100))=0 then  Recargo:=0;

  if costoFinal>0 then
    CDSConsultaStockPRECIO_GRAVADO.AsFloat := RoundTo(CDSConsultaStockCOSTO_GRAVADO.AsFloat * (1+Recargo * 0.01),-3)
  else
    begin
      if CDSConsultaStockMODO_GRAVAMEN.value<>'E' then
        begin
          CDSConsultaStockPRECIO_GRAVADO.AsFloat := AuxF / (1 + CDSConsultaStockTASA.AsFloat * 0.01);
          CDSConsultaStockNuevoFPGravadoSetText(CDSConsultaStockNuevoFPGravado,FormatFloat('0.000',CDSConsultaStockPRECIO_GRAVADO.AsFloat));
          Recargo:=0;
        end;
//      else
//        if CDSConsultaStockMODO_GRAVAMEN.value='E' then
//          begin
//            CDSConsultaStockPRECIO_EXENTO.AsFloat := AuxF ;
//            CDSConsultaStockNuevoFPExentoSetText(CDSConsultaStockNuevoFPExento,FormatFloat('0.000',CDSConsultaStockPRECIO_EXENTO.AsFloat));
//            Recargo:=0;
//          end

    end;

  // si es exento y gravado es por que tiene imp inte
  if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    CDSConsultaStockPRECIO_EXENTO.AsFloat  := CDSConsultaStockCOSTO_EXENTO.AsFloat
  else
    if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['E']) then
      CDSConsultaStockPRECIO_EXENTO.AsFloat  := CDSConsultaStockCOSTO_EXENTO.AsFloat * (1+Recargo * 0.01);

  CDSConsultaStockIVA_IMPORTE.AsFloat    := CDSConsultaStockPRECIO_GRAVADO.ASFloat * CDSConsultaStockTASA.AsFloat * 0.01;

  if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['G']) then
    AuxF := AuxF - CDSConsultaStockPRECIO_EXENTO.ASFloat;

  AuxG := CDSConsultaStockPRECIO_GRAVADO.AsFloat;

  if CDSConsultaStockMODO_GRAVAMEN.AsString[1]='G' then
    CDSConsultaStockIVA_IMPORTE.AsFloat    := AuxF-AuxG;
  if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['E']) then
    CDSConsultaStockIVA_IMPORTE.AsFloat    := 0;


  if chSincronizaPrecioNetoCosto.Checked then
    begin
      CDSConsultaStockRECARGO.AsFloat:=0;
     // CDSConsultaStockNuevoFPGravadoSetText(CDSConsultaStockNuevoFPGravado,FormatFloat('0.000',CDSConsultaStockPRECIO_GRAVADO.AsFloat));
     // CDSConsultaStockNuevoFPExentoSetText(CDSConsultaStockNuevoFPExento,FormatFloat('0.000',CDSConsultaStockPRECIO_EXENTO.AsFloat));
      Recargo:=0;

      CDSConsultaStockFIJACION_PRECIO_GRAVADO.AsFloat:=CDSConsultaStockPRECIO_GRAVADO.AsFloat;
      CDSConsultaStockFIJACION_PRECIO_EXENTO.AsFloat :=CDSConsultaStockPRECIO_EXENTO.AsFloat;

//      if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
//        CostoFinal := CDSConsultaStockCOSTO_GRAVADO.AsFloat * (1 + CDSConsultaStockTASA.AsFloat * 0.01)
//      else
//        // esta era la lina unica original, le agregue por si tiene Imp.Int la de arriba
//        CostoFinal := CDSConsultaStockCOSTO_GRAVADO.AsFloat * (1 + CDSConsultaStockTASA.AsFloat * 0.01)+CDSConsultaStockCOSTO_EXENTO.AsFloat;
    end;

  CDSConsultaStockRECARGO.AsFloat :=Recargo;

end;

procedure TFormCambioPrecio_2.CDSConsultaStockRECARGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
  //    CDSConsultaStockPRECIO.Value:=(CDSConsultaStockNuevoFPExento.Value+CDSConsultaStockNuevoFPGravado.Value) * (1+( Sender.Value * 0.01));
      CalculaPrecioVta.Execute;
    end;
end;

procedure TFormCambioPrecio_2.CDSListaArtPRECIOSetText(Sender: TField;
  const Text: string);
var Recargo,Precio,CostoFinal,AuxG,AuxF:Extended;
begin
  CDSListaArtCOSTO_GRAVADO.AsFloat:= CDSConsultaStockFIJACION_PRECIO_GRAVADO.AsFloat;
  CDSListaArtCOSTO_EXENTO.AsFloat := CDSConsultaStockFIJACION_PRECIO_EXENTO.AsFloat;
  CDSListaArtCOSTO_TOTAL.AsFloat  := CDSListaArtCOSTO_GRAVADO.AsFloat +
                                     CDSListaArtCOSTO_EXENTO.AsFloat;

  Sender.AsString := Text;
  AuxF            := Sender.AsFloat;// - CDSListaArtCOSTO_EXENTO.AsFloat;
  // si es exento y gravado es por que tiene imp inte
  if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
     AuxF        := Sender.AsFloat-CDSListaArtCOSTO_EXENTO.ASFloat;

//  CostoFinal      := RoundTo(CDSListaArtCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtIVA_TASA.AsFloat * 0.01) ,-3);

  if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    CostoFinal := CDSListaArtCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtIVA_TASA.AsFloat * 0.01)
  else
    // esta era la lina unica original, le agregue por si tiene Imp.Int la de arriba
    CostoFinal := CDSListaArtCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtIVA_TASA.AsFloat * 0.01) + CDSListaArtCOSTO_EXENTO.AsFloat;

  if costoFinal>0 then
    Recargo:=   (((AuxF - CostoFinal) / CostoFinal) * 100)
  else
    Recargo:=100;

  CDSListaArtPRECIO_GRAVADO.AsFloat := CDSListaArtCOSTO_GRAVADO.AsFloat * (1+Recargo * 0.01);
// si es que tiene impuesto internos esto pasan como estan... sin recargo
  if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    CDSListaArtPRECIO_EXENTO.AsFloat  := CDSListaArtCOSTO_EXENTO.AsFloat
  else
    CDSListaArtPRECIO_EXENTO.AsFloat  := CDSListaArtCOSTO_EXENTO.AsFloat;// * (1+Recargo * 0.01);
  CDSListaArtIVA_IMPORTE.AsFloat    := CDSListaArtPRECIO_GRAVADO.ASFloat * CDSListaArtIVA_TASA.AsFloat * 0.01;

//  AuxF:= AuxF-CDSListaArtPRECIO_EXENTO.ASFloat;
  AuxG:= CDSListaArtPRECIO_GRAVADO.AsFloat;
  //  Precio := CDSListaArtPRECIO_GRAVADO.AsFloat+CDSListaArtIVA_IMPORTE.AsFloat;
//  Recargo:= ( ( Precio - CDSListaArtCOSTO_TOTAL.AsFloat) / CDSListaArtCOSTO_TOTAL.AsFloat ) * 100;
  if CDSConsultaStockMODO_GRAVAMEN.AsString='G' then
    CDSListaArtIVA_IMPORTE.AsFloat    := AuxF-AuxG;
  if (CDSConsultaStockMODO_GRAVAMEN.AsString[1] in ['E']) then
    CDSListaArtIVA_IMPORTE.AsFloat    := 0;


  CDSListaArtRECARGO.AsFloat:=Recargo;
end;

procedure TFormCambioPrecio_2.CDSListaPrecioCabCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSListaPrecioCabMUESTRAACTUALIZA.Value:='No Actualiza';
  if CDSListaPrecioCabACTUALIZA_EXCEPCION.Value='S' then
    CDSListaPrecioCabMUESTRAACTUALIZA.Value:='Actualiza';

end;

procedure TFormCambioPrecio_2.chbModoClick(Sender: TObject);
begin
  inherited;
  dbfDetalle.ResetFilter;

  if chbModo.Checked then
    begin
      dbfDetalle.FindMode:=fmFirstPos;
      if chbFiltra.Checked then
        begin
          dbfDetalle.FindStyle:=fsFilter;
          dbfDetalle.FindMode :=fmAnyPos;
        end
      else
      if Not(chbFiltra.Checked) then
        begin
          dbfDetalle.FindStyle:=fsNavigate;
        end;
    end
  else
    if Not(chbModo.Checked) then
      begin
        dbfDetalle.FindMode:=fmAnyPos;
        if chbFiltra.Checked then
          begin
            dbfDetalle.FindStyle:=fsFilter;
            dbfDetalle.FindMode :=fmAnyPos;
          end
        else
          if Not(chbFiltra.Checked) then
            begin
              dbfDetalle.FindStyle:=fsNavigate;
            end;
      end

end;

procedure TFormCambioPrecio_2.chbRangoCodigoClick(Sender: TObject);
begin
  inherited;
  CDSConsultaStock.Filtered := False;
  CDSConsultaStock.Filter   := 'CODIGO_STK >='+edDesde.Text + 'and codigo_stk<='+edHasta.Text;
  CDSConsultaStock.Filtered := chbRangoCodigo.Checked;
end;

procedure TFormCambioPrecio_2.chConStockClick(Sender: TObject);
begin
  inherited;
  CDSConsultaStock.Filter:='';
  if chConStock.Checked then
    BEGIN
      CDSConsultaStock.Filter:='STOCKFISICO > 0 ';
    END;
  CDSConsultaStock.Filtered:=chConStock.Checked;
end;

procedure TFormCambioPrecio_2.chklstColumnasClickCheck(Sender: TObject);
begin
  inherited;
  ControlVisualColumnas.Execute;
end;

procedure TFormCambioPrecio_2.ConfirmaExecute(Sender: TObject);
var NuevoFPExento,NuevoFPGravado,PrecioActual:Extended;
cont:integer;
Flag:Boolean;
begin
//  inherited;
  Cont:=0;
  if Not(CDSConsultaStock.IsEmpty) then
    begin
      CDSConsultaStock.First;
      CDSConsultaStock.DisableControls;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        While not(CDSConsultaStock.Eof) DO
          begin
            if (CDSConsultaStockMARCA_STK.OldValue<>CDSConsultaStockMARCA_STK.NewValue) then
              begin
                QCambiaMarcaFD.Close;
                QCambiaMarcaFD.ParamByName('codigo').AsString:=CDSConsultaStockCODIGO_STK.Value;
                QCambiaMarcaFD.ParamByName('newmarca').AsString:=CDSConsultaStockMARCA_STK.Value;
                QCambiaMarcaFD.ExecSQL();
                QCambiaMarcaFD.Close;
              end;

            if (CDSConsultaStockMONEDA.OldValue<>CDSConsultaStockMONEDA.NewValue) then
              begin
                QCambiaMonedaFD.Close;
                QCambiaMonedaFD.ParamByName('codigo').AsString    :=CDSConsultaStockCODIGO_STK.Value;
                QCambiaMonedaFD.ParamByName('newmoneda').AsInteger:=CDSConsultaStockMONEDA.Value;
                QCambiaMonedaFD.ExecSQL();
                QCambiaMonedaFD.Close;
              end;


            if ((CDSConsultaStockNuevoFPExento.AsString<>'') and (CDSConsultaStockNuevoFPExento.AsFloat>0)) or
               ((CDSConsultaStockNuevoFPGravado.AsString<>'') and (CDSConsultaStockNuevoFPGravado.AsFloat>0)) or
                (CDSConsultaStockRECARGO.OldValue<>CDSConsultaStockRECARGO.NewValue) or
                (CDSConsultaStockPRECIO.OldValue<>CDSConsultaStockPRECIO.NewValue) or
                (CDSConsultaStockDETALLE_STK.OldValue<>CDSConsultaStockDETALLE_STK.NewValue)

            Then
              begin
                Cont:=Cont+1;
                if (CDSConsultaStockNuevoFPExento.Value=0) or (CDSConsultaStockNuevoFPExento.AsString='') Then
                  NuevoFPExento:=CDSConsultaStockFIJACION_PRECIO_EXENTO.AsFloat
                else
                  NuevoFPExento:=CDSConsultaStockNuevoFPExento.AsFloat;

                if (CDSConsultaStockNuevoFPGravado.Value=0) or (CDSConsultaStockNuevoFPGravado.AsString='') Then
                  NuevoFPGravado:=CDSConsultaStockFIJACION_PRECIO_GRAVADO.AsFloat
                else
                  begin
                    NuevoFPGravado:=roundto(CDSConsultaStockNuevoFPGravado.Value,-4);
                    NuevoFPGravado:=roundto(NuevoFPGravado,-3);
                  end;


                //*******************************************************************************

                spCambiaPrecioFD.close;
                spCambiaPrecioFD.Prepare;
                spCambiaPrecioFD.ParamByName('Codigo').AsString      := CDSConsultaStockCODIGO_STK.AsString;
                spCambiaPrecioFD.ParamByName('FPEXENTO').AsFloat     := NuevoFPExento;
                spCambiaPrecioFD.ParamByName('FPGRAVADO').AsFloat    := NuevoFPGravado;
                spCambiaPrecioFD.ParamByName('COSTOEXENTO').AsFloat  := NuevoFPExento;
                spCambiaPrecioFD.ParamByName('COSTOGRAVADO').AsFloat := NuevoFPGravado;
                if chActulizaPrecioVtaOtrasListas.Checked Then
                  spCambiaPrecioFD.ParamByName('ID_LISTA').AsInteger := -1
                else
                  if chActulizaPrecioVtaOtrasListas.Checked=False Then
                    spCambiaPrecioFD.ParamByName('ID_LISTA').AsInteger := dbcListas.KeyValue;
                spCambiaPrecioFD.ParamByName('RECARGO').AsFloat      := CDSConsultaStockRECARGO.AsFloat;
                spCambiaPrecioFD.ParamByName('FECHA').AsDate         := date;
                spCambiaPrecioFD.ParamByName('DETALLE').AsString     := Trim(UpperCase(CDSConsultaStockDETALLE_STK.AsString));
                spCambiaPrecioFD.ExecProc;

                spInformaCambioPrecioFD.Close;
                spInformaCambioPrecioFD.ParamByName('codigo').AsString            := CDSConsultaStockCODIGO_STK.Value;
                spInformaCambioPrecioFD.ParamByName('costo_old').AsFloat          := CDSConsultaStockFIJACION_PRECIO_GRAVADO.OldValue + CDSConsultaStockFIJACION_PRECIO_EXENTO.OldValue;
                spInformaCambioPrecioFD.ParamByName('costo_old_gravado').AsFloat  := CDSConsultaStockFIJACION_PRECIO_GRAVADO.OldValue;
                spInformaCambioPrecioFD.ParamByName('costo_old_exento').AsFloat   := CDSConsultaStockCOSTO_EXENTO_STK.OldValue;
                spInformaCambioPrecioFD.ParamByName('costo_new').AsFloat          := NuevoFPGravado+NuevoFPExento;
                spInformaCambioPrecioFD.ParamByName('costo_new_gravado').AsFloat  := NuevoFPGravado;
                spInformaCambioPrecioFD.ParamByName('costo_new_exento').AsFloat   := NuevoFPExento;
                spInformaCambioPrecioFD.ParamByName('fprecio_old').AsFloat        := CDSConsultaStockFIJACION_PRECIO_GRAVADO.OldValue + CDSConsultaStockFIJACION_PRECIO_EXENTO.OldValue;
                spInformaCambioPrecioFD.ParamByName('fprecio_old_gravado').AsFloat:= CDSConsultaStockFIJACION_PRECIO_GRAVADO.OldValue;
                spInformaCambioPrecioFD.ParamByName('fprecio_old_exento').AsFloat := CDSConsultaStockFIJACION_PRECIO_EXENTO.OldValue;
                spInformaCambioPrecioFD.ParamByName('fprecio_new').AsFloat        := NuevoFPGravado+NuevoFPExento;
                spInformaCambioPrecioFD.ParamByName('fprecio_new_gravado').AsFloat:= NuevoFPGravado;
                spInformaCambioPrecioFD.ParamByName('fprecio_new_exento').AsFloat := NuevoFPExento;
                spInformaCambioPrecioFD.ParamByName('usuario').AsString           := DMMain_FD.UsuarioActivo;
                spInformaCambioPrecioFD.ParamByName('fecha').AsDateTime           := Now;
                spInformaCambioPrecioFD.ParamByName('motivo').AsString            := 'Cambio de precio General desde Actulizacion Manual';
                spInformaCambioPrecioFD.ExecProc;

                DMMain_FD.LogFileFD(0,2,'Cambio Precio Manual.. Articulo :'+CDSConsultaStockCODIGO_STK.AsString+'-'+CDSConsultaStockDETALLE_STK.AsString+
                                         ' Anterior : ' + FormatFloat(',0.00',CDSConsultaStockPRECIO.OldValue)+
                                         ' Nuevo : '+ FormatFloat(',0.00',CDSConsultaStockPRECIO.NewValue),'ACTPRECMAN');


                //*****************************************************************************
                //*** levanto el articulo de todas las listas ///////
                //*****************************************************************************
                Flag:=True;
                if Flag then
                  begin
                    CDSListaArt.Close;
                    CDSListaArt.Params.ParamByName('codigo').AsString:=CDSConsultaStockCODIGO_STK.AsString;
                    CDSListaArt.Open;
                    CDSListaArt.First;
                    while Not(CDSListaArt.Eof) do
                      begin
                        if CDSListaArt.State=dsBrowse then CDSListaArt.Edit;
                        if (Trunc(CDSConsultaStockNuevoFPGravado.AsFloat*1000)>0) then
                            CDSListaArtCOSTO_GRAVADO.AsFloat:= RoundTo(CDSConsultaStockNuevoFPGravado.AsFloat,-3)
                        else
                          CDSListaArtCOSTO_GRAVADO.AsFloat:= CDSConsultaStockFIJACION_PRECIO_GRAVADO.AsFloat;

                        if (Trunc(CDSConsultaStockNuevoFPExento.AsFloat*1000)>0) then
                          CDSListaArtCOSTO_EXENTO.AsFloat:= CDSConsultaStockNuevoFPExento.AsFloat
                        else
                          CDSListaArtCOSTO_EXENTO.AsFloat:= CDSConsultaStockFIJACION_PRECIO_EXENTO.AsFloat;

                        CDSListaArtIVA_TASA.AsFloat     := CDSConsultaStockTASA.ASFloat;

                        if CDSListaArtID_CAB.Value=dbcListas.KeyValue then
                          begin
                            if (CDSConsultaStockPRECIO.OldValue<>CDSConsultaStockPRECIO.NewValue) then
                              begin
                                CDSListaArtPRECIO_EXENTO.AsFloat := CDSConsultaStockPRECIO_EXENTO.AsFloat;
                                CDSListaArtPRECIO_GRAVADO.AsFloat:= CDSConsultaStockPRECIO_GRAVADO.AsFloat;
                                CDSListaArtIVA_IMPORTE.AsFloat   := CDSConsultaStockIVA_IMPORTE.AsFloat;
                                CDSListaArtPRECIO.AsFloat        := CDSConsultaStockPRECIO.AsFloat;
                                CDSListaArtRECARGO.AsFloat       := CDSConsultaStockRECARGO.AsFloat;
                                CDSListaArtFECHA.AsDateTime      := Date;
                                CDSListaArt.ApplyUpdates(0);
                              end;
                          end;
                        CDSListaArt.Next;
                      end;

                  end;

                sbEstado.Panels[1].Text:='Registros Modificados: '+IntToStr(cont);
                Application.ProcessMessages;

                //*****************************************************************************
              end;
            CDSConsultaStock.Next;
          end;
        DMMain_FD.LogFileFD(0,2,'Aplicacion Act.Precios Manual: Estado de Opciones >>'+
                                ' Aplicado a : '+ rgAplicaCoef.Items[rgAplicaCoef.ItemIndex]+
                                ' -Sinc. Neto: '+ BoolToStr(chSincronizaPrecioNetoCosto.Checked)+
                                ' -Act. Listas: '+ BoolToStr(chActulizaPrecioVtaOtrasListas.Checked)+
                                ' -Marca: '+ dbcMarca.Text+
                                ' -Rubro: '+ dbcRubro.Text+
                                ' -Sub Rubro: '+ dbcSubRubro.Text+
                                ' -Moneda: '+ dbcMoneda.Text+
                                ' -Modo: '+ TipoCta+
                                ' -Coef: '+ FormatFloat('0.000',edfactor.Value),
                                'ACTPRECMAN');



        DMMain_FD.fdcGestion.TxOptions.Isolation:=xiReadCommitted;
        DMMain_FD.fdcGestion.Commit;

        QCambiaMarcaFD.Close;
        QCambiaMonedaFD.Close;
        spCambiaPrecioFD.close;
        spInformaCambioPrecioFD.Close;

      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo gravar los cambios....');
      end;
    spCambiaPrecioFD.close;
    spInformaCambioPrecioFD.Close;

    QCambiaMarcaFD.Close;
    QCambiaMonedaFD.Close;

    CDSConsultaStock.EnableControls;
    IniciaConsulta;
    CDSListaArt.Close;
  end;

end;

procedure TFormCambioPrecio_2.ControlVisualColumnasExecute(Sender: TObject);
var i:Byte;
begin
  inherited;
//  For i:= 0 to chklstColumnas.Items.Count-1 do
//    dbgConsulta.Columns[i].Visible:=chklstColumnas.Checked[i];

  For i:= 0 to chklstColumnas.Items.Count-1 do
    cxGConsultaDBTableView1.Columns[i].Visible:=chklstColumnas.Checked[i];

end;

procedure TFormCambioPrecio_2.Culumnas1Click(Sender: TObject);
begin
  if pnColumnas.Visible=False
    then pnColumnas.Visible:=True
  else pnColumnas.Visible:=False;

end;

procedure TFormCambioPrecio_2.cxGConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var A:Boolean;
begin
  inherited;
  ACanvas.Font.Color := clBlack;
//  A := AViewInfo.GridRecord.Values[1];

 // A := AViewInfo.GridRecord.Values[1];
//
//  if AViewInfo.Selected then
//    begin
//      ACanvas.Font.Color  := clWhite;
//    end
//  else
//    begin
//      if A = True then
//         ACanvas.Font.Color := clBlue
//      else
//        ACanvas.Font.Color := clBlack;
//    end;


//  CDSConsultaStock.RecNo:=AViewInfo.GridRecord.Index + 1;
//  Modificado:= CDSConsultaStock.UpdateStatus <> usUnmodified;

//    begin
//      if CDSConsultaStock.UpdateStatus <> usUnmodified Then //  CompareValue(A,B,0.1)<>EqualsValue then
//        ACanvas.Font.Color := clBlue
//      else
//        if Not(CDSConsultaStock.UpdateStatus <> usUnmodified) Then
//          ACanvas.Font.Color  := clBlack;
//    end;
end;

procedure TFormCambioPrecio_2.cxGConsultaDBTableView1DblClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:=CDSConsultaStockCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
  FormStock_2.BringToFront;
end;


procedure TFormCambioPrecio_2.cxGConsultaDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var AMyStyle: TcxStyle;
begin
//  AMyStyle := TcxStyle.Create(Self);
//  AMyStyle.Color := clInfoBk;
  if AItem=cxGConsultaDBTableView1CODIGO_STK Then
    AStyle:= cxStyle1;
  if AItem=cxGConsultaDBTableView1FIJACION_PRECIO_GRAVADO Then
    AStyle:= cxStyle1;
  if AItem=cxGConsultaDBTableView1FIJACION_PRECIO_EXENTO Then
    AStyle:= cxStyle1;
  if AItem=cxGConsultaDBTableView1PRECIO_GRAVADO Then
    AStyle:= cxStyle1;
  if AItem=cxGConsultaDBTableView1PRECIO_EXENTO Then
    AStyle:= cxStyle1;
  if AItem=cxGConsultaDBTableView1IVA_IMPORTE Then
    AStyle:= cxStyle1;
  if AItem=cxGConsultaDBTableView1MUESTRAMONEDA Then
    AStyle:= cxStyle1;
  if (AItem=cxGConsultaDBTableView1MOD) and (CDSConsultaStockMODIFICADO.Value=True) Then
    AStyle:= cxStyle2;


end;

procedure TFormCambioPrecio_2.dbcRubroClick(Sender: TObject);
begin
  inherited;
  CDSSubRub.Close;
  CDSSubRub.ParamByName('rubro').Value:= dbcRubro.KeyValue;
  CDSsubRub.Open;
  dbcSubRubro.KeyValue:='';
  Buscar.Execute;
end;

procedure TFormCambioPrecio_2.dbfDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_UP) and (not(CDSConsultaStock.Bof)) then
    CDSConsultaStock.Prior;
  if (Key=VK_DOWN) and (not(CDSConsultaStock.eof)) then
    CDSConsultaStock.Next;

end;

procedure TFormCambioPrecio_2.SalirExecute(Sender: TObject);
begin
  //inherited;
//  if DSBase.State in [dsEdit,dsInsert] Then
//    begin
      if MessageDlg('Cierra la ventana y anula los cambios?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
         begin
           CDSConsultaStock.IndexDefs.Clear;
           Close;
         end;
//    end
//  else
//    Close;
end;

procedure TFormCambioPrecio_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
 frxReport.DesignReport;
end;

procedure TFormCambioPrecio_2.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnColumnas.Visible:=False;
end;

procedure TFormCambioPrecio_2.spPrecioFijoClick(Sender: TObject);
begin
  inherited;
//  Cancelar:=False;
  CDSConsultaStock.AfterScroll:=nil;
  CDSConsultaStock.DisableControls;
  CDSConsultaStock.First;
  while not(CDSConsultaStock.Eof) do //and (cancelar=False) do
    begin
      CDSConsultaStockNuevoFPExento.ReadOnly :=False;
      CDSConsultaStockNuevoFPGravado.ReadOnly:=False;

      Application.ProcessMessages;
      CDSConsultaStock.Edit;
      if rgAplicaPrecioFijo.ItemIndex=0 then
        CDSConsultaStockNuevoFPGravado.Text := FloatToStr(edPrecioFijo.Value)
      else
        if rgAplicaPrecioFijo.ItemIndex=1 then
          CDSConsultaStockPRECIO.Text                := FloatToStr(edPrecioFijo.Value);

      CDSConsultaStock.Next;
    end;

  CDSConsultaStock.EnableControls;
  CDSConsultaStock.AfterScroll:=CDSConsultaStockAfterScroll;

end;

procedure TFormCambioPrecio_2.spMultiplicarClick(Sender: TObject);
var AuxG,AuxE:Extended;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  //  Cancelar:=False;
  CDSConsultaStock.DisableControls;
  CDSConsultaStock.AfterScroll:=nil;
  CDSConsultaStock.First;
  pbRedondeo.Minimum := 0;
  pbRedondeo.Maximum := CDSConsultaStock.RecordCount-1;
  pbRedondeo.Value   := 0;
  while not(CDSConsultaStock.Eof) do// and (cancelar=False) do
    begin
      pbRedondeo.Value := pbRedondeo.Value+1;
      CDSConsultaStockNuevoFPExento.ReadOnly :=False;
      CDSConsultaStockNuevoFPGravado.ReadOnly:=False;

      Application.ProcessMessages;
      if (Trim(dbcMoneda.Text) = Trim(CDSConsultaStockSIGNO.AsString)) then
        begin
          CDSConsultaStock.Edit;
          if ((Sender as TSpeedButton).Name='spMultiplicar') then
            begin
              TipoCta:='Multiplica';
              if rgAplicaCoef.ItemIndex=0 then
                begin
                  AuxG:=CDSConsultaStockFIJACION_PRECIO_GRAVADO.AsFloat * edFactor.value;
                  AuxE:=CDSConsultaStockFIJACION_PRECIO_EXENTO.AsFloat * edFactor.value;
                end
              else
                if rgAplicaCoef.ItemIndex=1 then
                    AuxG:=CDSConsultaStockPRECIO.AsFloat * edFactor.value;
            end
          else
            if ((Sender as TSpeedButton).Name='spDividir') then
              begin
                TipoCta:='Divide';
                if rgAplicaCoef.ItemIndex=0 then
                  begin
                    AuxG:=CDSConsultaStockFIJACION_PRECIO_GRAVADO.AsFloat / edFactor.value;
                    AuxE:=CDSConsultaStockFIJACION_PRECIO_EXENTO.AsFloat / edFactor.value;
                  end
                else
                  if rgAplicaCoef.ItemIndex=1 then
                    AuxG:=CDSConsultaStockPRECIO.AsFloat / edFactor.value;
              end;

          RoundTo(AuxG,3);
          RoundTo(AuxE,3);

          if rgAplicaCoef.ItemIndex=0 then
            begin
              CDSConsultaStockNuevoFPGravado.Text   :=  FloatToStr(AuxG);
              CDSConsultaStockNuevoFPExento.Text    :=  FloatToStr(AuxE);
            end
          else
            if rgAplicaCoef.ItemIndex=1 then
              CDSConsultaStockPRECIO.Text           :=  FloatToStr(AuxG);
        end;
      CDSConsultaStock.Next;
    end;
  CDSConsultaStock.AfterScroll:=CDSConsultaStockAfterScroll;
  CDSConsultaStock.EnableControls;
  pbRedondeo.Value   := 0;
  Screen.Cursor:=crDefault;
  //  Cancelar  :=  false;
end;

procedure TFormCambioPrecio_2.AplicarMarcasExecute(Sender: TObject);
var Cod:String;
begin
  inherited;
  CDSConsultaStock.First;
  CDSConsultaStock.DisableControls;
  while Not CDSConsultaStock.Eof do
    begin
      CDSConsultaStock.Edit;
      CDSConsultaStockMARCA_STK.Value:=dbcMarca.KeyValue;
      CDSConsultaStock.Post;
      CDSConsultaStock.Next

    end;
end;

procedure TFormCambioPrecio_2.btImprimirClick(Sender: TObject);
begin
  inherited;
 if Not(CDSConsultaStock.IsEmpty) Then
    begin

      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCambioPrecio.fr3');


      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormCambioPrecio_2.ImprimirEtiquetasExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormEtiquetasCompra)) then
    FormEtiquetasCompra:=TFormEtiquetasCompra.Create(self);
  FormEtiquetasCompra.CDSEtiquetas.CloneCursor(CDSConsultaStock,True,True);

  TFloatField(FormEtiquetasCompra.CDSEtiquetas.FieldByName('MUESTRAPRECIOVTA')).DisplayFormat  :=',0.00';
  TFloatField(FormEtiquetasCompra.CDSEtiquetas.FieldByName('CANTIDAD')).DisplayFormat          :=',0.00';

  FormEtiquetasCompra.dbgEtiquetas.Columns[0].FieldName:='CODIGOARTICULO';
  FormEtiquetasCompra.dbgEtiquetas.Columns[0].Title.Caption    :='Codigo';
  FormEtiquetasCompra.dbgEtiquetas.Columns[0].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[1].FieldName:='DETALLE';
  FormEtiquetasCompra.dbgEtiquetas.Columns[1].Title.Caption    :='Detalle';
  FormEtiquetasCompra.dbgEtiquetas.Columns[1].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[2].FieldName:='MUESTRACODIGOBARRA';
  FormEtiquetasCompra.dbgEtiquetas.Columns[2].Title.Caption    :='Codigo Barra';
  FormEtiquetasCompra.dbgEtiquetas.Columns[2].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[3].FieldName:='MUESTRAPRECIOVTA';
  FormEtiquetasCompra.dbgEtiquetas.Columns[3].Title.Caption    :='Precio Vta';
  FormEtiquetasCompra.dbgEtiquetas.Columns[3].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[4].FieldName:='CANTIDAD';
  FormEtiquetasCompra.dbgEtiquetas.Columns[4].Title.Caption    :='Cantidad';
  FormEtiquetasCompra.dbgEtiquetas.Columns[4].Title.Alignment  :=taCenter;

 // FormEtiquetasCompra.frDSEtiq. datafields
  FormEtiquetasCompra.ShowModal;
  FormEtiquetasCompra.BringToFront;
end;

procedure TFormCambioPrecio_2.IniciaConsulta;
begin
  CDSConsultaStock.AfterScroll:=nil;
  CDSConsultaStock.BeforePost :=nil;
  CDSConsultaStock.DisableControls;

  CDSConsultaStock.Close;
  CDSConsultaStock.IndexDefs.Clear;
  CDSConsultaStock.IndexFieldNames:='';
  CDSConsultaStock.Params.ParamByName('marca').Value    := dbcMarca.KeyValue;
  CDSConsultaStock.Params.ParamByName('rubro').Value    := dbcRubro.KeyValue;
  CDSConsultaStock.Params.ParamByName('SubRubro').Value := dbcSubRubro.KeyValue;
  CDSConsultaStock.Params.ParamByName('lista').Value    := dbcListas.KeyValue;
  CDSConsultaStock.Open;
  CDSConsultaStock.First;

//  while not(CDSConsultaStock.Eof) do
  //  begin
    //  CDSConsultaStock.Edit;
      //CDSConsultaStockMODIFICADO.Value:=False;
     // CDSConsultaStock.Next;
  //  end;
 // CDSConsultaStock.First;

  CDSConsultaStock.EnableControls;
  CDSConsultaStock.BeforePost := CDSConsultaStockBeforePost;
  CDSConsultaStock.AfterScroll:= CDSConsultaStockAfterScroll;
end;

procedure TFormCambioPrecio_2.BuscarExecute(Sender: TObject);
begin
//  inherited;

  if (Not(CDSConsultaStock.IsEmpty)) and
   (MessageDlg('Si hace una nueva busqueda y no guardo los cambios se perderan...',mtInformation,mbOKCancel,0)=mrCancel) then
      begin
        DMMain_FD.LogFileFD(1,2,'Modificacion de Precios Manual  ... Generacion de Nueva Consulta con Datos Existentes..','ACTPRECMAN');
        Exit
      end
  else
    BEGIN
     DMMain_FD.LogFileFD(1,2,'Modificacion de Precios Manual  ... Generacion Consulta Marca:'+dbcMarca.Text+
                             ' - Rubro:'+dbcRubro.Text+' - SubRubro:'+dbcSubRubro.Text+' ..' ,'ACTPRECMAN');
     IniciaConsulta;
    END;

  sbEstado.Panels[1].Text   := '';
  chbFiltra.Checked         := False;
  chbModo.Checked           := False;
  chConIVA.Checked          := False;
  CDSConsultaStock.Filtered := False;
  edDesde.Text              := '00000000';
  edHasta.Text              := '00000000';

end;


procedure TFormCambioPrecio_2.FormShow(Sender: TObject);
begin
  inherited;
  QListaPrecioPorDefectoFD.Close;
  QListaPrecioPorDefectoFD.Open;
  if QListaPrecioPorDefectoFDID.AsString<>'' Then
    dbcListas.KeyValue:=QListaPrecioPorDefectoFDID.Value;
  QListaPrecioPorDefectoFD.Close;
end;

procedure TFormCambioPrecio_2.frxReportBeforePrint(
  Sender: TfrxReportComponent);
var
  I: Integer;
begin
  inherited;

 // for i :=0 to CDSConsultaStock.FieldCount-1 do
//    CDSConsultaStock.Fields.Fields[i].Visible:=False;
//
////   frDBStock.DataSource.DataSet.FieldByName(dbgConsulta.Fields[i].FieldName).Visible:=True;
//
//  for I := 0 to dbgConsulta.Columns.Count - 1 do
//    begin
//      CDSConsultaStock.FieldByName(dbgConsulta.Fields[i].FieldName).Visible:=True;
//      //frDBStock.DataSource.DataSet.FieldByName(dbgConsulta.Fields[i].FieldName).Visible:=True;
//    end;
end;

procedure TFormCambioPrecio_2.lbAvisoPrecioClick(Sender: TObject);
begin
  inherited;
  DMMain_FD.ActualizaPrecioVta:=Not(DMMain_FD.ActualizaPrecioVta);
  if DMMain_FD.ActualizaPrecioVta=True then
    lbAvisoPrecio.Font.Color:=clBlack else
    lbAvisoPrecio.Font.Color:=clRed;

end;

procedure TFormCambioPrecio_2.Redondear_05Execute(Sender: TObject);
begin
  inherited;
  Redondear(2);
end;

procedure TFormCambioPrecio_2.Redondear_0Execute(Sender: TObject);
begin
  inherited;
  Redondear(0);
end;

end.
