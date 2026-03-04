UNIT UGastosCuentas;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList,
  ImgList, StdCtrls, Buttons, ToolWin,
  ComCtrls, ExtCtrls, DBClient, Provider, Mask, DBCtrls,
  Variants, JvComponentBase, JvExControls, JvGradient,
  JvFormPlacement, JvLabel, JvDBControls, JvExMask, JvToolEdit, FMTBcd, SqlExpr,
  UCtaContables, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;
TYPE
  TFormGastosCuentas = CLASS(TFormABMBase)
    DSPBuscadorRubro: TDataSetProvider;
    DSPCta: TDataSetProvider;
    Label1: TLabel;
    dbeMuestraCuenta: TDBEdit;
    Label3: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    BuscarCuenta: TAction;
    rxdcRubro: TJvDBComboEdit;
    QCta: TFDQuery;
    QCtaCODIGO: TStringField;
    QCtaDETALLE: TStringField;
    QCtaCODIGO_RUBRO: TStringField;
    QCtaMUESTRARUBRO: TStringField;
    CDSCta: TClientDataSet;
    CDSCtaCODIGO: TStringField;
    CDSCtaDETALLE: TStringField;
    CDSCtaCODIGO_RUBRO: TStringField;
    CDSCtaMUESTRARUBRO: TStringField;
    QRubro: TFDQuery;
    QRubroCODIGO: TStringField;
    QRubroDETALLE: TStringField;
    QBuscadorRubro: TFDQuery;
    CDSBuscadorRubro: TClientDataSet;
    CDSBuscadorRubroDETALLE: TStringField;
    CDSBuscadorRubroCODIGO: TStringField;
    CDSBuscadorCuenta: TClientDataSet;
    DSPBuscadorCuenta: TDataSetProvider;
    QBuscadorCuentas: TFDQuery;
    FrameCtaContableGastos: TFrameCtaContable;
    QVerificaCodigo: TFDQuery;
    QVerificaCodigoCODIGO: TStringField;
    QUltimoCod: TFDQuery;
    QCtaEXCLUYE: TStringField;
    CDSCtaEXCLUYE: TStringField;
    DBCheckBox1: TDBCheckBox;
    ComBuscadorCtas: TComBuscador;
    QVerifica: TFDQuery;
    PROCEDURE BuscarExecute(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE BuscarCuentaExecute(Sender: TObject);
    PROCEDURE AgregarExecute(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
    procedure CDSCtaCODIGO_RUBROSetText(Sender: TField;
      const Text: String);
    procedure CDSCtaNewRecord(DataSet: TDataSet);
    procedure CDSCtaCODIGOSetText(Sender: TField; const Text: String);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeCodigoExit(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    FUNCTION AsignarRubro(dato: STRING): Boolean;
    { Public declarations }
  END;

VAR
  FormGastosCuentas: TFormGastosCuentas;

IMPLEMENTATION

USES UDMain_FD, DMContableForm;

{$R *.DFM}

FUNCTION TFormGastosCuentas.AsignarRubro(dato: STRING): Boolean;
var N:Integer;
cadena:String;
BEGIN
  QRubro.Close;
  QRubro.ParamByName('Codigo').Value := Dato;
  QRubro.Open;
  if Not(QRubro.IsEmpty) Then
    begin
      if DSBase.State=dsInsert Then
        begin
          QUltimoCodigo2.Close;
          QUltimoCodigo2.ParamByName('rubro').Value:=Dato;
          QUltimoCodigo2.Open;
          if Not(QUltimoCodigo2.IsEmpty) Then
            begin
              if QUltimoCodigo2.Fields[0].AsString<>'' Then
                n:=QUltimoCodigo2.Fields[0].AsInteger+1
              else
                n:=StrToInt(dato+'000');
              Cadena := Copy('00000000000', 1, CDSCtaCODIGO.Size - Length(IntToStr(N))) + IntToStr(N);

              QVerificaCodigo.Close;
              QVerificaCodigo.ParamByName('codigo').Value:=Cadena;
              QVerificaCodigo.Open;

              if QVerificaCodigoCODIGO.AsString<>'' then
                begin
                  QUltimoCod.Close;
                  QUltimoCod.ParamByName('rubro').Value:=Dato;
                  QUltimoCod.Open;
                  if QUltimoCod.Fields[0].AsString<>'' Then
                    n:=QUltimoCod.Fields[0].AsInteger+1
                  else
                    n:=StrToInt(dato+'000');
                  Cadena := Copy('00000000000', 1, CDSCtaCODIGO.Size - Length(IntToStr(N))) + IntToStr(N);

                end;

              ShowMessage('Segun el Rubro elegido se propone el codigo: ' + Cadena);

              CDSCtaCODIGO.Value := Cadena;
            end;
          QUltimoCodigo2.Close;
        end;
      Result := True;
      CDSCtaMUESTRARUBRO.Value := QRubroDETALLE.Value;
      dbeCodigo.SetFocus;
    end
  ELSE
    BEGIN
      Result := False;
      CDSCtaMUESTRARUBRO.Value := '';
    END;
  QRubro.Close;
END;

PROCEDURE TFormGastosCuentas.BuscarExecute(Sender: TObject);
BEGIN
  INHERITED;
  CDSBuscadorCuenta.Close;
  CDSBuscadorCuenta.Open;
  ComBuscadorCtas.Execute;
  if ComBuscadorCtas.Id<>'' Then
    BEGIN
      DatoNew:=ComBuscadorCtas.Id;
      Recuperar.Execute;
    END;
  CDSBuscadorCuenta.Close;
END;

PROCEDURE TFormGastosCuentas.FormCreate(Sender: TObject);
BEGIN
  INHERITED;
  SinBDE:=2;
  AddClientDataSet(CDSCta, DSPCta);
  Tabla:='gastos_cuentas';
  Campo:='codigo';
  CDSCta.Open;
  FrameCtaContableGastos.ceCodigo.Text    :='';
  FrameCtaContableGastos.dbtNombre.Caption:='';
END;

procedure TFormGastosCuentas.BorrarExecute(Sender: TObject);
begin
  QVerifica.close;
  QVerifica.ParamByName('codigo').Value:=CDSCtaCODIGO.Value;
  QVerifica.Open;
  if QVerifica.Fields[0].Value<=0 then
    inherited
  else
    ShowMessage('Cuenta en Uso... no se puede borrar...');
  QVerifica.close;
end;

PROCEDURE TFormGastosCuentas.BuscarCuentaExecute(Sender: TObject);
BEGIN
  INHERITED;
  CDSBuscadorRubro.Close;
  CDSBuscadorRubro.Open;
  ComBuscadorBase.Execute;
  IF (ComBuscadorBase.rOk) THEN
    CDSCtaCODIGO_RUBROSetText(CDSCtaCODIGO_RUBRO,ComBuscadorBase.Id);
  CDSBuscadorRubro.Close;
END;


PROCEDURE TFormGastosCuentas.AgregarExecute(Sender: TObject);
BEGIN
  INHERITED;
  rxdcRubro.SetFocus;
END;


procedure TFormGastosCuentas.dbeCodigoExit(Sender: TObject);
begin
  inherited;
  FrameCtaContableGastos.CodigoElemento:= dbeCodigo.Text;
end;

procedure TFormGastosCuentas.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  FrameCtaContableGastos.Enabled  := DSBase.DataSet.State IN [dsInsert, dsEdit];

end;

PROCEDURE TFormGastosCuentas.FormDestroy(Sender: TObject);
BEGIN
  INHERITED;
  FormGastosCuentas := NIL;
END;

procedure TFormGastosCuentas.FormShow(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  // Contable *************
  FrameCtaContableGastos.Visible       := DMMain_FD.GetUsaContabilidad;
  FrameCtaContableGastos.NombreTabla   := 'gastos_cuentas';
  // **********************
end;

procedure TFormGastosCuentas.CDSCtaCODIGO_RUBROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('000',1,3-length(Text))+text;
  if Not(AsignarRubro(Sender.AsString)) Then
    begin
      ShowMessage('Dato no Válido');
      Sender.AsString:='';
      rxdcRubro.SetFocus;
    end;

end;

procedure TFormGastosCuentas.CDSCtaNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSCtaEXCLUYE.Value:='N';
end;

procedure TFormGastosCuentas.CDSCtaCODIGOSetText(Sender: TField;
  const Text: String);
var n:integer;
begin
  inherited;
  Sender.AsString:=copy('000000',1,6-length(Text))+Text;

  QVerificaCodigo.Close;
  QVerificaCodigo.ParamByName('codigo').Value:=Sender.AsString;
  QVerificaCodigo.Open;

  if QVerificaCodigoCODIGO.AsString<>'' then
    begin
      QUltimoCod.Close;
      QUltimoCod.ParamByName('rubro').Value:=CDSCtaCODIGO_RUBRO.AsString;
      QUltimoCod.Open;
      if QUltimoCod.Fields[0].AsString<>'' Then
        n:=QUltimoCod.Fields[0].AsInteger+1
      else
        n:=StrToInt(CDSCtaCODIGO_RUBRO.AsString+'000');
      Sender.AsString := Copy('00000000000', 1, CDSCtaCODIGO.Size - Length(IntToStr(N))) + IntToStr(N);
    end;
end;

procedure TFormGastosCuentas.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCta.Close;
  CDSCta.Params.ParamByName('Codigo').AsString := DatoNew;
  CDSCta.Open;

  FrameCtaContableGastos.CodigoElemento:= DatoNew;

  if DMMain_FD.GetUsaContabilidad then
    begin
      FrameCtaContableGastos.CDSCtaContable.Close;
      FrameCtaContableGastos.CDSCtaContable.Params.ParamByName('Tabla').AsString := FrameCtaContableGastos.NombreTabla;
      FrameCtaContableGastos.CDSCtaContable.Params.ParamByName('Codigo').AsString:= DatoNew;
      FrameCtaContableGastos.CDSCtaContable.Params.ParamByName('SubIndice').AsString := '';
      FrameCtaContableGastos.CDSCtaContable.Open;
    end;

end;

procedure TFormGastosCuentas.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCtaCODIGO.AsString;
  inherited;
  Recuperar.Execute;
end;

END.
