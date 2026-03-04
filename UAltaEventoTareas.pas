unit UAltaEventoTareas;
{$D+}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JvSpin,
  Vcl.Mask, JvExMask, JvToolEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,IniFiles,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,UBuscadorClientes, Vcl.Buttons,
  JvExControls, JvDBLookup, Datasnap.DBClient, Datasnap.Provider, JvBaseEdits,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Menus, CompBuscador, Planner, PlannerMonthView,
  DBPlannerMonthView, DBPlanner, Vcl.Grids, Vcl.DBGrids, ToolPanels,DateUtils;

type
  TFormAltaEventoTareas = class(TForm)
    pnCabecera: TPanel;
    lbTitulo: TLabel;
    pnBase: TPanel;
    pnPie: TPanel;
    edFecha: TJvDateEdit;
    edtDesde: TJvTimeEdit;
    edtHasta: TJvTimeEdit;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    edNotas: TEdit;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbArea: TJvDBLookupCombo;
    Label7: TLabel;
    QArea: TFDQuery;
    QAreaID: TIntegerField;
    QAreaDETALLE: TStringField;
    DSPArea: TDataSetProvider;
    CDSArea: TClientDataSet;
    CDSAreaID: TIntegerField;
    CDSAreaDETALLE: TStringField;
    DSArea: TDataSource;
    QPlaner: TFDQuery;
    DSPPlaner: TDataSetProvider;
    CDSPlaner: TClientDataSet;
    QProveedor: TFDQuery;
    QProveedorCODIGO: TStringField;
    QProveedorNOMBRE: TStringField;
    QProveedorRAZON_SOCIAL: TStringField;
    Label9: TLabel;
    cbUsuarios: TJvDBLookupCombo;
    QUsuarios: TFDQuery;
    DSPUsuarios: TDataSetProvider;
    CDSUsuario: TClientDataSet;
    CDSUsuarioUSER_ID: TIntegerField;
    CDSUsuarioUSER_NAME: TStringField;
    edAsunto: TEdit;
    Panel1: TPanel;
    chGeneraEventos: TCheckBox;
    udCantidad: TUpDown;
    udPerirodo: TUpDown;
    Label11: TLabel;
    Label12: TLabel;
    edTitulo: TEdit;
    pnRepeticion: TPanel;
    edCantidad: TEdit;
    edIntervalo: TEdit;
    DSPlaner: TDataSource;
    btEventosAsoc: TBitBtn;
    Label1: TLabel;
    QEstados: TFDQuery;
    QEstadosID: TIntegerField;
    QEstadosDETALLE: TStringField;
    QEstadosCOLOR: TIntegerField;
    DSPEstados: TDataSetProvider;
    CDSEstados: TClientDataSet;
    CDSEstadosID: TIntegerField;
    CDSEstadosDETALLE: TStringField;
    CDSEstadosCOLOR: TIntegerField;
    DSEstados: TDataSource;
    QProfesionales: TFDQuery;
    DSPProfesionales: TDataSetProvider;
    CDSProfesionales: TClientDataSet;
    CDSProfesionalesID: TIntegerField;
    DSProfesionales: TDataSource;
    Label13: TLabel;
    dbcProfesional: TJvDBLookupCombo;
    JvDBLookupCombo1: TJvDBLookupCombo;
    CDSProfesionalesNOMBRE: TStringField;
    CDSProfesionalesCODIGO: TStringField;
    CDSProfesionalesID_ESPECIALIDAD: TIntegerField;
    CDSProfesionalesESPECIALIDAD: TStringField;
    CDSProfesionalesTURNOS_ADICIONALES: TIntegerField;
    gbComplementarios: TGroupBox;
    cbOSocial: TJvDBLookupCombo;
    Label14: TLabel;
    Label15: TLabel;
    cbEntidad: TJvDBLookupCombo;
    QClientesOBRA_SOCIAL: TIntegerField;
    QClientesNRO_AFILIADO: TStringField;
    Label16: TLabel;
    QOSocial: TFDQuery;
    DSPOSocial: TDataSetProvider;
    CDSOSocial: TClientDataSet;
    DSOSocial: TDataSource;
    CDSOSocialID: TIntegerField;
    CDSOSocialNOMBRE: TStringField;
    QEntidadPaga: TFDQuery;
    DSPEntidadPaga: TDataSetProvider;
    CDSEntidadPaga: TClientDataSet;
    DSEntidadPaga: TDataSource;
    CDSEntidadPagaID: TIntegerField;
    CDSEntidadPagaDENOMINACION: TStringField;
    CDSEntidadPagaDEIRECCION: TStringField;
    CDSEntidadPagaTELEFONOS: TStringField;
    CDSEntidadPagaOBS: TStringField;
    pcModos: TPageControl;
    pagCliente: TTabSheet;
    pagProveedor: TTabSheet;
    pagPacientes: TTabSheet;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    ceProveedor: TJvComboEdit;
    edNombreProveedor: TEdit;
    edPaciente: TJvComboEdit;
    edPacienteNombre: TEdit;
    pmOpciones: TPopupMenu;
    ModoPacientes1: TMenuItem;
    ModoClientesProveedor1: TMenuItem;
    ComBuscadorPacientes: TComBuscador;
    QPacientesBuscador: TFDQuery;
    DSPPacientesBuscador: TDataSetProvider;
    CDSPacientesBuscador: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    QPacientes: TFDQuery;
    QPacientesID: TIntegerField;
    QPacientesTELEFONO_1: TStringField;
    QPacientesTELEFONO_2: TStringField;
    QPacientesLOCALIDAD: TStringField;
    QPacientesCPOSTAL: TStringField;
    QPacientesID_OSOCIAL: TIntegerField;
    QPacientesNRO_AFILIADO: TStringField;
    QPacientesMAIL: TStringField;
    QPacientesTIPO_DOC: TStringField;
    QPacientesNRO_DOCUMENTO: TStringField;
    QPacientesNOMBRE: TStringField;
    QPacientesDIRECCION: TStringField;
    QPacientesID_POSTAL: TIntegerField;
    QPacientesFECHA_NACIMIENTO: TSQLTimeStampField;
    DSPPacientes: TDataSetProvider;
    CDSPacientes: TClientDataSet;
    CDSPacientesID: TIntegerField;
    CDSPacientesTELEFONO_1: TStringField;
    CDSPacientesTELEFONO_2: TStringField;
    CDSPacientesLOCALIDAD: TStringField;
    CDSPacientesCPOSTAL: TStringField;
    CDSPacientesID_OSOCIAL: TIntegerField;
    CDSPacientesNRO_AFILIADO: TStringField;
    CDSPacientesMAIL: TStringField;
    CDSPacientesTIPO_DOC: TStringField;
    CDSPacientesNRO_DOCUMENTO: TStringField;
    CDSPacientesNOMBRE: TStringField;
    CDSPacientesDIRECCION: TStringField;
    CDSPacientesID_POSTAL: TIntegerField;
    CDSPacientesFECHA_NACIMIENTO: TSQLTimeStampField;
    edNroAfiliado: TEdit;
    btFacturar: TButton;
    pnDerecho: TPanel;
    DBPlannerMonthView1: TDBPlannerMonthView;
    QTurnosProfes: TFDQuery;
    DSPTurnosProfes: TDataSetProvider;
    CDSTurnosProfes: TClientDataSet;
    DSTurnosProfes: TDataSource;
    AdvToolPanelTab1: TAdvToolPanelTab;
    AdvToolPanel1: TAdvToolPanel;
    Planner1: TPlanner;
    DBDaySource1: TDBDaySource;
    Label2: TLabel;
    DBText1: TDBText;
    QPlanerID_KEY: TStringField;
    QPlanerSTARTIME: TSQLTimeStampField;
    QPlanerENDTIME: TSQLTimeStampField;
    QPlanerNOTES: TMemoField;
    QPlanerSUBJECT: TStringField;
    QPlanerCOLOR: TIntegerField;
    QPlanerIMAGE: TIntegerField;
    QPlanerCAPTION: TIntegerField;
    QPlanerRESOURCE: TIntegerField;
    QPlanerRECURRENCY: TStringField;
    QPlanerMINTIME: TSQLTimeStampField;
    QPlanerMAXTIME: TSQLTimeStampField;
    QPlanerID_CPBTE: TIntegerField;
    QPlanerTIPOCPBTE: TStringField;
    QPlanerCLASECPTE: TStringField;
    QPlanerID_USUARIO: TIntegerField;
    QPlanerCLIENTE: TStringField;
    QPlanerPROVEEDOR: TStringField;
    QPlanerAREA: TIntegerField;
    QPlanerESTADO: TIntegerField;
    QPlanerID_REFERENCIAL: TStringField;
    QPlanerNRO_EVENTO: TIntegerField;
    QPlanerPROFESIONAL: TIntegerField;
    QPlanerID_OBRA_SOCIAL: TIntegerField;
    QPlanerID_ENTIDAD_PAGADORA: TIntegerField;
    QPlanerNRO_AFILIADO: TStringField;
    QPlanerID_PACIENTE: TIntegerField;
    QPlanerID_FACTURA2: TIntegerField;
    QPlanerMUESTRANROCPBTE: TStringField;
    CDSPlanerID_KEY: TStringField;
    CDSPlanerSTARTIME: TSQLTimeStampField;
    CDSPlanerENDTIME: TSQLTimeStampField;
    CDSPlanerNOTES: TMemoField;
    CDSPlanerSUBJECT: TStringField;
    CDSPlanerCOLOR: TIntegerField;
    CDSPlanerIMAGE: TIntegerField;
    CDSPlanerCAPTION: TIntegerField;
    CDSPlanerRESOURCE: TIntegerField;
    CDSPlanerRECURRENCY: TStringField;
    CDSPlanerMINTIME: TSQLTimeStampField;
    CDSPlanerMAXTIME: TSQLTimeStampField;
    CDSPlanerID_CPBTE: TIntegerField;
    CDSPlanerTIPOCPBTE: TStringField;
    CDSPlanerCLASECPTE: TStringField;
    CDSPlanerID_USUARIO: TIntegerField;
    CDSPlanerCLIENTE: TStringField;
    CDSPlanerPROVEEDOR: TStringField;
    CDSPlanerAREA: TIntegerField;
    CDSPlanerESTADO: TIntegerField;
    CDSPlanerID_REFERENCIAL: TStringField;
    CDSPlanerNRO_EVENTO: TIntegerField;
    CDSPlanerPROFESIONAL: TIntegerField;
    CDSPlanerID_OBRA_SOCIAL: TIntegerField;
    CDSPlanerID_ENTIDAD_PAGADORA: TIntegerField;
    CDSPlanerNRO_AFILIADO: TStringField;
    CDSPlanerID_PACIENTE: TIntegerField;
    CDSPlanerMUESTRANROCPBTE: TStringField;
    QTurnosProfesID_KEY: TStringField;
    QTurnosProfesSTARTIME: TSQLTimeStampField;
    QTurnosProfesENDTIME: TSQLTimeStampField;
    QTurnosProfesNOTES: TMemoField;
    QTurnosProfesSUBJECT: TStringField;
    QTurnosProfesCOLOR: TIntegerField;
    QTurnosProfesIMAGE: TIntegerField;
    QTurnosProfesCAPTION: TIntegerField;
    QTurnosProfesRESOURCE: TIntegerField;
    QTurnosProfesRECURRENCY: TStringField;
    QTurnosProfesMINTIME: TSQLTimeStampField;
    QTurnosProfesMAXTIME: TSQLTimeStampField;
    QTurnosProfesID_CPBTE: TIntegerField;
    QTurnosProfesTIPOCPBTE: TStringField;
    QTurnosProfesCLASECPTE: TStringField;
    QTurnosProfesID_USUARIO: TIntegerField;
    QTurnosProfesCLIENTE: TStringField;
    QTurnosProfesPROVEEDOR: TStringField;
    QTurnosProfesAREA: TIntegerField;
    QTurnosProfesESTADO: TIntegerField;
    QTurnosProfesID_REFERENCIAL: TStringField;
    QTurnosProfesNRO_EVENTO: TIntegerField;
    QTurnosProfesPROFESIONAL: TIntegerField;
    QTurnosProfesID_OBRA_SOCIAL: TIntegerField;
    QTurnosProfesID_ENTIDAD_PAGADORA: TIntegerField;
    QTurnosProfesNRO_AFILIADO: TStringField;
    QTurnosProfesID_PACIENTE: TIntegerField;
    QTurnosProfesID_FACTURA: TIntegerField;
    QTurnosProfesCOLORESTADO: TIntegerField;
    QTurnosProfesMUESTRACLIENTE: TStringField;
    QTurnosProfesMUESTRAPACIENTE: TStringField;
    QTurnosProfesMUESTRAPACIENTEDIR: TStringField;
    QTurnosProfesMUESTRAID_OSOCIAL: TIntegerField;
    QTurnosProfesMUESTRANROAFILIADO: TStringField;
    QTurnosProfesMUESTRAOSOCIAL: TStringField;
    CDSTurnosProfesID_KEY: TStringField;
    CDSTurnosProfesSTARTIME: TSQLTimeStampField;
    CDSTurnosProfesENDTIME: TSQLTimeStampField;
    CDSTurnosProfesNOTES: TMemoField;
    CDSTurnosProfesSUBJECT: TStringField;
    CDSTurnosProfesCOLOR: TIntegerField;
    CDSTurnosProfesIMAGE: TIntegerField;
    CDSTurnosProfesCAPTION: TIntegerField;
    CDSTurnosProfesRESOURCE: TIntegerField;
    CDSTurnosProfesRECURRENCY: TStringField;
    CDSTurnosProfesMINTIME: TSQLTimeStampField;
    CDSTurnosProfesMAXTIME: TSQLTimeStampField;
    CDSTurnosProfesID_CPBTE: TIntegerField;
    CDSTurnosProfesTIPOCPBTE: TStringField;
    CDSTurnosProfesCLASECPTE: TStringField;
    CDSTurnosProfesID_USUARIO: TIntegerField;
    CDSTurnosProfesCLIENTE: TStringField;
    CDSTurnosProfesPROVEEDOR: TStringField;
    CDSTurnosProfesAREA: TIntegerField;
    CDSTurnosProfesESTADO: TIntegerField;
    CDSTurnosProfesID_REFERENCIAL: TStringField;
    CDSTurnosProfesNRO_EVENTO: TIntegerField;
    CDSTurnosProfesPROFESIONAL: TIntegerField;
    CDSTurnosProfesID_OBRA_SOCIAL: TIntegerField;
    CDSTurnosProfesID_ENTIDAD_PAGADORA: TIntegerField;
    CDSTurnosProfesNRO_AFILIADO: TStringField;
    CDSTurnosProfesID_PACIENTE: TIntegerField;
    CDSTurnosProfesID_FACTURA: TIntegerField;
    CDSTurnosProfesCOLORESTADO: TIntegerField;
    CDSTurnosProfesMUESTRACLIENTE: TStringField;
    CDSTurnosProfesMUESTRAPACIENTE: TStringField;
    CDSTurnosProfesMUESTRAPACIENTEDIR: TStringField;
    CDSTurnosProfesMUESTRAID_OSOCIAL: TIntegerField;
    CDSTurnosProfesMUESTRANROAFILIADO: TStringField;
    CDSTurnosProfesMUESTRAOSOCIAL: TStringField;
    CDSPlanerID_FACTURA: TIntegerField;
    procedure ceClienteButtonClick(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ceProveedorButtonClick(Sender: TObject);
    procedure ceProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure CDSPlanerNewRecord(DataSet: TDataSet);
    procedure CDSPlanerReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure lbTituloClick(Sender: TObject);
    procedure edTituloExit(Sender: TObject);
    procedure edTituloKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chGeneraEventosClick(Sender: TObject);
    procedure edtDesdeChange(Sender: TObject);
    procedure btEventosAsocClick(Sender: TObject);
    procedure dbcProfesionalClick(Sender: TObject);
    procedure ModoPacientes1Click(Sender: TObject);
    procedure ModoClientesProveedor1Click(Sender: TObject);
    procedure edPacienteKeyPress(Sender: TObject; var Key: Char);
    procedure edPacienteButtonClick(Sender: TObject);
    procedure btFacturarClick(Sender: TObject);
    procedure CDSTurnosProfesAfterPost(DataSet: TDataSet);
    procedure DBText1Click(Sender: TObject);
    procedure CDSPlanerPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    FCodigo      : string;
    FID_Area     : Integer;
    FFecha       : TDateTime;
    FHHasta      : TTime;
    FNota        : string;
    FHDesde      : TTime;
    FNombre      : string;
    FArea        : string;
    FIDUsuario   : Integer;
    FIdCpbte     : Integer;
    FTipoCpbte   : String;
    FClaseCpbte  : String;
    FCodigoProv  : string;
    FAsunto      : string;
    FIdKey       : string;
    FModo        : string ;
    FId_Paciente : Integer;
    FNroAfiliado : string ;
    FId_OS       : Integer;
    FId_Ent      : Integer;
    FId_Profesional: Integer;
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni   :TIniFile;
    ID_Referencial_TMP:string;// para guardar el ID de referecnia por si lo necesito luego
    procedure Recuperar(idkey:string);
    function AsignarPaciente(Dato:Integer):Boolean;
    function ForceForegroundWindow(hwnd: THandle): boolean;


  published
    property Modo        : string read FModo write FModo;
    property IdKey       : string read FIdKey write FIdKey;
    property Codigo      : string read FCodigo write Fcodigo;
    property Nombre      : string read FNombre write FNombre;
    property area        : string read FArea write FArea;
    property Id_Area     : Integer read FID_Area write FID_Area;
    property Fecha       : TDateTime read FFecha write FFecha;
    property HDesde      : TTime read FHDesde write FHDesde;
    property HHasta      : TTime read FHHasta write FHHasta;
    property Nota        : string read FNota write fnota;
    property IdUsuario   : Integer read FIDUsuario write FIDUsuario;
    property IdCpbte     : Integer read FIdCpbte write FIdCpbte;
    property ClaseCpbte  : String read FClaseCpbte write FClaseCpbte;
    property TipoCpbte   : String read FTipoCpbte write FTipoCpbte;
    property CodigoProv  : string read FCodigoProv write FcodigoProv;
    property Asunto      : string read FAsunto write FAsunto;
    property NroAfiliado : string read FNroAfiliado write FNroAfiliado;
    property Id_Paciente : Integer read FId_Paciente write FId_Paciente;
    property Id_OS       : Integer read FId_OS write FId_OS;
    property Id_Ent      : Integer read FId_Ent write FId_Ent;
    property Id_Profesional : Integer read FId_Profesional write FId_Profesional;

  end;


var
  FormAltaEventoTareas: TFormAltaEventoTareas;

implementation

{$R *.dfm}

uses UBuscadorProveedor, UDMain_FD, UCtrFechasEventosTareas,
     UFacturaCtdo_2, UBuscadorTipoCpbte, DMRemitos, UBuscadorDepositos, UFactura_2;

// el MODO es el modo de que se esta trabando en E=Edicion , no hay mas opciones aun

function TFormAltaEventoTareas.AsignarPaciente(Dato: Integer): Boolean;
begin
  CDSPacientes.Close;
  CDSPacientes.Params.ParamByName('id').Value:=Dato;
  CDSPacientes.Open;
  if CDSPacientesID.AsString<>'' then
    begin
      FId_Paciente            := Dato;
      edPaciente.Text         := CDSPacientesID.AsString;
      edPacienteNombre.Text   := CDSPacientesNOMBRE.Value;
      FId_OS                  := CDSPacientesID_OSOCIAL.Value;
      FNroAfiliado            := CDSPacientesNRO_AFILIADO.Value;

      cbOSocial.KeyValue      := FId_OS;
      edNroAfiliado.Text      := FNroAfiliado;
      Result:=True;
    end
  else
    begin
      FId_Paciente            := -1;
      edPacienteNombre.Text   := '';
      FId_OS                  := -1;
      FNroAfiliado            := '';
      Result:=False;
    end;
end;

procedure TFormAltaEventoTareas.btEventosAsocClick(Sender: TObject);
begin
  if not(Assigned(FormGestionFechasEventos)) then
     FormGestionFechasEventos:=TFormGestionFechasEventos.Create(Self);
   FormGestionFechasEventos.ID:= CDSPlanerID_REFERENCIAL.Value;
   FormGestionFechasEventos.ShowModal;
end;

procedure TFormAltaEventoTareas.btOkClick(Sender: TObject);
var i:Integer;
D,M,Y,H,Mi,s,ss:Word;
begin
  Fcodigo         := ceCliente.Text;
  FCodigoProv     := ceProveedor.Text;
  FFecha          := edFecha.Date;
  FHDesde         := edtDesde.Value;
  FHHasta         := edtHasta.Value;
  FNombre         := edNombreCliente.Text;
  FNota           := edNotas.Text;
  FArea           := cbArea.Text;
  FId_OS          := cbOSocial.KeyValue;
  FId_Ent         := cbEntidad.KeyValue;
  FNroAfiliado    := edNroAfiliado.Text;
  if TryStrToInt(edPaciente.Text,FId_Paciente) then
    FId_Paciente    := StrToInt(edPaciente.Text);
  FId_Profesional := dbcProfesional.KeyValue;
  if cbArea.KeyValue<>null then
    FID_Area := cbArea.KeyValue
  else
    FID_Area := -1;

  if VarIsNull(FIdCpbte) Then FIdCpbte       := -1;
  if VarIsNull(FTipoCpbte) Then FTipoCpbte   := '';
  if VarIsNull(FClaseCpbte) Then FClaseCpbte := '';

  if Trim(edNombreCliente.Text)<>'' then
    FAsunto:=Trim(edNombreCliente.Text)
  else
    if Trim(edNombreProveedor.Text)<>'' then
      FAsunto:=Trim(edNombreProveedor.Text);

  FAsunto:= FAsunto+Trim(edAsunto.Text);
  s :=0;
  ss:=0;
  if (FModo<>'E') and ( (Trim(ceCliente.Text)<>'') or (Trim(ceProveedor.Text)<>'') or (Trim(edPaciente.Text)<>'') ) then  // Modo de Insercion...
    begin
      if chGeneraEventos.Checked=False then
        begin
          CDSPlaner.Append;
          CDSPlanerNOTES.Value            := edNotas.Text + #13 + cbArea.Text;
          CDSPlanerCLIENTE.Value          := ceCliente.Text;
          CDSPlanerPROVEEDOR.Value        := ceProveedor.Text;
          CDSPlanerAREA.Value             := FID_Area;
          CDSPlanerMUESTRANROCPBTE.Value  :='';
          DecodeDate(FFecha,y,m,d);

          DecodeTime(FHDesde,h,mi,s,ss);
          CDSPlanerSTARTIME.AsDateTime    := EncodeDate(Y,m,d) + EncodeTime(h,Mi,s,ss);

          DecodeTime(FHHasta,h,mi,s,ss);
          CDSPlanerENDTIME.AsDateTime     := EncodeDate(Y,m,d) + EncodeTime(h,Mi,s,ss);

          CDSPlanerSUBJECT.Value          := FAsunto;
          CDSPlanerNOTES.Value            := edNotas.Text + 'Hora:'+CDSPlanerSTARTIME.AsString;
          CDSPlanerID_CPBTE.Value         := FIdCpbte;
          CDSPlanerTIPOCPBTE.Value        := FTipoCpbte;
          CDSPlanerCLASECPTE.Value        := FClaseCpbte;
          CDSPlanerID_REFERENCIAL.Value   := CDSPlanerID_KEY.Value;    // este id ahce referencia al grupo si lo hay de los distintos eventos
                                                                       // por defetcto pongo el id de si mismo al principoio y si hay mas eventos del mismo
                                                                       // cliente o paciente como turnos asociados copi este id a los demas y asi tengo acceso
                                                                       // al grupo...
          ID_Referencial_TMP                 := CDSPlanerID_KEY.Value; // Guardo el ID Referecnial por si lo necesito ... si no hay mas movimientos no tiene uso
          CDSPlanerPROFESIONAL.Value         := dbcProfesional.KeyValue;
          CDSPlanerNRO_AFILIADO.Value        := FNroAfiliado;
          CDSPlanerID_OBRA_SOCIAL.Value      := FId_OS;
          CDSPlanerID_ENTIDAD_PAGADORA.Value := FId_Ent;
          CDSPlanerID_PACIENTE.Value         := FId_Paciente;

          CDSPlanerNRO_EVENTO.Value          := 1;
          CDSPlaner.Post;
          CDSPlaner.ApplyUpdates(0);
        end
      else
        begin
          for i :=1 to StrToInt(edCantidad.Text) do
            begin
              CDSPlaner.Append;
              CDSPlanerNOTES.Value               := edNotas.Text + #13 + cbArea.Text;
              CDSPlanerCLIENTE.Value             := ceCliente.Text;
              CDSPlanerPROVEEDOR.Value           := ceProveedor.Text;
              CDSPlanerAREA.Value                := FID_Area;
              CDSPlanerSTARTIME.AsDateTime       := (edFecha.Date + (StrToInt(edIntervalo.Text) * i)) + edtDesde.Time;
              CDSPlanerENDTIME.AsDateTime        := (edFecha.Date + (StrToInt(edIntervalo.Text) * i)) + edtHasta.Time;
              CDSPlanerSUBJECT.Value             := FAsunto+'-Auto Nro:'+IntToStr(i)+'/'+edCantidad.Text;
              CDSPlanerNOTES.Value               := edNotas.Text +'Hora:'+CDSPlanerSTARTIME.AsString;;
              CDSPlanerID_CPBTE.Value            := FIdCpbte;
              CDSPlanerTIPOCPBTE.Value           := FTipoCpbte;
              CDSPlanerCLASECPTE.Value           := FClaseCpbte;
              CDSPlanerID_REFERENCIAL.Value      := ID_Referencial_TMP;
              CDSPlanerNRO_EVENTO.Value          := i+1;
              CDSPlanerPROFESIONAL.Value         := dbcProfesional.KeyValue;
              CDSPlanerESTADO.Value              := -1;
              CDSPlanerNRO_AFILIADO.Value        := FNroAfiliado;
              CDSPlanerID_OBRA_SOCIAL.Value      := FId_OS;
              CDSPlanerID_ENTIDAD_PAGADORA.Value := FId_Ent;
              CDSPlanerID_PACIENTE.Value         := FId_Paciente;
              CDSPlaner.Post;
              CDSPlaner.ApplyUpdates(0);
            end;
          if not(Assigned(FormGestionFechasEventos)) then
            FormGestionFechasEventos:=TFormGestionFechasEventos.Create(Self);
          FormGestionFechasEventos.ID:=ID_Referencial_TMP;
          FormGestionFechasEventos.ShowModal;

        end;
    end
  else
    if FModo='E' then   // FModo= E (Edicion)
      begin
        CDSPlaner.Edit;
        CDSPlanerNOTES.Value               := edNotas.Text + #13 + cbArea.Text;
        CDSPlanerCLIENTE.Value             := ceCliente.Text;
        CDSPlanerPROVEEDOR.Value           := ceProveedor.Text;
        CDSPlanerAREA.Value                := cbArea.KeyValue;
        CDSPlanerSTARTIME.AsDateTime       := edFecha.Date + edtDesde.Time;
        CDSPlanerENDTIME.AsDateTime        := edFecha.Date + edtHasta.Time;
        CDSPlanerSUBJECT.Value             := edAsunto.Text;
        CDSPlanerNOTES.Value               := edNotas.Text;
        CDSPlanerID_CPBTE.Value            := FIdCpbte;
        CDSPlanerTIPOCPBTE.Value           := FTipoCpbte;
        CDSPlanerCLASECPTE.Value           := FClaseCpbte;
        CDSPlanerID_USUARIO.Value          := cbUsuarios.KeyValue;
        CDSPlanerPROFESIONAL.Value         := dbcProfesional.KeyValue;
        CDSPlanerNRO_AFILIADO.Value        := FNroAfiliado;
        CDSPlanerID_OBRA_SOCIAL.Value      := FId_OS;
        CDSPlanerID_ENTIDAD_PAGADORA.Value := FId_Ent;

        CDSPlaner.Post;
        CDSPlaner.ApplyUpdates(0);

       if (chGeneraEventos.Checked=True) and ((StrToInt(edCantidad.Text))>1)  then
         begin
           for i :=1 to StrToInt(edCantidad.Text) do
             begin
               CDSPlaner.Append;
               CDSPlanerNOTES.Value               := edNotas.Text + #13 + cbArea.Text;
               CDSPlanerCLIENTE.Value             := ceCliente.Text;
               CDSPlanerPROVEEDOR.Value           := ceProveedor.Text;
               CDSPlanerAREA.Value                := FID_Area;
               CDSPlanerSTARTIME.AsDateTime       := (edFecha.Date + (StrToInt(edIntervalo.Text) * i)) + edtDesde.Time;
               CDSPlanerENDTIME.AsDateTime        := (edFecha.Date + (StrToInt(edIntervalo.Text) * i)) + edtHasta.Time;
               CDSPlanerSUBJECT.Value             := FAsunto+'-Adicional Auto Nro:'+IntToStr(i);
               CDSPlanerNOTES.Value               := edNotas.Text;
               CDSPlanerID_CPBTE.Value            := FIdCpbte;
               CDSPlanerTIPOCPBTE.Value           := FTipoCpbte;
               CDSPlanerCLASECPTE.Value           := FClaseCpbte;
               CDSPlanerID_REFERENCIAL.Value      := ID_Referencial_TMP;
               CDSPlanerPROFESIONAL.Value         := dbcProfesional.KeyValue;
               CDSPlanerNRO_EVENTO.Value          := i+1;
               CDSPlanerNRO_AFILIADO.Value        := FNroAfiliado;
               CDSPlanerID_OBRA_SOCIAL.Value      := FId_OS;
               CDSPlanerID_ENTIDAD_PAGADORA.Value := FId_Ent;

               CDSPlaner.Post;
               CDSPlaner.ApplyUpdates(0);
             end;
           if not(Assigned(FormGestionFechasEventos)) then
            FormGestionFechasEventos:=TFormGestionFechasEventos.Create(Self);
           FormGestionFechasEventos.ID:=ID_Referencial_TMP;
           FormGestionFechasEventos.ShowModal;
         end;
      end;

end;

procedure TFormAltaEventoTareas.btFacturarClick(Sender: TObject);
var    SucursalComprobante, IDComprobante,
Deposito:Integer;
DatoNew:String;
begin
//  if Not(Assigned(FormCpbteCtdo_2)) then
//    FormCpbteCtdo_2:=TFormCpbteCtdo_2.create(Application);
//  FormCpbteCtdo_2.Agregar.Execute;
//  FormCpbteCtdo_2.Show;

  if (( CDSPlanerID_FACTURA.Value<=0) or (VarIsNull(CDSPlanerID_FACTURA.Value))) then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
      FormBuscadorTipoCpbte.TipoCpbte1:='FC';

      FormBuscadorTipoCpbte.TipoCpbte2    := '';
      FormBuscadorTipoCpbte.TipoCpbte3    := '';
      FormBuscadorTipoCpbte.CV            := 'V';
      FormBuscadorTipoCpbte.Sucursal      := DMMain_FD.SucursalPorDef;
      FormBuscadorTipoCpbte.DiscriminaIVA := 'N';
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante                 := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante                       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Self);
          FormBuscadorDepositos.Deposito:= DMMain_FD.DepositoPorSucursal(SucursalComprobante);
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              Deposito    :=FormBuscadorDepositos.Deposito;
             // DatoNew     :=IntToStr(DatosRemitos.CDSRtoCabID_RTO.Value);
             // TipoCpbte   :=DatosRemitos.CDSRtoCabTIPOCPBTE.Value;
              if Not(Assigned(FormCpbte_2)) Then
                FormCpbte_2:=TFormCpbte_2.Create(Self);
              FormCpbte_2.SucursalPorDefecto := SucursalComprobante;
              FormCpbte_2.DepositoPorDefecto := Deposito;
              FormCpbte_2.IdComprobante      := IDComprobante;
              FormCpbte_2.KeyPlaner          := CDSPlanerID_KEY.Value;
              FormCpbte_2.Show;
              FormCpbte_2.Agregar.Execute;
              FormCpbte_2.BringToFront;
            end;
        end;
    end
  else
    begin
      if ((DatosRemitos.CDSRtoCabIDFACTURA.Value>0) and (not(VarIsNull(DatosRemitos.CDSRtoCabIDFACTURA.Value)))) then
        ShowMessage('Orden ya facturada ... No se puede volver a Facturar....')
     
    end;
end;

procedure TFormAltaEventoTareas.CDSPlanerNewRecord(DataSet: TDataSet);
var
 MiGuid : TGUID;
begin
  if CreateGUID(MiGuid) <> 0 then
    ShowMessage('No se pudo crear GUID....')
  else
    CDSPlanerID_KEY.Value := GUIDToString(MiGuid);

  CDSPlanerID_USUARIO.Value     := cbUsuarios.KeyValue;
  CDSPlanerID_REFERENCIAL.Value := CDSPlanerID_KEY.Value;
  CDSPlanerPROFESIONAL.Value    := dbcProfesional.KeyValue;
  CDSPlanerNRO_EVENTO.Value     := 1;
  CDSPlanerSTARTIME.AsDateTime  := HDesde;
  CDSPlanerENDTIME.AsDateTime   := HHasta;
  CDSPlanerID_FACTURA.Value     := -1;
end;

procedure TFormAltaEventoTareas.CDSPlanerPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   ShowMessage(e.Message);
end;

procedure TFormAltaEventoTareas.CDSPlanerReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TFormAltaEventoTareas.CDSTurnosProfesAfterPost(DataSet: TDataSet);
begin
  CDSTurnosProfes.ApplyUpdates(0);
end;

procedure TFormAltaEventoTareas.ceClienteButtonClick(Sender: TObject);
BEGIN
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          edNombreCliente.Text    := QClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;

    END;
end;

procedure TFormAltaEventoTareas.ceClienteKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT(QClientes.IsEmpty) THEN
        begin
          edNombreCliente.Text          := QClientesNOMBRE.Value;
          FId_OS                   :=QClientesOBRA_SOCIAL.Value;
          FNroAfiliado             := QClientesNRO_AFILIADO.Value;
       end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
end;

procedure TFormAltaEventoTareas.ceProveedorButtonClick(Sender: TObject);
begin
 IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.PopupMode:=pmAuto;
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    BEGIN
      ceProveedor.Text :=FormBuscadorProveedor.Codigo;
      QProveedor.Close;
      QProveedor.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      QProveedor.Open;
      IF NOT (QProveedor.IsEmpty) THEN
        BEGIN
          edNombreProveedor.Text := QProveedorNOMBRE.Value;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
        END;

    END;
end;

procedure TFormAltaEventoTareas.ceProveedorKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      if (Trim(ceProveedor.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceProveedor.Text))) + ceProveedor.Text;
      ceProveedor.Text := Dato;
      QProveedor.Close;
      QProveedor.ParamByName('Codigo').Value := Dato;
      QProveedor.Open;
      IF NOT(QProveedor.IsEmpty) THEN
        begin
          edNombreProveedor.Text := QProveedorNOMBRE.Value;
        end;
      ceProveedor.SetFocus;
      ceProveedor.SelectAll;
    END;
end;

procedure TFormAltaEventoTareas.chGeneraEventosClick(Sender: TObject);
begin
  pnRepeticion.Enabled:=chGeneraEventos.Checked;
end;

procedure TFormAltaEventoTareas.dbcProfesionalClick(Sender: TObject);
begin
  if dbcProfesional.LookupSource.DataSet.FieldByName('TURNOS_ADICIONALES').Value>0 then
    edCantidad.Text:= dbcProfesional.LookupSource.DataSet.FieldByName('TURNOS_ADICIONALES').AsString;

  CDSTurnosProfes.Close;
  CDSTurnosProfes.Params.ParamByName('PROFESIONAL').Value:=dbcProfesional.KeyValue;
  CDSTurnosProfes.Open;
end;

procedure TFormAltaEventoTareas.DBText1Click(Sender: TObject);
begin
   if CDSPlanerID_FACTURA.AsString<>'' then
     begin
       if Not(Assigned(FormCpbte_2)) then
         FormCpbte_2:=TFormCpbte_2.Create(Application);
       FormCpbte_2.DatoNew:=CDSPlanerID_FACTURA.AsString;
       FormCpbte_2.TipoCpbte:='FC';
       FormCpbte_2.Recuperar.Execute;
       FormCpbte_2.Show;
     end;
end;

procedure TFormAltaEventoTareas.edPacienteButtonClick(Sender: TObject);
begin
CDSPacientesBuscador.Close;
  CDSPacientesBuscador.Open;
  ComBuscadorPacientes.Execute;
  if ComBuscadorPacientes.rOk then
    begin
      AsignarPaciente(ComBuscadorPacientes.id);
    end;
  CDSPacientesBuscador.Close;

end;

procedure TFormAltaEventoTareas.edPacienteKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: Integer;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:=-1;
      if (Trim(edPaciente.Text)<>'') then
        begin
          Dato := StrToInt(Trim(edPaciente.Text));
          AsignarPaciente(Dato);
        end;

    END;
end;

procedure TFormAltaEventoTareas.edtDesdeChange(Sender: TObject);
var h,m,s,Ss:Word;
begin
  DecodeTime(edtDesde.Time,h,m,s,ss);
  edtHasta.Time := EncodeTime(h+1,m,s,ss);
end;

procedure TFormAltaEventoTareas.edTituloExit(Sender: TObject);
begin
  edTitulo.Visible:=False;
end;

procedure TFormAltaEventoTareas.edTituloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
    begin
      FormAltaEventoTareas.Caption := edTitulo.Text;
      lbTitulo.Caption             := edTitulo.Text;
      edTitulo.Visible             := False;
    end;
end;

procedure TFormAltaEventoTareas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'AltaEvento.ini');
  ArchivoIni.WriteString('Dato', 'Titulo',  lbTitulo.Caption);
  ArchivoIni.WriteBool('Dato', 'Cliente',  ModoClientesProveedor1.Checked);
  ArchivoIni.WriteBool('Dato', 'Paciente',  ModoPacientes1.Checked);
  ArchivoIni.Free;
end;

procedure TFormAltaEventoTareas.FormCreate(Sender: TObject);
begin
  ArchivoIni                     := TIniFile.Create(ExtractFilePath(ParamStr(0))+'AltaEvento.ini');
  lbTitulo.Caption               := ArchivoIni.ReadString('Dato', 'Titulo', 'Alta de Eventos');
  FormAltaEventoTareas.Caption   := ArchivoIni.ReadString('Dato', 'Titulo', 'Alta de Eventos');
  ModoClientesProveedor1.Checked := ArchivoIni.ReadBool('Dato', 'Cliente',  True);
  ModoPacientes1.Checked         := ArchivoIni.ReadBool('Dato', 'Paciente',False);

  ArchivoIni.Free;

  CDSArea.Close;
  CDSArea.Open;

  CDSProfesionales.Close;
  CDSProfesionales.Open;

  CDSEstados.Close;
  CDSEstados.Open;

  CDSUsuario.Close;
  CDSUsuario.Open;

  CDSEntidadPaga.Close;
  CDSEntidadPaga.Open;

  CDSOSocial.Close;
  CDSOSocial.Open;


  cbUsuarios.KeyValue       := FIDUsuario;

  pagCliente.TabVisible     := not(ModoPacientes1.Checked);
  pagProveedor.TabVisible   := not(ModoPacientes1.Checked);
  pagPacientes.TabVisible   := ModoPacientes1.Checked;

  DBPlannerMonthView1.Month        := MonthOf(FFecha);

  gbComplementarios.Visible := ModoPacientes1.Checked;

end;

procedure TFormAltaEventoTareas.FormShow(Sender: TObject);
begin
  ceCliente.Text       := FCodigo;
  edNombreCliente.Text := FNombre;
  edNotas.Text         := FNota;
  edAsunto.Text        := FAsunto;
  DBPlannerMonthView1.Month        := MonthOf(FFecha);
  DBPlannerMonthView1.Year         := YearOf(FFecha);

  //  CDSArea.Close;
//  CDSArea.Open;
  if Modo<>'E' then
    begin
      edtDesde.Time        := EncodeTime(8,0,0,0);
      edtHasta.Time        := EncodeTime(9,0,0,0);
      edFecha.Date         := FFecha;
      CDSPlaner.Close;
      CDSPlaner.Open;
      cbUsuarios.KeyValue := FIDUsuario;
    end;
  btEventosAsoc.Visible:= Modo='E';
  BringToFront;
  CDSTurnosProfes.Close;
  CDSTurnosProfes.Params.ParamByName('PROFESIONAL').Value:=dbcProfesional.KeyValue;
  CDSTurnosProfes.Open;

  //ForceForegroundWindow(FormAltaEventoTareas);

end;


//http://delphi-kb.blogspot.com/2008/08/how-to-force-overlapped-or-minimized.html
// fue toamda de aca >> http://www.delphigroups.info/2/8/995851.html

function TFormAltaEventoTareas.ForceForegroundWindow(hwnd: THandle): boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID : DWORD;
  timeout : DWORD;
begin
  if IsIconic(hwnd) then ShowWindow(hwnd, SW_RESTORE);
  if GetForegroundWindow = hwnd then Result := true
  else
    begin
      // Windows 98/2000 doesn't want to foreground a window when some other
      // window has keyboard focus
      if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion>4))  or
         ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
         ((Win32MajorVersion>4) or ((Win32MajorVersion = 4) and
         (Win32MinorVersion>0)))) then
        begin
          // Code from Karl E. Peterson, www.mvps.org/vb/sample.htm
          // Converted to Delphi by Ray Lischner
          // Published in The Delphi Magazine 55, page 16
          Result := false;
          ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow,nil);
          ThisThreadID := GetWindowThreadPRocessId(hwnd,nil);
          if AttachThreadInput(ThisThreadID, ForegroundThreadID, true) then
            begin
              BringWindowToTop(hwnd); // IE 5.5 related hack
              SetForegroundWindow(hwnd);
              AttachThreadInput(ThisThreadID, ForegroundThreadID, false);
              Result := (GetForegroundWindow = hwnd);
            end;
          if not Result then
            begin
              // Code by Daniel P. Stasinski
              SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
              SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0),
              SPIF_SENDCHANGE);
              BringWindowToTop(hwnd); // IE 5.5 related hack
              SetForegroundWindow(hWnd);
              SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0,
              TObject(timeout), SPIF_SENDCHANGE);
            end;
        end
      else
        begin
          BringWindowToTop(hwnd); // IE 5.5 related hack
          SetForegroundWindow(hwnd);
        end;
      Result := (GetForegroundWindow = hwnd);
    end;
end; { ForceForegroundWindow }


procedure TFormAltaEventoTareas.lbTituloClick(Sender: TObject);
begin
  edTitulo.Visible:=True;
end;

procedure TFormAltaEventoTareas.ModoClientesProveedor1Click(Sender: TObject);
begin
  ModoClientesProveedor1.Checked := not(ModoClientesProveedor1.Checked);
  ModoPacientes1.Checked         := not(ModoClientesProveedor1.Checked);

  pagCliente.TabVisible          := ModoClientesProveedor1.Checked;
  pagProveedor.TabVisible        := ModoClientesProveedor1.Checked;
  pagPacientes.TabVisible        := not(ModoClientesProveedor1.Checked);
  gbComplementarios.Visible      := ModoPacientes1.Checked;

end;

procedure TFormAltaEventoTareas.ModoPacientes1Click(Sender: TObject);
begin
  ModoPacientes1.Checked          := not(ModoPacientes1.Checked);
  ModoClientesProveedor1.Checked  := not(ModoPacientes1.Checked);

  pagCliente.TabVisible           := not(ModoPacientes1.Checked);
  pagProveedor.TabVisible         := not(ModoPacientes1.Checked);
  pagPacientes.TabVisible         := ModoPacientes1.Checked;

  gbComplementarios.Visible := ModoPacientes1.Checked;

end;

procedure TFormAltaEventoTareas.recuperar(idkey: string);
var H,M,S,se:Word;
 begin
  CDSPlaner.Close;
  CDSPlaner.Params.ParamByName('IdKey').Value:=idkey;
  CDSPlaner.Open;
  if Not(CDSPlaner.IsEmpty) then
    begin
      edFecha.Date            := CDSPlanerSTARTIME.AsDateTime;
      DecodeTime(CDSPlanerSTARTIME.AsDateTime,H,M,S,se);
      edtDesde.Time           := EncodeTime(H,M,S,se);
      DecodeTime(CDSPlanerENDTIME.AsDateTime,H,M,S,se);
      edtHasta.Time           := EncodeTime(H,M,S,se);
      ceCliente.Text          := CDSPlanerCLIENTE.AsString;
      ceProveedor.Text        := CDSPlanerPROVEEDOR.AsString;
      cbUsuarios.KeyValue     := CDSPlanerID_USUARIO.Value;
      edPaciente.Text         := CDSPlanerID_PACIENTE.AsString;
      cbArea.KeyValue         := CDSPlanerAREA.Value;
      cbOSocial.KeyValue      := CDSPlanerID_OBRA_SOCIAL.Value;
      cbEntidad.KeyValue      := CDSPlanerID_ENTIDAD_PAGADORA.Value;
      dbcProfesional.KeyValue := CDSPlanerPROFESIONAL.Value;
      edNroAfiliado.Text :=CDSPlanerNRO_AFILIADO.Value;
      if (Trim(ceCliente.Text)<>'') then
        begin
          QClientes.Close;
          QClientes.ParamByName('Codigo').Value := Trim(ceCliente.Text);
          QClientes.Open;
          IF NOT(QClientes.IsEmpty) THEN
            edNombreCliente.Text := QClientesNOMBRE.Value;
          QClientes.Close;
        end;

      if (Trim(ceProveedor.Text)<>'') then
        begin
          QProveedor.Close;
          QProveedor.ParamByName('Codigo').Value := Trim(ceProveedor.Text);
          QProveedor.Open;
          IF NOT(QProveedor.IsEmpty) THEN
            edNombreProveedor.Text := QProveedorNOMBRE.Value;
          QProveedor.Close;
        end;

      if (Trim(edPaciente.Text)<>'') then
        begin
          CDSPacientes.Close;
          CDSPacientes.Params.ParamByName('id').Value := StrToInt(Trim(edPaciente.Text));
          CDSPacientes.Open;
          IF NOT(CDSPacientes.IsEmpty) THEN
            edPacienteNombre.Text := CDSPacientesNOMBRE.Value;
          CDSPacientes.Close;
        end;
      ID_Referencial_TMP := CDSPlanerID_KEY.Value;
      edNotas.Text       := CDSPlanerNOTES.GetAsString;
      edAsunto.Text      := CDSPlanerSUBJECT.Text;
    end;
end;

end.
