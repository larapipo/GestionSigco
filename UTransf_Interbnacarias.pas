unit UTransf_Interbnacarias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DBCtrls, StdCtrls, Mask,
  JvComponentBase, ImgList, DB,
    ActnList, ComCtrls, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, Provider, DBClient, IBGenerator, JvFormPlacement, JvLabel,
  Data.FMTBcd, JvDBControls, JvExMask, JvToolEdit, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvSmoothButton;

type
  TFormTransferenciasInterbancarias = class(TFormABMBase)
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    dbeMuestraCtaBco: TDBEdit;
    dbeNumero: TDBEdit;
    dbeMuestraNumeroCta: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    BuscadorCta: TAction;
    DSPTx: TDataSetProvider;
    CDSTx: TClientDataSet;
    CDSTxID: TIntegerField;
    CDSTxID_CTA_CAJA_DESDE: TIntegerField;
    CDSTxNUMERO: TStringField;
    CDSTxTIPO: TStringField;
    CDSTxCLASE: TStringField;
    CDSTxNOMBRE_CTA_DESDE: TStringField;
    CDSTxNOMBRE_CTA_HASTA: TStringField;
    CDSTxNRO_CTA_DESDE: TStringField;
    CDSTxNRO_CTA_HASTA: TStringField;
    CDSTxID_CTA_CAJA_HASTA: TIntegerField;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    IBId: TIBGenerator;
    dbDFecha: TJvDBDateEdit;
    dbcCtaDesde: TJvDBComboEdit;
    dbcCtaHasta: TJvDBComboEdit;
    CDSTxFECHA: TSQLTimeStampField;
    CDSBuscadorTx: TClientDataSet;
    DSPBuscadorTx: TDataSetProvider;
    CDSBuscadorTxID: TIntegerField;
    CDSBuscadorTxNUMERO: TStringField;
    CDSBuscadorTxNOMBRE_CTA_DESDE: TStringField;
    CDSBuscadorTxNOMBRE_CTA_HASTA: TStringField;
    CDSBuscadorTxFECHA: TSQLTimeStampField;
    CDSBuscadorCta: TClientDataSet;
    DSPBuscadorCta: TDataSetProvider;
    CDSBuscadorCtaID_CUENTA: TIntegerField;
    CDSBuscadorCtaNOMBRE: TStringField;
    CDSBuscadorCtaNRO_CUENTA: TStringField;
    ComBuscadorCta: TComBuscador;
    QTx: TFDQuery;
    QTxID: TIntegerField;
    QTxID_CTA_CAJA_DESDE: TIntegerField;
    QTxID_CTA_CAJA_HASTA: TIntegerField;
    QTxNUMERO: TStringField;
    QTxIMPORTE: TFloatField;
    QTxTIPO: TStringField;
    QTxCLASE: TStringField;
    QTxNOMBRE_CTA_DESDE: TStringField;
    QTxNOMBRE_CTA_HASTA: TStringField;
    QTxFECHA: TSQLTimeStampField;
    QTxNRO_CTA_DESDE: TStringField;
    QTxNRO_CTA_HASTA: TStringField;
    CDSTxIMPORTE: TFloatField;
    QBuscadorCta: TFDQuery;
    QBuscadorTx: TFDQuery;
    CDSBuscadorTxIMPORTE: TFloatField;
    QCtaBco: TFDQuery;
    QCtaBcoID_CUENTA: TIntegerField;
    QCtaBcoID_TIPO_CTA: TIntegerField;
    QCtaBcoNOMBRE: TStringField;
    QCtaBcoNRO_CUENTA: TStringField;
    QCtaBcoID_BANCO: TIntegerField;
    QCtaBcoCUIT: TStringField;
    QCtaBcoRAZONSOCIAL: TStringField;
    QCtaBcoMUESTRABANCO: TStringField;
    procedure BuscadorCtaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSTxID_CTA_CAJA_DESDESetText(Sender: TField; const Text: string);
    procedure CDSTxID_CTA_CAJA_HASTASetText(Sender: TField; const Text: string);
    procedure CDSTxNUMEROSetText(Sender: TField; const Text: string);
    procedure CDSTxNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarCtaBco(cual:byte;dato:Integer):Boolean;
  end;

var
  FormTransferenciasInterbancarias: TFormTransferenciasInterbancarias;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormTransferenciasInterbancarias.AgregarExecute(Sender: TObject);
begin
  CDSTx.Close;
  CDSTx.Params.ParamByName('id').Clear;
  CDSTx.Open;
  inherited;
  dbcCtaDesde.SetFocus;
end;

function TFormTransferenciasInterbancarias.AsignarCtaBco(cual:byte;dato:Integer):Boolean;
begin
  QCtaBco.Close;
  QCtaBco.ParamByName('id').Value:=Dato;
  QCtaBco.Open;
  if not(QCtaBco.IsEmpty) Then
    begin
      Result:=True;
      if cual=0 Then
        begin
          CDSTxID_CTA_CAJA_DESDE.Value := Dato;
          CDSTxNOMBRE_CTA_DESDE.Value  := QCtaBcoNOMBRE.Value;
          CDSTxNRO_CTA_DESDE.Value     := QCtaBcoNRO_CUENTA.Value;
        end
      else
        if cual=1 Then
          begin
            CDSTxID_CTA_CAJA_HASTA.Value := Dato;
            CDSTxNOMBRE_CTA_HASTA.Value  := QCtaBcoNOMBRE.Value;
            CDSTxNRO_CTA_HASTA.Value     := QCtaBcoNRO_CUENTA.Value;
          end;
    end
  else
    begin
      Result:=False;
      if cual=0 Then
        begin
          CDSTxID_CTA_CAJA_DESDE.Clear;
          CDSTxNOMBRE_CTA_DESDE.Clear;
          CDSTxNRO_CTA_DESDE.Clear;
        end
      else
        if cual=1 Then
          begin
            CDSTxID_CTA_CAJA_HASTA.Clear;
            CDSTxNOMBRE_CTA_HASTA.Clear;
            CDSTxNRO_CTA_HASTA.Clear;
          end;
    end
end;



procedure TFormTransferenciasInterbancarias.BuscadorCtaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCta.Close;
  CDSBuscadorCta.Open;
  comBuscadorCta.Execute;
  if comBuscadorCta.rOk Then
    begin
      if (Sender as TJvDBComboEdit).Name='dbcCtaDesde' then
        CDSTxID_CTA_CAJA_DESDESetText(CDSTxID_CTA_CAJA_DESDE,IntToStr(comBuscadorCta.id))
      else
        if (Sender as TJvDBComboEdit).Name='dbcCtaHasta' then
          CDSTxID_CTA_CAJA_HASTASetText(CDSTxID_CTA_CAJA_HASTA,IntToStr(comBuscadorCta.Id));
    end;
  CDSBuscadorCta.Close;
end;

procedure TFormTransferenciasInterbancarias.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorTx.Close;
  CDSBuscadorTx.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscadorTx.Close;
end;

procedure TFormTransferenciasInterbancarias.CancelarExecute(Sender: TObject);
begin
  CDSTx.Close;
  CDSTx.Params.ParamByName('id').Clear;
  CDSTx.Open;
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormTransferenciasInterbancarias.CDSTxID_CTA_CAJA_DESDESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (text<>#13) then
    begin
      Sender.AsString:=Text;
      if Not(AsignarCtaBco(0,Sender.AsInteger)) then
        begin
          Sender.Clear;
          ShowMessage('Dato No Valido');
        end;
    end;
end;

procedure TFormTransferenciasInterbancarias.CDSTxID_CTA_CAJA_HASTASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (text<>#13) then
    begin
      Sender.AsString:=Text;
      if Not(AsignarCtaBco(1,Sender.AsInteger)) then
        begin
          Sender.Clear;
          ShowMessage('Dato No Valido');
        end;
    end;

end;

procedure TFormTransferenciasInterbancarias.CDSTxNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSTxID.Value        := IBId.IncrementFD(1);
  CDSTxTIPO.Value      :='TI';
  CDSTxCLASE.Value     :='TI';

  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSTxNUMEROSetText(CDSTxNUMERO,IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1))
  else
    CDSTxNUMEROSetText(CDSTxNUMERO,'1');
  QUltimoCodigo2.Close;

  CDSTxFECHA.AsDateTime:= Date;
  CDSTxIMPORTE.AsFloat := 0;


end;

procedure TFormTransferenciasInterbancarias.CDSTxNUMEROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=copy('00000000',1,Sender.Size-length(Text))+Text;
end;

procedure TFormTransferenciasInterbancarias.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=IntToStr(CDSTxID.Value);
  if (CDSTxID_CTA_CAJA_DESDE.Value=CDSTxID_CTA_CAJA_HASTA.Value) then
    Raise Exception.Create('Las Ctas deben ser diferentes...');
  if (CDSTxID_CTA_CAJA_DESDE.AsString='') then
    Raise Exception.Create('Falta Indicar Desde...');
  if (CDSTxID_CTA_CAJA_HASTA.AsString='') then
    Raise Exception.Create('Falta Indicar Hacias...');
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormTransferenciasInterbancarias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormTransferenciasInterbancarias.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize :=True;
  SinBDE   :=2;
  AddClientDataSet(CDSTx,DSPTx);
  CDSTx.Open;
  Tabla    :='TRANSF_INTERBANCARIAS';
  Campo    :='id';

end;

procedure TFormTransferenciasInterbancarias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTransferenciasInterbancarias:=nil;
end;

procedure TFormTransferenciasInterbancarias.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormTransferenciasInterbancarias.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTx.Close;
  CDSTx.Params.ParamByName('id').Value:=strToInt(DatoNew);
  CDSTx.Open;
end;

end.
