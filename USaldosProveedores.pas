UNIT USaldosProveedores;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBClient,System.Math,
  Provider, ExtCtrls, StdCtrls, Buttons, DBGrids, frxDBSet, frxClass,
  ImgList, Mask,  Librerias,  ActnList,Inifiles,Printers, frxExportRTF,
  frxDMPExport, frxExportText, JvExDBGrids, JvDBGrid,
  JvExControls, JvDBLookup, DataExport, DataToXLS, Menus, frxExportCSV,
  frxExportXLS, frxExportHTML, frxExportPDF, JvGradient, IBGenerator, FMTBcd,
  SqlExpr, JvToolEdit, JvExMask, JvBaseEdits, JvLabel, DBXCommon,
  System.Actions, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement,VirtualUI_sdk, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinBlack,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, frCoreClasses;

TYPE
  TFormSaldosProveedores = CLASS(TForm)
    pnSaldos: TPanel;
    DSPSaldosProvee: TDataSetProvider;
    btImprimir: TBitBtn;
    btTraerSaldos: TBitBtn;
    frSaldos: TfrxReport;
    frDBSaldos: TfrxDBDataset;
    ImageList1: TImageList;
    pnPendientes: TPanel;
    DSPMovCC: TDataSetProvider;
    ActionList1: TActionList;
    MuestraDetalle: TAction;
    btMuestraDetalle: TSpeedButton;
    BitBtn2: TBitBtn;
    Salir: TAction;
    Label1: TLabel;
    cbTipo: TComboBox;
    CDSSaldoProvee: TClientDataSet;
    CDSSaldoProveePROVEEDOR: TStringField;
    CDSSaldoProveeNOMBRE: TStringField;
    DSSaldoProvee: TDataSource;
    DSMovCC: TDataSource;
    CDSMovCC: TClientDataSet;
    DSPAplicaciones: TDataSetProvider;
    DSAplicaciones: TDataSource;
    dbcGrupo: TJvDBLookupCombo;
    chFiltro: TCheckBox;
    DBGrid1: TDBGrid;
    DSFiltroCab: TDataSource;
    DSFiltroDet: TDataSource;
    CDSMovCCID_MOVCCCOMPRA: TIntegerField;
    CDSMovCCPROVEEDOR: TStringField;
    dbgMovACta: TDBGrid;
    DSMovACta: TDataSource;
    DSPMovACta: TDataSetProvider;
    CDSMovACta: TClientDataSet;
    CDSMovACtaID: TIntegerField;
    CDSMovACtaID_MOV: TIntegerField;
    CDSMovACtaPROVEEDOR: TStringField;
    CDSMovACtaID_CPBTE: TIntegerField;
    CDSMovACtaTIPOCPBTE: TStringField;
    CDSMovACtaCLASECPBTE: TStringField;
    CDSMovACtaNUMEROCPBTE: TStringField;
    CDSMovACtaDETALLE: TStringField;
    CDSMovACtaID_COMPROBANTE: TIntegerField;
    BitBtn1: TBitBtn;
    frDBMovACta: TfrxDBDataset;
    frDBAplicaciones: TfrxDBDataset;
    frDBDSEmpresa: TfrxDBDataset;
    frDBDetalles: TfrxDBDataset;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    frDetalles: TfrxReport;
    btSeleccion: TButton;
    Seleccionar: TAction;
    XLSSaldo: TDataToXLS;
    ExportarSaldoXLS: TAction;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    ExportarSaldosXLS1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    BitBtn4: TBitBtn;
    CDSSaldoProveeRAZON_SOCIAL: TStringField;
    lbEstado: TLabel;
    chbCero: TCheckBox;
    ibgId2: TIBGenerator;
    CDSSaldoProveeN_DE_CUIT: TStringField;
    CDSSaldoProveeTOTAL: TFloatField;
    CDSMovCCDETALLE: TStringField;
    BitBtn3: TBitBtn;
    LimpiarTemporales: TAction;
    Minimo: TJvCalcEdit;
    Maximo: TJvCalcEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel10: TJvLabel;
    RxLabel11: TJvLabel;
    CDSSaldoProveeSELECCION: TBooleanField;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    dbcSucursal: TJvDBLookupCombo;
    RxLabel8: TJvLabel;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCID_COMPROBANTE: TIntegerField;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    cxGSaldosDBTableView1: TcxGridDBTableView;
    cxGSaldosLevel1: TcxGridLevel;
    cxGSaldos: TcxGrid;
    cxGSaldosDBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGSaldosDBTableView1NOMBRE: TcxGridDBColumn;
    cxGSaldosDBTableView1RAZON_SOCIAL: TcxGridDBColumn;
    cxGSaldosDBTableView1N_DE_CUIT: TcxGridDBColumn;
    cxGSaldosDBTableView1TOTAL: TcxGridDBColumn;
    cxGSaldosDBTableView1SELECCION: TcxGridDBColumn;
    btExcel: TButton;
    chbDesde: TCheckBox;
    Desde: TJvDateEdit;
    QSaldosProvee: TFDQuery;
    QFiltroCab: TFDQuery;
    QAplicaciones: TFDQuery;
    QMovACta: TFDQuery;
    QMovCC: TFDQuery;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    CDSMovACtaIMPORTE: TFloatField;
    QFiltroDet: TFDQuery;
    QFiltroDetID: TIntegerField;
    QFiltroDetID_CAB: TIntegerField;
    QFiltroDetID_CPBTE: TIntegerField;
    QFiltroDetMUESTRACOMPROBANTE: TStringField;
    QFiltroDetMUESTRATIPO: TStringField;
    QFiltroDetMUESTRACLASE: TStringField;
    QFiltroDetMUESTRASUC: TStringField;
    QFiltroCabID: TIntegerField;
    QFiltroCabDETALLE: TStringField;
    QFiltroCabGRUPO: TSmallintField;
    spGeneraMovFD: TFDStoredProc;
    edACta: TJvCalcEdit;
    spBorrarTemporalesFD: TFDStoredProc;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_MOVCCCOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1FECHACOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2ID_MOV: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOVCCCOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView2FECHA: TcxGridDBColumn;
    cxGrid1DBTableView2PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView2ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2NUMEROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView2CONCILIADO: TcxGridDBColumn;
    cxGrid1DBTableView2IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_NETO: TcxGridDBColumn;
    CDSAplicac: TClientDataSet;
    CDSAplicacID_MOV: TIntegerField;
    CDSAplicacID_MOVCCCOMPRA: TIntegerField;
    CDSAplicacPROVEEDOR: TStringField;
    CDSAplicacID_CPBTE: TIntegerField;
    CDSAplicacTIPOCPBTE: TStringField;
    CDSAplicacCLASECPBTE: TStringField;
    CDSAplicacNUMEROCPBTE: TStringField;
    CDSAplicacIMPORTE: TFloatField;
    CDSAplicacAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacAPLICA_CLASECPBTE: TStringField;
    CDSAplicacAPLICA_NROCPBTE: TStringField;
    CDSAplicacDETALLE: TStringField;
    CDSAplicacAPLICA_NETO: TFloatField;
    CDSAplicacCONCILIADO: TStringField;
    CDSAplicacAPLICA_IVA: TFloatField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCFECHACOMPRA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSAplicacFECHA: TSQLTimeStampField;
    CDSMovACtaFECHA: TSQLTimeStampField;
    CDSMovACtaSUCURSAL: TIntegerField;
    PROCEDURE btTraerSaldosClick(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE btImprimirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MuestraDetalleExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure pnSaldosDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frSaldosBeginDoc(Sender: TObject);
    procedure dbcGrupoChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure pnPendientesDblClick(Sender: TObject);
    procedure SeleccionarExecute(Sender: TObject);
    procedure ExportarSaldoXLSExecute(Sender: TObject);
    procedure chbCeroClick(Sender: TObject);
    procedure LimpiarTemporalesExecute(Sender: TObject);
    procedure cxGSaldosDBTableView1DblClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure chbDesdeClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView2DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Condiciones:String;
    PrNomListados,PrListadoDefecto:String;
    PrListados,PrDefault:Integer;
//    procedure Sumar;
    procedure ArmarCondiciones;

  END;

VAR
  FormSaldosProveedores: TFormSaldosProveedores;
  ID_MovTemporales:Integer;

IMPLEMENTATION

uses  UDMain_FD, UCtaCteCompra, UOPago_2,
      UAjustesCCProveedores, UAnulacionOPago, UCompra_2, USaldosProveedoresXLS;
{$R *.DFM}


//procedure TFormSaldosProveedores.Sumar;
//var aux:Real;
//begin
//  aux:=0;
//  CDSSaldoProvee.First;
//  CDSSaldoProvee.DisableControls;
//  while not(CDSSaldoProvee.Eof) do
//    begin
//      aux:=aux+CDSSaldoProveeTOTAL.Value;
//      CDSSaldoProvee.Next;
//    end;
//  CDSSaldoProvee.First;
//  CDSSaldoProvee.EnableControls;
//
//end;


procedure TFormSaldosProveedores.SeleccionarExecute(Sender: TObject);
begin
  IF NOT (CDSSaldoProvee.IsEmpty) THEN
    BEGIN
      IF btSeleccion.tag = 0 THEN
        BEGIN
          btSeleccion.Tag := 1;
          btSeleccion.Caption := 'Deselccionar';
        END
      ELSE
        BEGIN
          btSeleccion.Tag := 0;
          btSeleccion.Caption := 'Selccionar';
        END;
      CDSSaldoProvee.First;
      CDSSaldoProvee.DisableControls;
      WHILE NOT (CDSSaldoProvee.Eof) DO
        BEGIN
          CDSSaldoProvee.Edit;
          CDSSaldoProveeSeleccion.Value := btSeleccion.Tag=1;
          CDSSaldoProvee.Next;
        END;
      CDSSaldoProvee.First;
      CDSSaldoProvee.EnableControls;
    END
  ELSE
    ShowMessage('No hay datos a Selecionar');
end;



procedure TFormSaldosProveedores.ArmarCondiciones;
VAR I:Integer;
Dato:String;
begin
  Condiciones:='';
  if Not(QFiltroDet.IsEmpty) then
  begin
    QFiltroDet.First;
    while not(QFiltroDet.Eof) do
      begin
        if Condiciones='' Then
          condiciones:='(mc.id_comprobante='+''+QFiltroDetID_CPBTE.AsString+''+') '
        else
          condiciones:=Condiciones+' or (mc.id_comprobante='+''+QFiltroDetID_CPBTE.AsString+''+') ';
        QFiltroDet.Next;
      end;
    Condiciones:=' and ('+condiciones+')';
  end;
end;


PROCEDURE TFormSaldosProveedores.btTraerSaldosClick(Sender: TObject);
BEGIN
// lbEstado.Caption:='Limpiando tabla Temporal....';
  CDSSaldoProvee.IndexDefs.Clear;
  CDSSaldoProvee.IndexFieldNames:='';
  CDSSaldoProvee.IndexName      :='';
 If CDSMovCC.Active then
    CDSMovCC.Close;
  if CDSSaldoProvee.Active Then
    CDSSaldoProvee.Close;
  if CDSMovACta.Active then
    CDSMovACta.Close;
  if CDSAplicac.Active then
    CDSAplicac.Close;

  lbEstado.Caption:='Limpiando tabla Temporal....';
  Sleep(1);
  Application.ProcessMessages;
  if ID_MovTemporales<>-1 then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spBorrarTemporalesFD.Close;
        spBorrarTemporalesFD.ParamByName('ID').Value:=ID_MovTemporales;
        spBorrarTemporalesFD.ExecProc;
        spBorrarTemporalesFD.Close;
        DMMain_FD.fdcGestion.Commit;
      except
        ShowMessage('No se pudo borrar los temporales..');
        DMMain_FD.fdcGestion.Rollback;
      end;
    end;

  // busco el el ultimo id de movimientos temporales de cc
  //QUltimoMovTemporal.Close;
  //QUltimoMovTemporal.Open;
  //if QUltimoMovTemporal.Fields[0].AsString='' then
  //  ID_MovTemporales:=1
  //else
  //  ID_MovTemporales:=QUltimoMovTemporal.Fields[0].AsInteger+1;
  // genero la tabla con los datos de las opciones

  //QUltimoMovTemporal.Close;

  ID_MovTemporales:=ibgId2.IncrementFD(1);

  Sleep(1);
  lbEstado.Caption:='Preparando Tabla de Consulta....';
  Application.ProcessMessages;

  Condiciones:='';
  if chFiltro.Checked then
    ArmarCondiciones;

  lbEstado.Caption:='Generando Consulta....';
  Sleep(1);
  Application.ProcessMessages;

  if Copy(Hasta.text,1,1)=' ' Then
    ShowMessage('Ingresar una fecha de corte')
  else
  begin
    spGeneraMovFD.Close;
    spGeneraMovFD.ParamByName('p_id').Value      :=ID_MovTemporales;
    spGeneraMovFD.ParamByName('p_tipo').Value    :='*';//cbTipo.va i Text;
    spGeneraMovFD.ExecProc;
    spGeneraMovFD.Close;

    CDSSaldoProvee.Close;
    CDSSaldoProvee.CommandText:='';
    CDSSaldoProvee.Params.Clear;
    CDSSaldoProvee.Params.CreateParam(ftDate,'hasta',ptInput);
    CDSSaldoProvee.Params.CreateParam(ftFloat,'Minimo',ptInput);
    CDSSaldoProvee.Params.CreateParam(ftFloat,'maximo',ptInput);
    CDSSaldoProvee.Params.CreateParam(ftInteger,'id',ptInput);
    CDSSaldoProvee.Params.CreateParam(ftInteger,'suc',ptInput);
    CDSSaldoProvee.Params.ParamByName('hasta').Value  :=Hasta.Date;
    CDSSaldoProvee.Params.ParamByName('Minimo').Value :=Minimo.Value;
    CDSSaldoProvee.Params.ParamByName('maximo').Value :=Maximo.Value;
    CDSSaldoProvee.Params.ParamByName('id').Value     :=ID_MovTemporales;


    CDSSaldoProvee.CommandText:= 'select mc.proveedor,P.NOMBRE,p.razon_social,p.n_de_cuit,(sum(mc.haber)-sum(mc.debe)) as total from MOVCCCOMPRA_TEMPORAL  mc '+
                                 'left JOIN POVEEDOR P ON P.CODIGO=MC.PROVEEDOR '+
                                 'where mc.fechacompra<=:hasta and p.activo=''S'' '+Condiciones+' and ( mc.sucursal = :suc or :suc = -1 ) '+
                                 'group by mc.proveedor,P.NOMBRE,p.razon_social,p.n_de_cuit '+
                                 'having (sum(mc.haber-mc.debe)>=:minimo) and (sum(mc.haber-mc.debe)<=:maximo) and ((SUM(mc.DEBE)-SUM(mc.HABER))<> 0)';

    if chbDesde.Checked then
      CDSSaldoProvee.CommandText:= 'select mc.proveedor,P.NOMBRE,p.razon_social,p.n_de_cuit,(sum(mc.haber)-sum(mc.debe)) as total from MOVCCCOMPRA_TEMPORAL  mc '+
                                   'left JOIN POVEEDOR P ON P.CODIGO=MC.PROVEEDOR '+
                                   'where ( mc.fechacompra <= :hasta and mc.fechacompra >='+ ''''+FormatDateTime('mm/dd/yyyy', Desde.Date)+ ''')' +
                                   ' and p.activo=''S'' '+Condiciones+' and ( mc.sucursal = :suc or :suc = -1 ) '+
                                   'group by mc.proveedor,P.NOMBRE,p.razon_social,p.n_de_cuit '+
                                   'having (sum(mc.haber-mc.debe)>=:minimo) and (sum(mc.haber-mc.debe)<=:maximo) and ((SUM(mc.DEBE)-SUM(mc.HABER))<> 0)';


    CDSSaldoProvee.Params.ParamByName('suc').Value    :=dbcSucursal.KeyValue;

    CDSSaldoProvee.IndexDefs.Clear;

    CDSSaldoProvee.AfterScroll:=nil;
    CDSSaldoProvee.Open;
   // CDSSaldoProvee.AfterScroll:=CDSSaldoProveeAfterScroll;


    //Sumar;

    CDSMovCC.Close;
    CDSMovCC.MasterFields   :='';
    CDSMovCC.IndexFieldNames:='';
    CDSMovCC.CommandText    :='';

    CDSMovCC.CommandText:= 'select mc.id_movcccompra,mc.proveedor,mc.fechacompra,mc.fechavto,mc.detalle,mc.debe,mc.haber,'+
                           ' mc.saldo,mc.tipocpbte,mc.clasecpbte,mc.id_comprobante,mc.id_cpbte from MOVCCCOMPRA_TEMPORAL  mc '+
                           ' where mc.fechacompra<= ' + ''''+FormatDateTime('mm/dd/yyyy', Hasta.Date)+ '''' +
                           ' and mc.saldo>0 and mc.id=:id'+' '+Condiciones + ' and ( mc.sucursal = :suc or :suc = -1 ) '+
                           ' order by mc.proveedor,mc.fechacompra desc ';

    if chbDesde.Checked then
      CDSMovCC.CommandText:= 'select mc.id_movcccompra,mc.proveedor,mc.fechacompra,mc.fechavto,mc.detalle,mc.debe,mc.haber,'+
                             ' mc.saldo,mc.tipocpbte,mc.clasecpbte,mc.id_comprobante,mc.id_cpbte from MOVCCCOMPRA_TEMPORAL  mc '+
                             ' where mc.fechacompra<= ' + ''''+FormatDateTime('mm/dd/yyyy', Hasta.Date)+ '''' +
                             ' and mc.fechacompra>= ' + ''''+FormatDateTime('mm/dd/yyyy', Desde.Date)+ '''' +
                             ' and mc.saldo>0 and mc.id= :id'+' '+Condiciones + ' and ( mc.sucursal = :suc or :suc = -1 ) '+
                             ' order by mc.proveedor,mc.fechacompra desc ';


   // CDSMovCC.Params.ParamByName('codigo').AsString  := CDSSaldoProveePROVEEDOR.AsString;
    CDSMovCC.Params.ParamByName('suc').AsInteger    := dbcSucursal.Keyvalue;
    CDSMovCC.Params.ParamByName('id').AsInteger     := ID_MovTemporales;

    CDSMovCC.MasterSource    := DSSaldoProvee;
    CDSMovCC.MasterFields    := 'proveedor';
    CDSMovCC.IndexFieldNames := 'proveedor;fechacompra';
    CDSMovCC.Open;

    CDSSaldoProvee.First;

    CDSAplicac.Close;

    CDSAplicac.MasterSource    := DSMovCC;
    CDSAplicac.MasterFields    := 'ID_MOVCCCOMPRA';
    CDSAplicac.IndexFieldNames := 'ID_MOVCCCOMPRA';

    CDSAplicac.Open;

    CDSMovACta.Close;
    CDSMovACta.MasterFields    := '';
    CDSMovACta.IndexFieldNames := '';
    CDSMovACta.CommandText     := '';

    if Condiciones<>'' then
      CDSMovACta.CommandText:=  ' select mc.* from MovACtaCCCompra_temporal mc where mc.fecha<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
                                ' and mc.id= :id and mc.Importe<>0 '+
                                  Condiciones + ' and ( sucursal = :suc or :suc = -1 ) '+
                                ' order by mc.proveedor, mc.fecha,mc.numerocpbte '
    else
      CDSMovACta.CommandText:=  ' select mc.* from MovACtaCCCompra_temporal mc where'+
                                ' mc.fecha<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
                                ' and mc.id = :id and mc.Importe<>0'+
                                ' and ( mc.sucursal = :suc or :suc = -1 )'+
                                ' order by mc.proveedor, mc.fecha,mc.numerocpbte ';
    if chbDesde.Checked then
      begin
        if Condiciones<>'' then
          CDSMovACta.CommandText:=  ' select mc.* from MovACtaCCCompra_temporal mc where'+
                                    ' mc.fecha<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
                                    ' and mc.fecha>='+''''+FormatDateTime('mm/dd/yyyy',Desde.Date)+''''+
                                    ' and mc.id =: ID and mc.Importe<>0 '+
                                      Condiciones + ' and ( mc.sucursal = :suc or :suc = -1 )'+
                                    ' order by mc.proveedor, mc.fecha,mc.numerocpbte '
        else
          CDSMovACta.CommandText:=  ' select mc.* from MovACtaCCCompra_temporal mc where mc.fecha<='+''''+FormatDateTime('mm/dd/yyyy',Hasta.Date)+''''+
                                    ' and mc.fecha>='+''''+FormatDateTime('mm/dd/yyyy',Desde.Date)+''''+
                                    ' and mc.id = :ID  and mc.Importe<>0'+
                                    ' and ( mc.sucursal = :suc or :suc = -1) '+
                                    ' order by mc.proveedor, mc.fecha,mc.numerocpbte ';
       end;
    CDSMovACta.Params.ParamByName('id').Value  := ID_MovTemporales;
    CDSMovACta.Params.ParamByName('suc').Value := dbcSucursal.KeyValue;

    CDSMovACta.MasterSource    := DSSaldoProvee;
    CDSMovACta.MasterFields    := 'proveedor';
    CDSMovACta.IndexFieldNames := 'proveedor';
    CDSMovACta.Open;
  end;
  CDSSaldoProvee.AddIndex('Total', 'Total', [], 'Total'); // Descendente
  CDSSaldoProvee.IndexName := 'Total';

  lbEstado.Caption:='';
END;



procedure TFormSaldosProveedores.chbCeroClick(Sender: TObject);
begin
 if chbcero.Checked then
    begin
      CDSSaldoProvee.Filtered:=False;
      CDSSaldoProvee.Filter:='';
    end
  else
    begin
      CDSSaldoProvee.Filtered:=False;
      CDSSaldoProvee.Filter:='Total > 0.02 or Total < -0.02 ';
      CDSSaldoProvee.Filtered:=True;
     end
end;

procedure TFormSaldosProveedores.chbDesdeClick(Sender: TObject);
begin
 Desde.Enabled:=chbDesde.Checked;
end;

procedure TFormSaldosProveedores.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  colSaldo,colHaber: integer;
begin
  inherited;
 // Para Dibujar renglon en cxGrid
  colSaldo := cxGrid1DBTableView1SALDO.Index;
  colHaber := cxGrid1DBTableView1HABER.Index;
  if AViewInfo.Selected then
    begin
       ACanvas.Font.Color  := clWhite;
       ACanvas.Brush.Color := clBlue;
     end
  else
    begin
      if (RoundTo(AviewInfo.GridRecord.Values[colSaldo],-2))<>(RoundTo(AviewInfo.GridRecord.Values[colHaber],-2)) then
        ACanvas.Font.Style:= [fsBold];
    end;
end;

procedure TFormSaldosProveedores.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  IF (CDSMovCCTIPOCPBTE.AsString='FC') or
     (CDSMovCCTIPOCPBTE.AsString='NC') or
     (CDSMovCCTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCompra_2)) THEN
        FormCompra_2    := TFormCompra_2.Create(self);
      FormCompra_2.DatoNew   := CDSMovCCID_CPBTE.AsString;
      FormCompra_2.TipoCpbte := CDSMovCCTIPOCPBTE.Value;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    IF (CDSMovCCTIPOCPBTE.AsString='OP') Then
      begin
        IF NOT (Assigned(FormOPago_2)) THEN
          FormOPago_2:= TFormOPago_2.Create(self);
        FormOPago_2.DatoNew    := CDSMovCCID_CPBTE.AsString;
        FormOPago_2.TipoCpbte  := CDSMovCCTIPOCPBTE.AsString;
        FormOPago_2.Recuperar.Execute;
        FormOPago_2.Show;
      END
    else
      IF (CDSMovCCTIPOCPBTE.AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjusteCCProveedores)) THEN
            FormAjusteCCProveedores:= TFormAjusteCCProveedores.Create(Self);
          FormAjusteCCProveedores.DatoNew  := CDSMovCCID_CPBTE.AsString;
          FormAjusteCCProveedores.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
          FormAjusteCCProveedores.Recuperar.Execute;
        END
      else
        IF (CDSMovCCTIPOCPBTE.AsString='XP') Then
          begin
            IF NOT (Assigned(FormAnulacionOPago)) THEN
              FormAnulacionOPago:= TFormAnulacionOPago.Create(Self);
            FormAnulacionOPago.DatoNew  := CDSMovCCID_CPBTE.AsString;
            FormAnulacionOPago.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
            FormAnulacionOPago.Recuperar.Execute;
         END;

end;

procedure TFormSaldosProveedores.cxGrid1DBTableView2DblClick(Sender: TObject);
begin
  IF (CDSMovCCTIPOCPBTE.AsString='OP') Then
    begin
      IF NOT (Assigned(FormOPago_2)) THEN
        FormOPago_2:= TFormOPago_2.Create(self);
      FormOPago_2.DatoNew    := CDSAplicacID_CPBTE.AsString;
      FormOPago_2.TipoCpbte  := CDSAplicacTIPOCPBTE.AsString;
      FormOPago_2.Recuperar.Execute;
      FormOPago_2.Show;
    END
  else
    IF (CDSMovCCTIPOCPBTE.AsString='AJ') Then
      begin
        IF NOT (Assigned(FormAjusteCCProveedores)) THEN
          FormAjusteCCProveedores := TFormAjusteCCProveedores.Create(Self);
        FormAjusteCCProveedores.DatoNew  := CDSAplicacID_CPBTE.AsString;
        FormAjusteCCProveedores.TipoCpbte:= CDSAplicacTIPOCPBTE.AsString;
        FormAjusteCCProveedores.Recuperar.Execute;
      END;
end;

procedure TFormSaldosProveedores.cxGSaldosDBTableView1DblClick(Sender: TObject);
var  Enter:char;
begin
   Enter:=#13;
  if Not(Assigned(FormCtaCteCompra)) then
    FormCtaCteCompra:=TFormCtaCteCompra.Create(Self);
  FormCtaCteCompra.ceProveedor.Text:=CDSSaldoProveePROVEEDOR.Text;
  FormCtaCteCompra.ceProveedorKeyPress(Sender,Enter);
  FormCtaCteCompra.Show;
  FormCtaCteCompra.BringToFront;
end;


PROCEDURE TFormSaldosProveedores.FormCreate(Sender: TObject);
var ArchivoIni:TIniFile;
BEGIN
  AutoSize:=True;
  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  //Impresoras
  PrListados       := ArchivoIni.ReadInteger('Impresoras', 'Listados', printer.PrinterIndex);
  PrNomListados    := ArchivoIni.ReadString('Impresoras', 'Listados', '');
  PrListadoDefecto := ArchivoIni.ReadString('Impresoras', 'ListadoDefecto','N');

  Minimo.Value     := ArchivoIni.ReadFloat('SaldoCCComp', 'Minimo', 0);
  Maximo.Value     := ArchivoIni.ReadFloat('SaldoCCComp', 'Maximo', 100000);

  ArchivoIni.Free;

 
  // Tomo la Impresora por defecto.
  prDefault       := printer.PrinterIndex;

  QFiltroCab.Open;
  QFiltroCab.First;
  ID_MovTemporales:=-1; // para saber que no se hizo ninguna consulta
  CDSEmpresa.Open;
  CDSSucursal.Open;

  if Not(Assigned(FormSaldoProveedoresXLS)) then
    FormSaldoProveedoresXLS:=TFormSaldoProveedoresXLS.Create(self);
  FormSaldoProveedoresXLS.Visible:=False;

  pnPendientes.Visible:=False;
  AutoSize:=False;
  Hasta.Date:=Date;
END;

PROCEDURE TFormSaldosProveedores.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  if ID_MovTemporales<>-1 then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spBorrarTemporalesFD.Close;
        spBorrarTemporalesFD.ParamByName('id').Value:=ID_MovTemporales;
        spBorrarTemporalesFD.ExecProc;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo borrar los temporales..');
      end;
      spBorrarTemporalesFD.Close;
    end;
  CDSSaldoProvee.Close;
  CDSSucursal.Close;
  Action := caFree;
END;

procedure TFormSaldosProveedores.BitBtn1Click(Sender: TObject);
begin
  CDSSaldoProvee.First;
  CDSMovCC.FindFirst;
//  CDSMovCC.DisableControls;
//  wwCDSSaldosCliente.DisableControls;
   IF NOT (CDSSaldoProvee.IsEmpty) THEN
     BEGIN
       frDetalles.PrintOptions.Printer:=PrNomListados;
       frDetalles.SelectPrinter;
       frDetalles.LoadFromFile(DMMain_FD.PathReportesLst+'\LstSaldoProveedoresDetalles.fr3');
       frDetalles.Variables['Tipo']:=''''+cbTipo.Text+'''';
//      frDetalles.Variables['Zona']    :=''''+dbcZonas.Text+'''';
//      frDetalles.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
//      frDetalles.Variables['Grupo']   :=''''+dbcGrupo.Text+'''';

       frDetalles.ShowReport;
     END
   ELSE
     ShowMessage('No hay datos a listar');
  CDSSaldoProvee.First;
  CDSMovCC.EnableControls;
end;

procedure TFormSaldosProveedores.btExcelClick(Sender: TObject);
begin
  FormSaldoProveedoresXLS.Hasta          := Hasta.Date;
  FormSaldoProveedoresXLS.Minimo         := Minimo.Value;
  FormSaldoProveedoresXLS.Maximo         := Maximo.Value;
  FormSaldoProveedoresXLS.Condiciones    := Condiciones;
  FormSaldoProveedoresXLS.Sucursal       := dbcSucursal.KeyValue;
  FormSaldoProveedoresXLS.Visible        := Not(FormSaldoProveedoresXLS.Visible);

  IF FormSaldoProveedoresXLS.Visible=True Then
    FormSaldoProveedoresXLS.BringToFront;
end;

PROCEDURE TFormSaldosProveedores.btImprimirClick(Sender: TObject);
BEGIN
  CDSSaldoProvee.DisableControls;
 
  frSaldos.PrintOptions.Printer:=PrNomListados;
  frSaldos.SelectPrinter;

  frSaldos.LoadFromFile(DMMain_FD.PathReportesLst+'\SaldosCCCompra.fr3');

  frSaldos.ShowReport;
  CDSSaldoProvee.EnableControls;
END;

procedure TFormSaldosProveedores.dbcGrupoChange(Sender: TObject);
begin
  QFiltroDet.Close;
  QFiltroDet.Params.ParamByName('id').Value:=dbcGrupo.KeyValue;
  QFiltroDet.Open;
end;


procedure TFormSaldosProveedores.ExportarSaldoXLSExecute(Sender: TObject);
begin
  IF NOT (CDSSaldoProvee.IsEmpty) THEN
  begin
    SaveDialog1.FileName  :='SaldosProveedores';
    SaveDialog1.DefaultExt:='xls';

    if VirtualUI.Active then
      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

    if SaveDialog1.Execute Then
      if SaveDialog1.FileName<>'' Then
        begin
          if VirtualUI.Active then
            XLSSaldo.SaveToFile(SaveDialog1.FileName)
          else
            XLSSaldo.SaveToFile(SaveDialog1.FileName);

          if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog1.FileName);
            end;
        end;
  end
   ELSE
    ShowMessage('No hay datos visibles');

end;

procedure TFormSaldosProveedores.FormDestroy(Sender: TObject);
begin
  FormSaldosProveedores:=nil;
end;

procedure TFormSaldosProveedores.FormResize(Sender: TObject);
begin
 // if FormSaldosProveedores<>nil then
 //   if FormSaldosProveedores.Width<>1092 Then
//      FormSaldosProveedores.Width:=1092;
end;

procedure TFormSaldosProveedores.MuestraDetalleExecute(Sender: TObject);
begin
  IF pnPendientes.Visible = False THEN
    BEGIN
      pnPendientes.Visible           := True;
      btMuestraDetalle.Caption       := '<<';
      FormSaldosProveedores.Position := poDesktopCenter;
      Label1.Caption                 :='Atras';
      FormSaldosProveedores.Width:=FormSaldosProveedores.Width+459;

    END
  ELSE
    BEGIN
      pnPendientes.Visible           := False;
      btMuestraDetalle.Caption       := '>>';
      FormSaldosProveedores.Position := poDesktopCenter;
      Label1.Caption                 :='Detalle';
      FormSaldosProveedores.Width:=FormSaldosProveedores.Width-459;
    END

end;

procedure TFormSaldosProveedores.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormSaldosProveedores.pnPendientesDblClick(Sender: TObject);
begin
  frDetalles.DesignReport;
end;

procedure TFormSaldosProveedores.pnSaldosDblClick(Sender: TObject);
begin
  frSaldos.DesignReport;
end;

procedure TFormSaldosProveedores.FormShow(Sender: TObject);
begin
  cbTipo.ItemIndex:=0;
//  FormSaldosProveedores.Width:=FormSaldosProveedores.Width-459;
end;

procedure TFormSaldosProveedores.frSaldosBeginDoc(Sender: TObject);
begin
  frSaldos.Variables['hasta']:=''''+Hasta.Text+'''';
end;

procedure TFormSaldosProveedores.LimpiarTemporalesExecute(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spBorrarTemporalesFD.Close;
    spBorrarTemporalesFD.ParamByName('id').Value:= -1;
    spBorrarTemporalesFD.ExecProc;
    spBorrarTemporalesFD.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo borrar los temporales..');
  end;
end;

END.