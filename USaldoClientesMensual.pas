unit USaldoClientesMensual;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, System.StrUtils, ActnList, StdCtrls, Buttons, ToolWin, ComCtrls,
  ExtCtrls, Grids, DBGrids, DBClient, Provider,
  dateUtils,cxGridExportLink,
  frxExportRTF, DataExport, DataToXLS, Menus, ImgList, JvComponentBase,
  JvExControls, JvGradient, frxExportCSV, frxExportText,
  frxExportHTML, frxExportPDF, JvDBLookup, JvExDBGrids, JvDBGrid, JvDBGridFooter,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, System.Actions,
  JvAppStorage, JvAppIniStorage, frxClass, frxDBSet, CompBuscador,VirtualUI_SDK,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, frCoreClasses;

type
  TFormSaldoClientesMensual = class(TFormABMBase)
    DSSaldos: TDataSource;
    DSPSaldos: TDataSetProvider;
    CDSSaldos: TClientDataSet;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frSaldos: TfrxReport;
    frDBSaldos: TfrxDBDataset;
    DSSucursal: TDataSource;
    XLSSaldos: TDataToXLS;
    ExportarXLS: TAction;
    SaveDialog: TSaveDialog;
    pMenu: TPopupMenu;
    ExportarXLS1: TMenuItem;
    Label1: TLabel;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    frxDBEmpresa: TfrxDBDataset;
    Label2: TLabel;
    Label3: TLabel;
    DSVendedores: TDataSource;
    DSZonas: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    lb1: TLabel;
    DSCategoria: TDataSource;
    dbcCategorias: TJvDBLookupCombo;
    pn1: TPanel;
    dbcZona: TJvDBLookupCombo;
    dbcVendedor: TJvDBLookupCombo;
    dbcSucursal: TJvDBLookupCombo;
    CDSSaldosCODIGO: TStringField;
    CDSSaldosNOMBRE: TStringField;
    CDSSaldosTOTAL: TFloatField;
    CDSSaldosSALDO: TFloatField;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    VerImputacion: TAction;
    VerImputacion1: TMenuItem;
    ImputarSaldo: TAction;
    N1: TMenuItem;
    ImputarSaldo1: TMenuItem;
    JvLabel1: TJvLabel;
    dbcCobrador: TJvDBLookupCombo;
    DSCobrador: TDataSource;
    CDSCobrador: TClientDataSet;
    CDSCobradorNOMBRE: TStringField;
    CDSCobradorCODIGO: TStringField;
    DSPCobrador: TDataSetProvider;
    QSucursal: TFDQuery;
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
    QVendedor: TFDQuery;
    QVendedorCODIGO: TStringField;
    QVendedorNOMBRE: TStringField;
    QZona: TFDQuery;
    QZonaID_ZONA: TIntegerField;
    QZonaDETALLE: TStringField;
    QZonaCOMISION: TFloatField;
    QCategoria: TFDQuery;
    QCategoriaID: TIntegerField;
    QCategoriaDETALLE: TStringField;
    QSaldos: TFDQuery;
    CDSSaldosMUYVENCIDO: TFloatField;
    CDSSaldosVENCIDO30: TFloatField;
    CDSSaldosVENCIDO60: TFloatField;
    CDSSaldosVENCIDO90: TFloatField;
    CDSSaldosANTICIPOS: TFloatField;
    CDSSaldosIMPORTEULTIMOPAGO: TFloatField;
    pcMovimientos: TPageControl;
    pag1: TTabSheet;
    Pag2: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MUYVENCIDO: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO90: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO60: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO30: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1ANTICIPOS: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTEULTIMOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1ULTIMOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    QDetalleSaldo: TFDQuery;
    DSDetalleSaldo: TDataSource;
    QDetalleSaldoCLIENTE: TStringField;
    QDetalleSaldoNOMBRE: TStringField;
    QDetalleSaldoID_CPBTE: TIntegerField;
    QDetalleSaldoTIPOCPBTE: TStringField;
    QDetalleSaldoCLASECPBTE: TStringField;
    QDetalleSaldoNROCPBTE: TStringField;
    QDetalleSaldoDEBE: TFloatField;
    QDetalleSaldoHABER: TFloatField;
    QDetalleSaldoSALDO: TFloatField;
    QDetalleSaldoANIO: TSmallintField;
    QDetalleSaldoMES: TSmallintField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QDetalleSaldo_2: TFDQuery;
    QDetalleSaldo_2CODIGO: TStringField;
    QDetalleSaldo_2NOMBRE: TStringField;
    QDetalleSaldo_2TIPOCPBTE: TStringField;
    QDetalleSaldo_2CLASECPBTE: TStringField;
    QDetalleSaldo_2NROCPBTE: TStringField;
    QDetalleSaldo_2IMPORTEULTIMOPAGO: TFloatField;
    QDetalleSaldo_2VENCIDO30: TFloatField;
    QDetalleSaldo_2VENCIDO60: TFloatField;
    QDetalleSaldo_2VENCIDO90: TFloatField;
    QDetalleSaldo_2MUYVENCIDO: TFloatField;
    QDetalleSaldo_2ANTICIPOS: TFloatField;
    QDetalleSaldo_2TOTAL: TFloatField;
    QDetalleSaldo_2SALDO: TFloatField;
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1VENCIDO30: TcxGridDBColumn;
    cxGrid2DBTableView1VENCIDO60: TcxGridDBColumn;
    cxGrid2DBTableView1VENCIDO90: TcxGridDBColumn;
    cxGrid2DBTableView1MUYVENCIDO: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid2DBTableView1SALDO: TcxGridDBColumn;
    cxGrid2DBTableView1ANTICIPOS: TcxGridDBColumn;
    pnPie: TPanel;
    JvLabel2: TJvLabel;
    CDSSaldosDIRECCION: TStringField;
    CDSSaldosULTIMOPAGO: TSQLTimeStampField;
    QDetalleSaldo_2ULTIMOPAGO: TSQLTimeStampField;
    QDetalleSaldoFECHAVTA: TSQLTimeStampField;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSEmpresaTASA_LEY15311: TFloatField;
    CDSEmpresaDIRECCION_OPERACION: TStringField;
    procedure BuscarExecute(Sender: TObject);
    procedure dbgSaldos_oldTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure VerImputacionExecute(Sender: TObject);
    procedure ImputarSaldoExecute(Sender: TObject);
    procedure cxGrid1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGrid1DBTableView1MUYVENCIDOHeaderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Aux_0,Aux_1,Aux_2,Aux_3,Aux_4,Aux_5:Extended;
    Mascara:String;
    procedure Suma;
  end;

var
  FormSaldoClientesMensual: TFormSaldoClientesMensual;

implementation

uses UAplicacionesCCVta_2, UDMain_FD;

{$R *.DFM}

procedure TFormSaldoClientesMensual.Suma;
var CDSClone:TClientDataSet;
begin
  Aux_0:=0;
  Aux_1:=0;
  Aux_2:=0;
  Aux_3:=0;
  Aux_4:=0;
  Aux_5:=0;
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSSaldos,True);
  CDSClone.First;
  while Not(CDSclone.Eof) do
    begin
      Aux_0:=Aux_0+CDSClone.FieldByName('VENCIDO30').AsFLoat;
      Aux_1:=Aux_1+CDSClone.FieldByName('VENCIDO60').AsFLoat;
      Aux_2:=Aux_2+CDSClone.FieldByName('VENCIDO90').AsFLoat;
      Aux_3:=Aux_3+CDSClone.FieldByName('MUYVENCIDO').AsFLoat;
      Aux_4:=Aux_4+CDSClone.FieldByName('TOTAL').AsFLoat;
      Aux_5:=Aux_5+CDSClone.FieldByName('ANTICIPOS').AsFLoat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;



procedure TFormSaldoClientesMensual.VerImputacionExecute(Sender: TObject);
begin
  inherited;
  if (Not(Assigned(FormAplicacionesCCVta_2))) then
    FormAplicacionesCCVta_2:=TFormAplicacionesCCVta_2.Create(Self);
  FormAplicacionesCCVta_2.edCodigo.Text        :=CDSSaldosCODIGO.Value;
  FormAplicacionesCCVta_2.edMuestraCliente.Text:=CDSSaldosNOMBRE.Value;
  FormAplicacionesCCVta_2.TraeCC(CDSSaldosCODIGO.Value);
  FormAplicacionesCCVta_2.Show;
 // FreeAndNil(FormAplicacionesCCVta_2);

end;

procedure TFormSaldoClientesMensual.BuscarExecute(Sender: TObject);
const
  meses: array[1..12] of string =('Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic');
var
  desde1,desde2,desde3:TDateTime;
  Titulo1,Titulo2,Titulo3:String;
  d,m,a:word;
  i:Integer;
begin
//  inherited;
  Screen.Cursor:=crHourGlass;
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTACABECERA';
  DMMain_FD.QOpciones.Open;
  Mascara :=DMMain_FD.QOpciones.Fields[0].AsString;
  DMMain_FD.QOpciones.Close;

  DecodeDate(date,a,m,d);
  desde1:=EncodeDate(a,m,1);
//  if m=2 Then
//    begin
//      desde2:=encodedate(a,1,1);
//      desde3:=encodedate(a-1,12,1);
//    end
//  else
//    if m=1 Then
//      begin
//        desde2:=encodedate(a-1,12,1);
//        desde3:=encodedate(a-1,11,1);
//      end
//    else
      begin
        desde2:=IncMonth(Desde1,-1);// encodedate(a,m-1,1);
        desde3:=IncMonth(Desde1,-2); // encodedate(a,m-2,1);
      end;

    CDSSaldos.Close;
    CDSSaldos.IndexDefs.Clear;
    CDSSaldos.IndexName:='';
    CDSSaldos.Params.ParamByName('desde1').Value        := desde1;
    CDSSaldos.Params.ParamByName('desde2').Value        := desde2;
    CDSSaldos.Params.ParamByName('desde3').Value        := desde3;
    CDSSaldos.Params.ParamByName('Suc').AsInteger       := StrToInt(dbcSucursal.value);
    CDSSaldos.Params.ParamByName('Vendedor').AsString   := dbcVendedor.value;
    CDSSaldos.Params.ParamByName('zona').AsInteger      := StrToInt(dbcZona.value);
    CDSSaldos.Params.ParamByName('categoria').AsInteger := dbcCategorias.KeyValue;
    CDSSaldos.Params.ParamByName('cobrador').AsString   := dbcCobrador.KeyValue;
    CDSSaldos.Open;

    QDetalleSaldo_2.Close;
    QDetalleSaldo_2.ParamByName('desde1').Value        := desde1;
    QDetalleSaldo_2.ParamByName('desde2').Value        := desde2;
    QDetalleSaldo_2.ParamByName('desde3').Value        := desde3;
    QDetalleSaldo_2.ParamByName('Suc').AsInteger       := StrToInt(dbcSucursal.value);
    QDetalleSaldo_2.ParamByName('Vendedor').AsString   := dbcVendedor.value;
    QDetalleSaldo_2.ParamByName('zona').AsInteger      := StrToInt(dbcZona.value);
    QDetalleSaldo_2.ParamByName('categoria').AsInteger := dbcCategorias.KeyValue;
    QDetalleSaldo_2.ParamByName('cobrador').AsString   := dbcCobrador.KeyValue;
    QDetalleSaldo_2.Open;


    For i:=0 to CDSSaldos.FieldCount-1 do
      begin
        if (CDSSaldos.Fields[i].DataType=ftBCD) or (CDSSaldos.Fields[i].DataType=ftFMTBcd) Then
          TFMTBCDField(CDSSaldos.fields[i]).DisplayFormat:=Mascara
        else
          if (CDSSaldos.Fields[i].DataType=ftFloat) Then
            TFloatField(CDSSaldos.fields[i]).DisplayFormat:=Mascara;
      end;

    CDSSaldosVENCIDO30.DisplayLabel      := meses[m];
    QDetalleSaldo_2VENCIDO30.DisplayLabel:= meses[m];

    if m=2 Then
      begin
        CDSSaldosVENCIDO60.DisplayLabel       := meses[1];
        CDSSaldosVENCIDO90.DisplayLabel       := meses[12];
        QDetalleSaldo_2VENCIDO60.DisplayLabel := meses[1];
        QDetalleSaldo_2VENCIDO90.DisplayLabel := meses[12];
      end
    else
      if m=1 Then
        begin
          CDSSaldosVENCIDO60.DisplayLabel      := meses[12];
          CDSSaldosVENCIDO90.DisplayLabel      := meses[11];
          QDetalleSaldo_2VENCIDO60.DisplayLabel:= meses[12];
          QDetalleSaldo_2VENCIDO90.DisplayLabel:= meses[11];

        end
      else
        begin
          CDSSaldosVENCIDO60.DisplayLabel       :=meses[m-1];
          CDSSaldosVENCIDO90.DisplayLabel       :=meses[m-2];
          QDetalleSaldo_2VENCIDO60.DisplayLabel :=meses[m-1];
          QDetalleSaldo_2VENCIDO90.DisplayLabel :=meses[m-2];

        end;
  Screen.Cursor:=crDefault;
  cxGrid2DBTableView1.ViewData.Expand(True);
  Suma;

end;

procedure TFormSaldoClientesMensual.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var campo:string;
begin
  campo:=TcxGridDBColumn(AColumn).DataBinding.FieldName;
  try
    campo:=TcxGridDBColumn(AColumn).DataBinding.FieldName;
    with TcxGridDBTableView(sender).DataController.DataSource.DataSet  as TClientDataSet do
      begin
        DisableControls;
        if IndexFieldNames <> Campo then
          IndexFieldNames := Campo // Ascendente
        else
          begin
            AddIndex(Campo, Campo, [], Campo); // Descendente
            IndexName := Campo;
          end;
        EnableControls;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormSaldoClientesMensual.cxGrid1DBTableView1MUYVENCIDOHeaderClick(
  Sender: TObject);
begin
  inherited;
  ShowMessage('Muy Vencido');
end;

procedure TFormSaldoClientesMensual.dbgSaldos_oldTitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
  inherited;
  CDSSaldos.IndexName:=''+AFieldName+'';
end;

procedure TFormSaldoClientesMensual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSSaldos.Close;
  QSucursal.Close;
  QVendedor.Close;
  QZona.Close;
  QCategoria.Close;
  CDSEmpresa.Close;
  inherited;

  Action:=caFree;

end;

procedure TFormSaldoClientesMensual.FormDestroy(Sender: TObject);
begin
  inherited;
  FormSaldoClientesMensual:=nil;
end;

procedure TFormSaldoClientesMensual.ImprimirExecute(Sender: TObject);
begin
  inherited;
 
  CDSEmpresa.Close;
  CDSEmpresa.Open;

  frSaldos.PrintOptions.Printer:=PrNomListados;
  frSaldos.SelectPrinter;
  frSaldos.LoadFromFile(DMMain_FD.PathReportesLst+'\SaldosMensuales.fr3');
  frSaldos.PrintOptions.Printer:=PrNomListados;
  frSaldos.SelectPrinter;
  frSaldos.Variables['Mascara']:=''''+Mascara+'''';
  frSaldos.Variables['Mes1']:=''''+CDSSaldosVENCIDO30.DisplayLabel+'''';
  frSaldos.Variables['Mes2']:=''''+CDSSaldosVENCIDO60.DisplayLabel+'''';
  frSaldos.Variables['Mes3']:=''''+CDSSaldosVENCIDO90.DisplayLabel+'''';
  frSaldos.Variables['Titulo']:='''De Clientes''';
  frSaldos.Variables['SubTitulo']:='''Vendedor: '''+''''+dbcVendedor.Text+''''+'''    Zona: '''+''''+dbcZona.Text+'''';

  frSaldos.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';

  // frCtaCte.PrepareReport;
  frSaldos.ShowReport;
  CDSEmpresa.Close;

end;

procedure TFormSaldoClientesMensual.ImputarSaldoExecute(Sender: TObject);
begin
  inherited;
  if (Not(Assigned(FormAplicacionesCCVta_2))) then
    FormAplicacionesCCVta_2:=TFormAplicacionesCCVta_2.Create(Self);
  FormAplicacionesCCVta_2.edCodigo.Text        :=CDSSaldosCODIGO.Value;
  FormAplicacionesCCVta_2.edMuestraCliente.Text:=CDSSaldosNOMBRE.Value;
  FormAplicacionesCCVta_2.TraeCC(CDSSaldosCODIGO.Value);
  FormAplicacionesCCVta_2.AplicacioAutomatica.Execute;
  FormAplicacionesCCVta_2.Confirma.Execute;
  FormAplicacionesCCVta_2.Close;
  FreeAndNil(FormAplicacionesCCVta_2);
end;



procedure TFormSaldoClientesMensual.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frSaldos.DesignReport;
end;

procedure TFormSaldoClientesMensual.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize :=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QSucursal.Open;
  QVendedor.Open;
  QZona.Open;
  QCategoria.Open;
  CDSCobrador.Open;
  pcMovimientos.ActivePageIndex:=0;
end;

procedure TFormSaldoClientesMensual.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog.FileName  :='SaldosMensual';
  SaveDialog.DefaultExt:='XLS';

  if VirtualUI.Active then
    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  if Not(CDSSaldos.IsEmpty) then
    if SaveDialog.Execute Then
      if SaveDialog.FileName<>'' Then
        begin
          if VirtualUI.Active then
            if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
              SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

          if pcMovimientos.Activepageindex=0 then
            begin
              if VirtualUI.Active then
                XLSSaldos.SaveToFile(SaveDialog.FileName)
              else
                XLSSaldos.SaveToFile(SaveDialog.FileName);
            end
          else
            if pcMovimientos.Activepageindex=1 then
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid2);

          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog.FileName);
        end;

end;

procedure TFormSaldoClientesMensual.FormShow(Sender: TObject);
begin
  inherited;
  dbcSucursal.KeyValue := SucursalPorDefecto;
  dbcSucursal.Enabled  := DMMain_FD.ModificaSucursal;
end;

end.