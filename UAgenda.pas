unit UAgenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, DBCtrls, Mask, Provider, DBClient, Db,
  ActnList, ImgList, Buttons, ToolWin,  ComCtrls, ExtCtrls, Menus, Grids,
  frxClass, JvComponentBase,  JvExControls, JvGradient, frxDBSet, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, frCoreClasses;

type
  TFormAgenda = class(TFormABMBase)
    DSPAgenda: TDataSetProvider;
    ConfigurarCampos: TAction;
    pcPrincipal: TPageControl;
    tFichaCliente: TTabSheet;
    dbeCodigo: TDBEdit;
    dbeNombre: TDBEdit;
    dbeDireccion: TDBEdit;
    dbtLocalidad: TDBText;
    Bevel2: TBevel;
    dbeCampo1: TDBEdit;
    dbeCampo2: TDBEdit;
    dbmNotas: TDBMemo;
    GroupBox1: TGroupBox;
    dbeTe_1: TDBEdit;
    dbeTe_2: TDBEdit;
    dbeCumpleano: TDBEdit;
    dbtCPostal: TDBText;
    Bevel5: TBevel;
    dbeReferencia: TDBEdit;
    BuscaLocalidad: TAction;
    tListados: TTabSheet;
    ComboBox1: TComboBox;
    DSLstAgenda: TDataSource;
    DSPLstAgenda: TDataSetProvider;
    CDSLstAgenda: TClientDataSet;
    CDSLstAgendaCODIGO: TStringField;
    CDSLstAgendaNOMBRE: TStringField;
    CDSLstAgendaDIRECCION: TStringField;
    CDSLstAgendaCODIGO_POSTAL: TStringField;
    CDSLstAgendaMUESTRALOCALIDAD: TStringField;
    CDSLstAgendaCUMPLE_ANIO: TStringField;
    BitBtn3: TBitBtn;
    ToolButton1: TToolButton;
    ImprimirFicha: TAction;
    BitBtn1: TBitBtn;
    ImprimirListado: TAction;
    DSPBuscadorAgenda: TDataSetProvider;
    CDSBuscadorAgenda: TClientDataSet;
    CDSBuscadorAgendaNOMBRE: TStringField;
    CDSBuscadorAgendaDIRECCION: TStringField;
    CDSBuscadorAgendaCODIGO: TStringField;
    CDSBuscadorAgendaCAMPO_1: TStringField;
    CDSBuscadorAgendaCAMPO_2: TStringField;
    frFicha: TfrxReport;
    frDBListaCumple: TfrxDBDataset;
    frDBFicha: TfrxDBDataset;
    DSPPostal: TDataSetProvider;
    CDSPostal: TClientDataSet;
    CDSPostalID_POSTAL: TIntegerField;
    CDSPostalCODIGO_POSTAL: TStringField;
    CDSPostalDETALLE_POSTAL: TStringField;
    CDSPostalTELEDISCADO: TStringField;
    CDSPostalPROVINCIA: TIntegerField;
    DSPBuscaCPostal: TDataSetProvider;
    CDSBuscaCPostal: TClientDataSet;
    CDSBuscaCPostalID_POSTAL: TIntegerField;
    CDSBuscaCPostalCODIGO_POSTAL: TStringField;
    CDSBuscaCPostalDETALLE_POSTAL: TStringField;
    CDSBuscaCPostalTELEDISCADO: TStringField;
    CDSBuscaCPostalPROVINCIA: TIntegerField;
    CDSAgenda: TClientDataSet;
    CDSAgendaCODIGO: TStringField;
    CDSAgendaNOMBRE: TStringField;
    CDSAgendaDIRECCION: TStringField;
    CDSAgendaLOCALIDAD: TIntegerField;
    CDSAgendaCUMPLE_ANIO: TStringField;
    CDSAgendaTELEFONO_1: TStringField;
    CDSAgendaTELEFONO_2: TStringField;
    CDSAgendaREFERENCIA: TStringField;
    CDSAgendaCAMPO_1: TStringField;
    CDSAgendaCAMPO_2: TStringField;
    CDSAgendaNOTAS: TBlobField;
    CDSAgendaCODIGO_POSTAL: TStringField;
    CDSAgendaMUESTRALOCALIDAD: TStringField;
    CDSAgendaTELEDISCADO: TStringField;
    RxDBIdPostal: TJvDBComboEdit;
    lbCliente: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel1: TJvLabel;
    LbCampo1: TJvLabel;
    LbCampo2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    DBGrid1: TDBGrid;
    ComBuscadorLocalidades: TComBuscador;
    QLstAgenda: TFDQuery;
    QAgenda: TFDQuery;
    QBuscadorAgenda: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSAgendaNewRecord(DataSet: TDataSet);
    procedure CDSAgendaCODIGOSetText(Sender: TField; const Text: String);
    procedure AgregarExecute(Sender: TObject);
    procedure CDSAgendaLOCALIDADSetText(Sender: TField;
      const Text: String);
    procedure BuscaLocalidadExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ImprimirFichaExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure CDSAgendaCUMPLE_ANIOSetText(Sender: TField;
      const Text: String);
    procedure CDSAgendaCUMPLE_ANIOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSLstAgendaCUMPLE_ANIOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure ImprimirListadoExecute(Sender: TObject);
    procedure DSLstAgendaDataChange(Sender: TObject; Field: TField);
    procedure RecuperarExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ConfirmaExecute(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    FUNCTION AsignaLocalida(Dato: Integer): Boolean;
    { Public declarations }
  end;

var
  FormAgenda: TFormAgenda;
  mes:string;

implementation

uses UBuscadorClientesAgenda, DMBuscadoresForm, UDMain_FD;

{$R *.DFM}

FUNCTION TFormAgenda.AsignaLocalida(Dato: Integer): Boolean;
BEGIN
  CDSPostal.Close;
  CDSPostal.Params.ParamByName('id').Value := Dato;
  CDSPostal.Open;
  IF NOT (CDSPostal.IsEmpty) THEN
    BEGIN
      result := True;
      CDSAgendaMUESTRALOCALIDAD.Value := CDSPostalDETALLE_POSTAL.Value;
      CDSAgendaLOCALIDAD.Value        := Dato;
      CDSAgendaCODIGO_POSTAL.Value    := CDSPostalCODIGO_POSTAL.Value;
      CDSAgendaTELEDISCADO.Value      := CDSPostalTELEDISCADO.Value;
    END
  ELSE
    result := False;
  CDSPostal.Close;
END;


procedure TFormAgenda.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSAgenda,DSPAgenda);
  CDSAgenda.Open;

  LbCampo1.Caption  :=  DMMain_FD.DBOpciones('CAMPO1');
  LbCampo2.Caption  :=  DMMain_FD.DBOpciones('CAMPO2');
  pcPrincipal.ActivePageIndex:=0;
  Campo:='codigo';
  Tabla:='agenda';
end;

procedure TFormAgenda.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorClientesAgenda)) Then
    FormBuscadorClientesAgenda:=TFormBuscadorClientesAgenda.Create(self);
  FormBuscadorClientesAgenda.ShowModal;
  if FormBuscadorClientesAgenda.Codigo<>'' Then
    begin
      DatoNew:=FormBuscadorClientesAgenda.Codigo;
      Recuperar.Execute;
    end;
 pnPrincipal.Enabled:=True;
end;

procedure TFormAgenda.CDSAgendaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSAgendaCODIGOSetText(CDSAgendaCODIGO,IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1))
  else
    CDSAgendaCODIGOSetText(CDSAgendaCODIGO,'1');
  QUltimoCodigo2.Close;

end;

procedure TFormAgenda.CDSAgendaCODIGOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('000000',1,6-Length(Text))+Text;
end;

procedure TFormAgenda.AgregarExecute(Sender: TObject);
begin
  inherited;
  if (FormAgenda.Visible=True) and (dbeNombre.Visible=True) and (dbeNombre.Enabled=True) Then
   dbeNombre.SetFocus;
end;

procedure TFormAgenda.CDSAgendaLOCALIDADSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  if Copy(Sender.AsString,1,1)<>'#' Then
  if Not(AsignaLocalida(Sender.AsInteger)) Then
    BEGIN
      Sender.AsString := '';
      ShowMessage('Codigo No Válido');
    END;
end;

procedure TFormAgenda.BuscaLocalidadExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCPostal.Close;
  CDSBuscaCPostal.Open;
  comBuscadorLocalidades.Execute;
  if ComBuscadorLocalidades.rOk then
    CDSAgendaLOCALIDADSetText(CDSAgendaLOCALIDAD, IntToStr(comBuscadorLocalidades.id));
  CDSBuscaCPostal.Close;
end;

procedure TFormAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAgenda.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAgenda:=nil;
end;

procedure TFormAgenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key in [VK_UP,VK_DOWN])  and
       not (ActiveControl is TDBMemo) Then
       begin
         if (Key = VK_UP )Then Perform(WM_NEXTDLGCTL,1,0)
          else Perform(WM_NEXTDLGCTL,0,0);
          Key:=0;

       end;
end;

procedure TFormAgenda.ComboBox1Click(Sender: TObject);
begin
  inherited;
  mes:=IntToStr(ComboBox1.ItemIndex+1);
  mes:=copy('00',1,2-Length(mes))+Mes;
  CDSLstAgenda.Close;
  CDSLstAgenda.Params.ParamByName('mes1').Value:=mes+'00';
  CDSLstAgenda.Params.ParamByName('mes2').Value:=mes+'31';
  CDSLstAgenda.OPen;
end;

procedure TFormAgenda.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSAgendaCODIGO.AsString;// FormBuscadorClientesAgenda.Codigo;
  inherited;
  if FormAgenda.Visible=True then
    Recuperar.Execute;
end;

procedure TFormAgenda.DBGrid1TitleClick(Column: TColumn);
var Columna : string;
begin
  inherited;
  if DSBase.State = dsBrowse then
    begin
      with DBGrid1.DataSource.DataSet as TClientDataSet do
        begin
          Campo := Column.FieldName;
            if IndexFieldNames <> Campo then
              IndexFieldNames := Campo // Ascendente
            else
            begin
              AddIndex(Campo, Campo, [], Campo); // Descendente
              IndexName := Campo;
            end;
        end;
    end;
end;

procedure TFormAgenda.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled := True;
  tFichaCliente.Enabled :=  DSBase.DataSet.State in [dsInsert,dsEdit];
  ImprimirFicha.Enabled :=  (DSBase.State=dsbrowse) and (Not(CDSAgenda.IsEmpty))
end;



procedure TFormAgenda.ImprimirFichaExecute(Sender: TObject);
VAR
  A: STRING;

  FUNCTION GetCurrentDirectory: STRING;
  VAR
    nBufferLength: DWORD;
    lpBuffer: PChar;
  BEGIN
    nBufferLength := MAX_PATH + 1;
    GetMem(lpBuffer, nBufferLength);
    TRY
      IF Windows.GetCurrentDirectory(nBufferLength, lpBuffer) > 0 THEN
        Result := lpBuffer;
    FINALLY
      FreeMem(lpBuffer);
    END;
  END;
BEGIN
  A := GetCurrentDirectory;
  IF NOT (CDSAgenda.IsEmpty) THEN
    BEGIN
      frFicha.LoadFromFile(A + '\Reportes\FichaAgenda.fr3');
      frFicha.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para listar...');

end;


procedure TFormAgenda.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frFicha.DesignReport;
end;

procedure TFormAgenda.CDSAgendaCUMPLE_ANIOSetText(Sender: TField;
  const Text: String);
VAR cadena:String;
begin
  Cadena:=text;
  Cadena:=Copy(Cadena,3,2)+Copy(Cadena,1,2);
  Sender.AsString:=Cadena;
end;

procedure TFormAgenda.CDSAgendaCUMPLE_ANIOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR Cadena:String;
begin
  Cadena:=Sender.AsString;
  Text:=Copy(Cadena,3,2)+'/'+Copy(cadena,1,2);
  IF Cadena='' Then text:='';
end;


procedure TFormAgenda.CDSLstAgendaCUMPLE_ANIOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR Cadena:String;
begin
  inherited;
  Cadena:=Sender.AsString;
  Text:=Copy(Cadena,3,2)+'/'+Copy(cadena,1,2);
  IF Cadena='' Then text:='';

end;

procedure TFormAgenda.ImprimirListadoExecute(Sender: TObject);
  BEGIN
  
  IF NOT (CDSLstAgenda.IsEmpty) THEN
    BEGIN
  //    frFicha.ChangePrinter(prDefault,PrListados);
      frFicha.LoadFromFile(DMMain_FD.PathReportesLst+'\LstCumple.fr3');
      frFicha.ShowReport;
    END
  ELSE
    ShowMessage('No hay datos para listar...');

end;

procedure TFormAgenda.DSLstAgendaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  ImprimirListado.Enabled:=CDSLstAgenda.IsEmpty=False;
end;

procedure TFormAgenda.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSAgenda.Close;
  CDSAgenda.Params.ParamByName('Codigo').Value:=DatoNew;
  CDSAgenda.OPen;
end;

procedure TFormAgenda.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frFicha.DesignReport;
end;

end.