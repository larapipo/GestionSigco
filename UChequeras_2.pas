unit UChequeras_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,   StdCtrls, DBCtrls, Mask, Db, ActnList, ImgList,
  Buttons, ToolWin, ComCtrls, ExtCtrls, DBClient,
  Provider, JvComponentBase, JvExControls, JvGradient, JvExMask,
  JvToolEdit, JvDBControls, JvFormPlacement, JvLabel, FMTBcd, SqlExpr, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxClass, frxDBSet, System.ImageList, frCoreClasses;

type
  TFormChequeras_2 = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    dbeNumero: TDBEdit;
    cbcheckDiferido: TDBCheckBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbeDesde: TDBEdit;
    dbeHasta: TDBEdit;
    dbeUltimo: TDBEdit;
    dbeNombre: TDBEdit;
    dbeCodigo: TDBEdit;
    dbeMuestraCta: TDBEdit;
    dbeMuestraBanco: TDBEdit;
    DSPChequera: TDataSetProvider;
    BuscadorCta: TAction;
    DSMoneda: TDataSource;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dbcTerminada: TDBCheckBox;
    Label9: TLabel;
    dbeCanEmitida: TDBEdit;
    RxCCta: TJvDBComboEdit;
    CDSChequera: TClientDataSet;
    CDSChequeraID_CHEQUERA: TIntegerField;
    CDSChequeraID_CUENTA: TIntegerField;
    CDSChequeraNRO_CUENTA: TStringField;
    CDSChequeraNUMERO_INCIAL: TIntegerField;
    CDSChequeraNUMERO_FINAL: TIntegerField;
    CDSChequeraULTIMO_NUMERO: TIntegerField;
    CDSChequeraDIFERIDO: TSmallintField;
    CDSChequeraNOMBRE: TStringField;
    CDSChequeraID_BANCO: TIntegerField;
    CDSChequeraMONEDA: TIntegerField;
    CDSChequeraCANT_CHE_EMITIDOS: TIntegerField;
    CDSChequeraCHEQUERA_TERMINADA: TStringField;
    CDSChequeraMUESTRABANCO: TStringField;
    CDSChequeraMUESTRACUENTA: TStringField;
    DSLstCheuqes: TDataSource;
    SpeedButton1: TSpeedButton;
    ToolButton1: TToolButton;
    ComBuscadorCta: TComBuscador;
    QBuscaCtaCaja: TFDQuery;
    QBuscaCtaCajaID_CUENTA: TIntegerField;
    QBuscaCtaCajaID_TIPO_CTA: TIntegerField;
    QBuscaCtaCajaNOMBRE: TStringField;
    QBuscaCtaCajaNRO_CUENTA: TStringField;
    QBuscaCtaCajaID_BANCO: TIntegerField;
    QBuscaCtaCajaCUIT: TStringField;
    QBuscaCtaCajaRAZONSOCIAL: TStringField;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    QCtaCaja: TFDQuery;
    QCtaCajaID_CUENTA: TIntegerField;
    QCtaCajaID_TIPO_CTA: TIntegerField;
    QCtaCajaNOMBRE: TStringField;
    QCtaCajaNRO_CUENTA: TStringField;
    QCtaCajaID_BANCO: TIntegerField;
    QCtaCajaCUIT: TStringField;
    QCtaCajaRAZONSOCIAL: TStringField;
    QCtaCajaMUESTRABANCO: TStringField;
    QLstCheques: TFDQuery;
    QLstChequesFECHA_COBRO: TSQLTimeStampField;
    QLstChequesFECHA_DEBITO: TSQLTimeStampField;
    QLstChequesFECHA_EMISION: TSQLTimeStampField;
    QLstChequesANULADO: TStringField;
    QLstChequesDEBITADO: TStringField;
    QLstChequesNUMERO: TIntegerField;
    QLstChequesIMPORTE: TFloatField;
    QLstChequesORDEN_DE: TStringField;
    QChequera: TFDQuery;
    QChequeraID_CHEQUERA: TIntegerField;
    QChequeraID_CUENTA: TIntegerField;
    QChequeraNRO_CUENTA: TStringField;
    QChequeraNUMERO_INCIAL: TIntegerField;
    QChequeraNUMERO_FINAL: TIntegerField;
    QChequeraULTIMO_NUMERO: TIntegerField;
    QChequeraDIFERIDO: TSmallintField;
    QChequeraNOMBRE: TStringField;
    QChequeraID_BANCO: TIntegerField;
    QChequeraMONEDA: TIntegerField;
    QChequeraCANT_CHE_EMITIDOS: TIntegerField;
    QChequeraCHEQUERA_TERMINADA: TStringField;
    QChequeraMUESTRABANCO: TStringField;
    QChequeraMUESTRACUENTA: TStringField;
    btImpRtos: TBitBtn;
    frxReport: TfrxReport;
    frxDBLstChe: TfrxDBDataset;
    frxDBChequera: TfrxDBDataset;
    Imprimir: TAction;
    BuscarCpbte: TAction;
    QLstChequesTIPO_COMPROB: TStringField;
    QLstChequesCLASE_COMPROB: TStringField;
    QLstChequesID_COMPROBANTE: TIntegerField;
    QLstChequesNRO_COMPROBANTE: TStringField;
    dbgListado: TJvDBGrid;
    procedure BuscarExecute(Sender: TObject);
    procedure CDSChequeraNewRecord(DataSet: TDataSet);
    procedure BuscadorCtaExecute(Sender: TObject);
    procedure CDSChequeraID_CUENTASetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CDSChequeraNUMERO_INCIALSetText(Sender: TField;
      const Text: String);
    procedure RecuperarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbgListadoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BorrarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BuscarCpbteExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    FUNCTION AsignaCta(Dato: Integer): Boolean;
    { Public declarations }
  end;

var
  FormChequeras_2: TFormChequeras_2;

implementation

uses UBuscadorChequeras,UDMain_FD, UOPago_2, UEgresoCaja, UAdelantosSueldos;

{$R *.DFM}

FUNCTION TFormChequeras_2.AsignaCta(dato: Integer): Boolean;
BEGIN
  QCtaCaja.Close;
  QCtaCaja.ParamByName('id').Value := Dato;
  QCtaCaja.Open;
  IF NOT (QCtaCaja.IsEmpty) and (QCtaCajaID_TIPO_CTA.Value=2) THEN
    BEGIN
      Result := True;
      CDSChequeraNRO_CUENTA.Value   := QCtaCajaNRO_CUENTA.Value;
      CDSChequeraID_BANCO.Value     := QCtaCajaID_BANCO.Value;
      CDSChequeraMUESTRACUENTA.Value:= QCtaCajaNOMBRE.Value;
      CDSChequeraMUESTRABANCO.Value := QCtaCajaMUESTRABANCO.Value
    END
  ELSE
    Result := False;
END;

procedure TFormChequeras_2.BuscarCpbteExecute(Sender: TObject);
begin
  inherited;
  if DSLstCheuqes.DataSet.FieldByName('TIPO_COMPROB').AsString='OP' Then
    begin
        if Not(Assigned(FormOPago_2)) then
             FormOPago_2:=TFormOPago_2.Create(Application);
           FormOPago_2.DatoNew   := DSLstCheuqes.DataSet.FieldByName('ID_COMPROBANTE').AsString;
           FormOPago_2.TipoCpbte := DSLstCheuqes.DataSet.FieldByName('TIPO_COMPROB').AsString;
           FormOPago_2.Recuperar.Execute;
           FormOPago_2.Show;
    end
  else
    if DSLstCheuqes.DataSet.FieldByName('TIPO_COMPROB').AsString='EC' Then
      begin
          if Not(Assigned(FormEgresoCaja)) then
            FormEgresoCaja:=TFormEgresoCaja.Create(Application);
          FormEgresoCaja.DatoNew   := DSLstCheuqes.DataSet.FieldByName('ID_COMPROBANTE').AsString;
          FormEgresoCaja.TipoCpbte := DSLstCheuqes.DataSet.FieldByName('TIPO_COMPROB').AsString;
          FormEgresoCaja.Recuperar.Execute;
          FormEgresoCaja.Show;
          end
    else
      if DSLstCheuqes.DataSet.FieldByName('TIPO_COMPROB').AsString='VA' Then
        begin
          if Not(Assigned(FormAdelantosSueldo)) then
            FormAdelantosSueldo:=TFormAdelantosSueldo.Create(Application);
          FormAdelantosSueldo.DatoNew   := DSLstCheuqes.DataSet.FieldByName('ID_COMPROBANTE').AsString;
          FormAdelantosSueldo.TipoCpbte := DSLstCheuqes.DataSet.FieldByName('TIPO_COMPROB').AsString;
          FormAdelantosSueldo.Recuperar.Execute;
          FormAdelantosSueldo.Show;
        end;
 end;

procedure TFormChequeras_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorChequeras)) Then
    FormBuscadorChequeras:=TFormBuscadorChequeras.Create(self);
  FormBuscadorChequeras.ShowModal;
  if FormBuscadorChequeras.IdChequera<>-1 Then
    begin
      DatoNew:=IntToStr(FormBuscadorChequeras.IdChequera);
      Recuperar.Execute;
    end;

end;

procedure TFormChequeras_2.CDSChequeraNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSChequeraID_CHEQUERA.Value := 1
  else
    CDSChequeraID_CHEQUERA.Value := QUltimoCodigo2.Fields[0].AsInteger + 1;
  QUltimoCodigo2.Close;
  CDSChequeraDIFERIDO.Value              :=0;
  CDSChequeraCANT_CHE_EMITIDOS.Value     :=0;
  CDSChequeraCHEQUERA_TERMINADA.AsString :='N';
end;

procedure TFormChequeras_2.BorrarExecute(Sender: TObject);
begin
  if QLstCheques.IsEmpty then
    inherited
  else
    ShowMessage('Operación no permitida...');  

end;

procedure TFormChequeras_2.BuscadorCtaExecute(Sender: TObject);
begin
  inherited;
  QBuscaCtaCaja.Close;
  QBuscaCtaCaja.Open;
  ComBuscadorCta.Execute;
  IF comBuscadorCta.rOk THEN
    CDSChequeraID_CUENTASetText(CDSChequeraID_CUENTA,IntToStr(comBuscadorCta.id));
  QBuscaCtaCaja.Close;
end;

procedure TFormChequeras_2.CDSChequeraID_CUENTASetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Text;
  IF NOT (AsignaCta(Sender.AsInteger)) THEN
    BEGIN
      ShowMessage('Codigo no válido');
      Sender.AsString := '';
      RxCCta.SetFocus;
    END;
end;

procedure TFormChequeras_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSChequera, DSPChequera);
  CDSChequera.Open;
  QMonedas.Open;
  Tabla:='chequera';
  Campo:='id_chequera';
  AutoSize := False;
end;

procedure TFormChequeras_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSChequera.Close;
  QMonedas.Close;
  Action:=cafree;
end;

procedure TFormChequeras_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormChequeras_2:=nil;
end;

procedure TFormChequeras_2.FormResize(Sender: TObject);
begin
  inherited;
  if FormChequeras_2<>nil then
    if FormChequeras_2.Width<>958 then
      FormChequeras_2.Width:=958;

end;

procedure TFormChequeras_2.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormChequeras_2.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReport.PrintOptions.Printer:=PrNomCpbte;
  frxReport.SelectPrinter;

  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\Chequera.fr3');


  //Preview:='S';
  frxReport.PrepareReport;
  frxReport.PrintOptions.ShowDialog:=True;
  frxReport.ShowReport
end;

procedure TFormChequeras_2.dbgListadoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  IF (QLstChequesANULADO.Value = 'S') or
     (QLstChequesANULADO.Value = 'A') or
     (QLstChequesANULADO.Value = 'R')
   THEN
     dbgListado.Canvas.Font.Style := [fsStrikeout]
  ELSE
    dbgListado.Canvas.Font.Style := [];
  dbgListado.DefaultDrawDataCell(Rect, Field, State);

end;

procedure TFormChequeras_2.ConfirmaExecute(Sender: TObject);
begin
  DatoNew := CDSChequeraID_CHEQUERA.AsString;
  inherited;
  Recuperar.Execute;

  btNuevo.SetFocus;
end;

procedure TFormChequeras_2.CancelarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormChequeras_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeNombre.SetFocus;
end;

procedure TFormChequeras_2.CDSChequeraNUMERO_INCIALSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSChequeraULTIMO_NUMERO.Value:=Sender.AsInteger;
end;

procedure TFormChequeras_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSChequera.Close;
  CDSChequera.Params.ParamByName('id').Value := StrToInt(DatoNew);
  CDSChequera.Open;

  QLstCheques.Close;
  QLstCheques.ParamByName('id').Value        := StrToInt(DatoNew);
  QLstCheques.Open;

  DatoNew:=''+DatoNew+'';

end;

procedure TFormChequeras_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormChequeras_2.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  QLstCheques.Close;
  QLstCheques.ParamByName('id').Value:=CDSChequeraID_CHEQUERA.Value;
  QLstCheques.Open;

end;

end.