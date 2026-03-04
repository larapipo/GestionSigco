unit UTarjetaCredito_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBClient, Provider, StdCtrls, Mask, DBCtrls, ActnList,
  ImgList, Buttons, ToolWin, ComCtrls, ExtCtrls,
  Grids, DBGrids, IBGenerator,  Librerias, JvComponentBase, 
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormTCredito_2 = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    dbeCodigo: TDBEdit;
    DSPTCredito: TDataSetProvider;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    dbeArticulo: TDBEdit;
    Label4: TLabel;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    BuscarArticulo: TAction;
    DSPTCreditoCoefecientes: TDataSetProvider;
    CDSCreditoCoeficientes: TClientDataSet;
    DSCreditoCoeficientes: TDataSource;
    CDSCreditoCoeficientesID: TIntegerField;
    CDSCreditoCoeficientesID_TC: TIntegerField;
    IBg_Id: TIBGenerator;
    Label5: TLabel;
    Label7: TLabel;
    dbeNumero: TDBEdit;
    dbeMuestraCta: TDBEdit;
    BuscadorCtaBco: TAction;
    Label6: TLabel;
    dbeDiasAcreditacion: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbeCuit: TDBEdit;
    Label10: TLabel;
    dbeRazonSocial: TDBEdit;
    Label11: TLabel;
    Bevel1: TBevel;
    CDSTCredito: TClientDataSet;
    CDSTCreditoCODIGOARTICULO: TStringField;
    CDSTCreditoID_CUENTA_BANCO: TIntegerField;
    CDSTCreditoCUIT: TStringField;
    CDSTCreditoID_TC: TIntegerField;
    CDSTCreditoDESCRIPCION: TStringField;
    CDSTCreditoMONEDA: TIntegerField;
    CDSTCreditoDIAS_ACREDITACION: TSmallintField;
    CDSTCreditoRAZONSOCIAL: TStringField;
    CDSTCreditoMUESTRAARTICULO: TStringField;
    CDSTCreditoMUESTRACTABCO: TStringField;
    CDSTCreditoMUESTRANROCTABCO: TStringField;
    QTCreditoCoeficientes: TFDQuery;
    QTCreditoCoeficientesID: TIntegerField;
    QTCreditoCoeficientesID_TC: TIntegerField;
    QTCreditoCoeficientesCUOTAS: TIntegerField;
    QTCreditoCoeficientesCOEFICIENTE: TFloatField;
    CDSBuscaTCredito: TClientDataSet;
    DSPBuscaTCredito: TDataSetProvider;
    CDSBuscaCtaBanco: TClientDataSet;
    DSPBuscaCtaBanco: TDataSetProvider;
    CDSBuscaCtaBancoNOMBRE: TStringField;
    CDSBuscaCtaBancoNRO_CUENTA: TStringField;
    CDSCtaCajaBanco: TClientDataSet;
    DSPCtaCajaBanco: TDataSetProvider;
    RxCCta: TJvDBComboEdit;
    CDSCreditoCoeficientesCUOTAS: TIntegerField;
    CDSCreditoCoeficientesCOEFICIENTE: TFloatField;
    CDSBuscaTCreditoID_TC: TIntegerField;
    CDSBuscaTCreditoDESCRIPCION: TStringField;
    CDSBuscaTCreditoMONEDA: TIntegerField;
    CDSBuscaTCreditoCODIGOARTICULO: TStringField;
    CDSBuscaTCreditoRAZONSOCIAL: TStringField;
    dbgCoeficientes: TDBGrid;
    CDSBuscaCtaBancoID_CUENTA: TIntegerField;
    ceCodigo: TJvDBComboEdit;
    ComBuscadorCtas: TComBuscador;
    QMonedas: TFDQuery;
    DSMonedas: TDataSource;
    CDSMonedas: TClientDataSet;
    DSPMonedas: TDataSetProvider;
    CDSMonedasID: TIntegerField;
    CDSMonedasMONEDA: TStringField;
    CDSMonedasCOTIZACION: TFloatField;
    CDSMonedasSIGNO: TStringField;
    CDSMonedasORDEN: TSmallintField;
    CDSMonedasCOTIZACION_COMPRA: TFloatField;
    QCtaCajaBanco: TFDQuery;
    CDSCtaCajaBancoID_CUENTA: TIntegerField;
    CDSCtaCajaBancoID_TIPO_CTA: TIntegerField;
    CDSCtaCajaBancoNOMBRE: TStringField;
    CDSCtaCajaBancoNRO_CUENTA: TStringField;
    CDSCtaCajaBancoID_BANCO: TIntegerField;
    CDSCtaCajaBancoCUIT: TStringField;
    CDSCtaCajaBancoRAZONSOCIAL: TStringField;
    QVerificaUso: TFDQuery;
    Label12: TLabel;
    CDSTCreditoORDEN: TIntegerField;
    CDSTCreditoVISIBLE: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBEdit1: TDBEdit;
    Label13: TLabel;
    SpeedButton1: TSpeedButton;
    Ordenar: TAction;
    procedure BuscarExecute(Sender: TObject);
    procedure CDSTCreditoNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSTCreditoCODIGOARTICULOSetText(Sender: TField;
      const Text: String);
    procedure CDSCreditoCoeficientesNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscadorCtaBcoExecute(Sender: TObject);
    procedure CDSTCreditoID_CUENTA_BANCOSetText(Sender: TField;
      const Text: String);
    procedure CDSTCreditoCUITSetText(Sender: TField; const Text: string);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BorrarExecute(Sender: TObject);
    procedure OrdenarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsginarArticulo(Dato:String):Boolean;
    FUNCTION AsignaCta(dato: Integer): Boolean;
  end;

var
  FormTCredito_2: TFormTCredito_2;

implementation

uses UDMain_FD,DMBuscadoresForm,UBuscadorArticulos, UOdenTarjetasC;

{$R *.DFM}

function TFormTCredito_2.AsginarArticulo(Dato:String):Boolean;
begin
  CDSStock.Close;
  CDSStock.Params.ParamByName('codigo').Value:=dato;
  CDSStock.Open;
  if CDSStockCODIGO_STK.AsString<>'' Then
    begin
      Result:=True;
      CDSTCreditoMUESTRAARTICULO.Value:=CDSStockDETALLE_STK.Value;
      CDSTCreditoCODIGOARTICULO.Value :=CDSStockCODIGO_STK.Value;
    end
  else
    begin
      Result:=False;
      CDSTCreditoMUESTRAARTICULO.Value:='';
      CDSTCreditoCODIGOARTICULO.Value :='';
    end
end;

FUNCTION TFormTCredito_2.AsignaCta(dato: Integer): Boolean;
begin
  CDSCtaCajaBanco.Close;
  CDSCtaCajaBanco.Params.ParamByName('id').Value := Dato;
  CDSCtaCajaBanco.Open;
  IF NOT (CDSCtaCajaBanco.IsEmpty) and (CDSCtaCajaBancoID_TIPO_CTA.Value=2) THEN
    BEGIN
      Result := True;
      CDSTCreditoMUESTRANROCTABCO.Value   := CDSCtaCajaBancoNRO_CUENTA.Value;
      CDSTCreditoMUESTRACTABCO.Value      := CDSCtaCajaBancoNOMBRE.Value;
    END
  ELSE
    begin
      Result := False;
      CDSTCreditoMUESTRANROCTABCO.Value   := '';
      CDSTCreditoMUESTRACTABCO.Value      := '';
    end;
  CDSCtaCajaBanco.Close;
END;


procedure TFormTCredito_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaTCredito.Close;
  CDSBuscaTCredito.Open;
  ComBuscadorBase.Execute;
  IF ComBuscadorBase.rOk THEN
    BEGIN
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    END;
  CDSBuscaTCredito.Close;
end;

procedure TFormTCredito_2.CDSTCreditoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSTCreditoID_TC.Value := QUltimoCodigo2.Fields[0].Value + 1
  else
    CDSTCreditoID_TC.Value          := 1;
  CDSTCreditoDIAS_ACREDITACION.Value:= 1;
  CDSTCreditoMONEDA.Value           := 1;
  CDSTCreditoVISIBLE.Value          :='S';
  CDSTCreditoORDEN.Value            :=-1;
  QUltimoCodigo2.Close;

end;

procedure TFormTCredito_2.ceCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTCreditoCODIGOARTICULO.Clear;
      CDSTCreditoMUESTRAARTICULO.Clear;
    end;
  
end;

procedure TFormTCredito_2.AgregarExecute(Sender: TObject);
begin
  CDSTCredito.Close;
  CDSTCredito.Params.ParamByName('Id').Clear;
  CDSTCredito.Open;
  CDSCreditoCoeficientes.Close;
  CDSCreditoCoeficientes.Params.ParamByName('id').Clear;
  CDSCreditoCoeficientes.Open;
  inherited;

  dbeNombre.SetFocus;
end;

procedure TFormTCredito_2.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormTCredito_2.OrdenarExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormOrdenTC)) then
    FormOrdenTC:=TFormOrdenTC.Create(Self);
  FormOrdenTC.ShowModal;
  FreeAndNil(FormOrdenTC);

end;

procedure TFormTCredito_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSTCredito, DSPTCredito);
  AddClientDataSet(CDSCreditoCoeficientes,DSPTCreditoCoefecientes);
  CDSMonedas.Open;
  Tabla:='t_credito';
  Campo:='id_tc';
  CDSTCredito.Open;
  CDSCreditoCoeficientes.Open;
end;

procedure TFormTCredito_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSTCredito.Close;
  CDSMonedas.Close;
  Action:=caFree;
end;

procedure TFormTCredito_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTCredito_2:=nil;
end;

procedure TFormTCredito_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTCredito.Close;
  CDSTCredito.Params.ParamByName('Id').Value := StrToInt(DatoNew);
  CDSTCredito.Open;
  CDSCreditoCoeficientes.Close;
  CDSCreditoCoeficientes.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSCreditoCoeficientes.Open;
  
end;

procedure TFormTCredito_2.RxCCtaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTCreditoID_CUENTA_BANCO.Clear;
      CDSTCreditoMUESTRACTABCO.Clear;
      CDSTCreditoMUESTRANROCTABCO.Clear;
    end;

end;

procedure TFormTCredito_2.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1      := 1;
  FormBuscadorArticulos.Param2      := 3;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    CDSTCreditoCODIGOARTICULOSetText(CDSTCreditoCODIGOARTICULO,FormBuscadorArticulos.Codigo);
end;

procedure TFormTCredito_2.CDSTCreditoCODIGOARTICULOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:=copy('000000000',1,8-length(Text))+Text;
      if Not(AsginarArticulo(Sender.AsString)) Then
        begin
          Sender.Clear;
          ShowMessage('Codigo no Valido...');
        end;
    end;
end;

procedure TFormTCredito_2.CDSTCreditoCUITSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (text<>'') and (text<>#13) then
    begin
      Sender.AsString:=text;
      if ValidarCuit(Sender.asString)=False Then
        Sender.AsString:='';
    end;
end;

procedure TFormTCredito_2.CDSCreditoCoeficientesNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSCreditoCoeficientesID_TC.Value      := CDSTCreditoID_TC.Value;
  CDSCreditoCoeficientesID.Value         := IBg_Id.IncrementFD(1);
  CDSCreditoCoeficientesCOEFICIENTE.AsFloat:= 1;
end;

procedure TFormTCredito_2.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSTCreditoID_TC.AsString;
  if CDSTCreditoMONEDA.AsString='' then
    Raise Exception.Create('no se indico tipo de moneda...');
  if CDSCreditoCoeficientes.IsEmpty then
    begin
      CDSCreditoCoeficientes.Append;
      CDSCreditoCoeficientesCUOTAS.Value:=1;

      CDSCreditoCoeficientes.Post;
    end;
  inherited;
  Recuperar.Execute;
end;

procedure TFormTCredito_2.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  dbgCoeficientes.ReadOnly:= DSBase.State in [dsBrowse];
end;

procedure TFormTCredito_2.BorrarExecute(Sender: TObject);
begin
  QVerificaUso.Close;
  QVerificaUso.ParamByName('id_tc').Value:=DSBase.DataSet.FieldByName('id_tc').Value;
  QVerificaUso.Open;
  if QVerificaUso.Fields[0].AsInteger>0 then
    begin
      ShowMessage('Tarjeta en uso no se puede borrar...');
      DSBase.DataSet.Cancel;
      sysutils.Abort;
    end
  else
    inherited;
  QVerificaUso.Close;
end;

procedure TFormTCredito_2.BuscadorCtaBcoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCtaBanco.Close;
  CDSBuscaCtaBanco.Open;
  ComBuscadorCtas.Execute;
  IF comBuscadorCtas.rOk THEN
    CDSTCreditoID_CUENTA_BANCOSetText(CDSTCreditoID_CUENTA_BANCO,IntToStr(comBuscadorCtas.id));
  CDSBuscaCtaBanco.Close;

end;

procedure TFormTCredito_2.CDSTCreditoID_CUENTA_BANCOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignaCta(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato no válido...');
          Sender.Clear;
        end
    end;
end;

end.