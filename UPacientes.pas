unit UPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, JvExMask, JvToolEdit, JvDBLookup, JvExStdCtrls, JvCombobox, JvDBCombobox,
  System.ImageList;

type
  TFormPacientes = class(TFormABMBase)
    QPacientes: TFDQuery;
    DSPPacientes: TDataSetProvider;
    CDSPacientes: TClientDataSet;
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxDBSpinEdit1: TDBEdit;
    edNombre: TDBEdit;
    edDireccion: TDBEdit;
    edTelefono1: TDBEdit;
    edTelefono2: TDBEdit;
    edLocalidad: TDBEdit;
    edPostal: TDBEdit;
    edNroOSocial: TDBEdit;
    edMail: TDBEdit;
    edNumeroDoc: TDBEdit;
    QPacientesNOMBRE: TStringField;
    QPacientesDIRECCION: TStringField;
    CDSPacientesNOMBRE: TStringField;
    CDSPacientesDIRECCION: TStringField;
    QPacientesID_POSTAL: TIntegerField;
    CDSPacientesID_POSTAL: TIntegerField;
    eddPostal: TJvDBComboEdit;
    BuscaLocalidad: TAction;
    DSPBuscaCPostal: TDataSetProvider;
    CDSBuscaCPostal: TClientDataSet;
    CDSBuscaCPostalDETALLE_POSTAL: TStringField;
    CDSBuscaCPostalCODIGO_POSTAL: TStringField;
    CDSBuscaCPostalTELEDISCADO: TStringField;
    CDSBuscaCPostalID_POSTAL: TIntegerField;
    CDSBuscaCPostalPROVINCIA: TIntegerField;
    ComBuscadorLocalidades: TComBuscador;
    DSPPostal: TDataSetProvider;
    CDSPostal: TClientDataSet;
    CDSPostalID_POSTAL: TIntegerField;
    CDSPostalCODIGO_POSTAL: TStringField;
    CDSPostalDETALLE_POSTAL: TStringField;
    CDSPostalTELEDISCADO: TStringField;
    CDSPostalPROVINCIA: TIntegerField;
    QOSocial: TFDQuery;
    DSPOSocial: TDataSetProvider;
    CDSOSocial: TClientDataSet;
    DSOSocial: TDataSource;
    CDSOSocialID: TIntegerField;
    CDSOSocialNOMBRE: TStringField;
    cbOSocial: TJvDBLookupCombo;
    dbTipoDoc: TJvDBComboBox;
    QPacientesFECHA_NACIMIENTO: TSQLTimeStampField;
    CDSPacientesFECHA_NACIMIENTO: TSQLTimeStampField;
    edFechaNacimiento: TJvDBDateEdit;
    QPacientesBuscador: TFDQuery;
    DSPPacientesBuscador: TDataSetProvider;
    CDSPacientesBuscador: TClientDataSet;
    IntegerField4: TIntegerField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    SpeedButton1: TSpeedButton;
    ObraSociañ: TAction;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    Label13: TLabel;
    Label14: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BuscaLocalidadExecute(Sender: TObject);
    procedure CDSPacientesID_POSTALSetText(Sender: TField; const Text: string);
    procedure CDSPacientesNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ObraSociañExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   FUNCTION AsignaLocalida(Dato: integer): Boolean;
  end;

var
  FormPacientes: TFormPacientes;

implementation

uses
  UDMain_FD,DMBuscadoresForm,UAltaObraSocial;
{$R *.dfm}

procedure TFormPacientes.AgregarExecute(Sender: TObject);
begin
  inherited;
  edNombre.SetFocus;
end;

function TFormPacientes.AsignaLocalida(Dato: integer): Boolean;
begin
  CDSPostal.Close;
  CDSPostal.Params.ParamByName('id').Value := Dato;
    // wwLookupLocalidades.LookupTable.fieldByName('id_Postal').Value;
  CDSPostal.Open;
  IF NOT(CDSPostal.IsEmpty) THEN
    BEGIN
      result := True;
      CDSPacientesCPOSTAL.Value := CDSPostalCODIGO_POSTAL.Value;
      CDSPacientesLOCALIDAD.Value := CDSPostalDETALLE_POSTAL.Value;
      CDSPacientesID_POSTAL.Value := Dato;
    END
  ELSE
    begin
      result := False;
      CDSPacientesCPOSTAL.Clear;
      CDSPacientesLOCALIDAD.Clear;
      CDSPacientesID_POSTAL.Clear;
    end;
  CDSPostal.Close;
end;

procedure TFormPacientes.BuscaLocalidadExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCPostal.Close;
  CDSBuscaCPostal.Open;
  comBuscadorLocalidades.Execute;
  if comBuscadorLocalidades.rOk Then
    CDSPacientesID_POSTALSetText(CDSPacientesID_POSTAL, IntToStr(comBuscadorLocalidades.id));
  CDSBuscaCPostal.Close;
end;

procedure TFormPacientes.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSPacientesBuscador.Close;
  CDSPacientesBuscador.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToSTr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSPacientesBuscador.Close;
end;

procedure TFormPacientes.CDSPacientesID_POSTALSetText(Sender: TField; const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString := Text;
      IF NOT(AsignaLocalida(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo No Válido');
        END;
    end;
end;

procedure TFormPacientes.CDSPacientesNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSPacientesID.Value:= QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSPacientesID.Value:= 1;
  QUltimoCodigo2.Close;


end;

procedure TFormPacientes.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSPacientesID.AsString;
  inherited;
  Recuperar.Execute;

end;

procedure TFormPacientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormPacientes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBDE:=2;
  AddClientDataSet(CDSPacientes,DSPPacientes);
  CDSOSocial.Open;
  CDSPacientes.Open;
  if FormPacientes<>nil then
    btNuevo.SetFocus;
end;

procedure TFormPacientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPacientes:=nil;
end;

procedure TFormPacientes.ObraSociañExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormObraSocial)) then
    FormObraSocial:=TFormObraSocial.Create(Self);
   FormObraSocial.Show;
end;

procedure TFormPacientes.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSPacientes.Close;
  CDSPacientes.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSPacientes.Open;
end;

end.
