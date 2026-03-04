unit UAnulacionDepositosBancarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList,
  ComCtrls, Buttons, ToolWin, UMovValoresIngreso, IBGenerator,
  Provider, DBClient,  JvComponentBase, ImgList,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormAnulacionDepositoBancario = class(TFormABMBase)
    pnCabecera: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbeMuestraCtaBco: TDBEdit;
    dbeNumero: TDBEdit;
    dbeObs: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    dbeMuestraNumeroCta: TDBEdit;
    pnDetalle: TPanel;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    DSPAnuDepCab: TDataSetProvider;
    ibgId_cab: TIBGenerator;
    BuscadorCta: TAction;
    QAnuDepCab: TFDQuery;
    dbDFecha: TJvDBDateEdit;
    RxDBCtaBco: TJvDBComboEdit;
    QAnuDepCabID: TIntegerField;
    QAnuDepCabID_CTA_CAJA: TIntegerField;
    QAnuDepCabFECHA: TSQLTimeStampField;
    QAnuDepCabNUMERO: TStringField;
    QAnuDepCabIMPORTE: TFloatField;
    QAnuDepCabEFEC_CHEQ: TStringField;
    QAnuDepCabOBS: TStringField;
    QAnuDepCabMUESTRACTACAJA: TStringField;
    QAnuDepCabMUESTRANROCTA: TStringField;
    CDSAnuDepCab: TClientDataSet;
    CDSAnuDepCabID: TIntegerField;
    CDSAnuDepCabID_CTA_CAJA: TIntegerField;
    CDSAnuDepCabFECHA: TSQLTimeStampField;
    CDSAnuDepCabNUMERO: TStringField;
    CDSAnuDepCabIMPORTE: TFloatField;
    CDSAnuDepCabEFEC_CHEQ: TStringField;
    CDSAnuDepCabOBS: TStringField;
    CDSAnuDepCabMUESTRACTACAJA: TStringField;
    CDSAnuDepCabMUESTRANROCTA: TStringField;
    QCaja: TFDQuery;
    QCajaESTADO: TIntegerField;
    QCtaBco: TFDQuery;
    QCtaBcoID_CUENTA: TIntegerField;
    QCtaBcoID_TIPO_CTA: TIntegerField;
    QCtaBcoNOMBRE: TStringField;
    QCtaBcoNRO_CUENTA: TStringField;
    QCtaBcoID_BANCO: TIntegerField;
    QCtaBcoMUESTRABANCO: TStringField;
    QBuscadorCta: TFDQuery;
    QBuscadorDepositoAnulados: TFDQuery;
    CDSBuscadorCta: TClientDataSet;
    DSPBuscadorCta: TDataSetProvider;
    CDSBuscadorCtaID_CUENTA: TIntegerField;
    CDSBuscadorCtaID_TIPO_CTA: TIntegerField;
    CDSBuscadorCtaNOMBRE: TStringField;
    CDSBuscadorCtaNRO_CUENTA: TStringField;
    CDSBuscadorCtaID_BANCO: TIntegerField;
    CDSBuscadorCtaCUIT: TStringField;
    CDSBuscadorCtaRAZONSOCIAL: TStringField;
    CDSBuscadorDepositosAnulados: TClientDataSet;
    DSPBuscadorDepositosAnulados: TDataSetProvider;
    CDSBuscadorDepositosAnuladosID: TIntegerField;
    CDSBuscadorDepositosAnuladosNUMERO: TStringField;
    CDSBuscadorDepositosAnuladosIMPORTE: TFloatField;
    ComBuscadorCta: TComBuscador;
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure CDSAnuDepCabNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnDetalleEnter(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscadorCtaExecute(Sender: TObject);
    procedure RxDBCtaBcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSAnuDepCabID_CTA_CAJASetText(Sender: TField;
      const Text: string);
    procedure CDSAnuDepCabNUMEROSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    CtaBcoDepositado:Integer;
    function AsignarCtaBco(dato:Integer):Boolean;
  end;

var
  FormAnulacionDepositoBancario: TFormAnulacionDepositoBancario;

implementation

uses UDMain_FD;
{$R *.DFM}


function TFormAnulacionDepositoBancario.AsignarCtaBco(dato:Integer):Boolean;
begin
  QCtaBco.Close;
  QCtaBco.ParamByName('id').Value:=Dato;
  QCtaBco.Open;
  if not(QCtaBco.IsEmpty) Then
    begin
      Result:=True;
      CDSAnuDepCabID_CTA_CAJA.Value    := Dato;
      CDSAnuDepCabMUESTRACTACAJA.Value := QCtaBcoNOMBRE.Value;
      CDSAnuDepCabMUESTRANROCTA.Value  := QCtaBcoNRO_CUENTA.Value;
    end
  else
    begin
      Result:=False;
      CDSAnuDepCabID_CTA_CAJA.Clear;
      CDSAnuDepCabMUESTRACTACAJA.Value := '';
      CDSAnuDepCabMUESTRANROCTA.Value  := '';
    end
end;


procedure TFormAnulacionDepositoBancario.DBRadioGroup1Click(
  Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex=0 Then
    begin
      FrameMovValoresIngreso1.tsEfectivo.TabVisible:=True;
      FrameMovValoresIngreso1.tsChe3.TabVisible    :=False;
    end
  else
    if DBRadioGroup1.ItemIndex=1 Then
      begin
        FrameMovValoresIngreso1.tsEfectivo.TabVisible:=False;
        FrameMovValoresIngreso1.tsChe3.TabVisible    :=True;
      end;

end;

procedure TFormAnulacionDepositoBancario.CDSAnuDepCabID_CTA_CAJASetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarCtaBco(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato no valido');
          RxDBCtaBco.SetFocus;
          Sender.AsString:='';
         end;
     end;
end;

procedure TFormAnulacionDepositoBancario.CDSAnuDepCabNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSAnuDepCabID.Value         := ibgId_cab.IncrementFD(1);
  CDSAnuDepCabEFEC_CHEQ.Value  := 'E';
  CDSAnuDepCabFECHA.AsDateTime := Date;
  FrameMovValoresIngreso1.tsEfectivo.TabVisible:=True;
  FrameMovValoresIngreso1.tsChe3.TabVisible:=False;
end;

procedure TFormAnulacionDepositoBancario.CDSAnuDepCabNUMEROSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('0000000000000000',1,13-Length(Text))+Text;
end;

procedure TFormAnulacionDepositoBancario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;

end;

procedure TFormAnulacionDepositoBancario.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  FrameMovValoresIngreso1.tsCheques.TabVisible  := False;
  FrameMovValoresIngreso1.tsTransf.TabVisible   := False;
  FrameMovValoresIngreso1.tsDebito.TabVisible   := False;
  FrameMovValoresIngreso1.tsTCredito.TabVisible := False;

  AddClientDataSet(CDSAnuDepCab,DSPAnuDepCab);
  AddClientDataSet(FrameMovValoresIngreso1.CDSCajaMov,FrameMovValoresIngreso1.DSPCajaMov);

  AddClientDataSet(FrameMovValoresIngreso1.CDSMovEfectivo,FrameMovValoresIngreso1.DSPMovEfectivo);
  AddClientDataSet(FrameMovValoresIngreso1.CDSChe3, FrameMovValoresIngreso1.DSPChe3);

  CDSAnuDepCab.Open;

  FrameMovValoresIngreso1.CDSChe3.Open;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;
  FrameMovValoresIngreso1.CDSCajaMov.Open;
  FrameMovValoresIngreso1.QCajaCab.Open;
  FrameMovValoresIngreso1.InicicalizaMascarasNumericas;

  CDSAnuDepCab.EmptyDataset;
  FrameMovValoresIngreso1.CDSChe3.EmptyDataSet;
  FrameMovValoresIngreso1.CDSMovEfectivo.EmptyDataSet;
  FrameMovValoresIngreso1.CDSCajaMov.EmptyDataSet;
  Tabla:='Anulacion_Dep_Banco_Cab';
  Campo:='id';

end;

procedure TFormAnulacionDepositoBancario.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAnulacionDepositoBancario:=nil;

end;

procedure TFormAnulacionDepositoBancario.pnDetalleEnter(Sender: TObject);
begin
  inherited;
  IF DSBase.State=dsInsert THEN
  IF (dbDFecha.Text<>'') and
     (RxDBCtaBco.Text<>'') and (dbeMuestraCtaBco.Text<>'') and
     (dbeNumero.Text<>'') and (dbeMuestraNumeroCta.Text<>'')  THEN
    begin
      pnCabecera.Enabled:=False;
      pnDetalle.Enabled:=True;
      WITH FrameMovValoresIngreso1 DO
        BEGIN
          if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
             begin
               QCajaCab.Close;
               QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
               QCajaCab.Open;
               IF NOT (QCajaCab.IsEmpty) THEN
                 BEGIN
                   ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                   edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                   Id_Caja            := QCajaCabID_CAJA.Value;
                   id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                   FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                 end;
               QCajaCab.Close;
             end;
          TipoCpbte        := 'DA';
          TipoOperacion    := 'I';
          ClaseCpbte       := 'DA';
          NroCpbte         := CDSAnuDepCabNUMERO.Value;
          FechaOperacion   := CDSAnuDepCabFECHA.AsDateTime;
          IdCpbte          := CDSAnuDepCabID.Value;
          Origen           := 'Anula Dep.en '+CDSAnuDepCabMUESTRACTACAJA.Value;
          CtaBcoDepositado := CDSAnuDepCabID_CTA_CAJA.Value;
        END;
    end
  else
    begin
      ShowMessage('Faltan datos en el encabezado...');
      pnCabecera.Enabled:=True;
      dbDFecha.SetFocus;
    end;

end;

procedure TFormAnulacionDepositoBancario.CancelarExecute(Sender: TObject);
begin
  FrameMovValoresIngreso1.CDSMovEfectivo.Cancel;
  FrameMovValoresIngreso1.CDSChe3.Cancel;
  FrameMovValoresIngreso1.CDSCajaMov.Cancel;

  CDSAnuDepCab.Close;
  CDSAnuDepCab.Params.ParamByName('id').Clear;
  CDSAnuDepCab.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.ceCaja.Text:='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  sbEstado.SimpleText:='';

  inherited;
  pnCabecera.Enabled:=True;
  btNuevo.SetFocus;
end;

procedure TFormAnulacionDepositoBancario.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormAnulacionDepositoBancario.BuscadorCtaExecute(
  Sender: TObject);
begin
  inherited;
  CDSBuscadorCta.Close;
  CDSBuscadorCta.Open;
  comBuscadorCta.Execute;
  if comBuscadorCta.rOk Then
    CDSAnuDepCabID_CTA_CAJASetText(CDSAnuDepCabID_CTA_CAJA,intToStr(comBuscadorCta.Id));
  CDSBuscadorCta.Close;
end;

procedure TFormAnulacionDepositoBancario.RxDBCtaBcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSAnuDepCabID_CTA_CAJA.Clear;
      CDSAnuDepCabMUESTRACTACAJA.Clear;
      CDSAnuDepCabNUMERO.Clear;
    end;

end;

procedure TFormAnulacionDepositoBancario.ConfirmaExecute(Sender: TObject);
begin
  CDSAnuDepCabIMPORTE.AsFloat:=FrameMovValoresIngreso1.SumaValores;
  DatoNew:=IntToStr(CDSAnuDepCabID.Value);
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;

end;

procedure TFormAnulacionDepositoBancario.RecuperarExecute(Sender: TObject);
begin
  sbEstado.SimpleText:='';
  CDSAnuDepCab.Close;
  CDSAnuDepCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSAnuDepCab.Open;

  DBRadioGroup1Click(sender);

  FrameMovValoresIngreso1.TipoOperacion := 'I';

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Value := 'DA';
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Value        := FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Value := FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;

  FrameMovValoresIngreso1.CalcularValores;

  // VERIFICO SI LA CAJA ESTA CERRADA
  QCaja.Close;
  QCaja.ParamByName('id').Value:=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
  QCaja.Open;

  if QCajaESTADO.Value=1 Then
    begin
     sbEstado.SimpleText:='La caja de este comprobante está cerrada, por lo que no se puede modificar ni borrar';
      btModificar.Enabled:=False;
      btBorrar.Enabled   :=False;
    end
  else
    begin
      btModificar.Enabled:=True;
      btBorrar.Enabled   :=True;
    end;
  QCaja.Close;

  DatoNew:=''+DatoNew+'';


end;

procedure TFormAnulacionDepositoBancario.AgregarExecute(Sender: TObject);
begin
  CDSAnuDepCab.Close;
  CDSAnuDepCab.Params.ParamByName('id').Clear;
  CDSAnuDepCab.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  inherited;
  pnCabecera.Enabled:=True;
 // pnDetalle.Enabled :=False;
  sbEstado.SimpleText:='';
  RxDBCtaBco.SetFocus;

end;

procedure TFormAnulacionDepositoBancario.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorDepositosAnulados.Close;
  CDSBuscadorDepositosAnulados.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscadorDepositosAnulados.Close;

end;

end.