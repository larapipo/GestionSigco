unit UProduccion_PDiario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,IniFiles,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.DBClient,
  Datasnap.Provider, IBGenerator, Vcl.Mask, Vcl.DBCtrls, JvDBLookup,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvExMask, JvToolEdit, JvBaseEdits,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.Menus;

type
  TFormProducc_Diario = class(TFormABMBase)
    DSPDiario: TDataSetProvider;
    CDSDiario: TClientDataSet;
    ibgIdDiario: TIBGenerator;
    CDSDiarioID: TIntegerField;
    CDSDiarioID_SUBDET_PROD: TIntegerField;
    CDSDiarioNROCPBTE: TStringField;
    CDSDiarioTURNO: TIntegerField;
    CDSDiarioTIPO_MATERIAL: TIntegerField;
    CDSDiarioESTACION: TIntegerField;
    CDSDiarioCANTIDAD: TFloatField;
    CDSDiarioMUESTRACODIGO: TStringField;
    CDSDiarioMUESTRADETALLE: TStringField;
    CDSDiarioMUESTRACANTIDAD: TFloatField;
    CDSDiarioMUESTRASALDO: TFloatField;
    DSMaterial: TDataSource;
    ComBuscadorDet: TComBuscador;
    CDSDiarioFECHA: TSQLTimeStampField;
    DSEstaciones: TDataSource;
    CDSDiarioOBSERVACIONES: TStringField;
    dbeObservaciones: TDBMemo;
    Label13: TLabel;
    CDSDiarioNRORTO: TStringField;
    QTroqueles: TFDQuery;
    CDSTroqueles: TClientDataSet;
    DSPTroqueles: TDataSetProvider;
    DSTroqueles: TDataSource;
    QTroquelesID: TIntegerField;
    QTroquelesID_ORDENPRODUCCION: TIntegerField;
    QTroquelesID_REMITO: TIntegerField;
    QTroquelesNRO_TROQUEL: TStringField;
    QTroquelesID_PRODU_DIARIO: TIntegerField;
    QTroquelesFECHA_INGRESO: TSQLTimeStampField;
    QTroquelesFECHA_EGRESO: TSQLTimeStampField;
    CDSTroquelesID: TIntegerField;
    CDSTroquelesID_ORDENPRODUCCION: TIntegerField;
    CDSTroquelesID_REMITO: TIntegerField;
    CDSTroquelesNRO_TROQUEL: TStringField;
    CDSTroquelesID_PRODU_DIARIO: TIntegerField;
    CDSTroquelesFECHA_INGRESO: TSQLTimeStampField;
    CDSTroquelesFECHA_EGRESO: TSQLTimeStampField;
    dbgTroqueles: TDBGrid;
    ibgTroquel: TIBGenerator;
    QTroquelesCODIGO: TStringField;
    CDSTroquelesCODIGO: TStringField;
    QEstaciones: TFDQuery;
    QEstacionesID: TIntegerField;
    QEstacionesDETALLE: TStringField;
    QEstacionesSECTOR: TIntegerField;
    QMaterial: TFDQuery;
    QBuscador: TFDQuery;
    QBuscadorID: TIntegerField;
    QBuscadorID_SUBDET_PROD: TIntegerField;
    QBuscadorFECHA: TSQLTimeStampField;
    QBuscadorNROCPBTE: TStringField;
    QBuscadorTURNO: TIntegerField;
    QBuscadorTIPO_MATERIAL: TIntegerField;
    QBuscadorESTACION: TIntegerField;
    QBuscadorCANTIDAD: TFloatField;
    QBuscadorMUESTRACODIGO: TStringField;
    QBuscadorMUESTRADETALLE: TStringField;
    QBuscaLoteFD: TFDQuery;
    QBuscaLoteFDID: TIntegerField;
    QSubDetallesFD: TFDQuery;
    QSubDetallesFDID: TIntegerField;
    QSubDetallesFDID_DET_OP: TIntegerField;
    QSubDetallesFDCODIGO: TStringField;
    QSubDetallesFDDETALLE: TStringField;
    QSubDetallesFDCANTIDAD: TFloatField;
    QSubDetallesFDCANTIDAD_SALDO: TFloatField;
    QSubDetallesFDFECHA: TSQLTimeStampField;
    QSubDetallesFDTIPOCPBTE: TStringField;
    QSubDetallesFDCLASECPBTE: TStringField;
    QSubDetallesFDNROCPBTE: TStringField;
    QSubDetallesFDESTADO: TStringField;
    QSubDetallesFDFECHAINICO: TSQLTimeStampField;
    QSubDetallesFDFECHAFINAL: TSQLTimeStampField;
    QSubDetallesFDESTACION: TIntegerField;
    QSubDetallesFDKEY_ESTACION: TStringField;
    QBuscaDetFD: TFDQuery;
    QBuscaDetFDID: TIntegerField;
    QBuscaDetFDFECHA_INICIADA: TSQLTimeStampField;
    QBuscaDetFDCODIGO: TStringField;
    QBuscaDetFDDETALLE: TStringField;
    QBuscaDetFDNROCPBTE: TStringField;
    QBuscaDetFDCLIENTE: TStringField;
    QBuscaDetFDNOMBRE: TStringField;
    QBuscaTroquel: TFDQuery;
    QBuscaTroquelID: TIntegerField;
    QDiario: TFDQuery;
    QDiarioID: TIntegerField;
    QDiarioID_SUBDET_PROD: TIntegerField;
    QDiarioFECHA: TSQLTimeStampField;
    QDiarioNROCPBTE: TStringField;
    QDiarioTURNO: TIntegerField;
    QDiarioTIPO_MATERIAL: TIntegerField;
    QDiarioESTACION: TIntegerField;
    QDiarioCANTIDAD: TFloatField;
    QDiarioOBSERVACIONES: TStringField;
    QDiarioNRORTO: TStringField;
    QDiarioMUESTRACODIGO: TStringField;
    QDiarioMUESTRADETALLE: TStringField;
    QDiarioMUESTRACANTIDAD: TFloatField;
    QDiarioMUESTRASALDO: TFloatField;
    spAltaStock: TFDStoredProc;
    AltaStock: TAction;
    QDiarioID_AJUSTE_STOCK: TIntegerField;
    CDSDiarioID_AJUSTE_STOCK: TIntegerField;
    spAgregarStock: TSpeedButton;
    ToolButton1: TToolButton;
    QDiarioMUESTRAID_AJUSTE: TIntegerField;
    QDiarioMUESTRANROAJUSTE: TStringField;
    CDSDiarioMUESTRAID_AJUSTE: TIntegerField;
    CDSDiarioMUESTRANROAJUSTE: TStringField;
    pnAjuste: TPanel;
    Label17: TLabel;
    DBText1: TDBText;
    QDiarioMUESTRAID_PRO_CAB: TIntegerField;
    CDSDiarioMUESTRAID_PRO_CAB: TIntegerField;
    lbIdOp: TPanel;
    dbeLote: TDBEdit;
    Label18: TLabel;
    QDiarioMODO_TRAZABILIDAD: TStringField;
    CDSDiarioMODO_TRAZABILIDAD: TStringField;
    ToolBar2: TToolBar;
    MainMenu1: TMainMenu;
    Modos: TMenuItem;
    PorTroqueles: TMenuItem;
    PorLotes: TMenuItem;
    PageControl1: TPageControl;
    pagTroqueles: TTabSheet;
    pagLotes: TTabSheet;
    QDiarioNRO_LOTE: TStringField;
    CDSDiarioNRO_LOTE: TStringField;
    QDiarioHORM_LTS: TFloatField;
    QDiarioHORM_KG: TFloatField;
    QDiarioHORM_REAL_KG: TFloatField;
    QDiarioHORM_REAL_LTS: TFloatField;
    QDiarioPATS_CANT: TIntegerField;
    QDiarioACERO_PAS_KG: TFloatField;
    QDiarioAROS_KG: TFloatField;
    QDiarioTRENZAS_KG: TFloatField;
    QDiarioCORDONES_KG: TFloatField;
    QDiarioALAMBRE_KG: TFloatField;
    QDiarioPIEDRA_KG: TFloatField;
    QDiarioARENA_KG: TFloatField;
    QDiarioCEMENTO_KG: TFloatField;
    QDiarioPIEDRA_KG_REAL: TFloatField;
    QDiarioARENA_KG_REAL: TFloatField;
    QDiarioCEMENTO_KG_REAL: TFloatField;
    QDiarioDIF_HORM_LTS: TFloatField;
    QDiarioDIF_HORM_KG: TFloatField;
    QDiarioDIF_PIEDRA_KG: TFloatField;
    QDiarioDIF_ARENA_KG: TFloatField;
    QDiarioDIF_CEMENTO_KG: TFloatField;
    QDiarioRECHAZADO: TIntegerField;
    QDiarioTROQUEL: TStringField;
    CDSDiarioHORM_LTS: TFloatField;
    CDSDiarioHORM_KG: TFloatField;
    CDSDiarioHORM_REAL_KG: TFloatField;
    CDSDiarioHORM_REAL_LTS: TFloatField;
    CDSDiarioPATS_CANT: TIntegerField;
    CDSDiarioACERO_PAS_KG: TFloatField;
    CDSDiarioAROS_KG: TFloatField;
    CDSDiarioTRENZAS_KG: TFloatField;
    CDSDiarioCORDONES_KG: TFloatField;
    CDSDiarioALAMBRE_KG: TFloatField;
    CDSDiarioPIEDRA_KG: TFloatField;
    CDSDiarioARENA_KG: TFloatField;
    CDSDiarioCEMENTO_KG: TFloatField;
    CDSDiarioPIEDRA_KG_REAL: TFloatField;
    CDSDiarioARENA_KG_REAL: TFloatField;
    CDSDiarioCEMENTO_KG_REAL: TFloatField;
    CDSDiarioDIF_HORM_LTS: TFloatField;
    CDSDiarioDIF_HORM_KG: TFloatField;
    CDSDiarioDIF_PIEDRA_KG: TFloatField;
    CDSDiarioDIF_ARENA_KG: TFloatField;
    CDSDiarioDIF_CEMENTO_KG: TFloatField;
    CDSDiarioRECHAZADO: TIntegerField;
    CDSDiarioTROQUEL: TStringField;
    pnPostes: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    dbePuestaTierra: TDBEdit;
    dbeHormigoLts: TDBEdit;
    dbeHormigonKg: TDBEdit;
    dneHormigonKgReal: TDBEdit;
    dbeHormLtsReal: TDBEdit;
    dbeAceroPas: TDBEdit;
    dbeArosKg: TDBEdit;
    dbeTrenzaKg: TDBEdit;
    dbeCordones: TDBEdit;
    dneAlambreKg: TDBEdit;
    dbePiedraKg: TDBEdit;
    dbeArenaKg: TDBEdit;
    dbeCementoKg: TDBEdit;
    debPiedraKgReal: TDBEdit;
    dbeArenaKgReal: TDBEdit;
    dbeCementoKgReal: TDBEdit;
    pnCabecera: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dbeId: TDBText;
    dbeIdDet: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    dbeNroCpbte: TDBEdit;
    dbcTurno: TJvDBComboBox;
    dbcMaterial: TJvDBLookupCombo;
    dbeCodigo: TDBEdit;
    debDetalle: TDBEdit;
    dbcEstacion: TJvDBLookupCombo;
    dbeFecha: TJvDBDateEdit;
    dbeRto: TDBEdit;
    dbeCant: TDBEdit;
    dbeNroParte: TDBEdit;
    dbeSaldo: TDBEdit;
    dbeCantidad: TDBEdit;
    Label3: TLabel;
    Label16: TLabel;
    dbeNroTroquel: TDBEdit;
    Label35: TLabel;
    dbeDifHormigonLts: TDBEdit;
    Label36: TLabel;
    dbeDifHormigonKg: TDBEdit;
    Label37: TLabel;
    dbeDifPiedraKg: TDBEdit;
    Label38: TLabel;
    dbeDifArenaKg: TDBEdit;
    Label39: TLabel;
    dbeDifCementoKg: TDBEdit;
    QDiarioID_SECTOR: TIntegerField;
    QSector: TFDQuery;
    DSSector: TDataSource;
    CDSDiarioID_SECTOR: TIntegerField;
    QDiarioID_ORDEN_PRODUCCION_CAB: TIntegerField;
    QDiarioID_ORDEN_PRODUCCION_DET: TIntegerField;
    CDSDiarioID_ORDEN_PRODUCCION_CAB: TIntegerField;
    CDSDiarioID_ORDEN_PRODUCCION_DET: TIntegerField;
    QDetalle: TFDQuery;
    QDetalleID: TIntegerField;
    QDetalleID_OPCAB: TIntegerField;
    QDetalleCODIGO: TStringField;
    QDetalleDETALLE: TStringField;
    QDetalleUNIDAD: TStringField;
    QDetalleCANTIDAD: TFloatField;
    QDetalleDEPOSITO_DESTINO: TIntegerField;
    QDetalleSUCURSAL: TIntegerField;
    QDetalleFECHA: TSQLTimeStampField;
    QDetalleTIPOCPBTE: TStringField;
    QDetalleCLASECPBTE: TStringField;
    QDetalleNROCPBTE: TStringField;
    QDetalleAFECTA_STOCK: TStringField;
    QDetalleESTADO: TStringField;
    QDetalleCOSTO: TFloatField;
    QDetalleEN_PLANIFICACION: TStringField;
    QDetalleFECHA_ENTREGA: TSQLTimeStampField;
    QDetalleESPECIFICACION: TStringField;
    QDetallePARTICION: TStringField;
    QDetalleID_PRESU_CAB: TIntegerField;
    QDetalleID_PRESU_DET: TIntegerField;
    QDetalleFECHA_INIC_PRODUCC: TSQLTimeStampField;
    QDetalleITEM_DETALLE: TStringField;
    QDetalleCANT_ENTREGADA: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure CDSDiarioNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CDSDiarioID_SUBDET_PRODSetText(Sender: TField;
      const Text: string);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSTroquelesNewRecord(DataSet: TDataSet);
    procedure dbgTroquelesColEnter(Sender: TObject);
    procedure dbgTroquelesKeyPress(Sender: TObject; var Key: Char);
    procedure CDSTroquelesBeforeInsert(DataSet: TDataSet);
    procedure CDSDiarioCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSTroquelesNRO_TROQUELSetText(Sender: TField;
      const Text: string);
    procedure AgregarExecute(Sender: TObject);
    procedure AltaStockExecute(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure PorTroquelesClick(Sender: TObject);
    procedure PorLotesClick(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure CDSDiarioHORM_LTSSetText(Sender: TField; const Text: string);
    procedure CDSDiarioID_ORDEN_PRODUCCION_DETSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    ModoTrazabilidad:String[1];
  end;

var
  FormProducc_Diario: TFormProducc_Diario;

implementation

uses UDMain_FD, UAjusteMercaderia, UOrdenProduccion;

{$R *.dfm}

procedure TFormProducc_Diario.AgregarExecute(Sender: TObject);
begin
  CDSDiario.Close;
  CDSDiario.Params.ParamByName('id').Clear;
  CDSDiario.Open;

  CDSTroqueles.Close;
  CDSTroqueles.Params.ParamByName('id').Clear;
  CDSTroqueles.Open;

  inherited;
  dbcEstacion.SetFocus;

end;

procedure TFormProducc_Diario.AltaStockExecute(Sender: TObject);
begin
  inherited;
  if (CDSDiarioID_AJUSTE_STOCK.AsString<>'') and (CDSDiarioID_AJUSTE_STOCK.Value<=0) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spAltaStock.Close;
        spAltaStock.ParamByName('id_parte_diario').Value := CDSDiarioID.Value;
        spAltaStock.ParamByName('sucursal').Value        := DMMain_FD.SucursalPorDef;
        spAltaStock.ParamByName('cantidad').Value        := CDSDiarioCANTIDAD.Value;
        spAltaStock.ExecProc;
        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se dio de alta el stock...');
      end;
      spAltaStock.Close;
      Recuperar.Execute;
    end;
end;

procedure TFormProducc_Diario.BorrarExecute(Sender: TObject);
begin
  if CDSDiarioID_AJUSTE_STOCK.Value<=0 then
  inherited
  else
  ShowMessage('Estan dados de Alta al stock no se pueden Borrar...');

end;

procedure TFormProducc_Diario.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscador.Close;
  QBuscador.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  QBuscador.Close;
end;

procedure TFormProducc_Diario.CDSDiarioCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Sender.AsFloat> CDSDiarioMUESTRASALDO.Value then
    begin
      Sender.AsFloat:=0;
      ShowMessage('No Puede superar el saldo disponible');
    end;
  if Not(CDSTroqueles.IsEmpty) then
    begin
      CDSTroqueles.Close;
      CDSTroqueles.Params.ParamByName('id').Clear;
      CDSTroqueles.Open;
    end;
end;

procedure TFormProducc_Diario.CDSDiarioHORM_LTSSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  CDSDiarioPIEDRA_KG.Value       := (CDSDiarioHORM_LTS.Value*273)/250;
  CDSDiarioARENA_KG.Value        := (CDSDiarioHORM_LTS.Value*210)/250;
  CDSDiarioCEMENTO_KG.Value      := (CDSDiarioHORM_LTS.Value*100)/250;
  CDSDiarioHORM_REAL_LTS.Value   := (CDSDiarioHORM_KG.Value*2.4);
  CDSDiarioPIEDRA_KG_REAL.Value  := (CDSDiarioHORM_REAL_LTS.Value*273)/250;
  CDSDiarioARENA_KG_REAL.Value   := (CDSDiarioHORM_REAL_LTS.Value*210)/250;
  CDSDiarioCEMENTO_KG_REAL.Value := (CDSDiarioHORM_REAL_LTS.Value*100)/250;

  CDSDiarioDIF_HORM_LTS.Value    := CDSDiarioHORM_LTS.Value-CDSDiarioHORM_REAL_LTS.Value;
  CDSDiarioDIF_PIEDRA_KG.Value   := CDSDiarioPIEDRA_KG.Value-CDSDiarioPIEDRA_KG_REAL.Value;
  CDSDiarioDIF_ARENA_KG.Value    := CDSDiarioARENA_KG.Value-CDSDiarioARENA_KG_REAL.Value;
  CDSDiarioDIF_CEMENTO_KG.Value  := CDSDiarioCEMENTO_KG.Value-CDSDiarioCEMENTO_KG_REAL.Value;
end;

procedure TFormProducc_Diario.CDSDiarioID_ORDEN_PRODUCCION_DETSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  QDetalle.Close;
  QDetalle.ParamByName('id').Value:=Sender.AsInteger;
  QDetalle.Open;
  if QDetalle.Fields[0].AsString<>'' then
    begin
      CDSDiarioNROCPBTE.Value          := QDetalleNROCPBTE.Value;
      CDSDiarioMUESTRACODIGO.Value     := QDetalleCODIGO.Value;
      CDSDiarioMUESTRADETALLE.Value    := QDetalleDETALLE.Value;
      CDSDiarioMUESTRACANTIDAD.AsFloat := QDetalleCANTIDAD.AsFloat;
      CDSDiarioMUESTRASALDO.AsFloat    := 0;//QDetalleCANTIDAD_SALDO.AsFloat;
    end
  else
    begin
      CDSDiarioNROCPBTE.Value          := '';
      CDSDiarioMUESTRACODIGO.Value     := '';
      CDSDiarioMUESTRADETALLE.Value    := '';
      CDSDiarioMUESTRACANTIDAD.AsFloat := 0;
      CDSDiarioMUESTRASALDO.AsFloat    := 0;
      Sender.AsString        := '';
    end

end;

procedure TFormProducc_Diario.CDSDiarioID_SUBDET_PRODSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  QSubDetallesFD.Close;
  QSubDetallesFD.ParamByName('id').Value:=Sender.AsInteger;
  QSubDetallesFD.Open;
  if QSubDetallesFD.Fields[0].AsString<>'' then
    begin
      CDSDiarioNROCPBTE.Value          := QSubDetallesFDNROCPBTE.Value;
      CDSDiarioESTACION.Value          := QSubDetallesFDESTACION.Value;
      CDSDiarioMUESTRACODIGO.Value     := QSubDetallesFDCODIGO.Value;
      CDSDiarioMUESTRADETALLE.Value    := QSubDetallesFDDETALLE.Value;
      CDSDiarioMUESTRACANTIDAD.AsFloat := QSubDetallesFDCANTIDAD.AsFloat;
      CDSDiarioMUESTRASALDO.AsFloat    := QSubDetallesFDCANTIDAD_SALDO.AsFloat;
    end
  else
    begin
      CDSDiarioNROCPBTE.Value:= '';
      CDSDiarioESTACION.Value:= -1;
      CDSDiarioMUESTRACODIGO.Value := '';
      CDSDiarioMUESTRADETALLE.Value:= '';

      Sender.AsString        := '';
    end

end;

procedure TFormProducc_Diario.CDSDiarioNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSDiarioID.Value                := ibgIdDiario.IncrementFD(1);
  CDSDiarioFECHA.AsDateTime        := Date;
  CDSDiarioTURNO.Value             := 1;
  CDSDiarioCANTIDAD.Value          := 1;
  CDSDiarioESTACION.Value          := -1;
  CDSDiarioTIPO_MATERIAL.Value     := -1;
  CDSDiarioID_AJUSTE_STOCK.Value   := -1;
  CDSDiarioMODO_TRAZABILIDAD.Value := ModoTrazabilidad;

  CDSDiarioTROQUEL.Value               := '';

  CDSDiarioHORM_LTS.Value              := 0;
  CDSDiarioHORM_REAL_KG.Value          := 0;

  CDSDiarioHORM_REAL_LTS.Value         := 0;
  CDSDiarioPATS_CANT.Value             := 0;
  CDSDiarioACERO_PAS_KG.Value          := 0;
  CDSDiarioAROS_KG.Value               := 0;
  CDSDiarioTRENZAS_KG.Value            := 0;
  CDSDiarioTRENZAS_KG.Value            := 0;
  CDSDiarioCORDONES_KG.Value           := 0;
  CDSDiarioALAMBRE_KG.Value            := 0;

  CDSDiarioPIEDRA_KG.Value             := 0;
  CDSDiarioARENA_KG.Value              := 0;
  CDSDiarioARENA_KG_REAL.Value         := 0;
  CDSDiarioCEMENTO_KG_REAL.Value       := 0;
  CDSDiarioDIF_HORM_LTS.Value          := 0;
  CDSDiarioDIF_HORM_KG.Value           := 0;
  CDSDiarioDIF_PIEDRA_KG.Value         := 0;
  CDSDiarioDIF_ARENA_KG.Value          := 0;
  CDSDiarioDIF_CEMENTO_KG.Value        := 0;
  CDSDiarioOBSERVACIONES.Value         := '';
  CDSDiarioRECHAZADO.Value             := 0;
  

  dbcMaterial.LookupSource.DataSet.First;
end;



procedure TFormProducc_Diario.CDSTroquelesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if CDSTroqueles.RecordCount+1>CDSDiarioCANTIDAD.AsInteger then
    begin
      System.SysUtils.Abort;
      CDSTroqueles.Cancel;
    end;
end;

procedure TFormProducc_Diario.CDSTroquelesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSTroquelesID.Value                 := ibgTroquel.IncrementFD(1);
  CDSTroquelesID_ORDENPRODUCCION.Value := CDSDiarioID_SUBDET_PROD.Value;
  CDSTroquelesID_PRODU_DIARIO.Value    := CDSDiarioID.Value;
  CDSTroquelesID_REMITO.Value          := -1;
  CDSTroquelesFECHA_INGRESO.AsDateTime := CDSDiarioFECHA.AsDateTime;
  CDSTroquelesCODIGO.AsString          := CDSDiarioMUESTRACODIGO.AsString;
  CDSTroquelesFECHA_EGRESO.Clear;
end;

procedure TFormProducc_Diario.CDSTroquelesNRO_TROQUELSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Trim(Text)<>'' then
    begin
      QBuscaTroquel.Close;
      QBuscaTroquel.ParamByName('Nro').AsString:=Trim(Text);
      QBuscaTroquel.Open;
      if QBuscaTroquelID.AsString<>'' then
        begin
          Sender.Clear;
          ShowMessage('Nro de troquel ya Usado...');
        end;
    end;
end;

procedure TFormProducc_Diario.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSDiarioID.AsString;
  if (PageControl1.ActivePageIndex=0) and (CDSTroqueles.IsEmpty) then
    raise Exception.Create('No se Ingresaron Los Troqueles o Nro de Partidas');

  if (PageControl1.ActivePageIndex=1) and (CDSDiarioNRO_LOTE.AsString='') then
    raise Exception.Create('No se Ingresaron eL Lote...');

  if (CDSDiarioID_SUBDET_PROD.AsString='') or (CDSDiarioNROCPBTE.AsString='') or
      (CDSDiarioMUESTRACODIGO.AsString='') then
    raise Exception.Create('No se indico de que Ord.Produccion es el material');

  inherited;
  Recuperar.Execute;
end;

procedure TFormProducc_Diario.dbgTroquelesColEnter(Sender: TObject);
begin
  inherited;
  if dbgTroqueles.SelectedIndex>0 then
    dbgTroqueles.SelectedIndex:=0;
end;

procedure TFormProducc_Diario.dbgTroquelesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key=#13 then
    CDSTroqueles.Append;

end;

procedure TFormProducc_Diario.DBText1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAjustesStock)) then
    FormAjustesStock:=TFormAjustesStock.create(Self);
  FormAjustesStock.DatoNew:=CDSDiarioID_AJUSTE_STOCK.AsString;
  FormAjustesStock.recuperar.Execute;
  FormAjustesStock.Show;
end;

procedure TFormProducc_Diario.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  AltaStock.Enabled:=(DSBase.State in [dsBrowse]) and Not(DSBase.DataSet.IsEmpty);
end;

procedure TFormProducc_Diario.FormActivate(Sender: TObject);
begin
  inherited;
  if (FormProducc_Diario<>nil) and (Not(DSBase.DataSet.IsEmpty)) and (DSBase.DataSet.FieldByName('id').Value>0)  then
    Recuperar.Execute;
end;

procedure TFormProducc_Diario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QMaterial.Close;
  QEstaciones.Close;
  ArchivoIni              := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ParteDiario.ini');
  ArchivoIni.WriteString('Modo', 'Modo', ModoTrazabilidad );
  ArchivoIni.Free;

  CDSDiario.Close;
  CDSTroqueles.Close;

  Action:=caFree;
end;

procedure TFormProducc_Diario.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ParteDiario.ini');
  ModoTrazabilidad       := ArchivoIni.ReadString('Modo', 'Modo', 'S');
  ArchivoIni.Free;

  PorTroqueles.Checked := ModoTrazabilidad='S';
  PorLotes.Checked     := ModoTrazabilidad='L';

  AddClientDataSet(CDSDiario,DSPDiario);
  AddClientDataSet(CDSTroqueles,DSPTroqueles);


  if ModoTrazabilidad='S' then
    PageControl1.ActivePageIndex:=0
  else
    if ModoTrazabilidad='L' then
      PageControl1.ActivePageIndex:=1;

  QSector.Close;
  QSector.Open;
  
  QMaterial.Open;
  QEstaciones.Open;

  CDSDiario.Open;
  CDSTroqueles.Open;

  Tabla:='ORDENPRODUCCION_DIARIO';
  Campo:='ID';
end;

procedure TFormProducc_Diario.FormDestroy(Sender: TObject);
begin
  inherited;
  FormProducc_Diario:=nil;
end;

procedure TFormProducc_Diario.Label3Click(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormOrdenProduccion)) then
    FormOrdenProduccion:=tFormOrdenProduccion.cREATE(SELF);
  FormOrdenProduccion.datoNew:=CDSDiarioMUESTRAID_PRO_CAB.AsString;
  FormOrdenProduccion.Recuperar.Execute;
  FormOrdenProduccion.Show;
end;


procedure TFormProducc_Diario.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  AllowChange:=False;
end;

procedure TFormProducc_Diario.PorLotesClick(Sender: TObject);
begin
  inherited;
  PorLotes.Checked:=Not(PorLotes.Checked);
  if PorLotes.Checked then
    PorTroqueles.Checked:=False;
  ModoTrazabilidad:='L';

  PageControl1.ActivePageIndex:=1;

end;

procedure TFormProducc_Diario.PorTroquelesClick(Sender: TObject);
begin
  inherited;
  PorTroqueles.Checked:=Not(PorTroqueles.Checked);
  if PorTroqueles.Checked then
    PorLotes.Checked:=False;
  ModoTrazabilidad:='S';

  if PorLotes.Checked then
    PageControl1.ActivePageIndex:=0;

end;

procedure TFormProducc_Diario.RecuperarExecute(Sender: TObject);
begin
  CDSDiario.Close;
  CDSDiario.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSDiario.Open;

  CDSTroqueles.Close;
  CDSTroqueles.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSTroqueles.Open;

end;

procedure TFormProducc_Diario.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  QBuscaDetFD.Close;
//  QBuscaDetFD.Params.ParamByName('estacion').Value:=CDSDiarioESTACION.Value;
  QBuscaDetFD.Open;
  ComBuscadorDet.Execute;
  if ComBuscadorDet.rOk then
    CDSDiarioID_ORDEN_PRODUCCION_DETSetText(CDSDiarioID_ORDEN_PRODUCCION_DET,IntToStr(ComBuscadorDet.Id));
  QBuscaDetFD.Close;

{                      query antes del cambio
select sub.id, cab.fecha_iniciada, sub.codigo ,sub.detalle,
       cab.nrocpbte,cab.cliente,cl.nombre from ordenproduccion_sub_det sub
left join ordenproduccion_det det on det.id=sub.id_det_op
left join ordenproduccion_cab cab on cab.id=det.id_opcab
left join clientes cl on cl.codigo=cab.cliente
  where cab.estado='P' 
}
  
end;

end.
