unit USubRubro_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient,  Provider, Db, StdCtrls, Mask, DBCtrls,
  ActnList, ImgList, Buttons, ToolWin, ComCtrls,
  ExtCtrls, JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, Grids, DBGrids, DBXCommon,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, StrUtils;

type
  TFormSubRubros_2 = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    dbeCodigo: TDBEdit;
    Label3: TLabel;
    DSPSubRubro: TDataSetProvider;
    BuscarRubro: TAction;
    CDSSubRubro: TClientDataSet;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroCODIGO_RUBRO: TStringField;
    CDSSubRubroCONTROL_SUBRUBRO: TStringField;
    CDSSubRubroMUESTRARUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaRubro: TClientDataSet;
    CDSBuscaRubroCODIGO_RUBRO: TStringField;
    CDSBuscaRubroDETALLE_RUBRO: TStringField;
    RxDBCRubro: TJvDBComboEdit;
    ReCodificar: TAction;
    spRecodifica: TSpeedButton;
    Stock: TAction;
    SpeedButton1: TSpeedButton;
    TransferenciaXML: TAction;
    ComBuscadorRubro: TComBuscador;
    seRubro: TDBAdvSearchEdit;
    DSBuscaRubro: TDataSource;
    QSubRubro: TFDQuery;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QSubRubroCODIGO_RUBRO: TStringField;
    QSubRubroCONTROL_SUBRUBRO: TStringField;
    QSubRubroFUERA_PROMO: TStringField;
    QSubRubroMUESTRARUBRO: TStringField;
    QExiste: TFDQuery;
    QControlUso: TFDQuery;
    spRecodificarSubRubro: TFDStoredProc;
    spCambiarRubroStock: TFDStoredProc;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QRubroCONTROL_RUBRO: TStringField;
    QRubroFUERA_PROMO: TStringField;
    QRubroORDEN: TIntegerField;
    QControlUsoCOUNT: TLargeintField;
    procedure CDSSubRubroCODIGO_SUBRUBROSetText(Sender: TField;
      const Text: String);
    procedure CDSSubRubroCODIGO_RUBROSetText(Sender: TField;
      const Text: String);
    procedure BuscarRubroExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBCRubroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSSubRubroCODIGO_SUBRUBROValidate(Sender: TField);
    procedure BorrarExecute(Sender: TObject);
    procedure ReCodificarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure StockExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure seRubroSelect(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    CodigoSecuencial,CodigoAlfa :String;
    Codigo,Detalle,Nuevo:string;
    FUNCTION AsignaRubro(dato: STRING): boolean;

    { Public declarations }
  end;

var
  FormSubRubros_2: TFormSubRubros_2;

implementation

uses UDMain_FD,DMBuscadoresForm, UBuscadorSubRubrosStock, UReemplazoSubRubro,
  UMuestraArtPorSubRub;

{$R *.DFM}

FUNCTION TFormSubRubros_2.AsignaRubro(dato: STRING): boolean;
var
  CodAct: Integer;
BEGIN
  QRubro.Close;
  QRubro.ParamByName('CodigoRubro').Value := dato;
  QRubro.Open;
  IF NOT (QRubro.IsEmpty) THEN
    BEGIN
      result := True;
      CDSSubRubroMUESTRARUBRO.Value := QRubroDETALLE_RUBRO.Value;
      QUltimoCodigo2.Close;
      QUltimoCodigo2.ParamByName('rubro').Value:= Dato;
      QUltimoCodigo2.Open;
      if Not(QUltimoCodigo2.IsEmpty) and (QUltimoCodigo2.Fields[0].AsString<>'') and (TryStrToInt(QUltimoCodigo2.Fields[0].AsString,CodAct)) Then
        CDSSubRubroCODIGO_SUBRUBRO.Text :=  RightStr( '00000' + IntToStr(CodAct+1), 5)
      else
        CDSSubRubroCODIGO_SUBRUBRO.Text :=  RightStr( '00000' + Dato+'00', 5);

      QUltimoCodigo2.Close;
    END
  ELSE
    result := False;
  QRubro.Close;

END;

procedure TFormSubRubros_2.CDSSubRubroCODIGO_SUBRUBROSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString := Copy('000000', 1, Sender.Size - Length(Text)) + Text;
end;

procedure TFormSubRubros_2.CDSSubRubroCODIGO_RUBROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Copy('000000', 1, Sender.Size - Length(Text)) + Text;
  IF NOT (AsignaRubro(Sender.AsString)) THEN
    BEGIN
      ShowMessage('Codigo no válido');
      Sender.AsString := '';
      RxDBCRubro.SetFocus;
    END
  else
    if CodigoAlfa='N' Then
      dbeNombre.SetFocus
    else
      dbeCodigo.SetFocus;  
end;

procedure TFormSubRubros_2.BuscarRubroExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaRubro.Close;
  CDSBuscaRubro.Open;
  comBuscadorRubro.Execute;
  IF comBuscadorRubro.rOk THEN
    CDSSubRubroCODIGO_RUBROSetText(CDSSubRubroCODIGO_RUBRO, comBuscadorRubro.Id);
//  CDSBuscaRubro.Close;
end;

procedure TFormSubRubros_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSSubRubro,DSPSubRubro);
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=True;
 // Veo si se cargan codigo Alfanumericos y si son secuenciales
  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='ALFA';
  DMMain_FD.QOpciones.Open;
  CodigoAlfa:=Trim(DMMain_FD.QOpciones.Fields[0].AsString[1]);
  DMMain_FD.QOpciones.CLose;
  Tabla:='SubRubros';
  Campo:='CODIGO_SUBRUBRO';
  CDSBuscaRubro.Open;
  CDSSubRubro.Open;
end;

procedure TFormSubRubros_2.BorrarExecute(Sender: TObject);
var
  MyClass: TObject;
begin
  Nuevo:='B';
  QControlUso.Close;
  QControlUso.ParamByName('rubro').Value:=CDSSubRubroCODIGO_SUBRUBRO.Value;
  QControlUso.Open;
  if QControlUso.Fields[0].Value<=0 then
    begin
      inherited;
    end
  else
    begin
      if MessageDlg('Codigo usado en stock... Igual quiere borrarlo?..'+#13+
                    'Primero deberá indicar el reemplazo para asignar en los artículos...',mtConfirmation,mbYesNo,0)=mrYes Then
        begin
          if Not(Assigned(FormRemplazoSubRubro)) then
            FormRemplazoSubRubro:=TFormRemplazoSubRubro.Create(Self);
          FormRemplazoSubRubro.Rubro:=CDSSubRubroCODIGO_RUBRO.AsString;
          FormRemplazoSubRubro.ShowModal;
          if FormRemplazoSubRubro.ModalResult=mrOk then
            begin
              DMMain_FD.fdcGestion.StartTransaction;
              try
                spCambiarRubroStock.Close;
                spCambiarRubroStock.ParamByName('SubRubroNew').AsString := FormRemplazoSubRubro.SubRubro;
                spCambiarRubroStock.ParamByName('SubRubroOld').AsString := CDSSubRubroCODIGO_SUBRUBRO.AsString;
                spCambiarRubroStock.ParamByName('RubroOld').AsString    := CDSSubRubroCODIGO_RUBRO.AsString;
                spCambiarRubroStock.ParamByName('RubroNew').AsString    := FormRemplazoSubRubro.Rubro;
                spCambiarRubroStock.ExecProc;
                spCambiarRubroStock.Close;
                CDSSubRubro.Delete;
                CDSSubRubro.ApplyUpdates(0);
                DMMain_FD.fdcGestion.Commit;
              Except
                DMMain_FD.fdcGestion.Rollback;
                ShowMessage('No se realizo la Operación...');
              end;
            end;
        end;

    end;
end;

procedure TFormSubRubros_2.BuscarExecute(Sender: TObject);
begin
  inherited;
   if Not(Assigned(FormBuscadorSubRubroStock)) then
    FormBuscadorSubRubroStock:=TFormBuscadorSubRubroStock.Create(Application);
   FormBuscadorSubRubroStock.ShowModal;
   if (FormBuscadorSubRubroStock.ModalResult=mrOk) and (FormBuscadorSubRubroStock.Codigo<>'') then
     BEGIN
       DatoNew:= FormBuscadorSubRubroStock.Codigo;
       Recuperar.Execute;
     END;
end;

procedure TFormSubRubros_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  Nuevo:='A';
  RxDBCRubro.SetFocus;
end;

procedure TFormSubRubros_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Not(DSBase.DataSet.IsEmpty) then
    begin
      Codigo :=CDSSubRubroCODIGO_SUBRUBRO.AsString;
      Detalle:=CDSSubRubroDETALLE_SUBRUBRO.AsString;
    end;
  inherited;
  CDSSubRubro.Close;
  CDSBuscaRubro.Close;
  Action:=caFree;
end;

procedure TFormSubRubros_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormSubRubros_2:=nil;
end;

procedure TFormSubRubros_2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) and (ActiveControl = dbeNombre) then
    btConfirma.SetFocus;

end;

procedure TFormSubRubros_2.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormSubRubros_2.ModificarExecute(Sender: TObject);
begin
  inherited;
  Nuevo:='M';
end;

procedure TFormSubRubros_2.RxDBCRubroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSSubRubroCODIGO_SUBRUBRO.Clear;
      CDSSubRubroCODIGO_RUBRO.Clear;
      CDSSubRubroMUESTRARUBRO.Clear;
    end;

end;

procedure TFormSubRubros_2.seRubroSelect(Sender: TObject);
begin
  inherited;
  CDSSubRubroCODIGO_RUBRO.Text    :=  seRubro.SearchList.SelectedItem.Captions[0];
end;

procedure TFormSubRubros_2.StockExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSSubRubro.IsEmpty) and (DSBase.State =dsBrowse) then
    begin
      if Not(Assigned(FormMuestraArtPorSubRubros)) then
        FormMuestraArtPorSubRubros := TFormMuestraArtPorSubRubros.Create(self);
      FormMuestraArtPorSubRubros.Rubro   := CDSSubRubroCODIGO_RUBRO.Value;
      FormMuestraArtPorSubRubros.SubRubro:= CDSSubRubroCODIGO_SUBRUBRO.Value;
      FormMuestraArtPorSubRubros.ShowModal;
    end;
end;

procedure TFormSubRubros_2.ConfirmaExecute(Sender: TObject);
Var Existe:Boolean;
begin
  Existe:=False;
  if DSBase.State=dsInsert Then
    begin
      QExiste.Close;
      QExiste.ParamByName('codigo').Value:=CDSSubRubroCODIGO_SUBRUBRO.Value;
      QExiste.Open;
      Existe:= QExiste.Fields[0].AsString<>''
    end;
  if Existe=False Then
    begin
      DatoNew:=CDSSubRubroCODIGO_SUBRUBRO.Value;
      if (CDSSubRubroCODIGO_SUBRUBRO.Value<>'') and
         (CDSSubRubroCODIGO_RUBRO.Value<>'') and
         (CDSSubRubroMUESTRARUBRO.Value<>'') and
         (CDSSubRubroDETALLE_SUBRUBRO.Value<>'') Then
           begin
             inherited;
             Recuperar.Execute;
             btNuevo.SetFocus;
           end
      else
        begin
          ShowMessage('Datos Incompletos');
          dbeNombre.SetFocus;
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

procedure TFormSubRubros_2.DSBaseStateChange(Sender: TObject);
begin
  inherited;
   ReCodificar.Enabled:=DSBase.State=dsBrowse;
end;

procedure TFormSubRubros_2.ReCodificarExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      if MessageDlg('Va a generar una recodificación de SubRubros... puede tardar un tiempo, esta seguro?',mtInformation,mbYesNo,0)=mrYes then
        begin
          Screen.Cursor:=crHourGlass;
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spRecodificarSubRubro.Close;
            spRecodificarSubRubro.ExecProc;
            DMMain_FD.fdcGestion.Commit;
            spRecodificarSubRubro.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se realizó la operación de re-codificación..');
          end;
          Screen.Cursor:=crDefault;
        end;
    end
  else
    ShowMessage('No esta auotirzado para esta operación de re-codificación..');
  Screen.Cursor:=crDefault;

end;

procedure TFormSubRubros_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('CodigoSubRubro').Value := DatoNew;
  CDSSubRubro.Open;
  DatoNew:=''+DatoNew+'';
end;

procedure TFormSubRubros_2.CDSSubRubroCODIGO_SUBRUBROValidate(
  Sender: TField);
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
