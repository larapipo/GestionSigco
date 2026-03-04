unit UPersonal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient,  Provider, Db, ActnList, ImgList,
  StdCtrls, Buttons, ToolWin, ComCtrls, ExtCtrls, Mask,
  JvExControls, JvGradient, Grids, DBGrids, JvExStdCtrls, JvDBCombobox,
  JvExComCtrls, JvComCtrls, JvCombobox, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvExDBGrids, JvDBGrid, frxClass,
  frxDBSet, UCtaContables, JvAppStorage, JvAppIniStorage, System.Actions,
  Vcl.DBCtrls, JvComponentBase,
  CompBuscador, AdvEdit, DBAdvEd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  AdvDBLookupComboBox, frCoreClasses;

type
  TFormPersonal = class(TFormABMBase)
    DSPPersonal: TDataSetProvider;
    BuscarCargo: TAction;
    BuscarLocalidades: TAction;
    BuscarCategoria: TAction;
    DSPoliticaComision: TDataSource;
    DSRecibos: TDataSource;
    CDSComrobantes: TClientDataSet;
    DSPComprobantes: TDataSetProvider;
    DSComprobantes: TDataSource;
    CDSComrobantesID_CPBTE: TIntegerField;
    CDSComrobantesCODIGO: TStringField;
    CDSComrobantesMuestraComprobante: TStringField;
    pcEmpleados: TJvPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    pnDatos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    dbeCodigo: TDBEdit;
    dbeNombre: TDBEdit;
    dbeDomicilio: TDBEdit;
    dbeLocalidad: TDBEdit;
    dbeTel2: TDBEdit;
    dbeTel1: TDBEdit;
    dbeMuestraCargo: TDBEdit;
    dbeMuestraCategoria: TDBEdit;
    dbeComision: TDBEdit;
    dbeValorHora: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    dbeCorreo: TDBEdit;
    dblPoliticaComision: TDBLookupComboBox;
    DBCheckBox3: TDBCheckBox;
    dbgComprobantes: TDBGrid;
    DBCheckBox4: TDBCheckBox;
    JvDBComboBox1: TJvDBComboBox;
    DBCheckBox5: TDBCheckBox;
    RxCCategoria: TJvDBComboEdit;
    RxCCargo: TJvDBComboEdit;
    RxCCPostal: TJvDBComboEdit;
    dbdIngreso: TJvDBDateEdit;
    dbdNacimiento: TJvDBDateEdit;
    CDSBuscaPersonal: TClientDataSet;
    DSPBuscaPersonal: TDataSetProvider;
    CDSBuscaPersonalNOMBRE: TStringField;
    CDSBuscaPersonalCODIGO: TStringField;
    pag3: TTabSheet;
    DSPBuscaLocalidad: TDataSetProvider;
    CDSBuscaLocalidad: TClientDataSet;
    CDSBuscaLocalidadDETALLE_POSTAL: TStringField;
    CDSBuscaLocalidadCODIGO_POSTAL: TStringField;
    DSPBuscaCategoria: TDataSetProvider;
    CDSBuscaCategoria: TClientDataSet;
    DSPBuscaCargo: TDataSetProvider;
    CDSBuscaCargo: TClientDataSet;
    CDSBuscaCargoID: TIntegerField;
    CDSBuscaCargoDETALLE: TStringField;
    CDSPersonal: TClientDataSet;
    CDSPersonalCARGO: TIntegerField;
    CDSPersonalCATEGORIA: TIntegerField;
    CDSPersonalCTACONTABLE: TIntegerField;
    CDSPersonalDOMICILIO: TStringField;
    CDSPersonalESTADO_CIVIL: TStringField;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalTELEFONO_2: TStringField;
    CDSPersonalMUESTRACARGO: TStringField;
    CDSPersonalMUESTRACATEGORIA: TStringField;
    CDSPersonalTELEFONO_1: TStringField;
    CDSPersonalLOCALIDAD: TIntegerField;
    CDSPersonalMUESTRALOCALIDAD: TStringField;
    CDSPersonalMUESTRACPOSTAL: TStringField;
    CDSPersonalCODIGO: TStringField;
    CDSPersonalAUTORIZAOC: TStringField;
    CDSPersonalSECTORDECOMPRA: TStringField;
    CDSPersonalCORREO: TStringField;
    CDSPersonalPOLITICACOMISION: TIntegerField;
    CDSPersonalMODODEPENDENCIA: TStringField;
    CDSPersonalVENDEDOR: TStringField;
    CDSPersonalCOBRADOR: TStringField;
    CDSPersonalACTIVO: TStringField;
    CDSPersonalFECHA_INGRESO: TSQLTimeStampField;
    CDSPersonalFECHA_NACIMIENTO: TSQLTimeStampField;
    DSPListado: TDataSetProvider;
    CDSListado: TClientDataSet;
    CDSListadoCARGO: TIntegerField;
    CDSListadoCATEGORIA: TIntegerField;
    CDSListadoCTACONTABLE: TIntegerField;
    CDSListadoDOMICILIO: TStringField;
    CDSListadoESTADO_CIVIL: TStringField;
    CDSListadoAUTORIZAOC: TStringField;
    CDSListadoSECTORDECOMPRA: TStringField;
    CDSListadoFECHA_INGRESO: TSQLTimeStampField;
    CDSListadoFECHA_NACIMIENTO: TSQLTimeStampField;
    CDSListadoCODIGO: TStringField;
    CDSListadoLOCALIDAD: TIntegerField;
    CDSListadoNOMBRE: TStringField;
    CDSListadoTELEFONO_1: TStringField;
    CDSListadoMODODEPENDENCIA: TStringField;
    CDSListadoTELEFONO_2: TStringField;
    CDSListadoMUESTRACARGO: TStringField;
    CDSListadoMUESTRACATEGORIA: TStringField;
    CDSListadoMUESTRALOCALIDAD: TStringField;
    CDSListadoCORREO: TStringField;
    CDSListadoVENDEDOR: TStringField;
    CDSListadoCOBRADOR: TStringField;
    CDSListadoMUESTRACPOSTAL: TStringField;
    CDSListadoPOLITICACOMISION: TIntegerField;
    CDSListadoACTIVO: TStringField;
    dbgListado: TJvDBGrid;
    DSListado: TDataSource;
    btImprimir: TBitBtn;
    frxReport: TfrxReport;
    frPersonal: TfrxDBDataset;
    btListar: TBitBtn;
    Imprimir: TAction;
    CDSPoliticaComision: TClientDataSet;
    DSPPoliticaComision: TDataSetProvider;
    CDSPoliticaComisionID: TIntegerField;
    CDSPoliticaComisionNOMBRE: TStringField;
    DSPRecibos: TDataSetProvider;
    CDSRecibos: TClientDataSet;
    CDSRecibosID_COMPROBANTE: TIntegerField;
    CDSRecibosCLASE_COMPROB: TStringField;
    CDSRecibosSUCURSAL: TIntegerField;
    CDSRecibosMUESTRASUCURSAL: TStringField;
    CDSRecibosDENOMINACION: TStringField;
    CDSPersonalSUCURSAL: TIntegerField;
    Label17: TLabel;
    dbcSucursal: TDBLookupComboBox;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSSucursal: TDataSource;
    FrameCtaContable1: TFrameCtaContable;
    CDSBuscaCategoriaID: TIntegerField;
    CDSBuscaCategoriaDETALLE: TStringField;
    TabSheet1: TTabSheet;
    DSPListadoPorSuc: TDataSetProvider;
    CDSListadoPorSuc: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField4: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    IntegerField5: TIntegerField;
    StringField17: TStringField;
    DSListadoPorSuc: TDataSource;
    CDSListadoPorSucSUCURSAL: TIntegerField;
    CDSListadoPorSucMUESTRASUCURSAL: TStringField;
    dbgListadoSuc: TJvDBGrid;
    btListarPorSucursal: TBitBtn;
    btImprimirAgrupado: TBitBtn;
    frPersonalAgrupado: TfrxDBDataset;
    chActivos: TCheckBox;
    ComBuscadorLocalidades: TComBuscador;
    CDSBuscaLocalidadID_POSTAL: TIntegerField;
    ComBuscadorCategorias: TComBuscador;
    ComBuscadorCargos: TComBuscador;
    Label18: TLabel;
    CDSPersonalCUIL: TStringField;
    dbeCuil: TDBEdit;
    DBComboBox1: TDBComboBox;
    QPoliticaCom: TFDQuery;
    QCategoria: TFDQuery;
    QCategoriaID: TIntegerField;
    QCategoriaDETALLE: TStringField;
    QCategoriaSUELDO_BASICO: TFloatField;
    QCategoriaVALORHORA: TFloatField;
    QCategoriaTIPO_LIQUIDACION: TSmallintField;
    QBuscadorCategoria: TFDQuery;
    QListadoPorSuc: TFDQuery;
    CDSListadoPorSucVALORHORA: TFloatField;
    CDSListadoPorSucCOMISION: TFloatField;
    QCargo: TFDQuery;
    QCargoID: TIntegerField;
    QCargoDETALLE: TStringField;
    QBuscadorCargo: TFDQuery;
    QListado: TFDQuery;
    CDSListadoVALORHORA: TFloatField;
    CDSListadoCOMISION: TFloatField;
    QComprobantes: TFDQuery;
    CDSComrobantesPORCENTAJE: TFloatField;
    QControlMov: TFDQuery;
    QRec: TFDQuery;
    QLocalidades: TFDQuery;
    QLocalidadesID_POSTAL: TIntegerField;
    QLocalidadesCODIGO_POSTAL: TStringField;
    QLocalidadesDETALLE_POSTAL: TStringField;
    QLocalidadesTELEDISCADO: TStringField;
    CDSPersonalVALORHORA: TFloatField;
    CDSPersonalCOMISION: TFloatField;
    CDSPersonalCODIGO_RELOJ: TStringField;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    CDSPersonalLEGAJO: TStringField;
    Label20: TLabel;
    DBEdit2: TDBEdit;
    chbAfiliado: TDBCheckBox;
    CDSPersonalAFILIADO: TStringField;
    CDSPersonalDEPOSITO: TIntegerField;
    QDepositos: TFDQuery;
    DSPDepositos: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    DSDepositos: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label21: TLabel;
    CDSPersonalMUESTRADEPOSITO: TIntegerField;
    CDSPersonalSECTOR_PRODUCCION: TIntegerField;
    Label22: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSector: TFDQuery;
    DSSector: TDataSource;
    CDSListadoCODIGO_RELOJ: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarCargoExecute(Sender: TObject);
    procedure CDSPersonalLOCALIDADSetText(Sender: TField;
      const Text: String);
    procedure BuscarLocalidadesExecute(Sender: TObject);
    procedure CDSPersonalCARGOSetText(Sender: TField;
      const Text: String);
    procedure CDSPersonalCATEGORIASetText(Sender: TField;
      const Text: String);
    procedure BuscarCategoriaExecute(Sender: TObject);
    procedure CDSPersonalNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CDSPersonalCODIGOSetText(Sender: TField;
      const Text: String);
    procedure FormShow(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSComrobantesNewRecord(DataSet: TDataSet);
    procedure dbgComprobantesKeyPress(Sender: TObject; var Key: Char);
    procedure DSBaseStateChange(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure btListarClick(Sender: TObject);
    procedure dbgListadoTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btListarPorSucursalClick(Sender: TObject);
    procedure btImprimirAgrupadoClick(Sender: TObject);
    procedure chActivosClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure dbeCodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    FUNCTION AsignaLocalida(Dato: Integer): Boolean;
    function AsignaCargo(Dato:Integer):Boolean;
    function AsignaCategoria(Dato:Integer):Boolean;
    { Public declarations }
  end;

var
  FormPersonal: TFormPersonal;

implementation

uses DMBuscadoresForm, DMContableForm, UDMain_FD;

{$R *.DFM}

FUNCTION TFormPersonal.AsignaLocalida(Dato: Integer): Boolean;
BEGIN
  QLocalidades.Close;
  QLocalidades.ParamByName('id').Value := Dato;
  QLocalidades.Open;
  IF NOT (QLocalidades.IsEmpty) THEN
    BEGIN
      result := True;
      CDSPersonalMUESTRALOCALIDAD.Value:=QLocalidadesDETALLE_POSTAL.Value;
    END
  ELSE
    result := False;
  QLocalidades.Close;
END;

procedure TFormPersonal.BorrarExecute(Sender: TObject);
begin
  QControlMov.Close;
  QControlMov.ParamByName('Codigo').Value:=CDSPersonalCODIGO.Value;
  QControlMov.Open;
  if QControlMov.Fields[0].AsInteger=0 then
    inherited
  else
    ShowMessage('No se permite la operacion... Empleado con Movimientos....');  

end;

procedure TFormPersonal.btListarPorSucursalClick(Sender: TObject);
begin
  inherited;
  CDSListadoPorSuc.Close;
  CDSListadoPorSuc.IndexDefs.Clear;
  CDSListadoPorSuc.IndexName:='';
  CDSListadoPorSuc.Params.ParamByName('Activo').Value:='S';
  if chActivos.Checked=False then
    CDSListadoPorSuc.Params.ParamByName('Activo').Value:='*';
  CDSListadoPorSuc.Open;
end;

procedure TFormPersonal.btImprimirAgrupadoClick(Sender: TObject);
begin
  inherited;

   IF NOT (CDSListadoPorSuc.IsEmpty) THEN
    BEGIN
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoEmpleadosAgrupado.fr3');
      frxReport.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para listar...');

end;

procedure TFormPersonal.btListarClick(Sender: TObject);
begin
  inherited;
  CDSListado.Close;
  CDSListado.IndexDefs.Clear;
  CDSListado.IndexName:='';
  CDSListado.Open;
end;

FUNCTION TFormPersonal.AsignaCargo(Dato: Integer): Boolean;
BEGIN
  QCargo.Close;
  QCargo.ParamByName('id').Value := Dato;
  QCargo.Open;
  IF NOT (QCargo.IsEmpty) THEN
    BEGIN
      result := True;
      CDSPersonalMUESTRACARGO.Value:=QCargoDETALLE.Value;
    END
  ELSE
    result := False;
  QCargo.Close;
END;

FUNCTION TFormPersonal.AsignaCategoria(Dato: Integer): Boolean;
BEGIN
  QCategoria.Close;
  QCategoria.ParamByName('id').Value := Dato;
  QCategoria.Open;
  IF NOT (QCategoria.IsEmpty) THEN
    BEGIN
      result := True;
      CDSPersonalMUESTRACATEGORIA.Value:=QCategoriaDETALLE.Value;
    END
  ELSE
    result := False;
  QCategoria.Close;
END;


procedure TFormPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSComrobantes.Close;
  CDSPersonal.Close;
  CDSRecibos.Close;
  CDSPoliticaComision.Close;
  CDSSucursal.Close;
  Action:=caFree;
end;

procedure TFormPersonal.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AddClientDataSet(CDSPersonal,DSPPersonal);
  AddClientDataSet(CDSComrobantes,DSPComprobantes);
  Tabla:='personal';
  Campo:='codigo';
  CDSPersonal.Open;
  CDSComrobantes.Open;
  CDSSucursal.Open;
  CDSDepositos.Open;
  QSector.Close;
  QSector.Open;
  pcEmpleados.ActivePageIndex:=0;
  CDSPoliticaComision.Open;
  CDSRecibos.Open;
end;

procedure TFormPersonal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPersonal:=nil;
end;

procedure TFormPersonal.BuscarCargoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCargo.Close;
  CDSBuscaCargo.Open;
  ComBuscadorCargos.Execute;
  if comBuscadorCargos.rOk Then
    CDSPersonalCARGOSetText(CDSPersonalCARGO,IntToStr(comBuscadorCargos.Id));
  CDSBuscaCargo.Close;
end;

procedure TFormPersonal.CDSPersonalLOCALIDADSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  if Not(AsignaLocalida(Sender.AsInteger)) Then
    begin
      ShowMessage('Dato no válido');
      Sender.AsString:='';
      RxCCPostal.SetFocus;
    end;
end;

procedure TFormPersonal.BuscarLocalidadesExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaLocalidad.Close;
  CDSBuscaLocalidad.Open;
  ComBuscadorLocalidades.Execute;
  if comBuscadorLocalidades.rOk Then
    CDSPersonalLOCALIDADSetText(CDSPersonalLOCALIDAD,IntToStr(comBuscadorLocalidades.Id));
  CDSBuscaLocalidad.Close;
end;

procedure TFormPersonal.CDSPersonalCARGOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  if Not(AsignaCargo(Sender.AsInteger)) Then
    begin
      ShowMessage('Dato no válido');
      Sender.AsString:='';
      RxCCargo.SetFocus;
    end;

end;

procedure TFormPersonal.CDSPersonalCATEGORIASetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  if Not(AsignaCategoria(Sender.AsInteger)) Then
    begin
      ShowMessage('Dato no válido');
      Sender.AsString:='';
      RxCCategoria.SetFocus;
    end;
end;

procedure TFormPersonal.BuscarCategoriaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCategoria.Close;
  CDSBuscaCategoria.Open;
  ComBuscadorCategorias.Execute;
  if ComBuscadorCategorias.rOk Then
    CDSPersonalCATEGORIASetText(CDSPersonalCATEGORIA,IntToStr(comBuscadorCategorias.Id));
  CDSBuscaCategoria.Close;
end;

procedure TFormPersonal.CDSPersonalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSPersonalCODIGOSetText(CDSPersonalCODIGO,'1')
  else
    CDSPersonalCODIGOSetText(CDSPersonalCODIGO,IntToStr(QUltimoCodigo2.Fields[0].AsInteger + 1));
  QUltimoCodigo2.Close;
  CDSPersonalAUTORIZAOC.Value       := 'N';
  CDSPersonalSECTORDECOMPRA.Value   := 'N';
  CDSPersonalCOMISION.AsFloat       := 0;
  CDSPersonalVALORHORA.AsFloat      := 0;
  CDSPersonalVENDEDOR.Value         := 'N';
  CDSPersonalCOBRADOR.Value         := 'N';
  CDSPersonalCUIL.AsString          := '00000000000';
  CDSPersonalMODODEPENDENCIA.Value  := 'F';
  CDSPersonalACTIVO.Value           := 'S';
  CDSPersonalCODIGO_RELOJ.Value     := '';
  CDSPersonalLEGAJO.Value           := '';
  CDSPersonalDEPOSITO.Value         := -1;
  CDSPersonalSECTOR_PRODUCCION.Value:= -1;

end;

procedure TFormPersonal.chActivosClick(Sender: TObject);
begin
  inherited;
  btListarPorSucursalClick(Sender);
end;

procedure TFormPersonal.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaPersonal.Close;
  CDSBuscaPersonal.Open;
  comBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
    begin
      DatoNew:=ComBuscadorBase.Id;
      Recuperar.Execute;
    end;
  CDSBuscaPersonal.Close;
end;

procedure TFormPersonal.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeNombre.SetFocus;
end;

procedure TFormPersonal.CDSPersonalCODIGOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('000000',1,Sender.Size-length(text))+text;
end;

procedure TFormPersonal.FormShow(Sender: TObject);
begin
  inherited;
  if (btNuevo.Visible=True) and (btNuevo.Enabled=True) Then
    btNuevo.SetFocus;
  // Contable ****************
  FrameCtaContable1.Visible       := DMMain_FD.GetUsaContabilidad;
  FrameCtaContable1.NombreTabla   := 'personal';
  // *************************
end;

procedure TFormPersonal.ImprimirExecute(Sender: TObject);
begin
  inherited;
  IF NOT (CDSListado.IsEmpty) THEN
    BEGIN
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\Empleados.fr3');
      frxReport.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para listar...');
end;

procedure TFormPersonal.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value:=DatoNew;
  CDSPersonal.Open;

  CDSComrobantes.Close;
  CDSComrobantes.Params.ParamByName('Codigo').Value:=DatoNew;
  CDSComrobantes.Open;

  FrameCtaContable1.CodigoElemento:= DatoNew;

  if DMMain_FD.GetUsaContabilidad then
    begin
      FrameCtaContable1.CDSCtaContable.Close;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('Tabla').AsString    := FrameCtaContable1.NombreTabla;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('Codigo').AsString   := DatoNew;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('SubIndice').AsString:= '';
      FrameCtaContable1.CDSCtaContable.Open;
    end;

end;

procedure TFormPersonal.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormPersonal.CDSComrobantesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSComrobantesCODIGO.Value:=CDSPersonalCODIGO.Value;
end;

procedure TFormPersonal.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSPersonalCODIGO.AsString;
  if CDSPersonalCOMISION.AsString='' Then
    CDSPersonalCOMISION.AsFloat:=0;
  if CDSPersonalAFILIADO.AsString='' Then
    CDSPersonalAFILIADO.AsString:='N';

  inherited;
  Recuperar.Execute;
end;

procedure TFormPersonal.dbeCodigoExit(Sender: TObject);
begin
  inherited;
  FrameCtaContable1.CodigoElemento:= dbeCodigo.Text;
end;

procedure TFormPersonal.dbgComprobantesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgComprobantes.SelectedIndex < 1) THEN
        dbgComprobantes.SelectedIndex := dbgComprobantes.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgComprobantes.DataSource.DataSet.Eof THEN
            dbgComprobantes.DataSource.DataSet.Append;
          dbgComprobantes.SelectedIndex := 0;
        END;
    END

end;

procedure TFormPersonal.dbgListadoTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
var Campo:String;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgListado.DataSource.DataSet as TClientDataSet do
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

procedure TFormPersonal.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
  pnDatos.Enabled:=Not(DSBase.State in [dsBrowse]);
  FrameCtaContable1.Enabled  := DSBase.DataSet.State IN [dsInsert, dsEdit];

end;

end.