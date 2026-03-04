unit URubro_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBClient, Provider, StdCtrls, Mask, DBCtrls,
  ActnList, ImgList, Buttons, ToolWin,
  ComCtrls, ExtCtrls, JvComponentBase, JvExControls, JvGradient, JvButton,
  JvTransparentButton, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  DBXCommon, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormRubro_2 = class(TFormABMBase)
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    DSPRubro: TDataSetProvider;
    CDSRubro: TClientDataSet;
    CDSBuscaRubro: TClientDataSet;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaRubroDETALLE_RUBRO: TStringField;
    CDSBuscaRubroCODIGO_RUBRO: TStringField;
    Recodificar: TAction;
    spRecodifica: TSpeedButton;
    DSBuscaRubro: TDataSource;
    QExiste: TFDQuery;
    spRecodificarRubro: TFDStoredProc;
    QControlUso: TFDQuery;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSRubroCONTROL_RUBRO: TStringField;
    CDSRubroFUERA_PROMO: TStringField;
    CDSRubroORDEN: TIntegerField;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QRubroCONTROL_RUBRO: TStringField;
    QRubroFUERA_PROMO: TStringField;
    QRubroORDEN: TIntegerField;
    QControlUsoCOUNT: TLargeintField;

    procedure CDSRubroNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSRubroCODIGO_RUBROSetText(Sender: TField;
      const Text: String);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSRubroCODIGO_RUBROValidate(Sender: TField);
    procedure BorrarExecute(Sender: TObject);
    procedure RecodificarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    CodigoAlfa:String;
    Codigo,Detalle:string;
    Nuevo:String;
    { Public declarations }
  end;

var
  FormRubro_2: TFormRubro_2;

implementation

uses DMBuscadoresForm,UDMain_FD, UBuscador;

{$R *.DFM}

procedure TFormRubro_2.CDSRubroNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if CodigoAlfa='N' Then
    begin
      if QUltimoCodigo2.Fields[0].AsString='' Then
        CDSRubroCODIGO_RUBROSetText(CDSRubroCODIGO_RUBRO,'1')
      else
        CDSRubroCODIGO_RUBROSetText(CDSRubroCODIGO_RUBRO,IntToStr(QUltimoCodigo2.Fields[0].AsInteger + 1));
    end
  else
    CDSRubroCODIGO_RUBROSetText(CDSRubroCODIGO_RUBRO,QUltimoCodigo2.Fields[0].AsString);
  CDSRubroCONTROL_RUBRO.Value:= 'N';
  CDSRubroFUERA_PROMO.Value  := 'S';
  CDSRubroORDEN.Value        := -1;
  QUltimoCodigo2.Close;
end;

procedure TFormRubro_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  Nuevo:='A';
  dbeCodigo.SetFocus;
  dbeCodigo.SelectAll;
end;

procedure TFormRubro_2.ConfirmaExecute(Sender: TObject);
var Existe:Boolean;
begin
  Existe:=False;
  if DSBase.State=dsInsert Then
    begin
      QExiste.Close;
      QExiste.ParamByName('codigo').Value:=CDSRubroCODIGO_RUBRO.Value;
      QExiste.Open;
      Existe:= QExiste.Fields[0].AsString<>''
    end;
  if Existe=False Then
    begin
      if (CDSRubroCODIGO_RUBRO.Value<>'') and (CDSRubroDETALLE_RUBRO.Value<>'') Then
        begin
          DatoNew:=CDSRubroCODIGO_RUBRO.AsString;
          if CDSRubro.State <> dsBrowse Then
             CDSRubro.Post;
          inherited;
          Recuperar.Execute;
//            TransferenciaXML.Execute;
          btNuevo.SetFocus;
        end
      else
        begin
          ShowMessage('Faltan datos...');
          dbeCodigo.SetFocus;
        end;
    end
  else
    begin
      ShowMessage('Codigo en Uso...');
      dbeCodigo.SetFocus;
      dbeCodigo.SelectAll;
    end;
  QExiste.Close;
end;

procedure TFormRubro_2.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  ReCodificar.Enabled:=DSBase.State=dsBrowse;
  if DMMain_FD.UsuarioAdministrador=False then
    ReCodificar.Enabled:=False;

end;

procedure TFormRubro_2.BorrarExecute(Sender: TObject);
begin
  Nuevo:='B';
  QControlUso.Close;
  QControlUso.ParamByName('rubro').Value:=CDSRubroCODIGO_RUBRO.Value;
  QControlUso.Open;
  if QControlUso.Fields[0].Value<=0 then
    begin
      inherited;
    end
  else
    ShowMessage('Codigo usado en stock....');
end;

procedure TFormRubro_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaRubro.Close;
  CDSBuscaRubro.Open;
  ComBuscadorbASE.Execute;
  if ComBuscadorbASE.rOk then
    BEGIN
      DatoNew := ComBuscadorBase.Id;
      Recuperar.Execute;
    END;
  CDSBuscaRubro.Close;
end;

procedure TFormRubro_2.CDSRubroCODIGO_RUBROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Copy('000000', 1, Sender.Size - length(Text)) + Text
end;

procedure TFormRubro_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRubro_2:=nil;
end;

procedure TFormRubro_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AddClientDataSet(CDSRubro,DSPRubro);
  Tabla:='rubros';
  Campo:='CODIGO_RUBRO';
 // Veo si se cargan codigo Alfanumericos y si son secuenciales
  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='ALFA';
  DMMain_FD.QOpciones.Open;
  CodigoAlfa:= Trim(DMMain_FD.QOpciones.Fields[0].AsString[1]);
  DMMain_FD.QOpciones.CLose;
  CDSRubro.Open;
end;

procedure TFormRubro_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if Not(DSBase.DataSet.IsEmpty) then
    begin
      Codigo :=CDSRubroCODIGO_RUBRO.AsString;
      Detalle:=CDSRubroDETALLE_RUBRO.AsString;
    end;
  CDSRubro.Close;
  Action:=caFree;
  inherited;
end;

procedure TFormRubro_2.RecodificarExecute(Sender: TObject);
begin
  inherited;
  if  DMMain_FD.UsuarioAdministrador then
    if MessageDlg('Va a generar una recodificación de Rubro... puede tardar un tiempo, esta seguro?',mtInformation,mbYesNo,0)=mrOk then
      begin
        DMMain_FD.fdcGestion.StartTransaction;
        try
          spRecodificarRubro.Close;
          spRecodificarRubro.ExecProc;
          DMMain_FD.fdcGestion.Commit;
          spRecodificarRubro.Close;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se realizó la operación de re-codificación..');
        end;
      end;
end;

procedure TFormRubro_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRubro.Close;
  CDSRubro.Params.ParamByName('CodigoRubro').Value := DatoNew;
  CDSRubro.Open;
  DatoNew:=''+DatoNew+'';
end;


procedure TFormRubro_2.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormRubro_2.ModificarExecute(Sender: TObject);
begin
  inherited;
  Nuevo:='M';
end;

procedure TFormRubro_2.CDSRubroCODIGO_RUBROValidate(Sender: TField);
VAR S:String; I:Integer;
begin
  inherited;
  S:=Sender.AsString;
  if S<>'' Then
  for I:= 1 to Length(s) do
    if Not(S[i] in ['0'..'9']) and (CodigoAlfa='N') Then
      RAISE Exception.Create('Caracteres no Válidos...');
end;

end.