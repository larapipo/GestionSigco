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
    Label1: TLabel;
    dbeNroCpbte: TDBEdit;
    dbcTurno: TJvDBComboBox;
    dbcMaterial: TJvDBLookupCombo;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DSMaterial: TDataSource;
    Label7: TLabel;
    Label8: TLabel;
    dbeCodigo: TDBEdit;
    debDetalle: TDBEdit;
    ComBuscadorDet: TComBuscador;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    CDSDiarioFECHA: TSQLTimeStampField;
    Label11: TLabel;
    dbcEstacion: TJvDBLookupCombo;
    dbeFecha: TJvDBDateEdit;
    Label12: TLabel;
    DSEstaciones: TDataSource;
    CDSDiarioOBSERVACIONES: TStringField;
    dbeObservaciones: TDBMemo;
    Label13: TLabel;
    CDSDiarioNRORTO: TStringField;
    dbeRto: TDBEdit;
    Label14: TLabel;
    dbeId: TDBText;
    dbeIdDet: TDBText;
    QTroqueles: TFDQuery;
    CDSTroqueles: TClientDataSet;
    DSPTroqueles: TDataSetProvider;
    DSTroqueles: TDataSource;
    QTroquelesID: TIntegerField;
    QTroquelesID_REMITO: TIntegerField;
    QTroquelesNRO_TROQUEL: TStringField;
    QTroquelesID_PRODU_DIARIO: TIntegerField;
    QTroquelesFECHA_INGRESO: TSQLTimeStampField;
    QTroquelesFECHA_EGRESO: TSQLTimeStampField;
    CDSTroquelesID: TIntegerField;
    CDSTroquelesID_REMITO: TIntegerField;
    CDSTroquelesNRO_TROQUEL: TStringField;
    CDSTroquelesID_PRODU_DIARIO: TIntegerField;
    CDSTroquelesFECHA_INGRESO: TSQLTimeStampField;
    CDSTroquelesFECHA_EGRESO: TSQLTimeStampField;
    dbgTroqueles: TDBGrid;
    ibgTroquel: TIBGenerator;
    dbeCant: TDBEdit;
    Label15: TLabel;
    dbeNroParte: TDBEdit;
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
    dbeSaldo: TDBEdit;
    Label16: TLabel;
    QBuscaTroquel: TFDQuery;
    QBuscaTroquelID: TIntegerField;
    dbeCantidad: TDBEdit;
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
    JvDBStatusLabel1: TJvDBStatusLabel;
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
    Label3: TLabel;
    lbIdOp: TPanel;
    dbeLote: TDBEdit;
    Label18: TLabel;
    QDiarioMODO_TRAZABILIDAD: TStringField;
    CDSDiarioMODO_TRAZABILIDAD: TStringField;
    rgModo: TDBRadioGroup;
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
    procedure rgModoClick(Sender: TObject);
    procedure PorTroquelesClick(Sender: TObject);
    procedure PorLotesClick(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure FormActivate(Sender: TObject);
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
 // CDSTroquelesID_ORDENPRODUCCION.Value := CDSDiarioID_SUBDET_PROD.Value;
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
  SinBDE:=1;
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

procedure TFormProducc_Diario.rgModoClick(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex:=rgModo.ItemIndex;
  if rgModo.ItemIndex=0 then
    ModoTrazabilidad:='S'
  else
    if rgModo.ItemIndex=1 then
      ModoTrazabilidad:='L';

end;

procedure TFormProducc_Diario.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  QBuscaDetFD.Close;
  QBuscaDetFD.Params.ParamByName('estacion').Value:=CDSDiarioESTACION.Value;
  QBuscaDetFD.Open;
  ComBuscadorDet.Execute;
  if ComBuscadorDet.rOk then
    CDSDiarioID_SUBDET_PRODSetText(CDSDiarioID_SUBDET_PROD,IntToStr(ComBuscadorDet.Id));
  QBuscaDetFD.Close;

end;

end.
