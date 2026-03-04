unit UExportaArticulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, Gauges,FileCtrl, DBClient, Provider,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, IdBaseComponent, IdComponent,
  IdCustomTCPServer, IdTCPServer, IdCmdTCPServer, IdIrcServer, JvExDBGrids,
  JvDBGrid, IdContext, JvAppStorage, JvAppIniStorage, System.Actions, Data.DB,
  CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,IniFiles, Vcl.Mask, JvExMask,
  JvToolEdit, JvDBLookup, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckComboBox,
  cxDBCheckComboBox, cxCheckBox,StrUtils, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, System.ImageList;

type
  TFormExportaStock = class(TFormABMBase)
    DSMarcas: TDataSource;
    DSRubro: TDataSource;
    DSSubRubro: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Exportar: TAction;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    DSDep: TDataSource;
    DSPMarcas: TDataSetProvider;
    CDSMarcas: TClientDataSet;
    CDSRubro: TClientDataSet;
    DSPRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    DSPSubRubro: TDataSetProvider;
    CDSDep: TClientDataSet;
    DSPDep: TDataSetProvider;
    DBGrid5: TDBGrid;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    DSDepositos: TDataSource;
    DBGrid6: TDBGrid;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    JvDBStatusLabel3: TJvDBStatusLabel;
    JvDBStatusLabel4: TJvDBStatusLabel;
    JvDBStatusLabel5: TJvDBStatusLabel;
    JvDBStatusLabel6: TJvDBStatusLabel;
    DSStock: TDataSource;
    CDSMarcasMARCA_STK: TStringField;
    CDSMarcasDESCRIPCION_MARCA: TStringField;
    CDSMarcasOBSERVACION_MARCA: TStringField;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSRubroCONTROL_RUBRO: TStringField;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSSubRubroCODIGO_RUBRO: TStringField;
    CDSSubRubroCONTROL_SUBRUBRO: TStringField;
    CDSStock: TClientDataSet;
    DSPStock: TDataSetProvider;
    CDSSubRubroFUERA_PROMO: TStringField;
    CDSRubroFUERA_PROMO: TStringField;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    QStock: TFDQuery;
    QDepositos: TFDQuery;
    QDep: TFDQuery;
    QMarcas: TFDQuery;
    QSubRubro: TFDQuery;
    QRubro: TFDQuery;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_IVA: TFloatField;
    CDSStockCOSTO_FINAL: TFloatField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_IVA: TFloatField;
    CDSStockFIJACION_PRECIO_FINAL: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFloatField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFloatField;
    CDSStockCOSTO_EXENTO_P: TFloatField;
    CDSStockCOSTO_TOTAL_P: TFloatField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockCOMANDA: TStringField;
    CDSStockPORCENTAJE_SOBRECOSTO: TFloatField;
    CDSStockRUBRO_GASTO: TStringField;
    CDSStockRUBRO_CTA_GASTO: TStringField;
    CDSStockPUBLICAR_WEB: TStringField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSStockGARANTIAOFICIAL: TStringField;
    CDSStockADICIONAL_SOBRECOSTO: TFloatField;
    CDSStockIMPRIMIR_LSTPRECIOS: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    CDSStockIVA_MODIFICADO: TStringField;
    CDSStockSIGLAS: TStringField;
    CDSStockPRESENTACION_2_CANT: TFloatField;
    CDSStockTASA_MANUFACTURA: TStringField;
    CDSStockPLU: TStringField;
    CDSDepID_DEPOSITO: TIntegerField;
    CDSDepCODIGO_DEPOSITO: TIntegerField;
    CDSDepCODIGO_STK: TStringField;
    CDSDepSUCURSAL: TIntegerField;
    CDSDepINICIAL: TFloatField;
    CDSDepMINIMO: TFloatField;
    CDSDepMEDIO: TFloatField;
    CDSDepFISICO: TFloatField;
    CDSDepRECARGO: TFloatField;
    CDSDepFUAPRECIOS: TSQLTimeStampField;
    CDSDepSECTOR: TStringField;
    CDSDepUBICACION: TStringField;
    CDSDepFULTAJUSTE: TSQLTimeStampField;
    CDSDepUNIDADES: TFloatField;
    CDSDepAVISO_MINIMOSTOCK: TStringField;
    CDSCodigoBarra: TClientDataSet;
    DSPCodigoBarra: TDataSetProvider;
    QCodigosBarra: TFDQuery;
    DSCodigoBarra: TDataSource;
    CDSCodigoBarraID: TIntegerField;
    CDSCodigoBarraCODIGO_STK: TStringField;
    CDSCodigoBarraCODIGOBARRA: TStringField;
    CDSCodigoBarraPRESENTACION: TIntegerField;
    CDSCodigoBarraPRESENTACION_CANTIDAD: TFloatField;
    DBGrid4: TDBGrid;
    JvDBStatusLabel7: TJvDBStatusLabel;
    Label1: TLabel;
    edDirecorio: TJvDirectoryEdit;
    QListaPrecios: TFDQuery;
    DSListaPrecios: TDataSource;
    JvDBStatusLabel8: TJvDBStatusLabel;
    dbgStock: TDBGrid;
    dbgPrecios: TDBGrid;
    dbcListaPrecios: TJvDBLookupCombo;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    CDSListaPreciosRUBRO: TStringField;
    CDSListaPreciosSUBRUBRO: TStringField;
    CDSListaPreciosCODIGOARTICULO: TStringField;
    CDSListaPreciosCOSTO_GRAVADO: TFloatField;
    CDSListaPreciosCOSTO_EXENTO: TFloatField;
    CDSListaPreciosCOSTO_TOTAL: TFloatField;
    CDSListaPreciosIVA_TASA: TFloatField;
    CDSListaPreciosRECARGO: TFloatField;
    CDSListaPreciosPRECIO_GRAVADO: TFloatField;
    CDSListaPreciosIVA_IMPORTE: TFloatField;
    CDSListaPreciosPRECIO_EXENTO: TFloatField;
    CDSListaPreciosPRECIO: TFloatField;
    CDSListaPreciosDESCUENTO: TFloatField;
    CDSListaPreciosREC_APLICAR: TFloatField;
    CDSListaPreciosFECHA: TSQLTimeStampField;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosID_CAB: TIntegerField;
    CBListaCab: TcxCheckComboBox;
    QListaCab: TFDQuery;
    QListaCabID: TIntegerField;
    QListaCabNOMBRE: TStringField;
    QListaCabRECARGOBASE: TFloatField;
    QListaCabFECHA: TSQLTimeStampField;
    QListaCabPORDEFECTO: TStringField;
    QListaCabF_PAGO: TIntegerField;
    QListaCabUSO_ADMINISTRADOR: TStringField;
    QListaCabCLONADA: TStringField;
    QListaCabID_LISTA_CLONADA: TIntegerField;
    QListaCabCOEFICIENTE: TFloatField;
    QListaCabEXCLUSIVO_EFECTIVO: TStringField;
    DSPListaCab: TDataSetProvider;
    CDSListaCab: TClientDataSet;
    CDSListaCabID: TIntegerField;
    CDSListaCabNOMBRE: TStringField;
    CDSListaCabRECARGOBASE: TFloatField;
    CDSListaCabFECHA: TSQLTimeStampField;
    CDSListaCabPORDEFECTO: TStringField;
    CDSListaCabF_PAGO: TIntegerField;
    CDSListaCabUSO_ADMINISTRADOR: TStringField;
    CDSListaCabCLONADA: TStringField;
    CDSListaCabID_LISTA_CLONADA: TIntegerField;
    CDSListaCabCOEFICIENTE: TFloatField;
    CDSListaCabEXCLUSIVO_EFECTIVO: TStringField;
    QListas: TFDQuery;
    QListasID: TIntegerField;
    QListasNOMBRE: TStringField;
    CDSStockARTICULO_VARIABLE: TStringField;
    CDSStockDETALLE_CORTO: TStringField;
    CDSStockPRESENTACION_TOLERANCIA: TFloatField;
    CDSStockPLU_2: TStringField;
    CDSStockACOPIABLE: TStringField;
    CDSStockCIKO_TIPO: TIntegerField;
    CDSStockTIPOADICIONAL: TStringField;
    CDSStockLARGO_1: TFloatField;
    CDSStockLARGO_2: TFloatField;
    CDSStockLARGO_3: TFloatField;
    CDSStockROTURA_1: TFloatField;
    CDSStockROTURA_2: TFloatField;
    CDSStockCIMA: TFloatField;
    CDSStockBASE: TFloatField;
    CDSStockVOLUMEN: TFloatField;
    CDSStockPESO_CALCULADO: TFloatField;
    CDSStockPESO: TFloatField;
    CDSStockDIAMETRO_OLLA: TFloatField;
    CDSStockALTO_ACC: TFloatField;
    CDSStockMODO_IVA: TStringField;
    CDSStockDISPONIBLE: TStringField;
    CDSStockPERCIBE_IVA: TStringField;
    CDSStockID_TASA_PERCEP_IVA: TIntegerField;
    CDSStockAPLICA_TASA_DIF: TStringField;
    CDSStockDESCRIPCION_CORTA: TMemoField;
    CDSStockDESCRIPCION_LARGA: TMemoField;
    CDSStockCATEGORIAS_WEB: TStringField;
    CDSStockPLU_SECCION: TStringField;
    procedure ExportarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbcListaPreciosClick(Sender: TObject);
    procedure CBListaCabPropertiesCloseUp(Sender: TObject);
    procedure CBListaCabPropertiesClickCheck(Sender: TObject;
      ItemIndex: Integer; var AllowToggle: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure CargaCBListaCab;
     procedure CargaListaPrecios;
  end;

var
  FormExportaStock: TFormExportaStock;

implementation

Uses UDMain_FD;
{$R *.DFM}

procedure TFormExportaStock.BuscarExecute(Sender: TObject);
var Listas:string;
begin
  //inherited;
  Screen.Cursor:=crHourGlass;
  CDSMarcas.Close;
  sbEstado.SimpleText:='Levantando Tablas de Marcas...';
  Application.ProcessMessages;
  CDSMarcas.Open;

  CDSRubro.Close;
  sbEstado.SimpleText:='Levantando Tablas de Rubros...';
  Application.ProcessMessages;
  CDSRubro.Open;

  CDSSubRubro.Close;
  sbEstado.SimpleText:='Levantando Tablas de Sub Rubros...';
  Application.ProcessMessages;
  CDSSubRubro.Open;

  CDSDep.Close;
  sbEstado.SimpleText:='Levantando Tablas de Depositos de Articulos...';
  Application.ProcessMessages;
  CDSDep.OPen;

  CDSDepositos.Close;
  sbEstado.SimpleText:='Levantando Tablas de Depositos...';
  Application.ProcessMessages;
  CDSDepositos.Open;

  CDSStock.Close;
  sbEstado.SimpleText:='Levantando Tablas de Articulos...';
  Application.ProcessMessages;
  CDSStock.OPen;

  CDSCodigoBarra.Close;
  sbEstado.SimpleText:='Levantando Tablas de Codigos de Barra...';
  Application.ProcessMessages;
  CDSCodigoBarra.OPen;

//  CDSListaPrecios.Close;
//  CDSListaPrecios.Params.ParamByName('id').Value:=dbcListaPrecios.KeyValue;
//  sbEstado.SimpleText:='Levantando Tablas de Precios...';
//  Application.ProcessMessages;
//  CDSListaPrecios.OPen;

 // CDSListaPrecios.Params.ParamByName('id').Value:=dbcListaPrecios.KeyValue;

  CargaListaPrecios;

  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  Screen.Cursor:=crDefault;
end;

procedure TFormExportaStock.CargaCBListaCab;
var FExp : TIniFile; Path, Items: string; x:  Integer;
begin
  QListas.Close;
  QListas.Open;
  QListas.First;
  while not QListas.Eof do
    begin
      CBListaCab.Properties.Items.AddCheckItem(QListas.FieldByName('NOMBRE').AsString,QListas.FieldByName('ID').AsString);
      QListas.Next;
    end;
  QListas.Close;

  Path  := ExtractFilePath(ParamStr(0));
  FExp  := TIniFile.Create(Path+'\'+'ExportaStock.ini');
  try
    Items := FExp.ReadString('Listas','Listas','');
    for x:=1 to Length(Items) do
      begin
        if Items[x]<>',' then
          CBListaCab.SetItemState(StrToInt(Items[x]),cbsChecked);
       end;
  finally
    FExp.Free;
  end;

end;

procedure TFormExportaStock.CargaListaPrecios;
var Listas:string;
begin
  CDSListaPrecios.Close;
  CDSListaCab.Close;

  Listas  := CBListaCab.Text;

  while (AnsiLeftStr(Trim(Listas),1)=',') do
    delete(Listas,1,1);

  if Trim(Listas)<>'' then
    begin
      CDSListaCab.CommandText     :=    'select l.* from listaprecioespecialcab l '+
                                        'where l.id in ('+Listas+') order by l.id';

      CDSListaPrecios.CommandText :=    'select la.* from listaprecioespecialart la '+
                                        'left join stock s on s.codigo_stk=la.codigoarticulo '+
                                        'where la.id_cab in ('+Listas+') AND s.CLASE_ARTICULO IN (1,3)';

      sbEstado.SimpleText:='Levantando Tablas de Precios...';
      Application.ProcessMessages;
      CDSListaCab.OPen;
      CDSListaPrecios.Open;
    end;
end;


procedure TFormExportaStock.CBListaCabPropertiesClickCheck(Sender: TObject;
  ItemIndex: Integer; var AllowToggle: Boolean);
var i:Integer;
begin
  inherited;
  if ItemIndex=0 then
    begin
      if CBListaCab.GetItemState(0)=cbsUnchecked then
        begin
          i := 1;
          CBListaCab.Properties.Items.Items[0].Description := 'Deseleccionar todas';
          while i<cblistaCab.Properties.Items.Count do
            begin
              CBListaCab.SetItemState(i,cbsChecked);
              i := i+1;
            end;
        end
      else
        begin
          CBListaCab.Properties.Items.Items[0].Description := 'Seleccionar Todas';
          i := 1;
          while i<CBListaCab.Properties.Items.Count do
            begin
              CBListaCab.SetItemState(i,cbsUnchecked);
              i := i+1;
            end;
        end;
    end;

end;

procedure TFormExportaStock.CBListaCabPropertiesCloseUp(Sender: TObject);
var i: integer;
begin
  inherited;
  CargaListaPrecios;
end;

procedure TFormExportaStock.dbcListaPreciosClick(Sender: TObject);
begin
  inherited;
  CDSListaPrecios.Close;
  CDSListaPrecios.Params.ParamByName('id').Value:=dbcListaPrecios.KeyValue;
  CDSListaPrecios.Open;
end;

procedure TFormExportaStock.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormExportaStock.ExportarExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSStock.IsEmpty) Then
    begin
       if (Trim(edDirecorio.Text)='') then
         begin
           if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
             CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
           sbEstado.SimpleText:='Grabando Datos ...';
           CDSMarcas.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Marcas.XML',dfXML);
           CDSRubro.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Rubros.XML',dfXML);
           CDSSubRubro.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\SubRubros.XML',dfXML);
           CDSStock.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Stock.bin',dfBinary);
           CDSDep.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Deposito.bin',dfBinary);
           CDSDepositos.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Depos.XML',dfXML);
           CDSCodigoBarra.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\codigobarra.bin',dfBinary);
           CDSListaPrecios.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaPrecios.bin',dfBinary);
           CDSListaCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Listas.bin',dfBinary);
         end
       else
         begin
           sbEstado.SimpleText:='Grabando Datos ...';
           CDSMarcas.SaveToFile(edDirecorio.Text+'\Marcas.XML',dfXML);
           CDSRubro.SaveToFile(edDirecorio.Text+'\Rubros.XML',dfXML);
           CDSSubRubro.SaveToFile(edDirecorio.Text+'\SubRubros.XML',dfXML);
           CDSStock.SaveToFile(edDirecorio.Text+'\Stock.bin',dfBinary);
           CDSDep.SaveToFile(edDirecorio.Text+'\Deposito.bin',dfBinary);
           CDSDepositos.SaveToFile(edDirecorio.Text+'\Depos.XML',dfXML);
           CDSCodigoBarra.SaveToFile(edDirecorio.Text+'\codigobarra.bin',dfBinary);
           CDSListaPrecios.SaveToFile(edDirecorio.Text+'\ListaPrecios.bin',dfBinary);
           CDSListaCab.SaveToFile(edDirecorio.Text+'\Listas.bin',dfBinary);
         end
    end
  else
    ShowMessage('No Hay datos para exportar....');
  ShowMessage('Datos exportados....');
end;

procedure TFormExportaStock.FormCreate(Sender: TObject);
begin
  inherited;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  ArchivoIni               := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ExportarStockXML.ini');
  edDirecorio.Text         := ArchivoIni.ReadString('ExpoStock', 'Directorio', '');
//  dbcListaPrecios.KeyValue := ArchivoIni.ReadInteger('ExpoStock', 'ListaPrecios', 1);
  ArchivoIni.Free;
  sbEstado.SimpleText:='';
  CargaCBListaCab;

end;

procedure TFormExportaStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSMarcas.Close;
  CDSRubro.Close;
  CDSSubRubro.Close;
  CDSStock.Close;
  CDSDep.Close;
  CDSCodigoBarra.Close;
  CDSDepositos.Open;
  ArchivoIni              := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ExportarStockXML.ini');
  ArchivoIni.WriteString('ExpoStock', 'Directorio', edDirecorio.Text);
//  ArchivoIni.WriteInteger('ExpoStock', 'ListaPrecios', dbcListaPrecios.KeyValue);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormExportaStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormExportaStock:=nil;
end;

procedure TFormExportaStock.FormShow(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
end;

end.
