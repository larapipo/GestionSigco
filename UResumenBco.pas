unit UResumenBco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBCtrls, StdCtrls, Mask, 
  Grids, StrUtils,
  ActnList, ImgList, Buttons, ToolWin, ComCtrls,
  ExtCtrls, Provider, DBClient, Librerias,
  Menus,FileCtrl, DBGrids, JvComponentBase, JvExControls,
  JvGradient, frxExportCSV, frxExportText, frxExportRTF, frxExportPDF,
  frxExportXLS, JvDBLookup, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvToolEdit, JvExMask, JvBaseEdits, JvExDBGrids, JvDBGrid,
  JvAppStorage, JvAppIniStorage, System.Actions, frxClass, DataToAscii,
  DataExport, DataToXLS, frxDBSet,VirtualUI_SDK, CompBuscador, AdvUtil, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, cxCalendar, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, dxSkinWXI, frCoreClasses, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, System.Rtti,
  VCL.TMSFNCDataGridCell, VCL.TMSFNCDataGridData, VCL.TMSFNCDataGridBase,
  VCL.TMSFNCDataGridCore, VCL.TMSFNCDataGridRenderer, VCL.TMSFNCCustomControl,
  VCL.TMSFNCDataGrid ;

type
  TFormResumenBco = class(TFormABMBase)
    BuscadorCta: TAction;
    DSPResumenBco: TDataSetProvider;
    ToolButton1: TToolButton;
    Recalcular: TAction;
    frResumen: TfrxReport;
    frDSResumen: TfrxDBDataset;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    DataToXLS1: TDataToXLS;
    DataToAscii1: TDataToAscii;
    ExportarTxt: TAction;
    SaveDialog: TSaveDialog;
    PopupMenu: TPopupMenu;
    ExportarTxt1: TMenuItem;
    ExportarXLS: TAction;
    ExportarXLS1: TMenuItem;
    DSMovSinConciliar: TDataSource;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    frxDBEmpresa: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    DSResumenTipo: TDataSource;
    CDSResumenBco: TClientDataSet;
    CDSResumenBcoID: TIntegerField;
    CDSResumenBcoTIPO_ORIGEN: TStringField;
    CDSResumenBcoID_ORIGEN: TIntegerField;
    CDSResumenBcoNUMERO_BOLETA: TStringField;
    CDSResumenBcoNUMERO_CHEQUE: TIntegerField;
    CDSResumenBcoID_CTA_BCO: TIntegerField;
    CDSResumenBcoDETALLE: TStringField;
    CDSResumenBcoCONCILIADO: TStringField;
    CDSResumenBcoANULADO: TStringField;
    CDSBuscadorCta: TClientDataSet;
    DSPBuscadorCta: TDataSetProvider;
    CDSBuscadorCtaID_CUENTA: TIntegerField;
    CDSBuscadorCtaNOMBRE: TStringField;
    CDSBuscadorCtaNRO_CUENTA: TStringField;
    CDSBuscadorCtaCUIT: TStringField;
    CDSMovSinConciliar: TClientDataSet;
    DSPMovSinConciliar: TDataSetProvider;
    CDSMovSinConciliarID: TIntegerField;
    CDSMovSinConciliarTIPO_ORIGEN: TStringField;
    CDSMovSinConciliarID_ORIGEN: TIntegerField;
    CDSMovSinConciliarNUMERO_BOLETA: TStringField;
    CDSMovSinConciliarNUMERO_CHEQUE: TIntegerField;
    CDSMovSinConciliarID_CTA_BCO: TIntegerField;
    CDSMovSinConciliarDETALLE: TStringField;
    CDSMovSinConciliarCONCILIADO: TStringField;
    CDSMovSinConciliarANULADO: TStringField;
    pcDetalles: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgMovSinConcilar: TJvDBGrid;
    pnCabecera: TPanel;
    Label1: TLabel;
    spRecalcula: TSpeedButton;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel6: TJvLabel;
    edNombreCta: TEdit;
    edNroCta: TEdit;
    UpDown1: TUpDown;
    chbModificaInical: TCheckBox;
    dbcTipos: TJvDBLookupCombo;
    ceCtaBco: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    SaldoInicial: TJvCalcEdit;
    edBanco: TEdit;
    rgTipoMov: TRadioGroup;
    dbgAnterior: TJvDBGrid;
    CDSSaldoAnteriorMov: TClientDataSet;
    DSPSaldoAnteriroMov: TDataSetProvider;
    CDSSaldoAnteriorMovID: TIntegerField;
    CDSSaldoAnteriorMovTIPO_ORIGEN: TStringField;
    CDSSaldoAnteriorMovID_ORIGEN: TIntegerField;
    CDSSaldoAnteriorMovNUMERO_BOLETA: TStringField;
    CDSSaldoAnteriorMovNUMERO_CHEQUE: TIntegerField;
    CDSSaldoAnteriorMovID_CTA_BCO: TIntegerField;
    CDSSaldoAnteriorMovDETALLE: TStringField;
    CDSSaldoAnteriorMovCONCILIADO: TStringField;
    CDSSaldoAnteriorMovANULADO: TStringField;
    DSSaldoAnteriorMov: TDataSource;
    CDSSaldoAnteriorMovSALDOCALCULADO: TFMTBCDField;
    Label2: TLabel;
    CDSResumenBcoSALDOCALCULADO: TFloatField;
    rgFeche: TRadioGroup;
    TabSheet3: TTabSheet;
    pnTotales: TPanel;
    edDebe: TJvCalcEdit;
    edHaber: TJvCalcEdit;
    edSaldo: TJvCalcEdit;
    edConciliado: TJvCalcEdit;
    spSelect: TSpeedButton;
    spunselect: TSpeedButton;
    JvLabel1: TJvLabel;
    edFechaDebito: TJvDateEdit;
    cxGridResumenDBTableView1: TcxGridDBTableView;
    cxGridResumenLevel1: TcxGridLevel;
    cxGridResumen: TcxGrid;
    cxGridResumenDBTableView1TIPO_ORIGEN: TcxGridDBColumn;
    cxGridResumenDBTableView1NUMERO_BOLETA: TcxGridDBColumn;
    cxGridResumenDBTableView1NUMERO_CHEQUE: TcxGridDBColumn;
    cxGridResumenDBTableView1FECHA_INGR: TcxGridDBColumn;
    cxGridResumenDBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxGridResumenDBTableView1DETALLE: TcxGridDBColumn;
    cxGridResumenDBTableView1DEBE: TcxGridDBColumn;
    cxGridResumenDBTableView1HABER: TcxGridDBColumn;
    cxGridResumenDBTableView1SALDO: TcxGridDBColumn;
    cxGridResumenDBTableView1SALDOCALCULADO: TcxGridDBColumn;
    cxGridResumenDBTableView1PENDIENTE_COBRO: TcxGridDBColumn;
    cxGridResumenDBTableView1CONCILIADO: TcxGridDBColumn;
    chRecalcular: TCheckBox;
    ComBuscadorCta: TComBuscador;
    QBusCta: TFDQuery;
    QCtaBco: TFDQuery;
    QCtaBcoID_CUENTA: TIntegerField;
    QCtaBcoID_TIPO_CTA: TIntegerField;
    QCtaBcoNOMBRE: TStringField;
    QCtaBcoNRO_CUENTA: TStringField;
    QCtaBcoID_BANCO: TIntegerField;
    QCtaBcoCUIT: TStringField;
    QCtaBcoRAZONSOCIAL: TStringField;
    QCtaBcoMUESTRABANCO: TStringField;
    QResumenBco: TFDQuery;
    QResumenBcoID: TIntegerField;
    QResumenBcoTIPO_ORIGEN: TStringField;
    QResumenBcoID_ORIGEN: TIntegerField;
    QResumenBcoNUMERO_BOLETA: TStringField;
    QResumenBcoNUMERO_CHEQUE: TIntegerField;
    QResumenBcoID_CTA_BCO: TIntegerField;
    QResumenBcoDETALLE: TStringField;
    QResumenBcoDEBE: TFloatField;
    QResumenBcoHABER: TFloatField;
    QResumenBcoSALDO: TFloatField;
    QResumenBcoPENDIENTE_COBRO: TFloatField;
    QResumenBcoCONCILIADO: TStringField;
    QResumenBcoANULADO: TStringField;
    CDSResumenBcoDEBE: TFloatField;
    CDSResumenBcoHABER: TFloatField;
    CDSResumenBcoSALDO: TFloatField;
    CDSResumenBcoPENDIENTE_COBRO: TFloatField;
    QSaldoAnteriorMov: TFDQuery;
    CDSSaldoAnteriorMovDEBE: TFloatField;
    CDSSaldoAnteriorMovHABER: TFloatField;
    CDSSaldoAnteriorMovSALDO: TFloatField;
    CDSSaldoAnteriorMovPENDIENTE_COBRO: TFloatField;
    QTipos: TFDQuery;
    QTiposTIPO_ORIGEN: TStringField;
    QSaldoAnterior: TFDQuery;
    QSaldoAnteriorSALDO: TFloatField;
    QMovSinConc: TFDQuery;
    CDSMovSinConciliarDEBE: TFloatField;
    CDSMovSinConciliarHABER: TFloatField;
    CDSMovSinConciliarSALDO: TFloatField;
    CDSMovSinConciliarPENDIENTE_COBRO: TFloatField;
    QResumenBcoFECHA_INGR: TSQLTimeStampField;
    QResumenBcoFECHA_COBRO: TSQLTimeStampField;
    CDSResumenBcoFECHA_INGR: TSQLTimeStampField;
    CDSResumenBcoFECHA_COBRO: TSQLTimeStampField;
    CDSSaldoAnteriorMovFECHA_INGR: TSQLTimeStampField;
    CDSSaldoAnteriorMovFECHA_COBRO: TSQLTimeStampField;
    CDSMovSinConciliarFECHA_INGR: TSQLTimeStampField;
    CDSMovSinConciliarFECHA_COBRO: TSQLTimeStampField;
    TabSheet4: TTabSheet;
    OpenDialog1: TOpenDialog;
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    sgResumen: TAdvStringGrid;
    Label3: TLabel;
    TabSheet5: TTabSheet;
    TMSFNCDataGrid1: TTMSFNCDataGrid;
    procedure BuscadorCtaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure rgTipoMovClick(Sender: TObject);
    procedure CDSResumenBcoCONCILIADOSetText(Sender: TField;
      const Text: String);
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure ceCtaBcoKeyPress(Sender: TObject; var Key: Char);
    procedure ceCtaBcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure RecalcularExecute(Sender: TObject);
    procedure SaldoInicialKeyPress(Sender: TObject; var Key: Char);
    procedure chbModificaInicalClick(Sender: TObject);
    procedure ExportarTxtExecute(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbcTiposClick(Sender: TObject);
    procedure dbgAnteriorTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgMovimientosCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure pcDetallesChange(Sender: TObject);
    procedure spSelectClick(Sender: TObject);
    procedure spunselectClick(Sender: TObject);
    procedure CDSResumenBcoFECHA_COBROValidate(Sender: TField);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure sgResumenGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure sgResumenGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure cxGridResumenDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    D:Real;
    H:Real;
    S,S2:Real;
    Puntero:TBookmark;
    function AsignarCtaBco(dato:integer):boolean;
    { Public declarations }
  end;

var
  FormResumenBco: TFormResumenBco;

implementation

uses UDMAin_FD, ULiquidacionTC, UGastosBancarios, UOPago_2,
  URecibo_2, UEgresoCaja;
{$R *.DFM}


function TFormResumenBco.AsignarCtaBco(dato:Integer):Boolean;
begin
  QCtaBco.Close;
  QCtaBco.ParamByName('id').Value:=Dato;
  QCtaBco.Open;
  if not(QCtaBco.IsEmpty) Then
    begin
      Result:=True;
      ceCtaBco.Text      := inttostr(Dato);
      edNombreCta.Text   := QCtaBcoNOMBRE.Value;
      edBanco.Text       := QCtaBcoMUESTRABANCO.Value;
      edNroCta.Text      := QCtaBcoNRO_CUENTA.Value;
    end
  else
    begin
      Result:=False;
      ceCtaBco.Text      := '';
      edNombreCta.Text   := '';
      edBanco.Text       := '';
      edNroCta.Text      := '';
    end
end;

procedure TFormResumenBco.BuscadorCtaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCta.Close;
  CDSBuscadorCta.Open;
  comBuscadorCta.Execute;
  if comBuscadorCta.rOk  Then
      AsignarCtaBco(comBuscadorCta.Id);
  CDSBuscadorCta.Close;
  Buscar.Execute;

end;

procedure TFormResumenBco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSResumenBco.Close;
  Action:=caFree;
end;

procedure TFormResumenBco.FormDestroy(Sender: TObject);
begin
  inherited;
  FormResumenBco:=nil;
end;

procedure TFormResumenBco.BuscarExecute(Sender: TObject);
begin
//  inherited;
  if ceCtaBco.Text<>'' Then
    begin
      case rgFeche.ItemIndex of
         0:CDSResumenBco.CommandText:= 'select * from resumen_bco_det '+
                                       'where id_cta_bco = :id and fecha_Ingr>= :Desde and '+
                                       ' fecha_Ingr<= :hasta and conciliado<>:conciliado '+
                                       'order by fecha_Ingr,id ';
         1:CDSResumenBco.CommandText:= 'select * from resumen_bco_det '+
                                       'where id_cta_bco=:id and fecha_cobro>= :Desde and '+
                                       'fecha_cobro<= :hasta and conciliado<>:conciliado '+
                                       'order by fecha_cobro,id ';

      end;

      if rgTipoMov.ItemIndex=0 Then
        CDSResumenBco.Params.ParamByName('conciliado').Value:='X'
      else
        if rgTipoMov.ItemIndex=1 Then
          CDSResumenBco.Params.ParamByName('conciliado').Value:='S'
        else
          if rgTipoMov.ItemIndex=2 Then
            CDSResumenBco.Params.ParamByName('conciliado').Value:='N';

      CDSResumenBco.Close;
      CDSResumenBco.Params.ParamByName('id').Value:=StrToInt(ceCtaBco.Text);
      CDSResumenBco.Params.ParamByName('desde').Value:=Desde.Date;
      CDSResumenBco.Params.ParamByName('hasta').Value:=Hasta.Date;
      CDSResumenBco.Open;

      CDSMovSinConciliar.Close;
      CDSMovSinConciliar.Params.ParamByName('id').Value:=StrToInt(ceCtaBco.Text);
      CDSMovSinConciliar.Open;

       case rgFeche.ItemIndex of
         0:QTipos.SQL.Text:= 'select * from resumen_bco_det '+
                                       'where id_cta_bco=:id and fecha_Ingr>= :Desde and fecha_Ingr<= :hasta and conciliado<>:conciliado '+
                                       'order by fecha_Ingr,id ';
         1:QTipos.SQL.Text:= 'select * from resumen_bco_det '+
                                       'where id_cta_bco=:id and fecha_cobro>= :Desde and fecha_cobro<= :hasta and conciliado<>:conciliado '+
                                       'order by fecha_cobro,id ';

//select tipo_origen from resumen_bco_det
//where id_cta_bco=:id and fecha_Ingr>=:Desde and fecha_Ingr<=:hasta and
//conciliado<>:conciliado
//group by tipo_origen


      end;



      QTipos.Close;
      QTipos.ParamByName('id').Value:=StrToInt(ceCtaBco.Text);
      QTipos.ParamByName('desde').AsDate:=Desde.Date;
      QTipos.ParamByName('hasta').AsDate:=Hasta.Date;

      if rgTipoMov.ItemIndex=0 Then
        QTipos.ParamByName('conciliado').Value:='X'
      else
        if rgTipoMov.ItemIndex=1 Then
          QTipos.ParamByName('conciliado').Value:='S'
        else
          if rgTipoMov.ItemIndex=2 Then
            QTipos.ParamByName('conciliado').Value:='N';

      QTipos.Open;
      ReCalcular.Execute;
    end
  else
    ShowMessage('No se Selecciono un Banco...');

end;

procedure TFormResumenBco.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde   := 2;
  AutoSize := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AddClientDataSet(CDSResumenBco,DSPResumenBco);
  CDSResumenBco.Open;
  SaldoInicial.Enabled       := chbModificaInical.Checked;
  spRecalcula.Enabled        := chbModificaInical.Checked;
  pcDetalles.ActivePageIndex := 0;
  pnPrincipal.Enabled        := True;
end;

procedure TFormResumenBco.DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
  var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormResumenBco.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
  Modificar.Enabled :=DSBase.State = dsBrowse;
//  Cancelar.Enabled  :=DSBase.State in [dsEdit,dsInsert];
//  Confirma.Enabled  :=DSBase.State in [dsEdit,dsInsert];

 end;

procedure TFormResumenBco.CancelarExecute(Sender: TObject);
begin
  inherited;
  if CDSResumenBco.active=true then
    begin
      CDSResumenBco.Cancel;
      CDSResumenBco.EmptyDataSet;
    end;
  CDSResumenBco.Close;
  CDSMovSinConciliar.Close;
end;

procedure TFormResumenBco.rgTipoMovClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormResumenBco.CDSResumenBcoCONCILIADOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if CDSResumenBco.State=dsBrowse then
    CDSResumenBco.Edit;
  Sender.AsString:=Text;
  if (Sender.AsString='S') and ((CDSResumenBcoTIPO_ORIGEN.Value='CHP') or
     (CDSResumenBcoTIPO_ORIGEN.Value='REM') or (CDSResumenBcoTIPO_ORIGEN.Value='ANU') or (CDSResumenBcoTIPO_ORIGEN.Value='TCR') ) Then
    CDSResumenBcoPENDIENTE_COBRO.AsFloat:=0
  else
    if (Sender.AsString='N') and ((CDSResumenBcoTIPO_ORIGEN.Value='CHP') or
      (CDSResumenBcoTIPO_ORIGEN.Value='REM') or (CDSResumenBcoTIPO_ORIGEN.Value='ANU') or (CDSResumenBcoTIPO_ORIGEN.Value='TCR') ) Then
      CDSResumenBcoPENDIENTE_COBRO.Value:=CDSResumenBcoHABER.Value;

  if (Sender.AsString='S') and (CDSResumenBcoTIPO_ORIGEN.Value='CHP') then
    begin
      if  MessageDlg('Modifica la Fecha de Debito a '+DateToStr(edFechaDebito.Date)+ '....?',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
        CDSResumenBcoFECHA_COBRO.AsDateTime:=edFechaDebito.Date;
    end;
  if CDSResumenBco.State<>dsBrowse then
    CDSResumenBco.Post;
  ReCalcular.Execute;
end;

procedure TFormResumenBco.CDSResumenBcoFECHA_COBROValidate(Sender: TField);
var d:TDateTime;
begin
  inherited;
  try
    d:=StrToDate(sender.AsString);
  except
    Sender.AsDateTime:=Date;
  end;
end;

procedure TFormResumenBco.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M));
  edFechaDebito.Date:=Date;
end;

procedure TFormResumenBco.HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
  var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormResumenBco.ImprimirExecute(Sender: TObject);
BEGIN
  CDSEmpresa.Close;
  CDSEmpresa.Open;
  frResumen.PrintOptions.Printer:=PrNomListados;
  frResumen.SelectPrinter;

  frResumen.LoadFromFile(DMMain_FD.PathReportesLst+'\ResumenBanco.fr3');
  frResumen.Variables['Banco']  := ''''+edNombreCta.Text+'''';
  frResumen.Variables['NroCta'] := ''''+edNroCta.Text+'''';
  frResumen.Variables['Desde']  := ''''+DateToStr(Desde.Date)+'''';
  frResumen.Variables['Hasta']  := ''''+DateToStr(Hasta.Date)+'''';
  frResumen.Variables['Inicial']:= ''''+FloatToStr(SaldoInicial.Value)+'''';

  frResumen.PrintOptions.Copies := 1;
  frResumen.ShowReport;
  CDSEmpresa.Close;
end;

procedure TFormResumenBco.pcDetallesChange(Sender: TObject);
var SaldoAux:Extended;
begin
  inherited;
  if (pcDetalles.ActivePageIndex=2) and  (Trim(ceCtaBco.Text)<>'') then
    begin
      Screen.Cursor:=crHourGlass;
      CDSSaldoAnteriorMov.Close;
      CDSSaldoAnteriorMov.IndexDefs.Clear;
      CDSSaldoAnteriorMov.IndexName:='';

      case rgFeche.ItemIndex of

        0: CDSSAldoAnteriorMov.CommandText:='select  b.*  from resumen_bco_det b '+
                                            'where ((b.id_cta_bco = :id ) and (b.fecha_ingr < :Desde)) '+
                                            'and ( b.anulado=''N'' or b.anulado=''R'' ) order by b.fecha_ingr ';

        1: CDSSAldoAnteriorMov.CommandText:='select  b.*  from resumen_bco_det b '+
                                            'where ((b.id_cta_bco = :id ) and (b.fecha_cobro < :Desde)) '+
                                            'and ( b.anulado=''N'' or b.anulado=''R'' ) order by b.fecha_cobro ';
      end;

      CDSSaldoAnteriorMov.Params.ParamByName('id').Value    :=StrToInt(ceCtaBco.Text);
      CDSSaldoAnteriorMov.Params.ParamByName('desde').AsDate:=Desde.Date;
      CDSSaldoAnteriorMov.Open;

      if CDSSaldoAnteriorMov.RecordCount>0 then
        begin
          CDSSaldoAnteriorMov.First;
          CDSSaldoAnteriorMov.DisableControls;
          CDSSaldoAnteriorMov.Edit;
          SaldoAux:=0;
          CDSSaldoAnteriorMovSALDOCALCULADO.AsFloat:=0;
          while not(CDSSaldoAnteriorMov.eof) do
            begin
              if CDSSaldoAnteriorMov.State=dsBrowse then
                CDSSaldoAnteriorMov.Edit;
              SaldoAux:=SaldoAux + CDSSaldoAnteriorMovDEBE.AsFloat-
                                   CDSSaldoAnteriorMovHABER.AsFloat;

              CDSSaldoAnteriorMovSALDOCALCULADO.AsFloat:= SaldoAux;
              CDSSaldoAnteriorMov.Next;
            end;
          CDSSaldoAnteriorMov.First;
        end;
      CDSSaldoAnteriorMov.EnableControls;
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFormResumenBco.dbgAnteriorTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
var campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgAnterior.DataSource.DataSet as TClientDataSet do
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

procedure TFormResumenBco.dbcTiposClick(Sender: TObject);
begin
  inherited;
  CDSResumenBco.Filter:='';
  CDSResumenBco.Filtered:=False;
  if dbcTipos.KeyValue<>'***' then
    begin
      CDSResumenBco.Filter:= 'tipo_origen = '+''''+ dbcTipos.KeyValue +'''';
      CDSResumenBco.Filtered:=True;
    end;

end;

procedure TFormResumenBco.ceCtaBcoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 Then
    begin
     key:=#0;
      if Not(AsignarCtaBco(StrToInt(ceCtaBco.Text))) Then
        begin
          CDSResumenBco.Close;
          ceCtaBco.Text:='';
          ceCtaBco.SetFocus;
        end
      else
          Buscar.Execute;
     end;
end;

procedure TFormResumenBco.ceCtaBcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (key=vk_delete) or (Key=VK_back) Then
    begin
      ceCtaBco.Text:='';
      edNombreCta.Text:='';
    end;
end;

procedure TFormResumenBco.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // inherited;

end;

procedure TFormResumenBco.FormResize(Sender: TObject);
begin
  inherited;
  if FormResumenBco<>nil then
    if FormResumenBco.Width<>1062 then
      FormResumenBco.Width:=1062;
end;

procedure TFormResumenBco.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  if ceCtaBco.Text<>'' Then
  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormResumenBco.RecalcularExecute(Sender: TObject);
var SaldoAux:real;//Extended;
begin
  inherited;
{
   0:CDSResumenBco.CommandText:= 'select * from resumen_bco_det '+
                                       'where id_cta_bco = :id and fecha_Ingr>= :Desde and '+
                                       ' fecha_Ingr<= :hasta and conciliado<>:conciliado '+
                                       'order by fecha_Ingr,id ';
         1:CDSResumenBco.CommandText:= 'select * from resumen_bco_det '+
                                       'where id_cta_bco=:id and fecha_cobro>= :Desde and '+
                                       'fecha_cobro<= :hasta and conciliado<>:conciliado '+
                                       'order by fecha_cobro,id ';

}

  if chRecalcular.Checked then
    begin
      QSaldoAnterior.Close;
      case rgFeche.ItemIndex of
        0: QSaldoAnterior.SQL.Text:='select ( Sum ( b.debe ) - Sum ( b.haber )) as Saldo  from resumen_bco_det b '+
                                    'where ((b.id_cta_bco = :id ) and (b.fecha_ingr < :Desde)) '+
                                    'and  b.conciliado=''S'' ';

 //      0: QSaldoAnterior.SQL.Text:='select ( Sum ( b.debe ) - Sum ( b.haber )) as Saldo  from resumen_bco_det b '+
 //                                   'where ((b.id_cta_bco = :id ) and (b.fecha_ingr < :Desde)) '+
 //                                   'and ( b.anulado=''N'' or b.anulado=''R'' ) and b.conciliado=''S'' ';

                                   // 'and ( b.anulado=''N'' or b.anulado=''R'' ) and b.conciliado=''S'' ';

        1: QSaldoAnterior.SQL.Text:='select ( Sum ( b.debe ) - Sum ( b.haber )) as Saldo  from resumen_bco_det b '+
                                    'where ((b.id_cta_bco = :id ) and (b.fecha_Cobro < :Desde)) '+
                                    'and b.conciliado=''S'' ';
//        1: QSaldoAnterior.SQL.Text:='select ( Sum ( b.debe ) - Sum ( b.haber )) as Saldo  from resumen_bco_det b '+
//                                    'where ((b.id_cta_bco = :id ) and (b.fecha_Cobro < :Desde)) '+
//                                    'and ( b.anulado=''N'' or b.anulado=''R'' ) and b.conciliado=''S'' ';

      end;
      QSaldoAnterior.ParamByName('id').Value    :=StrToInt(ceCtaBco.Text);
      QSaldoAnterior.ParamByName('desde').AsDate:=Desde.Date;
      QSaldoAnterior.Open;

      if chbModificaInical.Checked=False Then
        begin
          if QSaldoAnterior.Fields[0].AsString<>'' Then
            SaldoInicial.Value:=QSaldoAnterior.Fields[0].AsFloat
          else
            SaldoInicial.Value:=0;
        end;
      QSaldoAnterior.Close;

      D:=0;
      H:=0;
      S:=SaldoInicial.Value;
      // S2 lo uso para llever el saldo con el debe y haber aunque no haya sido conciliado
      S2:=SaldoInicial.Value;
       //calculo los saldos por renglon y total
      Puntero:=CDSResumenBco.GetBookmark;
      CDSResumenBco.DisableControls;
      CDSResumenBco.First;
      edDebe.Value      :=0;
      edHaber.Value     :=0;
      edSaldo.Value     :=s;
      edConciliado.Value:=0;
      while Not(CDSResumenBco.Eof) do
        begin
          D := CDSResumenBcoDEBE.AsFloat;
          H := CDSResumenBcoHABER.AsFloat;
          CDSResumenBco.Edit;
          CDSResumenBcoSALDO.AsFloat:= S2 + D - H;
          if CDSResumenBcoCONCILIADO.Value='S' Then
            CDSResumenBcoSaldoCalculado.Value := S + D - H
          else
            CDSResumenBcoSaldoCalculado.Value := S ;
          S:= CDSResumenBcoSaldoCalculado.Value;
          S2:=CDSResumenBcoSALDO.AsFloat;
          edDebe.Value      := edDebe.Value + CDSResumenBcoDEBE.AsFloat;
          edHaber.Value     := edHaber.Value+ CDSResumenBcoHABER.AsFloat;
          edConciliado.Value:= CDSResumenBcoSaldoCalculado.AsFloat;
          CDSResumenBco.Next;
        end;
      if CDSResumenBco.State<>dsBrowse then
        CDSResumenBco.Post;
      edSaldo.Value:=edSaldo.Value + edDebe.Value - edHaber.Value;
      if CDSResumenBco.RecordCount>1 then

      CDSResumenBco.GotoBookmark(puntero);
      CDSResumenBco.FreeBookmark(Puntero);
      CDSResumenBco.EnableControls;
    end;

end;

procedure TFormResumenBco.SaldoInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    Recalcular.Execute;
end;

procedure TFormResumenBco.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
   frResumen.DesignReport;
end;

procedure TFormResumenBco.sgResumenGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
 case acol of
    2,4:HAlign:=taRightJustify;
  end;
end;



procedure TFormResumenBco.sgResumenGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  inherited;
  case ACol of
    2,4: AStyle := ssFinancial;
  end;
end;

procedure TFormResumenBco.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute Then
    if  OpenDialog1.FileName<>'' Then
      begin
        edPath.Text:=OpenDialog1.FileName;

        sgResumen.LoadFromCSV(edPath.Text);
      end;
end;

procedure TFormResumenBco.spSelectClick(Sender: TObject);
begin
  inherited;
  CDSResumenBco.First;
  while Not(CDSResumenBco.Eof) do
    begin
      if CDSResumenBcoCONCILIADO.Value='N' then
        begin
          CDSResumenBco.Edit;
          CDSResumenBcoCONCILIADOSetText(CDSResumenBcoCONCILIADO,'S');
        end;
      CDSResumenBco.Next;
    end;
end;

procedure TFormResumenBco.spunselectClick(Sender: TObject);
begin
  inherited;
  CDSResumenBco.First;
  while Not(CDSResumenBco.Eof) do
    begin
      CDSResumenBco.Edit;
      CDSResumenBcoCONCILIADOSetText(CDSResumenBcoCONCILIADO,'N');
      CDSResumenBco.Next;
    end;
end;

procedure TFormResumenBco.chbModificaInicalClick(Sender: TObject);
begin
  inherited;
  SaldoInicial.Enabled:=chbModificaInical.Checked;
  spRecalcula.Enabled :=chbModificaInical.Checked;
  if chbModificaInical.Checked=False Then
    Recalcular.Execute;
end;

procedure TFormResumenBco.CheckBox1Click(Sender: TObject);
begin
  inherited;
  sgResumen.FilterDropDownAuto:=CheckBox1.Checked;
end;

procedure TFormResumenBco.ConfirmaExecute(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormResumenBco.cxGridResumenDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var Q:TFDQuery;
begin
  inherited;
  if CDSResumenBcoTIPO_ORIGEN.Value='TCR' then
    begin
      if Not(Assigned(FormliquidacionTC)) then
        FormLiquidacionTC:= TFormLiquidacionTC.Create(Self);
      FormLiquidacionTC.datoNew:=CDSResumenBcoID_ORIGEN.AsString;
      FormLiquidacionTC.Recuperar.Execute;
      FormLiquidacionTC.Show;
    end
  else
    if CDSResumenBcoTIPO_ORIGEN.Value='GAS' then
      begin
        if Not(Assigned(FormMovEgr_IngBancos)) then
          FormMovEgr_IngBancos := TFormMovEgr_IngBancos.Create(Self);
        FormMovEgr_IngBancos.datoNew :=CDSResumenBcoID_ORIGEN.AsString;
        FormMovEgr_IngBancos.Recuperar.Execute;
        FormMovEgr_IngBancos.Show;
      end
    else
      begin
        Q:=TFDQuery.Create(nil);
        q.Connection:=DMMain_FD.fdcGestion;
        if CDSResumenBcoTIPO_ORIGEN.AsString='CHP' then
          begin
            Q.SQL.Text:='''
                          select c.id_mov_caja,cm.tipo_comprob,cm.clase_comprob,cm.id_comprobante from cheque_propio c
                          left join caja_mov cm on cm.id_mov_caja=c.id_mov_caja
                          where c.id_cheque_pro=:id
                        ''';
            Q.ParamByName('id').Value:=CDSResumenBcoID_ORIGEN.Value;
            Q.Open;
            if q.FieldByName('tipo_comprob').Value='OP' then
              begin
                if Not(Assigned(FormOPago_2)) then
                  FormOPago_2 := TFormOPago_2.Create(Self);
                FormOPago_2.datoNew   := q.FieldByName('id_comprobante').Value;
                FormOPago_2.TipoCpbte := q.FieldByName('tipo_comprob').Value;

                FormOPago_2.Recuperar.Execute;
                FormOPago_2.Show;
              end;
            q.Close;
            FreeAndNil(Q);
          end
        else
          if CDSResumenBcoTIPO_ORIGEN.AsString='TRA' then
            begin
              if CDSResumenBcoHABER.Value>0 then
                Q.SQL.Text:='''
                              select c.id_mov_caja,cm.tipo_comprob,cm.clase_comprob,cm.id_comprobante from transf_banco_emitidas c
                              left join caja_mov cm on cm.id_mov_caja=c.id_mov_caja
                              where c.id_mov_caja=:id
                            '''
              else
                if CDSResumenBcoDEBE.Value>0 then
                  Q.SQL.Text:='''
                                select c.id_mov_caja,cm.tipo_comprob,cm.clase_comprob,cm.id_comprobante from transf_banco_recibidas c
                                left join caja_mov cm on cm.id_mov_caja=c.id_mov_caja
                                where c.id_mov_caja=:id
                              ''';

              Q.ParamByName('id').Value:=CDSResumenBcoID_ORIGEN.Value;
              Q.Open;

              if (q.FieldByName('tipo_comprob').Value='OP') Then
                begin
                  if Not(Assigned(FormOPago_2)) then
                    FormOPago_2 := TFormOPago_2.Create(Self);
                  FormOPago_2.datoNew   := q.FieldByName('id_comprobante').Value;
                  FormOPago_2.TipoCpbte := q.FieldByName('tipo_comprob').Value;

                  FormOPago_2.Recuperar.Execute;
                  FormOPago_2.Show;
                end
              else
                if (q.FieldByName('tipo_comprob').Value='EC')  Then
                  begin
                    if Not(Assigned(FormEgresoCaja)) then
                      FormEgresoCaja := TFormEgresoCaja.Create(Self);
                    FormEgresoCaja.datoNew   := q.FieldByName('id_comprobante').Value;
                    FormEgresoCaja.TipoCpbte := q.FieldByName('tipo_comprob').Value;

                    FormEgresoCaja.Recuperar.Execute;
                    FormEgresoCaja.Show;
                  end
                else
                  if (q.FieldByName('tipo_comprob').Value='RC') Then
                    begin
                      if Not(Assigned(FormRecibo_2)) then
                        FormRecibo_2 := TFormRecibo_2.Create(Self);
                      FormRecibo_2.datoNew   := q.FieldByName('id_comprobante').Value;
                      FormRecibo_2.TipoCpbte := q.FieldByName('tipo_comprob').Value;

                      FormRecibo_2.Recuperar.Execute;
                      FormRecibo_2.Show;
                    end;



              q.Close;
              FreeAndNil(Q);
            end;

      end;
{
  ANU = Mov anulacion de cheq en forma directa
  CHP = che propio
  CH3 = che de tercero
  EFE = efectivo
  GAS = gastos
  TRA = transferencias
  AOP = Anulacion de che por anulacion de Orden Pago
  TRX = transferencias Interbancarias
  REM = Reemplazo de ch
}
end;

procedure TFormResumenBco.dbgMovimientosCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  inherited;
  if ACol=12 Then //SHowMessage(IntToStr(ACOl)+':'+IntToStr(ARow)+'--'+BoolToStr(State));
    if State=True then
      CDSResumenBcoCONCILIADOSetText(CDSResumenBcoCONCILIADO,'S')
    else
      if State=False then
        CDSResumenBcoCONCILIADOSetText(CDSResumenBcoCONCILIADO,'N');

end;

procedure TFormResumenBco.ExportarTxtExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  SaveDialog.DefaultExt:='txt';
  SaveDialog.FileName  :='DetalleBanco';

  if VirtualUI.Active then
    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' Then
      begin
        if VirtualUI.Active then
          if Not(AnsiEndsText( '.txt', SaveDialog.FileName )) Then
             SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

        if VirtualUI.Active then
          DataToAscii1.SaveToFile(SaveDialog.FileName)
        else
          DataToAscii1.SaveToFile(SaveDialog.FileName);

        if VirtualUI.Active then
          VirtualUI.DownloadFile(SaveDialog.FileName);
      end;

end;

procedure TFormResumenBco.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  SaveDialog.DefaultExt:='XLS';
  SaveDialog.FileName  :='DetalleBanco';

  if VirtualUI.Active then
    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  if SaveDialog.Execute Then
    if SaveDialog.FileName<>'' Then
      begin
        // fin de extension de archivo
        if VirtualUI.Active then
          if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
             SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

        if VirtualUI.Active then
          DataToXLS1.SaveToFile(SaveDialog.FileName)
        else
          DataToXLS1.SaveToFile(SaveDialog.FileName);
        sleep(200);
        if VirtualUI.Active then
          VirtualUI.DownloadFile(SaveDialog.FileName);
      end;
end;

end.