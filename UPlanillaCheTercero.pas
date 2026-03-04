UNIT UPlanillaCheTercero;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Grids, Provider,  StdCtrls, Mask, DBCtrls, ExtCtrls, ImgList, ActnList, Buttons,
  frxDBSet,cxGridExportLink, frxClass,  Menus, ComCtrls,  Librerias, FMTBcd, SqlExpr, JvExMask,
  JvToolEdit, DBGrids, JvExDBGrids, JvDBGrid, JvMaskEdit, JvDBFindEdit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DataExport, DataToXLS, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator, frxExportPDF,
  System.Actions, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  JvExControls, JvLabel, JvDBControls,VirtualUI_Sdk, JvDBGridFooter, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, frxExportBaseDialog, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  dxPScxExtComCtrlsLnk, frCoreClasses;

TYPE
  TFormPlanillaCheTercero = CLASS(TForm)
    DSPChe3: TDataSetProvider;
    ImageList1: TImageList;
    ActionList1: TActionList;
    BuscarCheque: TAction;
    frListado: TfrxReport;
    frDBDChe3: TfrxDBDataset;
    Panel1: TPanel;
    Salir: TAction;
    Imprimir: TAction;
    VerIngreso: TAction;
    PopupMenu1: TPopupMenu;
    VerPordondeIngreso1: TMenuItem;
    Buscar: TAction;
    VerCartera: TAction;
    ImprimirCartera: TAction;
    frDBCartera: TfrxDBDataset;
    CDSChe3: TClientDataSet;
    CDSChe3MUESTRABANCO: TStringField;
    CDSChe3ORIGEN: TStringField;
    CDSChe3DESTINO: TStringField;
    CDSChe3DISPONIBLE: TStringField;
    CDSChe3FIRMANTE: TStringField;
    CDSChe3ID_MOV_CAJA: TIntegerField;
    CDSChe3NUMERO: TIntegerField;
    CDSChe3ID_CUENTA_CAJA: TIntegerField;
    CDSChe3MUESTRACTACAJA: TStringField;
    CDSChe3SUCURSAL_BCO: TStringField;
    CDSChe3NRO_CTA: TStringField;
    DSChe3: TDataSource;
    CDSCartera: TClientDataSet;
    DSPCartera: TDataSetProvider;
    CDSCarteraNUMERO: TIntegerField;
    CDSCarteraORIGEN: TStringField;
    CDSCarteraFIRMANTE: TStringField;
    CDSCarteraBANCO: TIntegerField;
    CDSCarteraNOMBREBANCO: TStringField;
    pcMovimientos: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    dbgCheques: TJvDBGrid;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1MUESTRACTACAJA: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRABANCO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1ORIGEN: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_EMISION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1DESTINO: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO_IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1DISPONIBLE: TcxGridDBColumn;
    cxGrid1DBTableView1FIRMANTE: TcxGridDBColumn;
    Label8: TLabel;
    spBuscar: TSpeedButton;
    Label12: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText1: TDBText;
    Label17: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    Label11: TLabel;
    rgAgrupados: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    UpDown1: TUpDown;
    rgFechas: TRadioGroup;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    dbFindChe: TJvDBFindEdit;
    CDSChe3CUIT: TStringField;
    DataToXLS1: TDataToXLS;
    ExportarXLS: TAction;
    dlgSave1: TSaveDialog;
    N1: TMenuItem;
    ExportaraExcel1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    JvDBStatusLabel1: TJvDBStatusLabel;
    CDSCarteraCAJAINGRESO: TStringField;
    DataToXLS2: TDataToXLS;
    CDSCarteraTIPOCOMPROB: TStringField;
    CDSCarteraCLASECOMPROB: TStringField;
    CDSCarteraCOMPROBANTE_INGRESO: TStringField;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    BitBtn3: TBitBtn;
    Fecha: TJvDateEdit;
    btExcel: TBitBtn;
    dbgCheAlDia: TJvDBGrid;
    DSCartera: TDataSource;
    Label18: TLabel;
    btBuscarCartera: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    chGrupo: TCheckBox;
    QChe3: TFDQuery;
    CDSChe3IMPORTE: TFloatField;
    CDSChe3SALDO_IMPORTE: TFloatField;
    QCajaMov: TFDQuery;
    QCajaMovTIPO_COMPROB: TStringField;
    QCajaMovCLASE_COMPROB: TStringField;
    QCajaMovID_COMPROBANTE: TIntegerField;
    QCartera: TFDQuery;
    CDSCarteraIMPORTE: TFloatField;
    CDSCarteraTOTALACUMULADO: TFloatField;
    CDSCarteraUNIDADES: TFloatField;
    edFecha: TJvDBDateEdit;
    edFechaCobro: TJvDBDateEdit;
    edFechaEntrada: TJvDBDateEdit;
    edFechaSalida: TJvDBDateEdit;
    dbeEdit2: TDBEdit;
    dbeEdit5: TDBEdit;
    dbeEdit1: TDBEdit;
    dbeEdit3: TDBEdit;
    dbeEdit6: TDBEdit;
    dbeEdit4: TDBEdit;
    CDSChe3MUESTRABANCO_ECHECK: TStringField;
    CDSChe3MUESTRANROCTA_ECHECK: TStringField;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    CDSChe3FECHA_EMISION: TSQLTimeStampField;
    CDSChe3FECHA_COBRO: TSQLTimeStampField;
    CDSChe3FECHA_ENTRADA: TSQLTimeStampField;
    CDSChe3FECHA_SALIDA: TSQLTimeStampField;
    CDSCarteraFECHAINGRESO: TSQLTimeStampField;
    CDSCarteraFECHACOBRO: TSQLTimeStampField;
    CDSCarteraFECHAEMISION: TSQLTimeStampField;
    CDSCarteraFECHASALIDA: TSQLTimeStampField;
    CDSChe3E_CHECK: TStringField;
    CDSChe3DENOMINACION: TStringField;
    CDSChe3TIPO_COMPROB: TStringField;
    CDSChe3CLASE_COMPROB: TStringField;
    CDSChe3NRO_COMPROBANTE: TStringField;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    N2: TMenuItem;
    DiseoReporte1: TMenuItem;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
//    PROCEDURE wwDBGChequesTitleButtonClick(Sender: TObject;
//      AFieldName: STRING);
    PROCEDURE rgAgrupadosClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure VerIngresoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure rgFechasClick(Sender: TObject);
    procedure ImprimirCarteraExecute(Sender: TObject);
    procedure Panel3DblClick(Sender: TObject);
    procedure dbgChequesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure btBuscarCarteraClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure chGrupoClick(Sender: TObject);
    procedure CDSChe3E_CHECKGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DiseoReporte1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormPlanillaCheTercero: TFormPlanillaCheTercero;

IMPLEMENTATION

{$R *.DFM}

USES UFacturaCtdo_2, DMVentaCtdo, URecibo_2,
     DMRecibos, UDMain_FD;

PROCEDURE TFormPlanillaCheTercero.FormCreate(Sender: TObject);
BEGIN
  CDSChe3.Close;
  pcMovimientos.ActivePageIndex:=0;
  cxGrid1DBTableView1.OptionsView.GroupByBox:=False;
  AutoSize := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
END;

PROCEDURE TFormPlanillaCheTercero.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  CDSChe3.Close;
  Action := caFree;
END;

//PROCEDURE TFormPlanillaCheTercero.wwDBGChequesTitleButtonClick(
//  Sender: TObject; AFieldName: STRING);
//BEGIN
//  CDSChe3.IndexFieldNames := AFieldName;
//END;

procedure TFormPlanillaCheTercero.BitBtn4Click(Sender: TObject);
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  dlgSave1.FileName:='ChequesAgrupados';
  dlgSave1.DefaultExt:='xls';

  if VirtualUI.Active then
    dlgSave1.FileName:=dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

  if dlgSave1.Execute Then
   if dlgSave1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(dlgSave1.FileName , cxGrid1)
       else
         cxGridExportLink.ExportGridToExcel(dlgSave1.FileName , cxGrid1);

       if VirtualUI.Active then
         begin
           VirtualUI.StdDialogs:=False;
           VirtualUI.DownloadFile(dlgSave1.FileName);
         end;
     end;
end;

procedure TFormPlanillaCheTercero.BitBtn5Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Caption:='Planila de Cheques';
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormPlanillaCheTercero.btBuscarCarteraClick(Sender: TObject);
begin
  CDSCartera.Close;
  CDSCartera.Params.ParamByName('Fecha').Value:=Fecha.Date;
  CDSCartera.Open;
end;

procedure TFormPlanillaCheTercero.btExcelClick(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT ( CDSCartera.IsEmpty) THEN
    BEGIN
      dlgSave1.FileName:='CarteraChequesAFecha';
      dlgSave1.DefaultExt:='XLS';

      if VirtualUI.Active then
        dlgSave1.FileName:=dlgSave1.FileName+'.'+DlgSave1.DefaultExt;

      if dlgSave1.Execute Then
        if dlgSave1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS2.SaveToFile(dlgSave1.FileName)
            else
              DataToXLS2.SaveToFile(dlgSave1.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(DlgSave1.FileName);
             end;
          end;
    END;

end;

PROCEDURE TFormPlanillaCheTercero.rgAgrupadosClick(Sender: TObject);
BEGIN
  Buscar.Execute;
END;

procedure TFormPlanillaCheTercero.FormDestroy(Sender: TObject);
begin
  FormPlanillaCheTercero:=nil;
end;

procedure TFormPlanillaCheTercero.Panel1DblClick(Sender: TObject);
begin
  frListado.DesignReport;
end;

procedure TFormPlanillaCheTercero.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormPlanillaCheTercero.ImprimirExecute(Sender: TObject);
begin
  DMMain_FD.QEmpresa.Open;
  frListado.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoChequesCartera.fr3');

  // frCtaCte.PrepareReport;
  frListado.ShowReport;
  DMMain_FD.QEmpresa.Close;
end;

procedure TFormPlanillaCheTercero.VerIngresoExecute(Sender: TObject);
begin
  QCajaMov.Close;
  QCajaMov.ParamByName('id').Value:=CDSChe3ID_MOV_CAJA.Value;
  QCajaMov.Open;
  if Not(QCajaMov.IsEmpty) Then
    begin
      if QCajaMovTIPO_COMPROB.Value='RC' Then
        begin
          if Not(Assigned(FormRecibo_2)) Then
            FormRecibo_2:=TFormRecibo_2.Create(Application);
          FormRecibo_2.DatoNew:= QCajaMovID_COMPROBANTE.AsString;
          FormRecibo_2.TipoCpbte:='RC';
          FormRecibo_2.Recuperar.Execute;
          FormRecibo_2.Show;
        end
      else
        if QCajaMovTIPO_COMPROB.Value='FO' Then
          begin
            if Not(Assigned(FormCpbteCtdo_2)) Then
              FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Application);

            FormCpbteCtdo_2.DatoNew:= QCajaMovID_COMPROBANTE.AsString;
            FormCpbteCtdo_2.TipoCpbte:='FO';
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
          end
    end;
end;

procedure TFormPlanillaCheTercero.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
  Desde.Color     :=clBtnFace;
  Hasta.Color     :=clBtnFace;
  Desde.Enabled   :=False;
  Hasta.Enabled   :=False;
  UpDown1.Enabled :=False;
  spBuscar.Enabled:=False;
  Buscar.Execute;
end;

procedure TFormPlanillaCheTercero.UpDown1Click(Sender: TObject;
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
  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormPlanillaCheTercero.BuscarExecute(Sender: TObject);
begin
  //Todos
  CDSChe3.IndexName:='';
  CDSChe3.IndexDefs.Clear;
  IF rgAgrupados.ItemIndex = 0 THEN
    BEGIN
      CDSChe3.Close;
      CDSChe3.CommandText :=
        'select ch.id_mov_caja, bc.nombre as MuestraBanco,ch.numero, ch.Fecha_Emision, ch.Fecha_Cobro,ch.sucursal_bco,ch.nro_cta,' +
               'ch.Fecha_Entrada,ch.Fecha_Salida, ch.Origen, ch.destino,ch.importe,ch.saldo_importe,ch.disponible, ch.firmante ,'+
               'ch.id_cuenta_caja, cc.Nombre as MuestraCtaCaja,ch.cuit,cc_e.nombre as MuestraBanco_echeck,cc_e.nro_cuenta as MuestraNroCta_echeck,ch.e_check,'+
               'c.denominacion,m.tipo_comprob,m.clase_comprob,m.nro_comprobante  from cheque_tercero ch ' +
        'left join bancos bc on bc.id_banco = ch.id_banco ' +
        'left join cuenta_caja cc on cc.id_cuenta=ch.id_cuenta_caja '+
        'left join cuenta_caja cc_e on cc_e.id_cuenta= ch.id_cta_caja_bco '+
        'left join caja_mov m on m.id_mov_caja=ch.id_mov_caja '+
        'left join tipo_comprobante tc on tc.sigla=m.tipo_comprob '+
        'left join comprobantes c on c.tipo_comprob =m.tipo_comprob and '+
        '                            c.clase_comprob=m.clase_comprob and ' +

        'c.letra= (case when m.tipo_comprob = ''RC'' then (select r.letrarc from recibos r where r.id_rc=m.id_comprobante) '+
        '           when m.tipo_comprob = ''FO'' then (select fc.letrafac from fcvtacab fc where fc.id_fc=m.id_comprobante) '+
        '           when m.tipo_comprob = ''IC'' then (select ing.letra from ing_caja ing where ing.id_ingreso=m.id_comprobante) '+
        '         end)'+
        '  and '+
        'c.sucursal = (case when m.tipo_comprob = ''RC'' then (select r.sucursal from recibos r where r.id_rc=m.id_comprobante) '+
        '               when m.tipo_comprob = ''FO'' then (select fc.sucursal from fcvtacab fc where fc.id_fc=m.id_comprobante) '+
        '               when m.tipo_comprob = ''IC'' then (select ing.sucursalventa from ing_caja ing where ing.id_ingreso=m.id_comprobante)'+
        '             end) ';

        case rgFechas.ItemIndex of
          0: CDSChe3.CommandText :=CDSChe3.CommandText+'where ch.fecha_emision>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_emision<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_entrada';
          1: CDSChe3.CommandText :=CDSChe3.CommandText+'where ch.fecha_cobro>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_cobro<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_cobro';
          2: CDSChe3.CommandText :=CDSChe3.CommandText+'where ch.fecha_entrada>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_entrada<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_entrada';
          3: CDSChe3.CommandText :=CDSChe3.CommandText+'where ch.fecha_salida>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_salida<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_salida';
          4: CDSChe3.CommandText :=CDSChe3.CommandText+' order by ch.id_cuenta_caja,ch.fecha_entrada';
        end;
      CDSChe3.Open;
    END
  //Disponibles
  ELSE IF rgAgrupados.ItemIndex = 1 THEN
    BEGIN
      CDSChe3.Close;
      CDSChe3.CommandText :=
        'select ch.id_mov_caja, bc.nombre as MuestraBanco,ch.numero, ch.Fecha_Emision, ch.Fecha_Cobro,ch.sucursal_bco,ch.nro_cta,' +
        'ch.Fecha_Entrada,ch.Fecha_Salida, ch.Origen, ch.destino,ch.importe, ch.saldo_importe, ch.disponible, ch.firmante ,'+
        'ch.id_cuenta_caja, cc.Nombre as MuestraCtaCaja,ch.cuit,cc_e.nombre as MuestraBanco_echeck,cc_e.nro_cuenta as MuestraNroCta_echeck ,ch.e_check,'+
        'c.denominacion,m.tipo_comprob,m.clase_comprob,m.nro_comprobante from cheque_tercero ch ' +
        'left join bancos bc on bc.id_banco = ch.id_banco ' +
        'left join cuenta_caja cc on cc.id_cuenta=ch.id_cuenta_caja '+
        'left join cuenta_caja cc_e on cc_e.id_cuenta= ch.id_cta_caja_bco '+
        'left join caja_mov m on m.id_mov_caja=ch.id_mov_caja '+
        'left join tipo_comprobante tc on tc.sigla=m.tipo_comprob '+

        'left join comprobantes c on c.tipo_comprob =m.tipo_comprob and '+
                            'c.clase_comprob=m.clase_comprob and ' +

        'c.letra= (case when m.tipo_comprob = ''RC'' then (select r.letrarc from recibos r where r.id_rc=m.id_comprobante) '+
        '           when m.tipo_comprob = ''FO'' then (select fc.letrafac from fcvtacab fc where fc.id_fc=m.id_comprobante) '+
        '           when m.tipo_comprob = ''IC'' then (select ing.letra from ing_caja ing where ing.id_ingreso=m.id_comprobante) '+
        '         end)'+
        '  and '+
        'c.sucursal = (case when m.tipo_comprob = ''RC'' then (select r.sucursal from recibos r where r.id_rc=m.id_comprobante) '+
        '               when m.tipo_comprob = ''FO'' then (select fc.sucursal from fcvtacab fc where fc.id_fc=m.id_comprobante) '+
        '               when m.tipo_comprob = ''IC'' then (select ing.sucursalventa from ing_caja ing where ing.id_ingreso=m.id_comprobante)'+
        '             end) '+
        'where ch.disponible=''S'' ';
        case rgFechas.ItemIndex of
          0: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_emision>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_emision<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_entrada';
          1: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_cobro>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_cobro<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_cobro';
          2: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_entrada>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_entrada<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_entrada';
          3: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_salida>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_salida<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_salida';
          4: CDSChe3.CommandText :=CDSChe3.CommandText+' order by ch.id_cuenta_caja,ch.fecha_entrada';
        end;
      CDSChe3.Open;
    END
  // Entregados a 3ero.
  ELSE IF rgAgrupados.ItemIndex = 2 THEN
    BEGIN
      CDSChe3.Close;
      CDSChe3.CommandText :=
        'select ch.id_mov_caja, bc.nombre as MuestraBanco,ch.numero, ch.Fecha_Emision, ch.Fecha_Cobro,ch.sucursal_bco,ch.nro_cta,' +
        'ch.Fecha_Entrada,ch.Fecha_Salida, ch.Origen, ch.destino,ch.importe, ch.saldo_importe, ch.disponible, ch.firmante,'+
        'ch.id_cuenta_caja, cc.Nombre as MuestraCtaCaja,ch.cuit,cc_e.nombre as MuestraBanco_echeck,cc_e.nro_cuenta as MuestraNroCta_echeck,ch.e_check,'+
        'c.denominacion,m.tipo_comprob,m.clase_comprob,m.nro_comprobante from cheque_tercero ch ' +
        'left join bancos bc on bc.id_banco = ch.id_banco ' +
        'left join cuenta_caja cc on cc.id_cuenta=ch.id_cuenta_caja '+
        'left join cuenta_caja cc_e on cc_e.id_cuenta= ch.id_cta_caja_bco '+
        'left join caja_mov m on m.id_mov_caja=ch.id_mov_caja '+
        'left join tipo_comprobante tc on tc.sigla=m.tipo_comprob '+

        'left join comprobantes c on c.tipo_comprob =m.tipo_comprob and '+
                            'c.clase_comprob=m.clase_comprob and ' +

        'c.letra= (case when m.tipo_comprob = ''RC'' then (select r.letrarc from recibos r where r.id_rc=m.id_comprobante) '+
        '           when m.tipo_comprob = ''FO'' then (select fc.letrafac from fcvtacab fc where fc.id_fc=m.id_comprobante) '+
        '           when m.tipo_comprob = ''IC'' then (select ing.letra from ing_caja ing where ing.id_ingreso=m.id_comprobante) '+
        '         end)'+
        '  and '+
        'c.sucursal = (case when m.tipo_comprob = ''RC'' then (select r.sucursal from recibos r where r.id_rc=m.id_comprobante) '+
        '               when m.tipo_comprob = ''FO'' then (select fc.sucursal from fcvtacab fc where fc.id_fc=m.id_comprobante) '+
        '               when m.tipo_comprob = ''IC'' then (select ing.sucursalventa from ing_caja ing where ing.id_ingreso=m.id_comprobante)'+
        '             end) '+
        'where ch.disponible=''N'' and (ch.id_cuenta_bco_depositado=0 or ch.id_cuenta_bco_depositado is null) ';
        case rgFechas.ItemIndex of
          0: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_emision>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_emision<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_entrada';
          1: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_cobro>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_cobro<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_cobro';
          2: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_entrada>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_entrada<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_entrada';
          3: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_salida>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_salida<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_salida';
          4: CDSChe3.CommandText :=CDSChe3.CommandText+' order by ch.id_cuenta_caja,ch.fecha_entrada';
        end;
      CDSChe3.Open;
    END
  //Depositados
  ELSE IF rgAgrupados.ItemIndex = 3 THEN
    BEGIN
      CDSChe3.Close;
      CDSChe3.CommandText :=
        'select ch.id_mov_caja, bc.nombre as MuestraBanco,ch.numero, ch.Fecha_Emision, ch.Fecha_Cobro,ch.sucursal_bco,ch.nro_cta,' +
        'ch.Fecha_Entrada,ch.Fecha_Salida, ch.Origen, ch.destino,ch.importe, ch.saldo_importe, ch.disponible, ch.firmante,'+
        'ch.id_cuenta_caja, cc.Nombre as MuestraCtaCaja,ch.cuit,cc_e.nombre as MuestraBanco_echeck,cc_e.nro_cuenta as MuestraNroCta_echeck,ch.e_check,'+
        'c.denominacion,m.tipo_comprob,m.clase_comprob,m.nro_comprobante from cheque_tercero ch ' +
        'left join bancos bc on bc.id_banco = ch.id_banco ' +
        'left join cuenta_caja cc on cc.id_cuenta=ch.id_cuenta_caja '+
        'left join cuenta_caja cc_e on cc_e.id_cuenta= ch.id_cta_caja_bco '+
        'left join caja_mov m on m.id_mov_caja=ch.id_mov_caja '+
        'left join tipo_comprobante tc on tc.sigla=m.tipo_comprob '+

        'left join comprobantes c on c.tipo_comprob =m.tipo_comprob and '+
                            'c.clase_comprob=m.clase_comprob and ' +

        'c.letra= (case when m.tipo_comprob = ''RC'' then (select r.letrarc from recibos r where r.id_rc=m.id_comprobante) '+
        '           when m.tipo_comprob = ''FO'' then (select fc.letrafac from fcvtacab fc where fc.id_fc=m.id_comprobante) '+
        '           when m.tipo_comprob = ''IC'' then (select ing.letra from ing_caja ing where ing.id_ingreso=m.id_comprobante) '+
        '         end)'+
        '  and '+
        'c.sucursal = (case when m.tipo_comprob = ''RC'' then (select r.sucursal from recibos r where r.id_rc=m.id_comprobante) '+
        '               when m.tipo_comprob = ''FO'' then (select fc.sucursal from fcvtacab fc where fc.id_fc=m.id_comprobante) '+
        '               when m.tipo_comprob = ''IC'' then (select ing.sucursalventa from ing_caja ing where ing.id_ingreso=m.id_comprobante)'+
        '             end) '+

        'where ch.disponible=''N'' and (ch.id_cuenta_bco_depositado<>0 and Not(ch.id_cuenta_bco_depositado is null)) ';
        case rgFechas.ItemIndex of
          0: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_emision>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_emision<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_entrada';
          1: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_cobro>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_cobro<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_cobro';
          2: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_entrada>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_entrada<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_entrada';
          3: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_salida>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_salida<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_salida';
          4: CDSChe3.CommandText :=CDSChe3.CommandText+' order by ch.id_cuenta_caja,ch.fecha_entrada';
        end;
      CDSChe3.Open;
    END
  //Entregados y Depositados
  ELSE IF rgAgrupados.ItemIndex = 4 THEN
    BEGIN
      CDSChe3.Close;
      CDSChe3.CommandText :=
        'select ch.id_mov_caja, bc.nombre as MuestraBanco,ch.numero, ch.Fecha_Emision, ch.Fecha_Cobro,ch.sucursal_bco,ch.nro_cta,' +
        'ch.Fecha_Entrada,ch.Fecha_Salida, ch.Origen, ch.destino,ch.importe, ch.saldo_importe, ch.disponible, ch.firmante,'+
        'ch.id_cuenta_caja, cc.Nombre as MuestraCtaCaja,ch.cuit,cc_e.nombre as MuestraBanco_echeck,cc_e.nro_cuenta as MuestraNroCta_echeck,ch.e_check,'+
        'c.denominacion,m.tipo_comprob,m.clase_comprob,m.nro_comprobante from cheque_tercero ch ' +
        'left join bancos bc on bc.id_banco = ch.id_banco ' +
        'left join cuenta_caja cc on cc.id_cuenta=ch.id_cuenta_caja '+
        'left join cuenta_caja cc_e on cc_e.id_cuenta= ch.id_cta_caja_bco '+
        'left join caja_mov m on m.id_mov_caja=ch.id_mov_caja '+
        'left join tipo_comprobante tc on tc.sigla=m.tipo_comprob '+

        'left join comprobantes c on c.tipo_comprob =m.tipo_comprob and '+
                            'c.clase_comprob=m.clase_comprob and ' +

        'c.letra= (case when m.tipo_comprob = ''RC'' then (select r.letrarc from recibos r where r.id_rc=m.id_comprobante) '+
        '           when m.tipo_comprob = ''FO'' then (select fc.letrafac from fcvtacab fc where fc.id_fc=m.id_comprobante) '+
        '           when m.tipo_comprob = ''IC'' then (select ing.letra from ing_caja ing where ing.id_ingreso=m.id_comprobante) '+
        '         end)'+
        '  and '+
        'c.sucursal = (case when m.tipo_comprob = ''RC'' then (select r.sucursal from recibos r where r.id_rc=m.id_comprobante) '+
        '               when m.tipo_comprob = ''FO'' then (select fc.sucursal from fcvtacab fc where fc.id_fc=m.id_comprobante) '+
        '               when m.tipo_comprob = ''IC'' then (select ing.sucursalventa from ing_caja ing where ing.id_ingreso=m.id_comprobante)'+
        '             end) '+

        'where ch.disponible=''N'' ';
        case rgFechas.ItemIndex of
          0: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_emision>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_emision<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_entrada';
          1: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_cobro>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_cobro<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_cobro';
          2: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_entrada>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_entrada<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_entrada';
          3: CDSChe3.CommandText :=CDSChe3.CommandText+' and ch.fecha_salida>='+''''+ FormatDateTime('mm/dd/yyyy',Desde.Date)+'''' + ' and ch.Fecha_salida<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
            ' order by ch.id_cuenta_caja,ch.fecha_salida';
          4: CDSChe3.CommandText :=CDSChe3.CommandText+' order by ch.id_cuenta_caja,ch.fecha_entrada';
        end;
      CDSChe3.Open;
    END;

end;

procedure TFormPlanillaCheTercero.CDSChe3E_CHECKGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if CDSChe3E_CHECK.Value='S' then
    Text:='*'
  else
    Text:='';

end;

procedure TFormPlanillaCheTercero.chGrupoClick(Sender: TObject);
begin
  cxGrid1DBTableView1.OptionsView.GroupByBox:=chGrupo.Checked;
end;

procedure TFormPlanillaCheTercero.dbgChequesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgCheques.DataSource.DataSet as TClientDataSet do
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

procedure TFormPlanillaCheTercero.DiseoReporte1Click(Sender: TObject);
begin
  frListado.DesignReport;

end;

procedure TFormPlanillaCheTercero.ExportarXLSExecute(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT ( CDSChe3.IsEmpty) THEN
    BEGIN
      dlgSave1.FileName:='CarteraCheques';
      dlgSave1.DefaultExt:='XLS';

     if VirtualUI.Active then
      dlgSave1.FileName:=DlgSave1.FileName+'.'+DlgSave1.DefaultExt;

      if dlgSave1.Execute Then
        if dlgSave1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS1.SaveToFile(dlgSave1.FileName);
              DataToXLS1.SaveToFile(dlgSave1.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(DlgSave1.FileName);
             end;
          end;
    END;
end;

procedure TFormPlanillaCheTercero.rgFechasClick(Sender: TObject);
begin
  if rgFechas.ItemIndex<>4 Then
    begin
      Desde.Color     :=clWhite;
      Hasta.Color     :=clWhite;
      Desde.Enabled   :=True;
      Hasta.Enabled   :=True;
      UpDown1.Enabled :=True;
      spBuscar.Enabled:=True;
    end
  else
    begin
      Desde.Color     :=clBtnFace;
      Hasta.Color     :=clBtnFace;
      Desde.Enabled   :=False;
      Hasta.Enabled   :=False;
      UpDown1.Enabled :=False;
      spBuscar.Enabled:=False;
    end;

  Buscar.Execute;

end;

procedure TFormPlanillaCheTercero.ImprimirCarteraExecute(Sender: TObject);
begin
  if Fecha.Text[1]<>' ' Then
    begin
      DMMain_FD.QEmpresa.Open;
      frListado.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoChequesCartera3.fr3');
      frListado.Variables['Fecha']:=''''+Fecha.Text+'''';
      DMMain_FD.QOpciones.Close;
      frListado.ShowReport;
      DMMain_FD.QEmpresa.Close;
   end;
end;

procedure TFormPlanillaCheTercero.Panel3DblClick(Sender: TObject);
begin
  frListado.DesignReport;
end;

END.