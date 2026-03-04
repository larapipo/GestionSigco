unit UAdminstracionTareas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxSchedulerPainter,System.IniFiles,
  Menus, cxStyles, cxGraphics, cxEdit, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxContainer, cxDateNavigator,
  cxControls, cxClasses, cxGridTableView, cxGridBandedTableView, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxSchedulerHolidays, cxSchedulerGanttView, cxSchedulerRibbonStyleEventEditor,
  cxSchedulerRecurrence, cxSchedulerTreeListBrowser, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.ExtCtrls, cxPC, cxSchedulerDBStorage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, FireDAC.Comp.DataSet, FireDAC.Comp.Client, IBGenerator,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, DBPlanner, Planner, PlannerMonthView,
  DBPlannerMonthView,DateUtils, PlanItemEdit, PlannerCal, JvExControls,
  JvButton, JvNavigationPane, Vcl.ComCtrls, Vcl.ImgList, JvDBLookup, dxCore, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxColorComboBox, cxGridCustomTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxColorEdit, dxDBColorEdit, JvExStdCtrls,
  JvCombobox, JvColorCombo, JvExDBGrids, JvDBGrid, cxSpinEdit, cxDBEdit, System.Actions, Vcl.ActnList,StrUtils,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormAdminTareas = class(TForm)
    pnPie: TPanel;
    pnCabecera: TPanel;
    DBPlanner: TDBPlanner;
    QPlaner: TFDQuery;
    DSPPlaner: TDataSetProvider;
    CDSPlaner: TClientDataSet;
    DSPlaner: TDataSource;
    QPlanerNOTES: TMemoField;
    QPlanerSUBJECT: TStringField;
    QPlanerCOLOR: TIntegerField;
    QPlanerIMAGE: TIntegerField;
    QPlanerCAPTION: TIntegerField;
    QPlanerRESOURCE: TIntegerField;
    QPlanerRECURRENCY: TStringField;
    QPlanerID_CPBTE: TIntegerField;
    QPlanerTIPOCPBTE: TStringField;
    QPlanerCLASECPTE: TStringField;
    QPlanerID_USUARIO: TIntegerField;
    CDSPlanerNOTES: TMemoField;
    CDSPlanerSUBJECT: TStringField;
    CDSPlanerCOLOR: TIntegerField;
    CDSPlanerIMAGE: TIntegerField;
    CDSPlanerCAPTION: TIntegerField;
    CDSPlanerRESOURCE: TIntegerField;
    CDSPlanerRECURRENCY: TStringField;
    CDSPlanerID_CPBTE: TIntegerField;
    CDSPlanerTIPOCPBTE: TStringField;
    CDSPlanerCLASECPTE: TStringField;
    CDSPlanerID_USUARIO: TIntegerField;
    DBDaySource: TDBDaySource;
    QPlanerID_KEY: TStringField;
    CDSPlanerID_KEY: TStringField;
    DefaultItemEditor1: TDefaultItemEditor;
    DBPlannerMonthView1: TDBPlannerMonthView;
    Panel1: TPanel;
    pnMes: TPanel;
    pnMeses: TPanel;
    PlannerCalendarGroup1: TPlannerCalendarGroup;
    JvNavPanelButton1: TJvNavPanelButton;
    pcGeneral: TPageControl;
    pag1: TTabSheet;
    ImageList1: TImageList;
    pag3: TTabSheet;
    dbgAreas: TDBGrid;
    Area_Sector: TLabel;
    QArea: TFDQuery;
    DSPArea: TDataSetProvider;
    CDSArea: TClientDataSet;
    DSArea: TDataSource;
    QAreaID: TIntegerField;
    QAreaDETALLE: TStringField;
    CDSAreaID: TIntegerField;
    CDSAreaDETALLE: TStringField;
    cbArea: TJvDBLookupCombo;
    LbArea_Sector: TLabel;
    btEvento: TJvNavPanelButton;
    ImageList3: TImageList;
    QPlanerCLIENTE: TStringField;
    QPlanerPROVEEDOR: TStringField;
    QPlanerAREA: TIntegerField;
    CDSPlanerCLIENTE: TStringField;
    CDSPlanerPROVEEDOR: TStringField;
    CDSPlanerAREA: TIntegerField;
    btFechaHoy: TJvNavPanelButton;
    edLabel: TEdit;
    Label1: TLabel;
    cbUsuarios: TJvDBLookupCombo;
    QUsuarios: TFDQuery;
    DSPUsuarios: TDataSetProvider;
    CDSUsuario: TClientDataSet;
    CDSUsuarioUSER_ID: TIntegerField;
    CDSUsuarioUSER_NAME: TStringField;
    DSUsuario: TDataSource;
    QPlanerDias: TFDQuery;
    DSPPlanerDias: TDataSetProvider;
    CDSPlanerDias: TClientDataSet;
    CDSPlanerDiasSTARTIME: TSQLTimeStampField;
    QPlanerSTARTIME: TSQLTimeStampField;
    QPlanerENDTIME: TSQLTimeStampField;
    QPlanerMINTIME: TSQLTimeStampField;
    QPlanerMAXTIME: TSQLTimeStampField;
    CDSPlanerSTARTIME: TSQLTimeStampField;
    CDSPlanerENDTIME: TSQLTimeStampField;
    CDSPlanerMINTIME: TSQLTimeStampField;
    CDSPlanerMAXTIME: TSQLTimeStampField;
    QEstados: TFDQuery;
    DSPEstados: TDataSetProvider;
    CDSEstados: TClientDataSet;
    DSEstados: TDataSource;
    QPlanerESTADO: TIntegerField;
    CDSPlanerESTADO: TIntegerField;
    QEstadosID: TIntegerField;
    QEstadosDETALLE: TStringField;
    CDSEstadosID: TIntegerField;
    CDSEstadosDETALLE: TStringField;
    Label2: TLabel;
    QPlanerID_REFERENCIAL: TStringField;
    QPlanerNRO_EVENTO: TIntegerField;
    CDSPlanerID_REFERENCIAL: TStringField;
    CDSPlanerNRO_EVENTO: TIntegerField;
    QEstadosCOLOR: TIntegerField;
    CDSEstadosCOLOR: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR: TcxGridDBColumn;
    QPlanerCOLORESTADO: TIntegerField;
    CDSPlanerCOLORESTADO: TIntegerField;
    PopupMenu: TPopupMenu;
    QProfesionales: TFDQuery;
    DSPProfesionales: TDataSetProvider;
    CDSProfesionales: TClientDataSet;
    DSProfesionales: TDataSource;
    QProfesionalesID: TIntegerField;
    CDSProfesionalesID: TIntegerField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dbgProfesionales: TDBGrid;
    Label3: TLabel;
    QPlanerPROFESIONAL: TIntegerField;
    CDSPlanerPROFESIONAL: TIntegerField;
    Label4: TLabel;
    dbcProfesional: TJvDBLookupCombo;
    QProfesionalesCODIGO: TStringField;
    QProfesionalesID_ESPECIALIDAD: TIntegerField;
    QProfesionalesMUESTRANOMBRE: TStringField;
    CDSProfesionalesCODIGO: TStringField;
    CDSProfesionalesID_ESPECIALIDAD: TIntegerField;
    CDSProfesionalesMUESTRANOMBRE: TStringField;
    ActionList1: TActionList;
    BuscarProveedor: TAction;
    QEspecialidad: TFDQuery;
    DSPEspecialidad: TDataSetProvider;
    CDSEspecialidad: TClientDataSet;
    DSEspecialidad: TDataSource;
    QEspecialidadID: TIntegerField;
    QEspecialidadESPECIALIDAD: TStringField;
    CDSEspecialidadID: TIntegerField;
    CDSEspecialidadESPECIALIDAD: TStringField;
    Label5: TLabel;
    dbgEspecialidad: TDBGrid;
    QComboEspec: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DSPComboEspec: TDataSetProvider;
    CDSComboEspec: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    CDSProfesionalesCOMBOESPECIALIDAD: TStringField;
    QEspecialidadTURNOS_ADICIONALES: TIntegerField;
    CDSEspecialidadTURNOS_ADICIONALES: TIntegerField;
    QPlanerMUESTRACLIENTE: TStringField;
    CDSPlanerMUESTRACLIENTE: TStringField;
    QPlanerID_OBRA_SOCIAL: TIntegerField;
    QPlanerID_ENTIDAD_PAGADORA: TIntegerField;
    CDSPlanerID_OBRA_SOCIAL: TIntegerField;
    CDSPlanerID_ENTIDAD_PAGADORA: TIntegerField;
    QPlanerNRO_AFILIADO: TStringField;
    CDSPlanerNRO_AFILIADO: TStringField;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    QEntidadPaga: TFDQuery;
    DSPEntidadPaga: TDataSetProvider;
    CDSEntidadPaga: TClientDataSet;
    CDSEntidadPagaID: TIntegerField;
    CDSEntidadPagaDENOMINACION: TStringField;
    CDSEntidadPagaDEIRECCION: TStringField;
    CDSEntidadPagaTELEFONOS: TStringField;
    CDSEntidadPagaOBS: TStringField;
    DSEntidadPaga: TDataSource;
    JvNavPanelButton2: TJvNavPanelButton;
    ABMPacientes: TAction;
    QPlanerID_PACIENTE: TIntegerField;
    CDSPlanerID_PACIENTE: TIntegerField;
    QPlanerMUESTRAPACIENTE: TStringField;
    QPlanerMUESTRAPACIENTEDIR: TStringField;
    QPlanerMUESTRAID_OSOCIAL: TIntegerField;
    QPlanerMUESTRANROAFILIADO: TStringField;
    QPlanerMUESTRAOSOCIAL: TStringField;
    CDSPlanerMUESTRAPACIENTE: TStringField;
    CDSPlanerMUESTRAPACIENTEDIR: TStringField;
    CDSPlanerMUESTRAID_OSOCIAL: TIntegerField;
    CDSPlanerMUESTRANROAFILIADO: TStringField;
    CDSPlanerMUESTRAOSOCIAL: TStringField;
    GenerarRto: TAction;
    pag2: TTabSheet;
    DBPlannerSemana: TDBPlanner;
    DBDaySourceSemana: TDBDaySource;
    Panel2: TPanel;
    QPlanerID_FACTURA: TIntegerField;
    CDSPlanerID_FACTURA: TIntegerField;
    lbId: TLabel;
    Facturar: TAction;
    DBMonthSource: TDBMonthSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSPlanerNewRecord(DataSet: TDataSet);
    procedure CDSPlanerAfterPost(DataSet: TDataSet);
    procedure CDSPlanerAfterDelete(DataSet: TDataSet);
    procedure PlannerCalendarGroup1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure DBPlannerMonthView1DaySelect(Sender: TObject; SelDate: TDateTime);
    procedure JvNavPanelButton1Click(Sender: TObject);
    procedure DBPlannerItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlannerItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure CDSAreaNewRecord(DataSet: TDataSet);
    procedure btEventoClick(Sender: TObject);
    procedure CDSAreaAfterPost(DataSet: TDataSet);
    procedure CDSAreaAfterDelete(DataSet: TDataSet);
    procedure DBPlannerMonthView1MonthChange(Sender: TObject; origDate,
      newDate: TDateTime);
    procedure DBPlannerMonthView1ItemSelect(Sender: TObject;
      Item: TPlannerItem);
    procedure btFechaHoyClick(Sender: TObject);
    procedure LbArea_SectorClick(Sender: TObject);
    procedure edLabelKeyPress(Sender: TObject; var Key: Char);
    procedure edLabelExit(Sender: TObject);
    procedure DBPlannerMonthView1ItemDblClick(Sender: TObject;
      Item: TPlannerItem);
    procedure cbAreaClick(Sender: TObject);
    procedure cbUsuariosClick(Sender: TObject);
    procedure cbAreaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbUsuariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBPlannerMonthView1InsertItem(Sender: TObject;
      APlannerItem: TPlannerItem);
    procedure CDSPlanerReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure PlannerCalendarGroup1MonthChange(Sender: TObject; origDate,
      newDate: TDateTime);
    procedure DBPlannerMonthView1ItemMove(Sender: TObject;
      APlannerItem: TPlannerItem; FromStartDate, FromEndDate, ToStartDate,
      ToEndDate: TDateTime);
    procedure FormActivate(Sender: TObject);
    procedure CDSEstadosNewRecord(DataSet: TDataSet);
    procedure CDSEstadosAfterPost(DataSet: TDataSet);
    procedure CDSEstadosAfterDelete(DataSet: TDataSet);
    procedure DBPlannerMonthView1YearChange(Sender: TObject; origDate,
      newDate: TDateTime);
    procedure DBPlannerMonthView1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure _MenuItemPopupClick (Sender: TObject);
    procedure CDSProfesionalesAfterDelete(DataSet: TDataSet);
    procedure CDSProfesionalesAfterPost(DataSet: TDataSet);
    procedure CDSProfesionalesNewRecord(DataSet: TDataSet);
    procedure dbcProfesionalClick(Sender: TObject);
    procedure dbcProfesionalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure CDSProfesionalesCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSEspecialidadAfterDelete(DataSet: TDataSet);
    procedure CDSEspecialidadAfterPost(DataSet: TDataSet);
    procedure CDSEspecialidadNewRecord(DataSet: TDataSet);
    procedure dbgProfesionalesColEnter(Sender: TObject);
    procedure CDSEntidadPagaAfterPost(DataSet: TDataSet);
    procedure CDSEntidadPagaAfterDelete(DataSet: TDataSet);
    procedure CDSEntidadPagaNewRecord(DataSet: TDataSet);
    procedure ABMPacientesExecute(Sender: TObject);
    procedure GenerarRtoExecute(Sender: TObject);
    procedure DBPlannerSemanaItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure DBPlannerSemanaItemInsert(Sender: TObject; Position, FromSel,
      FromSelPrecise, ToSel, ToSelPrecise: Integer);
    procedure DBPlannerMonthView1ItemDeleted(Sender: TObject;
      Item: TPlannerItem);
  private
    { Private declarations }
  public
    { Public declarations }
    Archivo:String;
    ArchivoIni   :TIniFile;
  end;

var
  FormAdminTareas: TFormAdminTareas;

implementation

uses UDMain_FD, UAltaEventoTareas,UPresupuesto_2,UBuscadorProveedor, UPacientes,URemitos;

{$R *.dfm}

procedure TFormAdminTareas.ABMPacientesExecute(Sender: TObject);
begin
  if not(Assigned(FormPacientes)) then
    FormPacientes:=TFormPacientes.Create(Self);
  formPacientes.Show;
end;

procedure TFormAdminTareas.btEventoClick(Sender: TObject);
begin
  if (Assigned(FormAltaEventoTareas)) then
    FreeAndNil(FormAltaEventoTareas);

  if not(Assigned(FormAltaEventoTareas)) then
    FormAltaEventoTareas:=TFormAltaEventoTareas.Create(Self);
  FormAltaEventoTareas.Fecha     := DBDaySource.Day;// DBPlannerMonthView1.Date;
  FormAltaEventoTareas.HDesde    := EncodeTime( 8,0,0,0);;
  FormAltaEventoTareas.IdUsuario := DMMain_FD.UsuarioActivoId;
  FormAltaEventoTareas.ShowModal;
  if (FormAltaEventoTareas.ModalResult = mrOk) then
    begin
      CDSPlaner.Close;
      CDSPlaner.Params.ParamByName('idusuario').Value:=DMMain_FD.UsuarioActivoId;
      CDSPlaner.Open;
    end
  else
    begin
      CDSPlaner.Close;
      CDSPlaner.Params.ParamByName('idusuario').Value:=DMMain_FD.UsuarioActivoId;
      CDSPlaner.Open;
    end


end;

procedure TFormAdminTareas.btFechaHoyClick(Sender: TObject);
var Mes :Word;
begin
  DBDaySource.Day            := Now;
  DBMonthSource.Month        := MonthOf(Date);
  DBDaySourceSemana.Day      := Now;
  PlannerCalendarGroup1.Date := Date;
  DBPlannerMonthView1.Month  := MonthOf(Date);
  DBPlannerMonthView1.Year   := YearOf(Date);
  DBPlannerMonthView1.Date   := Date;

  if DirectoryExists(ExtractFilePath(ParamStr(0))+'BackGrnd') then
    begin
      Mes:=MonthOf(Date);
      case Mes of
       12,1,2 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Verano.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Verano.jpg');
        3,4,5 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Otoño.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Otoño.jpg');
        6,7,8 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Invierno.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Invierno.jpg');
      9,10,11 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Primavera.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Primavera.jpg');

      end;
    end;
end;

procedure TFormAdminTareas.BuscarProveedorExecute(Sender: TObject);
begin
  if not(Assigned(FormBuscadorProveedor)) then
    FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Self);
  FormBuscadorProveedor.Showmodal;
  if FormBuscadorProveedor.Codigo<>'' then
    begin
      if CDSProfesionales.State=dsBrowse then
        CDSProfesionales.Edit;

      CDSProfesionalesCODIGOSetText(CDSProfesionalesCODIGO,FormBuscadorProveedor.Codigo);
    end;
end;

procedure TFormAdminTareas.cbAreaClick(Sender: TObject);
begin
  CDSPlaner.Close;
  CDSPlaner.Params.ParamByName('idusuario').Value  := cbUsuarios.KeyValue;
  CDSPlaner.Params.ParamByName('area').Value       := cbArea.KeyValue;
  CDSPlaner.Params.ParamByName('profesional').AsInteger  := dbcProfesional.KeyValue;
  CDSPlaner.Open;
end;

procedure TFormAdminTareas.cbAreaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_CLEAR) or (Key=VK_DELETE) or (Key=VK_BACK) then
    begin
      cbArea.ClearValue;
      CDSPlaner.Close;
      CDSPlaner.Params.ParamByName('idusuario').Value  := cbUsuarios.KeyValue;
      CDSPlaner.Params.ParamByName('area').Value       := cbArea.KeyValue;
      CDSPlaner.Params.ParamByName('profesional').AsInteger  := dbcProfesional.KeyValue;
      CDSPlaner.Open;
    end;

end;

procedure TFormAdminTareas.cbUsuariosClick(Sender: TObject);
begin
  CDSPlaner.Close;
  CDSPlaner.Params.ParamByName('idusuario').Value  := cbUsuarios.KeyValue;
  CDSPlaner.Params.ParamByName('area').Value       := cbArea.KeyValue;
  CDSPlaner.Params.ParamByName('profesional').AsInteger  := dbcProfesional.KeyValue;
  CDSPlaner.Open;
end;

procedure TFormAdminTareas.cbUsuariosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key=VK_CLEAR) or (Key=VK_DELETE) or (Key=VK_BACK) then
   begin
     cbUsuarios.ClearValue;
     CDSPlaner.Close;
     CDSPlaner.Params.ParamByName('idusuario').Value  := cbUsuarios.KeyValue;
     CDSPlaner.Params.ParamByName('area').Value       := cbArea.KeyValue;
     CDSPlaner.Params.ParamByName('profesional').AsInteger  := dbcProfesional.KeyValue;
     CDSPlaner.Open;
   end;
 end;

procedure TFormAdminTareas.CDSAreaAfterDelete(DataSet: TDataSet);
begin
  CDSArea.ApplyUpdates(-1);
end;

procedure TFormAdminTareas.CDSAreaAfterPost(DataSet: TDataSet);
begin
  CDSArea.ApplyUpdates(-1);
  CDSArea.Refresh;
end;

procedure TFormAdminTareas.CDSAreaNewRecord(DataSet: TDataSet);
begin
  CDSAreaID.Value:=-1;
end;

procedure TFormAdminTareas.CDSEntidadPagaAfterDelete(DataSet: TDataSet);
begin
  CDSEntidadPaga.ApplyUpdates(0);
  CDSEntidadPaga.Refresh;
end;

procedure TFormAdminTareas.CDSEntidadPagaAfterPost(DataSet: TDataSet);
begin
  CDSEntidadPaga.ApplyUpdates(0);
  CDSEntidadPaga.Refresh;
end;

procedure TFormAdminTareas.CDSEntidadPagaNewRecord(DataSet: TDataSet);
begin
  CDSEntidadPagaID.Value:=-1;
end;

procedure TFormAdminTareas.CDSEspecialidadAfterDelete(DataSet: TDataSet);
begin
  CDSEspecialidad.ApplyUpdates(0);
  CDSComboEspec.Refresh;
end;

procedure TFormAdminTareas.CDSEspecialidadAfterPost(DataSet: TDataSet);
begin
  CDSEspecialidad.ApplyUpdates(-1);
  CDSEspecialidad.Refresh;
  CDSComboEspec.Refresh;
end;

procedure TFormAdminTareas.CDSEspecialidadNewRecord(DataSet: TDataSet);
begin
  CDSEspecialidadID.Value                 := -1;
  CDSEspecialidadTURNOS_ADICIONALES.Value := 0;
end;

procedure TFormAdminTareas.CDSEstadosAfterDelete(DataSet: TDataSet);
begin
  CDSEstados.ApplyUpdates(-1);
end;

procedure TFormAdminTareas.CDSEstadosAfterPost(DataSet: TDataSet);
begin
  CDSEstados.ApplyUpdates(-1);
  CDSEstados.Refresh;
end;

procedure TFormAdminTareas.CDSEstadosNewRecord(DataSet: TDataSet);
begin
  CDSEstadosID.Value   := -1;
  CDSEstadosCOLOR.Value:= clDefault;
end;

procedure TFormAdminTareas.CDSPlanerAfterDelete(DataSet: TDataSet);
begin
  CDSPlaner.ApplyUpdates(0);
  CDSPlanerDias.Close;
  CDSPlanerDias.Params.ParamByName('desde').AsDateTime:=PlannerCalendarGroup1.FirstDate;// origDate;
  CDSPlanerDias.Params.ParamByName('hasta').AsDateTime:=PlannerCalendarGroup1.LastDate;
  CDSPlanerDias.Open;
  if not(CDSPlanerDias.IsEmpty) then
    begin
      PlannerCalendarGroup1.Events.Clear;
      CDSPlanerDias.First;
      while Not(CDSPlanerDias.Eof) do
        begin
          with PlannerCalendarGroup1.Events.Add do
            begin
              Date  := CDSPlanerDiasSTARTIME.AsDateTime;
              Color := clRed;
            end;
         CDSPlanerDias.Next;
        end;
    end;
  PlannerCalendarGroup1.UpdateDates;
  PlannerCalendarGroup1.Refresh;
////  PlannerCalendarGroup1.Repaint;
//
// // DBPlanner.Refresh;

end;

procedure TFormAdminTareas.CDSPlanerAfterPost(DataSet: TDataSet);
begin
  CDSPlaner.ApplyUpdates(0);
  CDSPlanerDias.Close;
  CDSPlanerDias.Params.ParamByName('desde').AsDateTime:=PlannerCalendarGroup1.FirstDate;// origDate;
  CDSPlanerDias.Params.ParamByName('hasta').AsDateTime:=PlannerCalendarGroup1.LastDate;
  CDSPlanerDias.Open;
  if not(CDSPlanerDias.IsEmpty) then
    begin
      PlannerCalendarGroup1.Events.Clear;
      CDSPlanerDias.First;
      while Not(CDSPlanerDias.Eof) do
        begin
          with PlannerCalendarGroup1.Events.Add do
            begin
              Date  := CDSPlanerDiasSTARTIME.AsDateTime;
              Color := clRed;
            end;
         CDSPlanerDias.Next;
        end;
    end;
  PlannerCalendarGroup1.UpdateDates;
end;

procedure TFormAdminTareas.CDSPlanerNewRecord(DataSet: TDataSet);
var
 MiGuid : TGUID;
begin


end;




procedure TFormAdminTareas.CDSPlanerReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TFormAdminTareas.CDSProfesionalesAfterDelete(DataSet: TDataSet);
begin
  CDSProfesionales.ApplyUpdates(0);
end;

procedure TFormAdminTareas.CDSProfesionalesAfterPost(DataSet: TDataSet);
begin
  CDSProfesionales.ApplyUpdates(-1);
  CDSProfesionales.Refresh;
end;

procedure TFormAdminTareas.CDSProfesionalesCODIGOSetText(Sender: TField; const Text: string);
var QConsulta:TFDQuery;
begin
  if (Text<>#13) and (Text<>'') then
    begin
      Sender.AsString      := AnsiRightStr('0000000'+Trim(Text),6);
      QConsulta            := TFDQuery.Create(nil);
      QConsulta.Connection := DMMain_FD.fdcGestion;
      QConsulta.SQL.Text   := 'Select p.codigo,p.nombre from poveedor p where p.codigo='+Sender.AsString;
      QConsulta.Open;
      if not(QConsulta.IsEmpty) then
        CDSProfesionalesMUESTRANOMBRE.Value:=QConsulta.FieldByName('NOMBRE').Value
      else
        begin
          CDSProfesionalesMUESTRANOMBRE.Clear;
          CDSProfesionalesCODIGO.Clear;
        end;
      FreeAndNil(QConsulta);
    end;
end;

procedure TFormAdminTareas.CDSProfesionalesNewRecord(DataSet: TDataSet);
begin
  CDSProfesionalesID.Value              := -1;
  CDSProfesionalesID_ESPECIALIDAD.Value := -1;
end;

procedure TFormAdminTareas.dbcProfesionalClick(Sender: TObject);
begin
  CDSPlaner.Close;
  CDSPlaner.Params.ParamByName('idusuario').Value  := cbUsuarios.KeyValue;
  CDSPlaner.Params.ParamByName('area').Value       := cbArea.KeyValue;
  CDSPlaner.Params.ParamByName('profesional').AsInteger  := dbcProfesional.KeyValue;
  CDSPlaner.Open;
end;

procedure TFormAdminTareas.dbcProfesionalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if (key=VK_CLEAR) or (Key=VK_DELETE) or (Key=VK_BACK) then
    begin
      cbArea.ClearValue;
      CDSPlaner.Close;
      CDSPlaner.Params.ParamByName('idusuario').Value  := cbUsuarios.KeyValue;
      CDSPlaner.Params.ParamByName('area').Value       := cbArea.KeyValue;
      CDSPlaner.Params.ParamByName('profesional').AsInteger  := dbcProfesional.KeyValue;
      CDSPlaner.Open;
    end;
end;


procedure TFormAdminTareas.dbgProfesionalesColEnter(Sender: TObject);
begin
  if dbgProfesionales.SelectedIndex=1 then
    dbgProfesionales.SelectedIndex:=2;
end;

procedure TFormAdminTareas.DBPlannerItemDelete(Sender: TObject;
  Item: TPlannerItem);
begin
  DBPlanner.FreeItem(item);
end;

procedure TFormAdminTareas.DBPlannerItemInsert(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
var
 MiGuid : TGUID;
begin
  CDSPlaner.Append;
  if CreateGUID(MiGuid) <> 0 then
    ShowMessage('No se pudo crear GUID....')
  else
    CDSPlanerID_KEY.Value := GUIDToString(MiGuid);

  CDSPlanerID_USUARIO.Value     := DMMain_FD.UsuarioActivoId;
  CDSPlanerSTARTIME.AsDateTime  := DBPlannerMonthView1.Date+EncodeTime( 8,0,0,0);
  CDSPlanerENDTIME.AsDateTime   := DBPlannerMonthView1.Date+EncodeTime( 9,0,0,0);
  CDSPlanerSUBJECT.AsString     := 'SIN ASUNTO';
  CDSPlanerNOTES.AsString       := '//';
  CDSPlanerAREA.Value           := cbArea.KeyValue;
  CDSPlanerID_USUARIO.Value     := cbUsuarios.KeyValue;
  CDSPlanerID_REFERENCIAL.Value := CDSPlanerID_KEY.Value;
  CDSPlanerNRO_EVENTO.Value     := 1;// esto enumera si hay un grupo de eventos el orden que le corresponde, por defecto hay 1
  CDSPlanerPROFESIONAL.Value    := -1;
  CDSPlanerESTADO.Value        := -1;

  CDSPlaner.Post;
  CDSPlaner.ApplyUpdates(0);

  CDSPlaner.Close;
  CDSPlaner.Params.ParamByName('idusuario').Value  := cbUsuarios.KeyValue;
  CDSPlaner.Params.ParamByName('area').Value       := cbArea.KeyValue;
  CDSPlaner.Open;
  DBPlannerMonthView1.Refresh;

  CDSPlanerDias.Close;
  CDSPlanerDias.Params.ParamByName('desde').AsDateTime:=PlannerCalendarGroup1.FirstDate;// origDate;
  CDSPlanerDias.Params.ParamByName('hasta').AsDateTime:=PlannerCalendarGroup1.LastDate;
  CDSPlanerDias.Open;
  if not(CDSPlanerDias.IsEmpty) then
    begin
      PlannerCalendarGroup1.Events.Clear;
      CDSPlanerDias.First;
      while Not(CDSPlanerDias.Eof) do
        begin
          with PlannerCalendarGroup1.Events.Add do
            begin
              Date  := CDSPlanerDiasSTARTIME.AsDateTime;
              Color := clRed;
            end;
         CDSPlanerDias.Next;
        end;
    end;
  PlannerCalendarGroup1.UpdateDates;
end;

procedure TFormAdminTareas.DBPlannerMonthView1DaySelect(Sender: TObject;SelDate: TDateTime);
begin
  DBDaySource.Day            := SelDate;
  DBDaySourceSemana.Day      := SelDate;
  DBMonthSource.Month        := MonthOf(SelDate);
  PlannerCalendarGroup1.Date := SelDate;
end;

procedure TFormAdminTareas.DBPlannerMonthView1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
begin
  //CASE Fields.FieldByName('COLOR').Value of
//    1:Item.Color:=clRed;
//    2:Item.Color:=clYellow;
//    3:Item.Color:=clBlue;
//    4:Item.Color:=clGreen;
//    5:Item.Color:=clInfoBk;
//    6:Item.Color:=clHighlight;
//    7:Item.Color:=clNavy;
//    8:Item.Color:=clGradientInactiveCaption;
//    9:Item.Color:=clGrayText;
//  END;

  if not(VarIsNull(Fields.FieldByName('COLORESTADO').Value)) then
    Item.Color:=Fields.FieldByName('COLORESTADO').Value;

 end;

procedure TFormAdminTareas.DBPlannerMonthView1InsertItem(Sender: TObject;
  APlannerItem: TPlannerItem);
var
 MiGuid : TGUID;
begin
  CDSPlaner.Append;
  if CreateGUID(MiGuid) <> 0 then
    ShowMessage('No se pudo crear GUID....')
  else
    CDSPlanerID_KEY.Value := GUIDToString(MiGuid);

  CDSPlanerID_USUARIO.Value     := DMMain_FD.UsuarioActivoId;
  CDSPlanerSTARTIME.AsDateTime  := DBPlannerMonthView1.Date+EncodeTime( 8,0,0,0);
  CDSPlanerENDTIME.AsDateTime   := DBPlannerMonthView1.Date+EncodeTime( 9,0,0,0);
  CDSPlanerSUBJECT.AsString     := 'SIN ASUNTO';
  CDSPlanerNOTES.AsString       := '//';
  CDSPlanerAREA.Value           := cbArea.KeyValue;
  CDSPlanerID_USUARIO.Value     := cbUsuarios.KeyValue;
  CDSPlanerID_REFERENCIAL.Value := CDSPlanerID_KEY.Value;
  CDSPlanerNRO_EVENTO.Value     := 1;// esto enumera si hay un grupo de eventos el orden que le corresponde, por defecto hay 1
  CDSPlanerPROFESIONAL.Value    := -1;
  CDSPlanerESTADO.Value         := -1;
  CDSPlaner.Post;
  CDSPlaner.ApplyUpdates(0);

  CDSPlaner.Close;
  CDSPlaner.Params.ParamByName('idusuario').Value  := cbUsuarios.KeyValue;
  CDSPlaner.Params.ParamByName('area').Value       := cbArea.KeyValue;
  CDSPlaner.Open;
  DBPlannerMonthView1.Refresh;

  CDSPlanerDias.Close;
  CDSPlanerDias.Params.ParamByName('desde').AsDateTime:=PlannerCalendarGroup1.FirstDate;// origDate;
  CDSPlanerDias.Params.ParamByName('hasta').AsDateTime:=PlannerCalendarGroup1.LastDate;
  CDSPlanerDias.Open;
  if not(CDSPlanerDias.IsEmpty) then
    begin
      PlannerCalendarGroup1.Events.Clear;
      CDSPlanerDias.First;
      while Not(CDSPlanerDias.Eof) do
        begin
          with PlannerCalendarGroup1.Events.Add do
            begin
              Date  := CDSPlanerDiasSTARTIME.AsDateTime;
              Color := clRed;
            end;
         CDSPlanerDias.Next;
        end;
    end;
  PlannerCalendarGroup1.UpdateDates;
end;

procedure TFormAdminTareas.DBPlannerMonthView1ItemDblClick(Sender: TObject;
  Item: TPlannerItem);
begin
  if (CDSPlanerID_CPBTE.AsString<>'') and (CDSPlanerTIPOCPBTE.Value='PR') then
    begin
      if not(Assigned(FormPresupuesto_2)) Then
        FormPresupuesto_2:=TFormPresupuesto_2.create(Self);
      FormPresupuesto_2.DatoNew   := CDSPlanerID_CPBTE.AsString;
      FormPresupuesto_2.TIPOCPBTE := CDSPlanerTIPOCPBTE.Value;
      FormPresupuesto_2.Recuperar.Execute;
      FormPresupuesto_2.Show;
    end;
  if (CDSPlanerID_KEY.AsString<>'') and (CDSPlanerTIPOCPBTE.Value='') then
    begin
      if (Assigned(FormAltaEventoTareas)) then
        FreeAndNil(FormAltaEventoTareas);

      if not(Assigned(FormAltaEventoTareas)) then
        FormAltaEventoTareas:=TFormAltaEventoTareas.Create(Self);
      FormAltaEventoTareas.Modo       :='E';// DBPlannerMonthView1.Date;
      FormAltaEventoTareas.Fecha      := CDSPlanerSTARTIME.AsDateTime;
      FormAltaEventoTareas.HDesde     := CDSPlanerSTARTIME.AsDateTime;
      FormAltaEventoTareas.HHasta     := CDSPlanerENDTIME.AsDateTime;
      FormAltaEventoTareas.Codigo     := CDSPlanerCLIENTE.Value;
      FormAltaEventoTareas.Nombre     := CDSPlanerMUESTRACLIENTE.Value;
      FormAltaEventoTareas.CodigoProv := CDSPlanerPROVEEDOR.AsString;
      FormAltaEventoTareas.Nota       := CDSPlanerNOTES.AsString;
      FormAltaEventoTareas.Asunto     := CDSPlanerSUBJECT.Text;
      FormAltaEventoTareas.IdUsuario  := CDSPlanerID_USUARIO.Value;

      FormAltaEventoTareas.recuperar(CDSPlanerID_KEY.Value);
      FormAltaEventoTareas.BringToFront;
      FormAltaEventoTareas.ShowModal;

      CDSPlaner.Close;
      CDSPlaner.Params.ParamByName('idusuario').Value        := cbUsuarios.KeyValue;
      CDSPlaner.Params.ParamByName('area').Value             := cbArea.KeyValue;
      CDSPlaner.Params.ParamByName('profesional').AsInteger  := dbcProfesional.KeyValue;
      CDSPlaner.Open;

    end;

end;

procedure TFormAdminTareas.DBPlannerMonthView1ItemDeleted(Sender: TObject;
  Item: TPlannerItem);
begin
  {
  if MessageDlg('borrar?',mtConfirmation,mbYesNo,0,mbNo)=mrNo Then
    begin
      CDSPlaner.Cancel;
      DBPlanner.Refresh;
    end
  else
    begin
      CDSPlaner.delete;

      CDSPlaner.ApplyUpdates(0);
      CDSPlanerDias.Close;
      CDSPlanerDias.Params.ParamByName('desde').AsDateTime:=PlannerCalendarGroup1.FirstDate;// origDate;
      CDSPlanerDias.Params.ParamByName('hasta').AsDateTime:=PlannerCalendarGroup1.LastDate;
      CDSPlanerDias.Open;
      if not(CDSPlanerDias.IsEmpty) then
        begin
          PlannerCalendarGroup1.Events.Clear;
          CDSPlanerDias.First;
          while Not(CDSPlanerDias.Eof) do
            begin
              with PlannerCalendarGroup1.Events.Add do
                begin
                  Date  := CDSPlanerDiasSTARTIME.AsDateTime;
                  Color := clRed;
                end;
             CDSPlanerDias.Next;
            end;
        end;
      PlannerCalendarGroup1.UpdateDates;
    //PlannerCalendarGroup1.Refresh;
   //PlannerCalendarGroup1.Repaint;

   // DBPlanner.Refresh;
    end;
  DBPlannerMonthView1.Refresh;

   }
end;

procedure TFormAdminTareas.DBPlannerMonthView1ItemMove(Sender: TObject;
  APlannerItem: TPlannerItem; FromStartDate, FromEndDate, ToStartDate,
  ToEndDate: TDateTime);
begin
  CDSPlanerDias.Close;
  CDSPlanerDias.Params.ParamByName('desde').AsDateTime:=PlannerCalendarGroup1.FirstDate;// origDate;
  CDSPlanerDias.Params.ParamByName('hasta').AsDateTime:=PlannerCalendarGroup1.LastDate;
  CDSPlanerDias.Open;
  if not(CDSPlanerDias.IsEmpty) then
    begin
      PlannerCalendarGroup1.Events.Clear;
      CDSPlanerDias.First;
      while Not(CDSPlanerDias.Eof) do
        begin
          with PlannerCalendarGroup1.Events.Add do
            begin
              Date  := CDSPlanerDiasSTARTIME.AsDateTime;
              Color := clRed;
            end;
         CDSPlanerDias.Next;
        end;
    end;
  PlannerCalendarGroup1.UpdateDates;
end;

procedure TFormAdminTareas.DBPlannerMonthView1ItemSelect(Sender: TObject;
  Item: TPlannerItem);
begin
  lbId.Caption:= CDSPlanerID_KEY.Value;
//  DBDaySource.Day            := Item.ItemStartTime;
//  DBMonthSource.Month        := MonthOf(Item.ItemStartTime);
//  PlannerCalendarGroup1.Date := Item.ItemStartTime;
end;

procedure TFormAdminTareas.DBPlannerMonthView1MonthChange(Sender: TObject;
  origDate, newDate: TDateTime);
var Mes:Word;
begin
  PlannerCalendarGroup1.Date:= newDate;
  if DirectoryExists(ExtractFilePath(ParamStr(0))+'BackGrnd') then
    begin
      Mes:=MonthOf(newDate);
      case Mes of
       12,1,2 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Verano.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Verano.jpg');
        3,4,5 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Otoño.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Otoño.jpg');
        6,7,8 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Invierno.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Invierno.jpg');
      9,10,11 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Primavera.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Primavera.jpg');
      end;
    end;
  PlannerCalendarGroup1.Month:=Mes;

  CDSPlanerDias.Close;
  CDSPlanerDias.Params.ParamByName('desde').AsDateTime:=PlannerCalendarGroup1.FirstDate;// origDate;
  CDSPlanerDias.Params.ParamByName('hasta').AsDateTime:=PlannerCalendarGroup1.LastDate;
  CDSPlanerDias.Open;
  if not(CDSPlanerDias.IsEmpty) then
    begin
      PlannerCalendarGroup1.Events.Clear;
      CDSPlanerDias.First;
      while Not(CDSPlanerDias.Eof) do
        begin
          with PlannerCalendarGroup1.Events.Add do
            begin
              Date  := CDSPlanerDiasSTARTIME.AsDateTime;
              Color := clRed;
            end;
         CDSPlanerDias.Next;
        end;
    end;
  PlannerCalendarGroup1.UpdateDates;

end;

procedure TFormAdminTareas.DBPlannerMonthView1YearChange(Sender: TObject;
  origDate, newDate: TDateTime);
var Anio:Word;
mes:Word;
begin
  Anio:=YearOf(newDate);
  mes:=MonthOf(newDate);

  PlannerCalendarGroup1.Year  := Anio;
  PlannerCalendarGroup1.Month := mes;

end;

procedure TFormAdminTareas.DBPlannerSemanaItemDelete(Sender: TObject;
  Item: TPlannerItem);
begin
  DBPlannerSemana.FreeItem(item);
end;

procedure TFormAdminTareas.DBPlannerSemanaItemInsert(Sender: TObject; Position,
  FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
var
 MiGuid : TGUID;
begin
  CDSPlaner.Append;
  if CreateGUID(MiGuid) <> 0 then
    ShowMessage('No se pudo crear GUID....')
  else
    CDSPlanerID_KEY.Value := GUIDToString(MiGuid);

  CDSPlanerID_USUARIO.Value     := DMMain_FD.UsuarioActivoId;
  CDSPlanerSTARTIME.AsDateTime  := DBPlannerMonthView1.Date+EncodeTime( 8,0,0,0);
  CDSPlanerENDTIME.AsDateTime   := DBPlannerMonthView1.Date+EncodeTime( 9,0,0,0);
  CDSPlanerSUBJECT.AsString     := 'SIN ASUNTO';
  CDSPlanerNOTES.AsString       := '//';
  CDSPlanerAREA.Value           := cbArea.KeyValue;
  CDSPlanerID_USUARIO.Value     := cbUsuarios.KeyValue;
  CDSPlanerID_REFERENCIAL.Value := CDSPlanerID_KEY.Value;
  CDSPlanerNRO_EVENTO.Value     := 1;// esto enumera si hay un grupo de eventos el orden que le corresponde, por defecto hay 1
  CDSPlanerPROFESIONAL.Value    := -1;
  CDSPlanerESTADO.Value        := -1;

  CDSPlaner.Post;
  CDSPlaner.ApplyUpdates(0);

  CDSPlaner.Close;
  CDSPlaner.Params.ParamByName('idusuario').Value  := cbUsuarios.KeyValue;
  CDSPlaner.Params.ParamByName('area').Value       := cbArea.KeyValue;
  CDSPlaner.Open;
  DBPlannerMonthView1.Refresh;

  CDSPlanerDias.Close;
  CDSPlanerDias.Params.ParamByName('desde').AsDateTime:=PlannerCalendarGroup1.FirstDate;// origDate;
  CDSPlanerDias.Params.ParamByName('hasta').AsDateTime:=PlannerCalendarGroup1.LastDate;
  CDSPlanerDias.Open;
  if not(CDSPlanerDias.IsEmpty) then
    begin
      PlannerCalendarGroup1.Events.Clear;
      CDSPlanerDias.First;
      while Not(CDSPlanerDias.Eof) do
        begin
          with PlannerCalendarGroup1.Events.Add do
            begin
              Date  := CDSPlanerDiasSTARTIME.AsDateTime;
              Color := clRed;
            end;
         CDSPlanerDias.Next;
        end;
    end;
  PlannerCalendarGroup1.UpdateDates;
end;

procedure TFormAdminTareas.edLabelExit(Sender: TObject);
begin
  if edLabel.Visible then
    edLabel.Visible      := False;
end;

procedure TFormAdminTareas.edLabelKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    begin
     LbArea_Sector.Caption:= edLabel.Text;
     edLabel.Visible      := False;
    end;
end;

procedure TFormAdminTareas.FormActivate(Sender: TObject);
begin
  if FormAdminTareas<>nil then
    begin
      CDSPlaner.Close;
      CDSPlaner.Params.ParamByName('idusuario').AsInteger   := DMMain_FD.UsuarioActivoId;
      CDSPlaner.Params.ParamByName('area').AsInteger        := cbArea.KeyValue;
      CDSPlaner.Params.ParamByName('profesional').AsInteger := dbcProfesional.KeyValue;
      CDSPlaner.Open;
    end;
  if FormAdminTareas<>Nil then
    if FormAdminTareas.WindowState<>wsMaximized then
      FormAdminTareas.WindowState:=wsMaximized;
end;

procedure TFormAdminTareas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'AdminiTareas.ini');
  ArchivoIni.WriteString('Dato', 'Area', LbArea_Sector.Caption);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormAdminTareas.FormCreate(Sender: TObject);
var Mes:Word;
    op:TMenuItem;

begin
  ArchivoIni            := TIniFile.Create(ExtractFilePath(ParamStr(0))+'AdminiTareas.ini');
  LbArea_Sector.Caption := ArchivoIni.ReadString('Dato', 'Area', 'Sin Definir');
  ArchivoIni.Free;
  //****************************************************************************

  pcGeneral.ActivePageIndex:=0;
  CDSArea.Close;
  CDSArea.Open;

  CDSEspecialidad.Close;
  CDSEspecialidad.Open;

  CDSComboEspec.Close;
  CDSComboEspec.Open;

  CDSProfesionales.Close;
  CDSProfesionales.Open;

  CDSEstados.Close;
  CDSEstados.Open;

  CDSUsuario.Close;
  CDSUsuario.Open;

  CDSEntidadPaga.Close;
  CDSEntidadPaga.Open;

  cbUsuarios.KeyValue:=DMMain_FD.UsuarioActivoId;

  DBDaySource.Day            := Now;
  DBMonthSource.Month        := MonthOf(Date);
  DBDaySourceSemana.Day      := Now;

  PlannerCalendarGroup1.Date := Date;
  DBPlannerMonthView1.Month  := MonthOf(Date);
  DBPlannerMonthView1.Year   := YearOf(Date);

  if DirectoryExists(ExtractFilePath(ParamStr(0))+'BackGrnd') then
    begin
      Mes:=MonthOf(Date);
      case Mes of
       12,1,2 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Verano.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Verano.jpg');
        3,4,5 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Otoño.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Otoño.jpg');
        6,7,8 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Invierno.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Invierno.jpg');
      9,10,11 : if FileExists(ExtractFilePath(ParamStr(0))+'BackGrnd\Primavera.jpg') then
                   DBPlannerMonthView1.Background.LoadFromFile(ExtractFilePath(ParamStr(0))+'BackGrnd\Primavera.jpg');
      end;
    end;
  DBPlannerMonthView1.NameOfMonths.January   :='Enero';
  DBPlannerMonthView1.NameOfMonths.February  :='Febrero';
  DBPlannerMonthView1.NameOfMonths.March     :='Marzo';
  DBPlannerMonthView1.NameOfMonths.April     :='Abril';
  DBPlannerMonthView1.NameOfMonths.May       :='Mayo';
  DBPlannerMonthView1.NameOfMonths.June      :='Junio';
  DBPlannerMonthView1.NameOfMonths.July      :='Julio';
  DBPlannerMonthView1.NameOfMonths.August    :='Agosto';
  DBPlannerMonthView1.NameOfMonths.September :='Septiembre';
  DBPlannerMonthView1.NameOfMonths.October   :='Octubre';
  DBPlannerMonthView1.NameOfMonths.November  :='Noviembre';
  DBPlannerMonthView1.NameOfMonths.December  :='Diciembre';

  DBPlannerMonthView1.NameOfDays.Monday      :='Lunes';
  DBPlannerMonthView1.NameOfDays.Tuesday     :='Martes';
  DBPlannerMonthView1.NameOfDays.Wednesday   :='Miercoles';
  DBPlannerMonthView1.NameOfDays.Thursday    :='Jueves';
  DBPlannerMonthView1.NameOfDays.Friday      :='Viernes';
  DBPlannerMonthView1.NameOfDays.Saturday    :='Sabado';
  DBPlannerMonthView1.NameOfDays.Sunday      :='Domingo';

  CDSPlaner.Close;
  CDSPlaner.Params.ParamByName('idusuario').AsInteger    := DMMain_FD.UsuarioActivoId;
  CDSPlaner.Params.ParamByName('area').AsInteger         := cbArea.KeyValue;
  CDSPlaner.Params.ParamByName('profesional').AsInteger  := dbcProfesional.KeyValue;
  CDSPlaner.Open;

//  popup.Items.Add(NewItem('aaaaaaaaaaaaaaaaa',0,False,True,nil,0,'item1'));
  PopupMenu.Items.Clear;
  CDSEstados.First;
  while not(CDSEstados.Eof) do
    begin
      PopupMenu.Items.Add(NewItem(CDSEstadosDETALLE.Value,0,False,True,_MenuItemPopupClick,0,'Item1'));
      CDSEstados.Next;
    end;
  //PopupMenu.Items.Add(NewItem(generarRto.caption,0,False,True,GenerarRtoExecute,0,'Generar Reimitos'));


end;


procedure TFormAdminTareas.FormDestroy(Sender: TObject);
begin
  FormAdminTareas:=nil;
end;

procedure TFormAdminTareas.FormShow(Sender: TObject);
begin
 // if not(cxSchedulerDBStorage1.CheckRequiredFields) then ShowMessage('Error de asignacion');
  if FormAdminTareas<>nil then
   FormAdminTareas.WindowState:=wsMaximized;

  CDSPlanerDias.Close;
  CDSPlanerDias.Params.ParamByName('desde').AsDateTime:=PlannerCalendarGroup1.FirstDate;// origDate;
  CDSPlanerDias.Params.ParamByName('hasta').AsDateTime:=PlannerCalendarGroup1.LastDate;
  CDSPlanerDias.Open;
  if not(CDSPlanerDias.IsEmpty) then
    begin
      PlannerCalendarGroup1.Events.Clear;
      CDSPlanerDias.First;
      while Not(CDSPlanerDias.Eof) do
        begin
          with PlannerCalendarGroup1.Events.Add do
            begin
              Date  := CDSPlanerDiasSTARTIME.AsDateTime;
              Color := clRed;
            end;
         CDSPlanerDias.Next;
        end;
    end;
  PlannerCalendarGroup1.UpdateDates;
end;

procedure TFormAdminTareas.GenerarRtoExecute(Sender: TObject);
begin
  if Not(Assigned(FormRemitos)) then
    FormRemitos:=TFormRemitos.Create(self);
  FormRemitos.Show;
end;

procedure TFormAdminTareas.JvNavPanelButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAdminTareas.LbArea_SectorClick(Sender: TObject);
var Dato:TEdit;
begin
  if not(edLabel.Visible) then
    edLabel.Visible:=True;
end;

procedure TFormAdminTareas.PlannerCalendarGroup1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  DBDaySource.Day            := SelDate;
  DBMonthSource.Month        := MonthOf(SelDate);
  DBDaySourceSemana.Day      := SelDate;
  DBMonthSource.Year         := YearOf(SelDate);
  DBPlannerMonthView1.Date   := SelDate;
  PlannerCalendarGroup1.Date := SelDate;

  CDSPlaner.Close;
  CDSPlaner.Params.ParamByName('idusuario').Value  := cbUsuarios.KeyValue;
  CDSPlaner.Params.ParamByName('area').Value       := cbArea.KeyValue;
  CDSPlaner.Params.ParamByName('profesional').AsInteger  := dbcProfesional.KeyValue;
  CDSPlaner.Open;

end;

procedure TFormAdminTareas.PlannerCalendarGroup1MonthChange(Sender: TObject;
  origDate, newDate: TDateTime);
begin
  CDSPlanerDias.Close;
  CDSPlanerDias.Params.ParamByName('desde').AsDateTime:=PlannerCalendarGroup1.FirstDate;// origDate;
  CDSPlanerDias.Params.ParamByName('hasta').AsDateTime:=PlannerCalendarGroup1.LastDate;
  CDSPlanerDias.Open;
  if not(CDSPlanerDias.IsEmpty) then
    begin
      PlannerCalendarGroup1.Events.Clear;
      CDSPlanerDias.First;
      while Not(CDSPlanerDias.Eof) do
        begin
          with PlannerCalendarGroup1.Events.Add do
            begin
              Date  := CDSPlanerDiasSTARTIME.AsDateTime;
              Color := clRed;
            end;
         CDSPlanerDias.Next;
        end;
    end;
  PlannerCalendarGroup1.UpdateDates;
 // ShowMessage('desde:'+DateToStr(origDate)+' - hasta:'+DateToStr(newDate) );
end;



procedure TFormAdminTareas._MenuItemPopupClick(Sender: TObject);
var ItemStr:string;
begin
  if not(Sender is TMenuItem) then
    Exit;
  // Excanear cual de las opciones se ha pulsado...

  ItemStr              := TMenuItem(Sender).Caption;

  if CDSEstados.Locate('DETALLE',ItemStr,[]) Then
    begin
      CDSPlaner.Edit;
      CDSPlanerESTADO.Value:= CDSEstadosID.Value;
      CDSPlaner.Post;
    end;
  CDSPlaner.Refresh;
  DBPlannerMonthView1.Refresh;
 // DBPlannerMonthView1.UpdateItem(sender);



end;

end.
