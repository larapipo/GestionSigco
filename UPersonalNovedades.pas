unit UPersonalNovedades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, JvToolEdit, Vcl.Mask, JvExMask, Datasnap.Provider,
  Datasnap.DBClient, AdvDateTimePicker, AdvDBDateTimePicker, Vcl.DBCtrls,
  IBGenerator,DateUtils;

type
  TFormPersonalNovedades = class(TFormABMBase)
    pnCabecera: TPanel;
    dbgMovimientos: TDBGrid;
    QNovedades: TFDQuery;
    pnPie: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    CDSNovedades: TClientDataSet;
    DSPNovedades: TDataSetProvider;
    QNovedadesID: TIntegerField;
    QNovedadesEMPLEADO: TStringField;
    QNovedadesDESDE: TSQLTimeStampField;
    QNovedadesHASTA: TSQLTimeStampField;
    QNovedadesLIQUIDADO: TStringField;
    QNovedadesMUESTRANOMBRE: TStringField;
    QNovedadesMUESTRACODCATEGORIA: TIntegerField;
    QNovedadesMUESTRACATEGORIA: TStringField;
    CDSNovedadesID: TIntegerField;
    CDSNovedadesEMPLEADO: TStringField;
    CDSNovedadesDESDE: TSQLTimeStampField;
    CDSNovedadesHASTA: TSQLTimeStampField;
    CDSNovedadesLIQUIDADO: TStringField;
    CDSNovedadesMUESTRANOMBRE: TStringField;
    CDSNovedadesMUESTRACODCATEGORIA: TIntegerField;
    CDSNovedadesMUESTRACATEGORIA: TStringField;
    RxDBCodigo: TJvDBComboEdit;
    dbeNombre: TDBEdit;
    Desde: TAdvDBDateTimePicker;
    Hasta: TAdvDBDateTimePicker;
    QDetalles: TFDQuery;
    DSPDetalle: TDataSetProvider;
    CDSDetalles: TClientDataSet;
    IBGCab: TIBGenerator;
    IBGDet: TIBGenerator;
    QDetallesID: TIntegerField;
    QDetallesID_CAB: TIntegerField;
    QDetallesIDCONCEPTO: TIntegerField;
    QDetallesTIPO_CONCEPTO: TStringField;
    QDetallesCONCEPTO: TStringField;
    QDetallesCANTIDAD: TIntegerField;
    QDetallesIMPORTE: TFloatField;
    QDetallesPORCENTAJE: TFloatField;
    CDSDetallesID: TIntegerField;
    CDSDetallesID_CAB: TIntegerField;
    CDSDetallesIDCONCEPTO: TIntegerField;
    CDSDetallesTIPO_CONCEPTO: TStringField;
    CDSDetallesCONCEPTO: TStringField;
    CDSDetallesCANTIDAD: TIntegerField;
    CDSDetallesIMPORTE: TFloatField;
    CDSDetallesPORCENTAJE: TFloatField;
    DSDetalle: TDataSource;
    CDSBuscaPersonal: TClientDataSet;
    CDSBuscaPersonalNOMBRE: TStringField;
    CDSBuscaPersonalCODIGO: TStringField;
    DSPBuscaPersonal: TDataSetProvider;
    ComBuscadorEmpleados: TComBuscador;
    BuscarEmpleado: TAction;
    QPerson: TFDQuery;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalCARGO: TIntegerField;
    CDSPersonalCATEGORIA: TIntegerField;
    CDSPersonalCTACONTABLE: TIntegerField;
    CDSPersonalDOMICILIO: TStringField;
    CDSPersonalESTADO_CIVIL: TStringField;
    CDSPersonalFECHA_INGRESO: TSQLTimeStampField;
    CDSPersonalFECHA_NACIMIENTO: TSQLTimeStampField;
    CDSPersonalCODIGO: TStringField;
    CDSPersonalLOCALIDAD: TIntegerField;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalTELEFONO_1: TStringField;
    CDSPersonalTELEFONO_2: TStringField;
    CDSPersonalMUESTRACARGO: TStringField;
    CDSPersonalMUESTRACATEGORIA: TStringField;
    CDSPersonalMUESTRALOCALIDAD: TStringField;
    CDSPersonalMUESTRACPOSTAL: TStringField;
    BuscarConcepto: TAction;
    QBuscadorConcepto: TFDQuery;
    DSPBuscadorConcepto: TDataSetProvider;
    CDSBuscadorConcepto: TClientDataSet;
    StringField6: TStringField;
    StringField5: TStringField;
    IntegerField6: TIntegerField;
    ComBuscadorConcepto: TComBuscador;
    QConcepto: TFDQuery;
    QConceptoID: TIntegerField;
    QConceptoTIPO: TStringField;
    QConceptoCONCEPTO: TStringField;
    QConceptoCALCULO: TStringField;
    QConceptoIMPORTE: TFloatField;
    QConceptoPORCENTAJE: TFloatField;
    QConceptoMINIMO: TFloatField;
    QConceptoCONCEPTOBASE: TIntegerField;
    QConceptoCOLUMNA: TIntegerField;
    QConceptoMAXIMO: TIntegerField;
    QConceptoVISIBLE: TStringField;
    QConceptoCONCEPTOBASE2: TIntegerField;
    DSPConcpeto: TDataSetProvider;
    CDSConcepto: TClientDataSet;
    CDSConceptoID: TIntegerField;
    CDSConceptoTIPO: TStringField;
    CDSConceptoCONCEPTO: TStringField;
    CDSConceptoCALCULO: TStringField;
    CDSConceptoIMPORTE: TFloatField;
    CDSConceptoPORCENTAJE: TFloatField;
    CDSConceptoMINIMO: TFloatField;
    CDSConceptoCONCEPTOBASE: TIntegerField;
    CDSConceptoCOLUMNA: TIntegerField;
    CDSConceptoMAXIMO: TIntegerField;
    CDSConceptoVISIBLE: TStringField;
    CDSConceptoCONCEPTOBASE2: TIntegerField;
    QBuscador: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    QDetallesMUESTRAMODOCALCULO: TStringField;
    CDSDetallesMUESTRAMODOCALCULO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarEmpleadoExecute(Sender: TObject);
    procedure CDSNovedadesEMPLEADOSetText(Sender: TField; const Text: string);
    procedure dbgMovimientosKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarConceptoExecute(Sender: TObject);
    procedure CDSDetallesIDCONCEPTOSetText(Sender: TField; const Text: string);
    procedure CDSNovedadesNewRecord(DataSet: TDataSet);
    procedure CDSDetallesNewRecord(DataSet: TDataSet);
    procedure dbgMovimientosColEnter(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSDetallesAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPersonalNovedades: TFormPersonalNovedades;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormPersonalNovedades.BuscarConceptoExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      ComBuscadorConcepto.Data.Open;
      ComBuscadorConcepto.Execute;
      if ComBuscadorConcepto.rOk then
        begin
          CDSDetallesIDCONCEPTOSetText(CDSDetallesIDCONCEPTO,ComBuscadorConcepto.Id)
        end;
      ComBuscadorConcepto.Data.Close;
    end;
end;

procedure TFormPersonalNovedades.BuscarEmpleadoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaPersonal.Close;
  CDSBuscaPersonal.Open;
  ComBuscadorEmpleados.Execute;
  IF comBuscadorEmpleados.rOk THEN
    BEGIN
      CDSNovedadesEMPLEADOSetText(CDSNovedadesEMPLEADO,comBuscadorEmpleados.Id);
    END;
  CDSBuscaPersonal.Close;
end;

procedure TFormPersonalNovedades.BuscarExecute(Sender: TObject);
begin
  inherited;
  ComBuscadorBase.Data.Open;
  ComBuscadorBase.Execute;
  IF ComBuscadorBase.rOk THEN
    BEGIN
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    END;
  ComBuscadorBase.Data.Close;
end;

procedure TFormPersonalNovedades.CDSDetallesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dbgMovimientos.SelectedIndex:=0;
end;

procedure TFormPersonalNovedades.CDSDetallesIDCONCEPTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if CDSDetalles.State=dsbrowse then
    CDSDetalles.Edit;
  Sender.AsString:=Text;
  CDSConcepto.Close;
  CDSConcepto.Params.ParamByName('id').Value:=Sender.AsInteger;
  CDSConcepto.Open;
  if Not(CDSConcepto.IsEmpty) then
    begin
      CDSDetallesIDCONCEPTO.Value         := CDSConceptoID.Value;
      CDSDetallesCONCEPTO.Value           := CDSConceptoCONCEPTO.Value;
      CDSDetallesTIPO_CONCEPTO.Value      := CDSConceptoTIPO.Value;
      CDSDetallesIMPORTE.Value            := CDSConceptoIMPORTE.Value;
      CDSDetallesPORCENTAJE.Value         := CDSConceptoPORCENTAJE.Value;
      CDSDetallesMUESTRAMODOCALCULO.Value := CDSConceptoCALCULO.Value;
    end
  else
    begin
      CDSDetallesIDCONCEPTO.Value         := -1;
      CDSDetallesCONCEPTO.Value           := '';
      CDSDetallesTIPO_CONCEPTO.Value      := '';
      CDSDetallesIMPORTE.Value            := 0;
      CDSDetallesPORCENTAJE.Value         := 0;
      CDSDetallesMUESTRAMODOCALCULO.Value := '';
    end;
  CDSConcepto.Close;

  //
end;

procedure TFormPersonalNovedades.CDSDetallesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSDetallesID.Value            := IBGDet.IncrementFD(1);
  CDSDetallesID_CAB.Value        := CDSNovedadesID.Value;
  CDSDetallesTIPO_CONCEPTO.Value := '';
  CDSDetallesCANTIDAD.Value      := 0;
  CDSDetallesIMPORTE.Value       := 0;
  CDSDetallesPORCENTAJE.Value    := 0;
end;

procedure TFormPersonalNovedades.CDSNovedadesEMPLEADOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('codigo').Value:=Sender.AsString;
  CDSPersonal.Open;
  if not(CDSPersonal.IsEmpty) then
    begin
      CDSNovedadesMUESTRANOMBRE.Value       := CDSPersonalNOMBRE.Value;
      CDSNovedadesMUESTRACODCATEGORIA.Value := CDSPersonalCATEGORIA.Value;
      CDSNovedadesMUESTRACATEGORIA.Value    := CDSPersonalMUESTRACATEGORIA.Value;
    end
  else
    begin
      CDSNovedadesMUESTRANOMBRE.Value       := '';
      CDSNovedadesMUESTRACODCATEGORIA.Value := -1;
      CDSNovedadesMUESTRACATEGORIA.Value    := '';
    end;
  CDSPersonal.Close;
end;

procedure TFormPersonalNovedades.CDSNovedadesNewRecord(DataSet: TDataSet);
var y,m,d:Word;
begin
  inherited;
  CDSNovedadesID.Value:=IBGCab.IncrementFD(1);
  DecodeDate(date,y,m,d);
  CDSNovedadesDESDE.AsDateTime          := EncodeDate(y,m,1);
  CDSNovedadesHASTA.AsDateTime          := EncodeDate(y,m,DaysInMonth(CDSNovedadesDESDE.AsDateTime));
  CDSNovedadesLIQUIDADO.Value           := 'N';
  CDSNovedadesMUESTRANOMBRE.Value       := '';
  CDSNovedadesMUESTRACODCATEGORIA.Clear;
  CDSNovedadesMUESTRACATEGORIA.Value    :='';

end;

procedure TFormPersonalNovedades.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSNovedadesID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormPersonalNovedades.dbgMovimientosColEnter(Sender: TObject);
begin
  inherited;
  IF dbgMovimientos.SelectedIndex = 1 THEN
    dbgMovimientos.SelectedIndex := 2;
  IF dbgMovimientos.SelectedIndex = 5 THEN
    dbgMovimientos.SelectedIndex := 4;
  if (dbgMovimientos.SelectedIndex=3) and (dbgMovimientos.DataSource.DataSet.FieldByName('MUESTRAMODOCALCULO').Value='F') then
    dbgMovimientos.SelectedIndex:=4;
  if (dbgMovimientos.SelectedIndex=4) and (dbgMovimientos.DataSource.DataSet.FieldByName('MUESTRAMODOCALCULO').Value<>'F') then
    dbgMovimientos.SelectedIndex:=3;

end;


procedure TFormPersonalNovedades.dbgMovimientosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      Top := 6;
      IF (dbgMovimientos.SelectedIndex < 4) THEN
        dbgMovimientos.SelectedIndex := dbgMovimientos.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgMovimientos.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            begin
              dbgMovimientos.DataSource.DataSet.Append;
              dbgMovimientos.SelectedIndex := 0;
            end
          else
            IF (not(dbgMovimientos.DataSource.DataSet.Eof)) and (Not(DSBase.State in [dsBrowse])) and
              (dbgMovimientos.DataSource.DataSet.RecordCount>0) THEN
              begin
                dbgMovimientos.DataSource.DataSet.Append;
                dbgMovimientos.SelectedIndex := 0;
              end;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgMovimientos.SelectedField = CDSDetallesIDCONCEPTO THEN
          BuscarConcepto.Execute;
      END
    else
      if (key = #27) then
        dbgMovimientos.DataSource.DataSet.Cancel;

end;

procedure TFormPersonalNovedades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSNovedades.Close;
  CDSDetalles.Close;
  Action:=TCloseAction.caFree;
end;

procedure TFormPersonalNovedades.FormCreate(Sender: TObject);
var d,y,m:Word;
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSNovedades,DSPNovedades);
  AddClientDataSet(CDSDetalles,DSPDetalle);
  CDSNovedades.Open;
  CDSDetalles.Open;
  Tabla:='PERSONAL_NOVEDADES_CAB';
  Campo:='id';


end;

procedure TFormPersonalNovedades.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPersonalNovedades:=nil;
end;

procedure TFormPersonalNovedades.FormResize(Sender: TObject);
begin
  inherited;
  if FormPersonalNovedades<>nil then
    if FormPersonalNovedades.Width<>890 then
      FormPersonalNovedades.Width:=890;
end;

procedure TFormPersonalNovedades.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSNovedades.Close;
  CDSNovedades.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSNovedades.Open;

  CDSDetalles.Close;
  CDSDetalles.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSDetalles.Open;

end;

end.
